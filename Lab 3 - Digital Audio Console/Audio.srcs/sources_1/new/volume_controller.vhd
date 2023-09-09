library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use IEEE.NUMERIC_STD.ALL;


entity Volume_controller is
	generic (
		N_VALUE			:	INTEGER RANGE 0 TO 10 := 6	-- As N=6 gives good results
	);
	Port (
		aclk 			: in	STD_LOGIC;
		aresetn			: in	STD_LOGIC;

		volume			: in	STD_LOGIC_VECTOR(9 downto 0);

		m_axis_tvalid	: out	STD_LOGIC;
		m_axis_tdata	: out	STD_LOGIC_VECTOR(23 downto 0);
		m_axis_tready	: in	STD_LOGIC;
		m_axis_tlast	: out	STD_LOGIC;

		s_axis_tvalid	: in	STD_LOGIC;
		s_axis_tdata	: in	STD_LOGIC_VECTOR(23 downto 0);
		s_axis_tready	: out	STD_LOGIC;
		s_axis_tlast	: in	STD_LOGIC
	);
end Volume_controller;

architecture Behavioral of Volume_controller is

	------------------- CONSTANT DECLARATION -------------------

	constant	ZERO	:	STD_LOGIC_VECTOR(m_axis_tdata'RANGE) := (Others => '0');

	------------------- SIGNAL DECLARATION -------------------
	-- For Transmitter States
	type tx_state_type is (IDLE, TRANSMIT_L, TRANSMIT_R);
		signal tx_state			: tx_state_type := IDLE;
		
	-- For Receiver States
	type rx_state_type is (IDLE,RECEIVE_L,RECEIVE_R);
		signal rx_state	: rx_state_type := RECEIVE_L;

	-- For Volume Control States
	type volume_control_state_type is (IDLE,REDUCE_VOL,INCREASE_VOL,FINISH);
		signal volume_control_state : volume_control_state_type := IDLE;

	-- Data registers
	signal r_channel		:	STD_LOGIC_VECTOR(m_axis_tdata'RANGE) := (Others => '0');
	signal l_channel		:	STD_LOGIC_VECTOR(m_axis_tdata'RANGE) := (Others => '0');
	signal r_channel_vol	:	STD_LOGIC_VECTOR(m_axis_tdata'RANGE) := (Others => '0');
	signal l_channel_vol	:	STD_LOGIC_VECTOR(m_axis_tdata'RANGE) := (Others => '0');

	signal volume_reg		:	INTEGER RANGE 0 TO 2**(volume'HIGH+1)-1 := 0;
	signal exponent			:	INTEGER RANGE 0 TO 2**(volume'HIGH) := 0;

	signal counter_exp		:	INTEGER RANGE 0 TO 2**(volume'HIGH) := 0;

	------------------- ARCHITECTURE BEGINS -------------------
begin

	volume_reg	<= to_integer(UNSIGNED(volume));

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
						l_channel_vol	when tx_state = TRANSMIT_L else
						r_channel_vol	when tx_state = TRANSMIT_R;


	RECEIVER_FSM: process(aclk, aresetn)
	begin
		if aresetn = '0' then
		
		--------- Synchronous Process ----------	
		elsif rising_edge(aclk) then

			case rx_state is

				when IDLE =>

					if volume_control_state = FINISH then
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


	TRANSMITTER_FSM: process(aclk, aresetn)
	begin
		if aresetn = '0' then
		
		--------- Synchronous Process ----------
		elsif rising_edge(aclk) then

			case tx_state is

				when IDLE =>

					if volume_control_state = FINISH then
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

	-- Volume Controller
	Volume_control: process(aclk, aresetn)
	begin
		if aresetn = '0' then
		
		--------- Synchronous Process ----------		
		elsif rising_edge(aclk) then

			case volume_control_state is
			
				when IDLE =>

					if rx_state = IDLE and tx_state = IDLE then
						--Exponent update
						if volume_reg <= 2**(volume'HIGH) then
							volume_control_state	<= REDUCE_VOL;
							exponent				<= (2**(volume'HIGH) - volume_reg) / 2**N_VALUE;
						else
							volume_control_state	<= INCREASE_VOL;
							exponent				<= (volume_reg - 2**(volume'HIGH)) / 2**N_VALUE;
						end if;
						
						-- Sample data
						l_channel_vol	<= l_channel;
						r_channel_vol	<= r_channel;

					end if;

				-- Reducing the volume
				when REDUCE_VOL =>
				
					-- No amplification
					if exponent = 0 then 		
						volume_control_state	<= FINISH;
					else
						-- Reducing Left channel volume 
						if l_channel_vol(l_channel_vol'HIGH) = '0' then
							-- Right shift for positive values
							l_channel_vol	<= '0' & l_channel_vol(l_channel_vol'HIGH downto l_channel_vol'LOW+1);
						else
							-- Right shift for negative values
							l_channel_vol	<= '1' & l_channel_vol(l_channel_vol'HIGH downto l_channel_vol'LOW+1);
						end if;

						-- Reducing Right channel volume
						if r_channel_vol(r_channel_vol'HIGH) = '0' then
							-- Right shift for positive values
							r_channel_vol	<= '0' & r_channel_vol(r_channel_vol'HIGH downto r_channel_vol'LOW+1);
						else
							-- Right shift for negative values
							r_channel_vol	<= '1' & r_channel_vol(r_channel_vol'HIGH downto r_channel_vol'LOW+1);
						end if;
						
						-- Decrementing by 1
						exponent <= exponent - 1;

					end if;

				-- Increase volume using Left-shifts or staturate to maximum value to avoid distortion. 
				when INCREASE_VOL =>
					-- No amplification
					if exponent = 0 then
						volume_control_state	<= FINISH;
					else
						-- Increasing Left channel volume
						if l_channel_vol(l_channel_vol'HIGH) = l_channel_vol(l_channel_vol'HIGH-1) then
							l_channel_vol	<= l_channel_vol(l_channel_vol'HIGH-1 downto l_channel_vol'LOW) & '0';
						else
							-- Saturating to maximum
							l_channel_vol(l_channel_vol'HIGH-1 DOWNTO 0) <= (Others => NOT l_channel_vol(l_channel_vol'HIGH));
							volume_control_state	<= FINISH;
						end if;

						-- Increasing Right channel volume
						if r_channel_vol(r_channel_vol'HIGH) = r_channel_vol(r_channel_vol'HIGH-1) then
							r_channel_vol	<= r_channel_vol(r_channel_vol'HIGH-1 downto r_channel_vol'LOW) & '0';
						else
							-- Saturating to maximum
							r_channel_vol(r_channel_vol'HIGH-1 DOWNTO 0) <= (Others => NOT r_channel_vol(r_channel_vol'HIGH));
							volume_control_state	<= FINISH;
						end if;
						
						-- Decrementing by 1
						exponent	<= exponent - 1;

					end if;

				when FINISH =>

					volume_control_state <= IDLE;

			end case;

		end if;
		
	end process Volume_control;
	
end architecture;


