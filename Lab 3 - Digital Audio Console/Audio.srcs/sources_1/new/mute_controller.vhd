library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Mute_controller is
	Port (
		aclk			: in	STD_LOGIC;
		aresetn			: in	STD_LOGIC;
		mute_enable 	: in	STD_LOGIC;

		m_axis_tvalid	: out	STD_LOGIC;
		m_axis_tdata	: out	STD_LOGIC_VECTOR(23 downto 0);
		m_axis_tready	: in	STD_LOGIC;
		m_axis_tlast	: out	STD_LOGIC;
		
		s_axis_tvalid	: in	STD_LOGIC;
		s_axis_tdata	: in	STD_LOGIC_VECTOR(23 downto 0);
		s_axis_tready	: out	STD_LOGIC;
		s_axis_tlast	: in	STD_LOGIC
	);
end Mute_controller;

architecture Behavioral of Mute_controller is

	constant MUTE	:	STD_LOGIC_VECTOR(m_axis_tdata'RANGE) := (Others => '0');

begin

	m_axis_tvalid	<=	s_axis_tvalid;
	m_axis_tlast	<=	s_axis_tlast;
    
    -- The data bits are set to 0 when mute is enabled. 
	m_axis_tdata	<=	MUTE when mute_enable = '1' else s_axis_tdata;

	s_axis_tready	<=	m_axis_tready;

end Behavioral;
