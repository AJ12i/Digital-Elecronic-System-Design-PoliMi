library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity jstk_uart_bridge is
	generic (
		HEADER_CODE		: std_logic_vector(7 downto 0) := x"c0"; -- Header of the packet
		TX_DELAY		: positive := 1_000_000;    -- Pause (in clock cycles) between two packets
		JSTK_BITS		: integer range 1 to 7 := 7    -- Number of bits of the joystick axis to transfer to the PC 
	);
	Port ( 
		aclk 			: in  STD_LOGIC;
		aresetn			: in  STD_LOGIC;

		-- Data going TO the PC (i.e., joystick position and buttons state)
		m_axis_tvalid	: out STD_LOGIC;
		m_axis_tdata	: out STD_LOGIC_VECTOR(7 downto 0);
		m_axis_tready	: in STD_LOGIC;

		-- Data coming FROM the PC (i.e., LED color)
		s_axis_tvalid	: in STD_LOGIC;
		s_axis_tdata	: in STD_LOGIC_VECTOR(7 downto 0);
		s_axis_tready	: out STD_LOGIC;

		jstk_x			: in std_logic_vector(9 downto 0);
		jstk_y			: in std_logic_vector(9 downto 0);
		btn_jstk		: in std_logic;
		btn_trigger		: in std_logic;

		led_r			: out std_logic_vector(7 downto 0);
		led_g			: out std_logic_vector(7 downto 0);
		led_b			: out std_logic_vector(7 downto 0)
	);
end jstk_uart_bridge;

