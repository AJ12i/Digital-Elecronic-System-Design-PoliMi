library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use IEEE.NUMERIC_STD.ALL;


entity Moving_average_filter is
	generic (
		FILTER_SAMPLES	:	integer	:= 32    -- MAF has a fixed order 32
	);
	Port (
		aclk 			: in	STD_LOGIC;
		aresetn			: in	STD_LOGIC;
		
		filter_enable	: in	STD_LOGIC;

		m_axis_tvalid	: out	STD_LOGIC;
		m_axis_tdata	: out	STD_LOGIC_VECTOR(23 downto 0);
		m_axis_tready	: in	STD_LOGIC;
		m_axis_tlast	: out	STD_LOGIC;

		s_axis_tvalid	: in	STD_LOGIC;
		s_axis_tdata	: in	STD_LOGIC_VECTOR(23 downto 0);
		s_axis_tready	: out	STD_LOGIC;
		s_axis_tlast	: in	STD_LOGIC
	);
end Moving_average_filter;

architecture Behavioral of Moving_average_filter is
    
    ------------------- CONSTANT DECLARATION ------------------
	constant	ZERO	:	STD_LOGIC_VECTOR(m_axis_tdata'RANGE) := (Others => '0');

    ------------------- SIGNAL DECLARATION -------------------
	-- Filter registers
	type sample_array_type is array(FILTER_SAMPLES-1 downto 0) of STD_LOGIC_VECTOR(m_axis_tdata'RANGE);
	   -- Signals for storing the sample data
		signal r_sample			:	sample_array_type						:= (Others => (Others => '0'));
		signal l_sample			:	sample_array_type						:= (Others => (Others => '0'));
		
		-- Signals for the filtered output
		signal l_filtered 		:	STD_LOGIC_VECTOR(m_axis_tdata'RANGE)	:= (Others => '0');	
		signal r_filtered 		:	STD_LOGIC_VECTOR(m_axis_tdata'RANGE)	:= (Others => '0');	
		signal counter_sample	:	INTEGER RANGE 0 to FILTER_SAMPLES-1		:= 0;

	-- For Receiver States
	type rx_state_type is (IDLE, RECEIVE_L, RECEIVE_R);
		signal rx_state			: rx_state_type := IDLE;

	-- For Transmitter States
	type tx_state_type is (IDLE, TRANSMIT_L, TRANSMIT_R);
		signal tx_state			: tx_state_type := IDLE;

    ------------------- ARCHITECTURE BEGINS -------------------

begin

	-- Receiver signals
	with rx_state select s_axis_tready <=
	'0'		when IDLE,
	'1'		when RECEIVE_L,
	'1'		when RECEIVE_R;
    
    -- Setting the sample data
	l_sample(counter_sample)	<=	s_axis_tdata	when	rx_state = RECEIVE_L;
	r_sample(counter_sample)	<=	s_axis_tdata	when	rx_state = RECEIVE_R;

	-- Transmitter signals
	with tx_state select m_axis_tvalid <=
		'0'		when IDLE,
		'1'		when TRANSMIT_L,
		'1'		when TRANSMIT_R;

	with tx_state select m_axis_tlast <=
		'0'		when IDLE,
		'0'		when TRANSMIT_L,
		'1'		when TRANSMIT_R;     --t_last is HIGH only for R-CHANNEL

	-- The filtered signal is transmitted only when filter_enable is HIGH
	-- In all other cases the original (unfiltered) audio signal is transmitted.
	m_axis_tdata	<=	ZERO			when tx_state =  IDLE else
						s_axis_tdata	when filter_enable = '0' and tx_state = TRANSMIT_L else
						s_axis_tdata	when filter_enable = '0' and tx_state = TRANSMIT_R else
						l_filtered		when filter_enable = '1' and tx_state = TRANSMIT_L else
						r_filtered		when filter_enable = '1' and tx_state = TRANSMIT_R;

	-----------------------------------------

	RX_FSM: process(aclk, aresetn)
	begin
		if aresetn = '0' then
		--------- Synchronous Process ----------	
		elsif rising_edge(aclk) then

			case rx_state is

				when IDLE =>

					if s_axis_tvalid = '1' then
						rx_state	<= RECEIVE_L;    -- State change
					end if;

				when RECEIVE_L =>
					-- l-CHANNEL data is sampled and stored at the respective index (i.e the value of the sample counter)
					-- and is set above according to rx_state
					if s_axis_tvalid = '1' then
						rx_state	<= RECEIVE_R;    -- State change
					end if;

				when RECEIVE_R =>
					-- Similarly the R-cahnnel data is sampled and is set above according to rx_state
					if s_axis_tlast = '1' then

						rx_state	<= RECEIVE_L;    -- State change

						-- Setting counter back to 0
						if counter_sample >= FILTER_SAMPLES-1 then
							counter_sample	<= 0;
						else
							counter_sample	<= counter_sample + 1;    -- incrementing the counter
						end if;

					end if;

			end case;

		end if;
	end process RX_FSM;

	-----------------------------------------

	TX_FSM: process(aclk, aresetn)
	begin
		if aresetn = '0' then
		--------- Synchronous Process ----------	
		elsif rising_edge(aclk) then

			case tx_state is

				when IDLE =>

					tx_state	<= TRANSMIT_L;       -- State change

				when TRANSMIT_L =>
                    -- m_axis_tdata is set above according to tx_state and filter_enable
					if m_axis_tready = '1' then
						tx_state	<= TRANSMIT_R;   -- State change
					end if;

				when TRANSMIT_R =>
                    -- m_axis_tdata is set above according to tx_state and filter_enable
					if m_axis_tready = '1' then
						tx_state	<= IDLE;     -- State change
					end if;

			end case;

		end if;
	end process TX_FSM;

	-----------------------------------------

	-- The samples are summed and then averaged (divided by the filter order)
	MOVING_AVERAGE_FILTER: process(aclk, aresetn)
		-- Variables are used for immediate assignment
		variable l_channel : INTEGER := 0;
		variable r_channel : INTEGER := 0;
	begin
		if aresetn = '0' then
		--------- Synchronous Process ----------	
		elsif rising_edge(aclk) then

			if filter_enable = '1' then

				l_channel	:= 0;
				r_channel	:= 0;

				-- Summing all the sample values
				for I in 0 TO FILTER_SAMPLES-1 loop
					l_channel	:= l_channel + to_integer(signed(l_sample(I)));
					r_channel	:= r_channel + to_integer(signed(r_sample(I)));
				end loop;

				-- Averaging the summed values
				l_filtered	<= STD_LOGIC_VECTOR(to_signed(l_channel / FILTER_SAMPLES,l_filtered'length));
				r_filtered	<= STD_LOGIC_VECTOR(to_signed(r_channel / FILTER_SAMPLES,r_filtered'length));

			end if;

		end if;
	end process MOVING_AVERAGE_FILTER;

end architecture;
-- We did try to use Right shift by 5-bits for the division by 32, but were running into some unexpected results.
-- So, in the end we decided to go for the brute-force approach. 