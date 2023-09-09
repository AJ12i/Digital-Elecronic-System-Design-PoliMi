---------- DEFAULT LIBRARY ---------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
------------------------------------

entity KittCarPWM is
  generic (

    CLK_PERIOD_NS : positive range 1 to 100 := 10; -- clk period in nanoseconds
    MIN_KITT_CAR_STEP_MS : positive range 1 to 2000 := 1; -- Minimum step period in milliseconds (i.e., value in milliseconds of Delta_t)

    NUM_OF_SWS : integer range 1 to 16 := 16; -- Number of input switches
    NUM_OF_LEDS : integer range 1 to 16 := 16; -- Number of output LEDs

    TAIL_LENGTH : integer range 1 to 16 := 6 -- Tail length <= NUM_OF_LEDS
  );
  port (

    ------- Reset/Clock --------
    reset : in std_logic;
    clk : in std_logic;
    ----------------------------

    -------- LEDs/SWs ----------
    sw : in std_logic_vector(NUM_OF_SWS - 1 downto 0); -- Switches avaiable on Basys3
    leds : out std_logic_vector(NUM_OF_LEDS - 1 downto 0) -- LEDs avaiable on Basys3
    ----------------------------

  );
end KittCarPWM;

architecture Behavioral of KittCarPWM is

  ------------------ COMPONENT DECLARATIONS -------------------------

  component PulseWidthModulator is
    generic (

      BIT_LENGTH  : INTEGER range 1 to 16;			-- Bit used inside PWM
      T_ON_INIT   : POSITIVE;						-- Init of Ton
      PERIOD_INIT : POSITIVE;						-- Init of Period
      PWM_INIT    : STD_LOGIC						-- Init of PWM

    );
    port (

      reset   : in STD_LOGIC;
      clk     : in STD_LOGIC;

      Ton     : in STD_LOGIC_VECTOR(BIT_LENGTH - 1 downto 0);		-- number of clk(s) at which PWM = '1'
      Period  : in STD_LOGIC_VECTOR(BIT_LENGTH - 1 downto 0);		-- number of clk(s) for which the period lasts
      PWM     : out STD_LOGIC										-- PWM signal

    ); 
  end component;
  
  component KittCar is
    generic (

      CLK_PERIOD_NS         : POSITIVE range 1 to 100;		-- clk period in nanoseconds
      MIN_KITT_CAR_STEP_MS  : POSITIVE range 1 to 2000;		-- Minimum step period in milliseconds (i.e., value in milliseconds of Delta_t)

      NUM_OF_SWS            : INTEGER range 1 to 16;		-- Number of input switches
      NUM_OF_LEDS           : INTEGER range 1 to 16			-- Number of output LEDs

    );
    port (

      ------- Reset/Clock --------
      reset : IN STD_LOGIC;
      clk   : IN STD_LOGIC;
      ----------------------------

      -------- LEDs/SWs ----------
      sw    : IN STD_LOGIC_VECTOR(NUM_OF_SWS - 1 downto 0);
      leds  : OUT STD_LOGIC_VECTOR(NUM_OF_LEDS - 1 downto 0)
      ----------------------------

    );
  end component;

	---------------------------- User-defined Type ----------------------------

	type led_array_slv_type is array (TAIL_LENGTH-2 downto 0) of std_logic_vector(leds'RANGE);
	
	------------------ CONSTANT DECLARATION -------------------------
	---- PulseWidthModulator ----
	constant BIT_LENGTH			: INTEGER	RANGE 1 TO 16	  := 16;
	constant PERIOD_INIT		: POSITIVE				      := 256; 		-- As the counter will count till the period, the freuqncy of the PWM signal is:
																			-- f = 1 / (PERIOD_INIT * 10ns). For PERIOD_INIT = 256, f = 390 KHz.
	constant PWM_INIT			: STD_LOGIC				  	  := '0';
	
	---- Kitt Car ----
	constant INITIAL_LED		:	INTEGER RANGE 1 TO NUM_OF_LEDS									:= 1;											-- Setting the initial led that lights up. 1 -> LED0; NUM_OF_LEDS -> LED15
	constant Delta_T			:	INTEGER RANGE 0 TO MIN_KITT_CAR_STEP_MS*(10**6)/CLK_PERIOD_NS	:= MIN_KITT_CAR_STEP_MS*(10**6)/CLK_PERIOD_NS;	-- Time delay when all switches are OFF
																																					-- (i.e., value of clock cycles for Delta_t)

	---------------------------- SIGNALS ----------------------------
	---- PWM Registers ----
	signal PWM_reg				: 	STD_LOGIC_VECTOR(TAIL_LENGTH-2 downto 0)	:= (Others => '0');														-- Generated PWM signals are stored in the register for each tail LED

	---- Kitt Car Registers ----
	signal sw_reg				:	STD_LOGIC_VECTOR(sw'RANGE)					:= (Others => '0');
	signal leds_reg				:	STD_LOGIC_VECTOR(leds'RANGE)				:= STD_LOGIC_VECTOR(to_unsigned((2**(INITIAL_LED-1)),leds'length));		-- Register to control which LED needs to be lit up 
																																						-- eg: Initial_LED = 1 --> leds_reg = 0000_0000_0000_0001
																																						
	signal led_array_slv		:	led_array_slv_type							:= (Others => (Others => '0'));											-- Shift register for the tail LEDs
	signal led_temp_array		:	led_array_slv_type							:= (Others => (Others => '0'));											-- Temp. array to store the result of ANDing PWM signal with led_array_slv
	
	---- Clock Cycle Counters ----
	signal delta_counter		:	INTEGER	RANGE	0	TO	Delta_T				:= 0;		-- Counter for delta_t
	signal delta_mul_counter	:	INTEGER	RANGE	1	TO	2**NUM_OF_SWS+1		:= 1;		-- Counter for multiplying the delay according to the switch positions
	
	
	----------------- Architecture Begines -----------------
	
begin

	------------------ INSTANTIATIONS -------------------------

	KittCar_inst : KittCar
		Generic Map(

			CLK_PERIOD_NS			=>	CLK_PERIOD_NS,
			MIN_KITT_CAR_STEP_MS	=>	MIN_KITT_CAR_STEP_MS,

			NUM_OF_SWS				=>	NUM_OF_SWS,
			NUM_OF_LEDS				=>	NUM_OF_LEDS

			)
		Port Map(

			reset	=>	reset,
			clk		=>	clk,

			sw		=>	sw,
			leds	=>	leds_reg

		);

	-- PWM generation for each tail LED
	PWM_GEN : for idx in 0 to TAIL_LENGTH-2 generate

		PWM_inst : PulseWidthModulator
			Generic Map(

					BIT_LENGTH	=>	BIT_LENGTH,
					T_ON_INIT	=>	PERIOD_INIT,
					PERIOD_INIT	=>	PERIOD_INIT,
					PWM_INIT	=>	PWM_INIT

				)
				Port Map(

					reset	=>	reset,
					clk		=>	clk,

					Ton		=>	STD_LOGIC_VECTOR(to_unsigned((PERIOD_INIT * (idx + 1)) / TAIL_LENGTH,BIT_LENGTH)),	-- Dividing the duty cycle according to the tail length
					Period	=>	STD_LOGIC_VECTOR(to_unsigned(PERIOD_INIT,BIT_LENGTH)),
					PWM		=>	PWM_reg(idx)			-- each PWM signal for the respective tail LED is stored in the register

			);

	end generate;

	------ Process --------
	Main_process: process(reset, clk)

		-- for immediate assignment
		variable tail_led_var	:	STD_LOGIC_VECTOR(leds'RANGE)	:=	STD_LOGIC_VECTOR(to_unsigned((2**(INITIAL_LED - 1)),leds'length));	-- For setting the values the tail LEDs

	begin
		------ Asynchronous RESET --------
		if reset = '1' then

			sw_reg					<= (Others => '0');
			leds					<= (Others => '1');					-- All lEDs are turned ON when RESET is HIGH
			led_array_slv			<= (Others => (Others => '0'));

			delta_counter			<= 0;								-- Counters reset to default values
			delta_mul_counter		<= 1;
		
		------ Synchronous Process --------
		elsif rising_edge(clk) then

			sw_reg	<=	sw;					-- input:  position of switches fed to its register
			leds	<=	tail_led_var;		-- output: position of variable (vector) elements fed to LEDs

			-- Generation of the dimming effect
			tail_led_var := leds_reg;		-- initial state
			for i in 0 to TAIL_LENGTH-2 loop

				for j in 0 to NUM_OF_LEDS-1 loop

					led_temp_array(i)(j) <= led_array_slv(i)(j) and PWM_reg(i); -- Combining each PWM signal with their respective Tail LEDs

				end loop;

				tail_led_var := tail_led_var or led_temp_array(i);  			-- immediate assignment

			end loop;

			-- Delta time measurement
			if delta_counter >= Delta_T then

				delta_counter			<=	0;
				delta_mul_counter		<=	delta_mul_counter + 1;

				-- Check if the required time has passed in terms of delta_t multiples
				if delta_mul_counter >= ('0' & unsigned(sw_reg) + 1) then 	-- '0' is concatenated to avoid overflow

					delta_mul_counter <= 1;

					-- Ensuring correct position of tail LEDs 
					led_array_slv(led_array_slv'HIGH)				<= leds_reg;
					led_array_slv(led_array_slv'HIGH-1 downto 0)	<= led_array_slv(led_array_slv'HIGH downto led_array_slv'LOW+1);

				end if;

			else

				delta_counter <= delta_counter + 1; 	-- incrementing the counter by 1 

			end if;

		end if;

	end process Main_process;

end Behavioral;