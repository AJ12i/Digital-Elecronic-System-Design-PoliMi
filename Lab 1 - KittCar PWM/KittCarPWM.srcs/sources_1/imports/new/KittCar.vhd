----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/10/2023 02:14:09 PM
-- Design Name: 
-- Module Name: KittCar - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity KittCar is
  generic (

    CLK_PERIOD_NS : positive range 1 to 100 := 10; -- clk period in nanoseconds
    MIN_KITT_CAR_STEP_MS : positive range 1 to 2000 := 1; -- Minimum step period in milliseconds (i.e., value in milliseconds of Delta_t)

    NUM_OF_SWS : integer range 1 to 16 := 16; -- Number of input switches
    NUM_OF_LEDS : integer range 1 to 16 := 16 -- Number of output LEDs

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
end KittCar;

architecture Behavioral of KittCar is


	----------------- CONSTANT DECLARATION -----------------
	
	constant Delta_T			:	INTEGER RANGE 0 TO MIN_KITT_CAR_STEP_MS*(10**6)/CLK_PERIOD_NS	:= MIN_KITT_CAR_STEP_MS*(10**6)/CLK_PERIOD_NS;	-- Delay when all switches are OFF
																																					-- (i.e., value of clock cycles for Delta_t)
																																					
	constant INITIAL_LED		:	INTEGER RANGE 1 TO NUM_OF_LEDS									:= 1;											-- Setting the initial led that lights up. 1 -> LED0; NUM_OF_LEDS -> LED15									
	constant INITIAL_DIR		:	STD_LOGIC														:= '0';											-- Initial direction; Change along with Initial_LED
																																					-- Left	 = '0'  --> Knight Rider effect from LED0 -> LED15
																																					-- Right = '1'  --> Knight Rider effect from LED15 -> LED0
	----------------- SIGNALS DECLARATION -----------------
	
	signal direction			:	STD_LOGIC									:= INITIAL_DIR;
	signal sw_reg				:	STD_LOGIC_VECTOR(sw'RANGE)					:= (Others => '0');
	signal leds_reg				:	STD_LOGIC_VECTOR(leds'RANGE)				:= STD_LOGIC_VECTOR(to_unsigned((2**(INITIAL_LED-1)),leds'length));	-- register to control which LED needs to be lit up 
																																					-- eg: Initial_LED = 1 --> leds_reg = 0000_0000_0000_0001
	
	---- Clock Cycle Counters----
	signal delta_counter		:	INTEGER	RANGE	0	TO	Delta_T				:= 0;		-- Counter for delta_t
	signal delta_mul_counter	:	INTEGER	RANGE	1	TO	2**NUM_OF_SWS+1		:= 1;		-- Counter for multiplying the delay according to the switch positions


	----------------- Architecture Begines -----------------
begin

	process(reset, clk)

	begin

		if reset = '1' then

			sw_reg					<= (Others => '0');
			leds_reg				<= STD_LOGIC_VECTOR(to_unsigned((2**(INITIAL_LED-1)),leds'length));		-- Setting initial LED to turn ON when RESET is LOW
			leds					<= (Others => '1'); 													-- All lEDs are turned ON when RESET is HIGH
			delta_counter			<= 0;																	-- Counters reset to default values
			delta_mul_counter		<= 1;
			direction				<= INITIAL_DIR;

		elsif rising_edge(clk) then

			-- Check whether Delta time has passed
			if delta_counter >= Delta_T then

				delta_counter			<=	0;
				delta_mul_counter		<=	delta_mul_counter + 1;			-- eg: delta_mul_counter = 3 signifies that 2*delta_t time has passed.

				-- Check if the required time has passed in terms of delta_t multiples
				if delta_mul_counter >= ('0' & unsigned(sw_reg) + 1) then 	-- '0' is concatenated to avoid overflow

					delta_mul_counter <= 1;

					-- Setting the direction and preventing out-of-bounds errors
					-- Left direction = '0'; Right direction = '1'
					if (leds_reg(leds_reg'HIGH - 1) = '1' and (direction = '0')) then

						direction <= not direction;

					elsif (leds_reg(leds_reg'LOW + 1) = '1' and (direction = '1')) then
						
						direction <= not direction;
						
					end if;

					-- Direction control
					if direction = '0' then

						-- Shifting the bits of the register to the left by 1 bit
						leds_reg <= leds_reg sll 1;

					else

						-- Shifting the bits of the register to the right by 1 bit
						leds_reg <= leds_reg srl 1;

					end if;

				end if;

			else

				delta_counter <= delta_counter + 1; 	-- incrementing the counter by 1 

			end if;
			
			sw_reg	<=	sw; 		-- input:  position of switches fed to its register
			leds	<=	leds_reg;	-- output: position of register (vector) elements fed to LEDs
			
		end if;

	end process;

end Behavioral;