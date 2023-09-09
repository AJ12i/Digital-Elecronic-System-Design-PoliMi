library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity digilent_jstk2 is
	generic (
		DELAY_US		: integer := 25;    -- Delay (in us) between two packets
		CLKFREQ		 	: integer := 100_000_000;  -- Frequency of the aclk signal (in Hz)
		SPI_SCLKFREQ 	: integer := 5_000 -- Frequency of the SPI SCLK clock signal (in Hz)
	);
	Port ( 
		aclk 			: in  STD_LOGIC;
		aresetn			: in  STD_LOGIC;

		-- Data going TO the SPI IP-Core (and so, to the JSTK2 module)
		m_axis_tvalid	: out STD_LOGIC;
		m_axis_tdata	: out STD_LOGIC_VECTOR(7 downto 0);
		m_axis_tready	: in STD_LOGIC;

		-- Data coming FROM the SPI IP-Core (and so, from the JSTK2 module)
		-- There is no tready signal, so you must be always ready to accept and use the incoming data, or it will be lost!
		s_axis_tvalid	: in STD_LOGIC;
		s_axis_tdata	: in STD_LOGIC_VECTOR(7 downto 0);

		-- Joystick and button values read from the module
		jstk_x			: out std_logic_vector(9 downto 0);
		jstk_y			: out std_logic_vector(9 downto 0);
		btn_jstk		: out std_logic;
		btn_trigger		: out std_logic;

		-- LED color to send to the module
		led_r			: in std_logic_vector(7 downto 0);
		led_g			: in std_logic_vector(7 downto 0);
		led_b			: in std_logic_vector(7 downto 0)
	);
end digilent_jstk2;