architecture Behavioral of jstk_uart_bridge is

	-- Defining the bit lengths for the X,Y-axis and the RGB LEDs
	constant JSTK_BITS_ACTUAL		: integer RANGE 0 TO 10 := 10;
	constant LED_BITS				: integer RANGE 0 TO 8 	:= 8;
	
	-- These are examples of FSM states, you can use these if you want.
	type tx_state_type is (DELAY, SEND_HEADER, SEND_JSTK_X, SEND_JSTK_Y, SEND_BUTTONS);
	signal tx_state				: tx_state_type := DELAY;
	signal tx_delay_counter		: integer RANGE 0 to TX_DELAY := 0; 	-- Counter to count up to the delay

	-- X, Y-axis, Joystick and trigger buttons Registers
	signal jstk_x_reg			: std_logic_vector(m_axis_tdata'RANGE) := (Others => '0');
	signal jstk_y_reg			: std_logic_vector(m_axis_tdata'RANGE) := (Others => '0');
	signal btn_jstk_reg			: std_logic := '0';
	signal btn_trigger_reg		: std_logic := '0';


	type rx_state_type is (IDLE, GET_HEADER, GET_LED_R, GET_LED_G, GET_LED_B);
	signal rx_state			: rx_state_type		:= IDLE;	-- Reciver State
	
	signal led_r_reg		: std_logic_vector(LED_BITS-1 downto 0) := (Others => '0');	-- R-LED Register
	signal led_g_reg		: std_logic_vector(LED_BITS-1 downto 0) := (Others => '0');	-- G-LED Register
	signal led_b_reg		: std_logic_vector(LED_BITS-1 downto 0) := (Others => '0');	-- B-LED Register

	-- Temporary registers for R and G LEDs
	signal temp_reg_led_r	: std_logic_vector(LED_BITS-1 downto 0) := (Others => '0');
	signal temp_reg_led_g	: std_logic_vector(LED_BITS-1 downto 0) := (Others => '0');

	
	--------- ARCHITECTURE BEGINS ----------
begin

	-- Initializing master's valid signal according to current state of transmitter
	with tx_state select m_axis_tvalid <=
	'0'	when	DELAY,
	'1'	when	SEND_HEADER, 
	'1'	when	SEND_JSTK_X,
	'1'	when	SEND_JSTK_Y,
	'1'	when	SEND_BUTTONS;

	-- Initializing master's data according to current state of transmitter
	with tx_state select m_axis_tdata <=
	x"00"										when	DELAY,
	HEADER_CODE									when	SEND_HEADER,
	jstk_x_reg									when	SEND_JSTK_X,
	jstk_y_reg									when	SEND_JSTK_Y,
	-- Of the 1-byte data the buttons represent the 2-bit LSBs
	b"000000" & btn_trigger_reg & btn_jstk_reg	when	SEND_BUTTONS;	

	-- Initializing slave's ready signal according to current state of receiver
	with rx_state select s_axis_tready <=
	'0'	when	IDLE,
	'1'	when	GET_HEADER,
	'1'	when	GET_LED_R,
	'1'	when	GET_LED_G,
	'1'	when	GET_LED_B;

	-- Output: LED values received from PC
	led_r	<= led_r_reg;
	led_g	<= led_g_reg;
	led_b	<= led_b_reg;


	-- FSM for transmitting X,Y-axis and button values 
	TRANSMIT_FSM: process(aclk, aresetn)
	begin
		--------- ASYNCHRONOUS RESET ----------
		if aresetn = '0' then

			tx_delay_counter 	<= 0;
			tx_state 			<= DELAY;
			
			jstk_x_reg			<= (Others => '0');
			jstk_y_reg			<= (Others => '0');
			btn_jstk_reg		<= '0';
			btn_trigger_reg		<= '0';
		
		--------- SYNCHRONOUS PROCESS ----------
		elsif rising_edge(aclk) then

				case tx_state is

					when DELAY =>
						-- State change after delay
						if tx_delay_counter = TX_DELAY - 1 then
							tx_delay_counter <= 0;
							tx_state <= SEND_HEADER;

							-- Setting MSBs to '0' according to the number of joystick asix bits to be transferred as they are not used.
							jstk_x_reg(jstk_x_reg'HIGH downto JSTK_BITS)	<= (Others => '0');
							-- Assigning the rest of the bits the required MSBs of the received X-axis position.
							jstk_x_reg(JSTK_BITS-1 downto 0)				<= jstk_x(JSTK_BITS_ACTUAL-1 downto (JSTK_BITS_ACTUAL - JSTK_BITS));
							-- Similarly for Y-axis position:
							jstk_y_reg(jstk_y_reg'HIGH downto JSTK_BITS)	<= (Others => '0');
							jstk_y_reg(JSTK_BITS-1 downto 0)				<= jstk_y(JSTK_BITS_ACTUAL-1 downto (JSTK_BITS_ACTUAL - JSTK_BITS));	
							
							-- Sampling button values
							btn_jstk_reg	<= btn_jstk;
							btn_trigger_reg	<= btn_trigger;
						else
							-- Incrementing the counter
							tx_delay_counter <= tx_delay_counter + 1;
						end if;

					-- For all states, data is sent according to the respective m_axis_tdata assigned above.
					when SEND_HEADER =>

						if m_axis_tready = '1' then
							tx_state <= SEND_JSTK_X;	-- State change
						end if;


					when SEND_JSTK_X =>

						if m_axis_tready = '1' then
							tx_state <= SEND_JSTK_Y;	-- State change
						end if;


					when SEND_JSTK_Y =>

						if m_axis_tready = '1' then
							tx_state <= SEND_BUTTONS;	-- State change
						end if;


					when SEND_BUTTONS =>

						if m_axis_tready = '1' then
							tx_state <= DELAY;			-- State change
						end if;

				end case;

		end if;

	end process TRANSMIT_FSM;
	

	-- FSM for receiving RGB values from PC
	RECEIVE_FSM: process(aclk, aresetn)
	begin
		--------- ASYNCHRONOUS RESET ----------
		if aresetn = '0' then

			rx_state <= IDLE;

			led_r_reg		<=	(Others => '0');
			led_g_reg		<=	(Others => '0');
			led_b_reg		<=	(Others => '0');

			temp_reg_led_r	<=	(Others => '0');
			temp_reg_led_g	<=	(Others => '0');

		--------- SYNCHRONOUS PROCESS ----------
		elsif rising_edge(aclk) then

			case rx_state is
				-- For all states the Slave's ready signal is assigned above.
				when IDLE =>

					if s_axis_tvalid = '1' then
						rx_state <= GET_HEADER;		-- State change
					end if;


				when GET_HEADER =>
					-- State change only if the header code is correct (X"C0")
					if s_axis_tdata = HEADER_CODE then
						rx_state <= GET_LED_R;
					else 
						rx_state <= IDLE;
					end if;


				when GET_LED_R =>

					if s_axis_tvalid = '1' then
						temp_reg_led_r <= s_axis_tdata;
						rx_state <= GET_LED_G;			-- State change
					end if;


				when GET_LED_G =>

					if s_axis_tvalid = '1' then
						temp_reg_led_g <= s_axis_tdata;
						rx_state <= GET_LED_B;			-- State change
					end if;


				when GET_LED_B =>

					if s_axis_tvalid = '1' then

						-- Assigning the respective RGB LED values
						led_b_reg <= s_axis_tdata;
						led_r_reg <= temp_reg_led_r;
						led_g_reg <= temp_reg_led_g;
						rx_state <= IDLE;				-- State change
					end if;

			end case;

		end if;

	end process RECEIVE_FSM	;

end architecture;