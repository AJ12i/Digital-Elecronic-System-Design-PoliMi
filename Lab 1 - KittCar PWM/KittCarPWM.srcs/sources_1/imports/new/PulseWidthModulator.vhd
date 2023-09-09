---------- DEFAULT LIBRARY ---------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

------------------------------------

entity PulseWidthModulator is

  generic (

    BIT_LENGTH : integer range 1 to 16 := 8; -- Bit used inside PWM

    T_ON_INIT : positive := 64; -- Init of Ton
    PERIOD_INIT : positive := 128; -- Init of Period

    PWM_INIT : std_logic := '0' -- Init of PWM

  );
  port (

    ------- Reset/Clock --------
    reset : in std_logic;
    clk : in std_logic;

    -------- Duty Cycle ---------
    Ton : in std_logic_vector(BIT_LENGTH - 1 downto 0); 	-- number of clk(s) at which PWM = '1'
    Period : in std_logic_vector(BIT_LENGTH - 1 downto 0); 	-- number of clk(s) for which the period lasts

    PWM : out std_logic -- PWM signal

  );

end PulseWidthModulator;

architecture Behavioral of PulseWidthModulator is

  constant T_ON_INIT_SLV 	: STD_LOGIC_VECTOR(BIT_LENGTH - 1 downto 0) := STD_LOGIC_VECTOR(to_unsigned(T_ON_INIT - 1, BIT_LENGTH));
  constant PERIOD_INIT_SLV 	: STD_LOGIC_VECTOR(BIT_LENGTH - 1 downto 0) := STD_LOGIC_VECTOR(to_unsigned(PERIOD_INIT - 1, BIT_LENGTH));

  ------ Registers for PWM --------
  signal counter 	: UNSIGNED(BIT_LENGTH - 1 downto 0) 	:= (others => '0'); 		-- Counter for required duty-cycle

  signal Ton_reg 	: STD_LOGIC_VECTOR(Ton'RANGE) 			:= T_ON_INIT_SLV;
  signal Period_reg : STD_LOGIC_VECTOR(Period'RANGE) 		:= PERIOD_INIT_SLV;			-- As the counter will count till the period, the freuqncy of the PWM signal is:
																						-- f = 1 / (PERIOD_INIT_SLV * 10ns). For PERIOD_INIT = 128, f = 781.250 KHz. 

	----------------- Architecture Begines -----------------

begin

  process (reset, clk)
  begin

    if reset = '1' then

        counter 	<= (others => '0');		-- counter is reset to 0
        Ton_reg 	<= T_ON_INIT_SLV;		-- assigning the default value
        Period_reg 	<= PERIOD_INIT_SLV;		-- assigning the default value
        PWM 		<= PWM_INIT;			-- assigning the initial value

    elsif rising_edge(clk) then

		-- For duty-cycle >= 1
        if unsigned(Ton_reg) >= unsigned(Period_reg) and unsigned(Ton_reg) > 0 then

          PWM <= not PWM_INIT;				-- PWM is inverse of the initial state of PWM signal
          counter <= (others => '0');		-- counter is reset to 0
        
        -- For duty-cycle = 0
        elsif unsigned(Ton_reg) = 0 then

          PWM <= PWM_INIT;					-- PWM remains in the initial state of PWM signal
		  
		else

          -- Count the clock pulses
          counter <= counter + 1;

          -- Toggle the output when counter reaches Ton
		  -- The output aslo toggles after the period
          PWM <= not PWM_INIT when (counter < unsigned(Ton_reg)) else PWM_INIT;

          -- When the counter reaches the Period
          if counter = unsigned(Period_reg) then

            counter <= (others => '0');		-- counter is reset to 0

          end if;

        end if;

        -- Sampling Period and Ton for glitch-less behavior
        Ton_reg <= Ton;
        Period_reg <= Period;

    end if;

  end process;

end Behavioral;