architecture Behavioral of digilent_jstk2 is

	-- Code for the SetLEDRGB command, see the JSTK2 datasheet.
	constant CMDSETLEDRGB				: std_logic_vector(7 downto 0) := x"84";

	-- Do not forget that you MUST wait a bit between two packets. See the JSTK2 datasheet (and the SPI IP-Core README).
	-- Inter-packet delay plus the time needed to transfer 1 byte (for the CS de-assertion)
	constant DELAY_CYCLES				: integer := DELAY_US * (CLKFREQ / 1_000_000) + CLKFREQ / SPI_SCLKFREQ;
	
	-- Defining the bit lengths for the X,Y-axis and the RGB LEDs
	constant JSTK_BITS_ACTUAL			: integer RANGE 0 TO 10 := 10;
	constant JSTK_BITS					: integer RANGE 0 TO 8 := 8;
	constant LED_BITS					: integer RANGE 0 TO 8 := 8;	
	
	-- Dummy data to be sent
	constant DUMMY_DATA			: std_logic_vector(m_axis_tdata'RANGE) := x"00";

	-- These are examples of FSM states, you can use these if you want.

	type state_cmd_type is (WAIT_DELAY, SEND_CMD, SEND_RED, SEND_GREEN, SEND_BLUE, SEND_DUMMY);
	signal state_cmd			: state_cmd_type 				  := WAIT_DELAY;	-- for setting the state
	signal delay_counter		: integer RANGE 0 to DELAY_CYCLES := 0;				-- Counter to count up to the delay

	signal led_r_reg			: std_logic_vector(LED_BITS-1 downto 0) := (Others => '0');	-- R-LED Register
	signal led_g_reg			: std_logic_vector(LED_BITS-1 downto 0) := (Others => '0');	-- G-LED Register
	signal led_b_reg			: std_logic_vector(LED_BITS-1 downto 0) := (Others => '0');	-- B-LED Register

	type state_sts_type is (GET_X_LSB, GET_X_MSB, GET_Y_LSB, GET_Y_MSB, GET_BUTTONS);
	signal state_sts			: state_sts_type := GET_X_LSB;

	-- X, Y-axis, Joystick and trigger buttons Registers
	signal jstk_x_reg			: std_logic_vector(JSTK_BITS_ACTUAL-1 downto 0) := (Others => '0');
	signal jstk_y_reg			: std_logic_vector(JSTK_BITS_ACTUAL-1 downto 0) := (Others => '0');
	signal btn_jstk_reg			: std_logic := '0';
	signal btn_trigger_reg		: std_logic := '0';

	-- As 2 bytes are used to store the X and Y-axis values (10-bits), temporary registers are used 
	-- to ultilize all incoming 10-bits.
	signal temp_reg_jstk_x		: std_logic_vector(JSTK_BITS_ACTUAL-1 downto 0) := (Others => '0');
	signal temp_reg_jstk_y		: std_logic_vector(JSTK_BITS_ACTUAL-1 downto 0) := (Others => '0');


	--------- ARCHITECTURE BEGINS ----------
begin
	
	-- Initializing master's valid signal according to current state
	with state_cmd select m_axis_tvalid <=
	'0'	when	WAIT_DELAY,
	'1'	when	SEND_CMD,
	'1'	when	SEND_RED,
	'1'	when	SEND_GREEN,
	'1'	when	SEND_BLUE,
	'1'	when	SEND_DUMMY;

	-- Initializing master's data according to current state
	with state_cmd select m_axis_tdata <=
	DUMMY_DATA		when	WAIT_DELAY,
	CMDSETLEDRGB	when	SEND_CMD,
	led_r_reg		when	SEND_RED,
	led_g_reg		when	SEND_GREEN,
	led_b_reg		when	SEND_BLUE,
	DUMMY_DATA		when	SEND_DUMMY;

	-- Output: Joystick and button values
	jstk_x		<= jstk_x_reg;
	jstk_y		<= jstk_y_reg;
	btn_jstk	<= btn_jstk_reg;
	btn_trigger	<= btn_trigger_reg;
	
	-- FSM for sending data to the module
	SEND_DATA: process(aclk, aresetn)
	begin
		--------- ASYNCHRONOUS RESET ----------
		if aresetn = '0' then

			delay_counter		<= 0;
			state_cmd			<= WAIT_DELAY;
			
			led_r_reg			<=	(Others => '0');
			led_g_reg			<=	(Others => '0');
			led_b_reg			<=	(Others => '0');

		--------- SYNCHRONOUS PROCESS ----------
		elsif rising_edge(aclk) then

			case state_cmd is

				when WAIT_DELAY =>
					-- State change after delay
					if delay_counter = DELAY_CYCLES-1 then
						delay_counter	<= 0;		-- resetting the delay counter
						state_cmd		<= SEND_CMD;

						-- Assigning the RGB values to their respective registers. 
						-- (No further change till the input RGB values don't change)
						led_r_reg	<= led_r;
						led_g_reg	<= led_g;
						led_b_reg	<= led_b;
					else
						-- Incrementing the counter
						delay_counter	<= delay_counter + 1;
					end if;

				-- For all states, data is sent according to the respective m_axis_tdata assigned above.
				when SEND_CMD =>
					
					if m_axis_tready = '1' then 
						state_cmd	<= SEND_RED;	-- State change
					end if;


				when SEND_RED =>

					if m_axis_tready = '1' then
						state_cmd	<= SEND_GREEN;	-- State change
					end if;


				when SEND_GREEN =>

					if m_axis_tready = '1' then
						state_cmd	<= SEND_BLUE;	-- State change
					end if;


				when SEND_BLUE =>

					if m_axis_tready = '1' then
						state_cmd	<= SEND_DUMMY;	-- State change
					end if;


				when SEND_DUMMY =>

					if m_axis_tready = '1' then
						state_cmd	<= WAIT_DELAY;	-- State change
					end if;

			end case;

		end if;

	end process SEND_DATA;

	-- FSM for receiving data from the module
	RECEIVE_DATA: process(aclk, aresetn)
	begin
		--------- ASYNCHRONOUS RESET ----------
		if aresetn = '0' then

			state_sts	<= GET_X_LSB;

			jstk_x_reg			<=	(Others => '0');
			jstk_y_reg			<=	(Others => '0');
			btn_jstk_reg		<=	'0';
			btn_trigger_reg		<=	'0';

			temp_reg_jstk_x		<=	(Others => '0');
			temp_reg_jstk_y		<=	(Others => '0');

		--------- SYNCHRONOUS PROCESS ----------
		elsif rising_edge(aclk) then

				case state_sts is

					when GET_X_LSB =>
						-- Receiving 8-bit LSBs for X-axis 
						if s_axis_tvalid = '1' then
							temp_reg_jstk_x(JSTK_BITS-1 downto 0)	<= s_axis_tdata;
							state_sts								<= GET_X_MSB;		-- State change
						end if;


					when GET_X_MSB =>
						-- Receiving 2-bit MSBs for X-axis that are 2-bit LSBs of the data (next byte)
						if s_axis_tvalid = '1' then
							temp_reg_jstk_x(JSTK_BITS_ACTUAL-1 downto JSTK_BITS)	<= s_axis_tdata((JSTK_BITS_ACTUAL - JSTK_BITS)-1 downto 0);
							state_sts												<= GET_Y_LSB;	-- State change
						end if;


					when GET_Y_LSB =>
						-- Receiving 8-bit LSBs for Y-axis 
						if s_axis_tvalid = '1' then
							temp_reg_jstk_y(JSTK_BITS-1 downto 0)	<= s_axis_tdata;
							state_sts								<= GET_Y_MSB;	-- State change
						end if;


					when GET_Y_MSB =>
						-- Receiving 2-bit MSBs for Y-axis that are 2-bit LSBs of the data (next byte)
						if s_axis_tvalid = '1' then
							temp_reg_jstk_y(JSTK_BITS_ACTUAL-1 downto JSTK_BITS)	<= s_axis_tdata((JSTK_BITS_ACTUAL - JSTK_BITS)-1 downto 0);
							state_sts												<= GET_BUTTONS;		-- State change
						end if;


					when GET_BUTTONS =>

						if s_axis_tvalid = '1' then
							btn_jstk_reg	<= s_axis_tdata(0); -- first bit of the data
							btn_trigger_reg	<= s_axis_tdata(1);	-- second bit of the data

							-- 10-bit X,Y-axis values received from the temp register.
							jstk_x_reg		<= temp_reg_jstk_x;
							jstk_y_reg		<= temp_reg_jstk_y;
							state_sts		<= GET_X_LSB;		-- State change
						end if;

				end case;

		end if;

	end process RECEIVE_DATA;

end architecture;

