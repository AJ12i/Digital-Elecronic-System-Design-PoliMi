library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use IEEE.NUMERIC_STD.ALL;

-- The Balance Controller is very similar to the Volume Controller, with just the need to 
-- reduce the volume of the L/R channel to hear the audio from the other channel.

entity Balance_controller is
	generic (
		N_VALUE			:	INTEGER RANGE 1 TO 10 := 6		-- As N=6 gives good results
	);
	Port (
		aclk 			: in	STD_LOGIC;
		aresetn			: in	STD_LOGIC;

		balance			: in	STD_LOGIC_VECTOR(9 downto 0);

		m_axis_tvalid	: out	STD_LOGIC;
		m_axis_tdata	: out	STD_LOGIC_VECTOR(23 downto 0);
		m_axis_tready	: in	STD_LOGIC;
		m_axis_tlast	: out	STD_LOGIC;

		s_axis_tvalid	: in	STD_LOGIC;
		s_axis_tdata	: in	STD_LOGIC_VECTOR(23 downto 0);
		s_axis_tready	: out	STD_LOGIC;
		s_axis_tlast	: in	STD_LOGIC
	);
end Balance_controller;

architecture Behavioral of Balance_controller is
	
	------------------- CONSTANT DECLARATION -------------------
	
	constant	ZERO	:	STD_LOGIC_VECTOR(m_axis_tdata'RANGE) := (Others => '0');

	------------------- SIGNAL DECLARATION -------------------
	-- For Transmitter States
	type tx_state_type is (IDLE, TRANSMIT_L, TRANSMIT_R);
		signal tx_state		: tx_state_type := IDLE;
		
	-- For Receiver States
	type rx_state_type is (IDLE,RECEIVE_L,RECEIVE_R);
		signal rx_state		: rx_state_type := RECEIVE_L;

	-- For Balance Control States
	type balance_control_state_type is (IDLE,REDUCE_LEFT,REDUCE_RIGHT,FINISH);
		signal balance_control_state : balance_control_state_type := IDLE;

	-- Data registers
	signal r_channel		:	STD_LOGIC_VECTOR(m_axis_tdata'RANGE) := (Others => '0');
	signal l_channel		:	STD_LOGIC_VECTOR(m_axis_tdata'RANGE) := (Others => '0');
	signal r_channel_bal	:	STD_LOGIC_VECTOR(m_axis_tdata'RANGE) := (Others => '0');
	signal l_channel_bal	:	STD_LOGIC_VECTOR(m_axis_tdata'RANGE) := (Others => '0');

	signal balance_reg		:	INTEGER RANGE 0 TO 2**(balance'HIGH+1)-1 := 0;
	signal exponent			:	INTEGER RANGE 0 TO 2**(balance'HIGH) := 0;

	signal counter_exp		:	INTEGER RANGE 0 TO 2**(balance'HIGH) := 0;

	------------------- ARCHITECTURE BEGINS -------------------
begin

	balance_reg	<= to_integer(UNSIGNED(balance));

	-- Receiver signals
	with rx_state select s_axis_tready <=
	'0'		when IDLE,
	'1'		when RECEIVE_L,
	'1'		when RECEIVE_R;

	l_channel	<=	s_axis_tdata	when	rx_state = RECEIVE_L;
	r_channel	<=	s_axis_tdata	when	rx_state = RECEIVE_R;

	-- Transmitter signals
	with tx_state select m_axis_tvalid <=
	'0'		when IDLE,
	'1'		when TRANSMIT_L,
	'1'		when TRANSMIT_R;

	with tx_state select m_axis_tlast <=
	'0'		when IDLE,
	'0'		when TRANSMIT_L,
	'1'		when TRANSMIT_R;	--t_last is HIGH only for R-CHANNEL

	m_axis_tdata	<=	ZERO			when tx_state = IDLE else
						l_channel_bal	when tx_state = TRANSMIT_L else
						r_channel_bal	when tx_state = TRANSMIT_R;


	RECEIVER_FSM: process(aclk, aresetn)
	begin
		if aresetn = '0' then
		
		--------- Synchronous Process ----------
		elsif rising_edge(aclk) then

			case rx_state is

				when IDLE =>

					if balance_control_state = FINISH then
						rx_state	<= RECEIVE_L;	-- State change
					end if;

				when RECEIVE_L =>
					-- l-CHANNEL data is set above according to rx_state
					if s_axis_tvalid = '1' then
						rx_state	<= RECEIVE_R;	-- State change
					end if;

				when RECEIVE_R =>
					-- R-CHANNEL data is set above according to rx_state
					if s_axis_tlast = '1' then
						rx_state	<= IDLE;		-- State change
					end if;

			end case;

		end if;
	end process RECEIVER_FSM;

	-----------------------------------------

	TRANSMITTER_FSM: process(aclk, aresetn)
	begin
		if aresetn = '0' then
		
		--------- Synchronous Process ----------
		elsif rising_edge(aclk) then

			case tx_state is

				when IDLE =>

					if balance_control_state = FINISH then
						tx_state <= TRANSMIT_L;		-- State change
					end if;

				when TRANSMIT_L =>
					-- m_axis_tdata is set above according to tx_state
					if m_axis_tready = '1' then
						tx_state	<= TRANSMIT_R;	-- State change
					end if;

				when TRANSMIT_R =>
					-- m_axis_tdata is set above according to tx_state
					if m_axis_tready = '1' then
						tx_state	<= IDLE;		-- State change
					end if;

			end case;

		end if;
	end process TRANSMITTER_FSM;

	-----------------------------------------

	Balance_control: process(aclk, aresetn)
	begin
		if aresetn = '0' then
			
		elsif rising_edge(aclk) then

			case balance_control_state is

				when IDLE =>

					if rx_state = IDLE and tx_state = IDLE then
						--Exponent update
						if balance_reg <= 2**(balance'HIGH) then
							balance_control_state		<= REDUCE_RIGHT;
							exponent					<= (2**(balance'HIGH) - balance_reg) / 2**N_VALUE;
						else
							balance_control_state		<= REDUCE_LEFT;
							exponent					<= (balance_reg - 2**(balance'HIGH)) / 2**N_VALUE;
						end if;

						-- Sample data
						l_channel_bal		<= l_channel;
						r_channel_bal		<= r_channel;

					end if;

				-- Reducing Left channel volume by right-shift
				when REDUCE_LEFT =>

					if exponent = 0 then
						balance_control_state	<= FINISH;
					else

						if l_channel_bal(l_channel_bal'HIGH) = '0' then
							-- Right shift for positive values
							l_channel_bal	<= '0' & l_channel_bal(l_channel_bal'HIGH downto l_channel_bal'LOW+1);
						else
							-- Right shift for negative values
							l_channel_bal	<= '1' & l_channel_bal(l_channel_bal'HIGH downto l_channel_bal'LOW+1);
						end if;
						
						-- Decrementing by 1
						exponent <= exponent - 1;

					end if;

				-- Reducing Right channel volume by right-shift
				when REDUCE_RIGHT =>

					if exponent = 0 then
						balance_control_state	<= FINISH;
					else

						if r_channel_bal(r_channel_bal'HIGH) = '0' then
							-- Right shift for positive values
							r_channel_bal	<= '0' & r_channel_bal(r_channel_bal'HIGH downto r_channel_bal'LOW+1);
						else
							-- Right shift for negative values
							r_channel_bal	<= '1' & r_channel_bal(r_channel_bal'HIGH downto r_channel_bal'LOW+1);
						end if;
						
						-- Decrementing by 1
						exponent <= exponent - 1;

					end if;

				when FINISH =>

					balance_control_state <= IDLE;

			end case;

		end if;
		
	end process Balance_control;

end architecture;