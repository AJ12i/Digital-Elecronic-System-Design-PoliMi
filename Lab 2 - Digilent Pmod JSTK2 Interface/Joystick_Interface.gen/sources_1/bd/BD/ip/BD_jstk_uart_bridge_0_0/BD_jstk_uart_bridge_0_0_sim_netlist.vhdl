-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Apr 13 15:17:43 2023
-- Host        : DESKTOP-AVPI1T7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/alija/Joystick_Interface/Joystick_Interface.gen/sources_1/bd/BD/ip/BD_jstk_uart_bridge_0_0/BD_jstk_uart_bridge_0_0_sim_netlist.vhdl
-- Design      : BD_jstk_uart_bridge_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_jstk_uart_bridge_0_0_jstk_uart_bridge is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tready : out STD_LOGIC;
    led_r : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led_g : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led_b : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    btn_jstk : in STD_LOGIC;
    btn_trigger : in STD_LOGIC;
    jstk_y : in STD_LOGIC_VECTOR ( 6 downto 0 );
    jstk_x : in STD_LOGIC_VECTOR ( 6 downto 0 );
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BD_jstk_uart_bridge_0_0_jstk_uart_bridge : entity is "jstk_uart_bridge";
end BD_jstk_uart_bridge_0_0_jstk_uart_bridge;

architecture STRUCTURE of BD_jstk_uart_bridge_0_0_jstk_uart_bridge is
  signal \FSM_sequential_rx_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[2]_i_1_n_0\ : STD_LOGIC;
  signal btn_jstk_reg : STD_LOGIC;
  signal btn_trigger_reg : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal jstk_x_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal jstk_x_reg_2 : STD_LOGIC;
  signal jstk_y_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal led_b_reg : STD_LOGIC;
  signal \led_r_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal rx_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \rx_state__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal temp_reg_led_g : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal temp_reg_led_g_0 : STD_LOGIC;
  signal temp_reg_led_r : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal temp_reg_led_r_1 : STD_LOGIC;
  signal tx_delay_counter : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \tx_delay_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \tx_delay_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \tx_delay_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \tx_delay_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \tx_delay_counter0_carry__1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \tx_delay_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \tx_delay_counter0_carry__1_n_3\ : STD_LOGIC;
  signal \tx_delay_counter0_carry__2_n_0\ : STD_LOGIC;
  signal \tx_delay_counter0_carry__2_n_1\ : STD_LOGIC;
  signal \tx_delay_counter0_carry__2_n_2\ : STD_LOGIC;
  signal \tx_delay_counter0_carry__2_n_3\ : STD_LOGIC;
  signal \tx_delay_counter0_carry__3_n_2\ : STD_LOGIC;
  signal \tx_delay_counter0_carry__3_n_3\ : STD_LOGIC;
  signal tx_delay_counter0_carry_n_0 : STD_LOGIC;
  signal tx_delay_counter0_carry_n_1 : STD_LOGIC;
  signal tx_delay_counter0_carry_n_2 : STD_LOGIC;
  signal tx_delay_counter0_carry_n_3 : STD_LOGIC;
  signal \tx_delay_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[11]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[12]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[13]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[14]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[15]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[16]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[17]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[18]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[19]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[19]_i_2_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[19]_i_3_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[19]_i_4_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[19]_i_5_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[19]_i_6_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[19]_i_7_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \tx_delay_counter[9]_i_1_n_0\ : STD_LOGIC;
  signal \tx_state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_tx_delay_counter0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_tx_delay_counter0_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[2]_i_1\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[0]\ : label is "get_header:001,get_led_g:011,get_led_b:100,idle:000,get_led_r:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[1]\ : label is "get_header:001,get_led_g:011,get_led_b:100,idle:000,get_led_r:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[2]\ : label is "get_header:001,get_led_g:011,get_led_b:100,idle:000,get_led_r:010";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[0]\ : label is "delay:000,send_header:001,send_jstk_x:010,send_jstk_y:011,send_buttons:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[1]\ : label is "delay:000,send_header:001,send_jstk_x:010,send_jstk_y:011,send_buttons:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[2]\ : label is "delay:000,send_header:001,send_jstk_x:010,send_jstk_y:011,send_buttons:100,";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of m_axis_tvalid_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0 : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of tx_delay_counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \tx_delay_counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \tx_delay_counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \tx_delay_counter0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \tx_delay_counter0_carry__3\ : label is 35;
  attribute SOFT_HLUTNM of \tx_delay_counter[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tx_delay_counter[19]_i_6\ : label is "soft_lutpair5";
begin
\FSM_sequential_rx_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A5E0"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(1),
      I2 => rx_state(0),
      I3 => s_axis_tvalid,
      O => \FSM_sequential_rx_state[0]_i_1_n_0\
    );
\FSM_sequential_rx_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EAF2F0"
    )
        port map (
      I0 => \rx_state__0\(1),
      I1 => rx_state(2),
      I2 => rx_state(1),
      I3 => rx_state(0),
      I4 => s_axis_tvalid,
      O => \FSM_sequential_rx_state[1]_i_1_n_0\
    );
\FSM_sequential_rx_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000062222222"
    )
        port map (
      I0 => rx_state(1),
      I1 => rx_state(0),
      I2 => s_axis_tdata(6),
      I3 => \FSM_sequential_rx_state[1]_i_3_n_0\,
      I4 => s_axis_tdata(7),
      I5 => rx_state(2),
      O => \rx_state__0\(1)
    );
\FSM_sequential_rx_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => s_axis_tdata(3),
      I1 => s_axis_tdata(4),
      I2 => s_axis_tdata(1),
      I3 => s_axis_tdata(0),
      I4 => s_axis_tdata(5),
      I5 => s_axis_tdata(2),
      O => \FSM_sequential_rx_state[1]_i_3_n_0\
    );
\FSM_sequential_rx_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E8AA"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(1),
      I2 => rx_state(0),
      I3 => s_axis_tvalid,
      O => \FSM_sequential_rx_state[2]_i_1_n_0\
    );
\FSM_sequential_rx_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => \FSM_sequential_rx_state[0]_i_1_n_0\,
      Q => rx_state(0)
    );
\FSM_sequential_rx_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => \FSM_sequential_rx_state[1]_i_1_n_0\,
      Q => rx_state(1)
    );
\FSM_sequential_rx_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => \FSM_sequential_rx_state[2]_i_1_n_0\,
      Q => rx_state(2)
    );
\FSM_sequential_tx_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"500E550A"
    )
        port map (
      I0 => jstk_x_reg_2,
      I1 => \tx_state__0\(1),
      I2 => \tx_state__0\(2),
      I3 => \tx_state__0\(0),
      I4 => m_axis_tready,
      O => \FSM_sequential_tx_state[0]_i_1_n_0\
    );
\FSM_sequential_tx_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"434C464C"
    )
        port map (
      I0 => jstk_x_reg_2,
      I1 => \tx_state__0\(1),
      I2 => \tx_state__0\(2),
      I3 => \tx_state__0\(0),
      I4 => m_axis_tready,
      O => \FSM_sequential_tx_state[1]_i_1_n_0\
    );
\FSM_sequential_tx_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5C405850"
    )
        port map (
      I0 => jstk_x_reg_2,
      I1 => \tx_state__0\(1),
      I2 => \tx_state__0\(2),
      I3 => \tx_state__0\(0),
      I4 => m_axis_tready,
      O => \FSM_sequential_tx_state[2]_i_1_n_0\
    );
\FSM_sequential_tx_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => \FSM_sequential_tx_state[0]_i_1_n_0\,
      Q => \tx_state__0\(0)
    );
\FSM_sequential_tx_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => \FSM_sequential_tx_state[1]_i_1_n_0\,
      Q => \tx_state__0\(1)
    );
\FSM_sequential_tx_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => \FSM_sequential_tx_state[2]_i_1_n_0\,
      Q => \tx_state__0\(2)
    );
btn_jstk_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \tx_delay_counter[19]_i_3_n_0\,
      I1 => \tx_delay_counter[19]_i_4_n_0\,
      I2 => \tx_delay_counter[19]_i_5_n_0\,
      I3 => \tx_delay_counter[19]_i_1_n_0\,
      I4 => \tx_delay_counter[19]_i_7_n_0\,
      I5 => \tx_delay_counter[19]_i_6_n_0\,
      O => jstk_x_reg_2
    );
btn_jstk_reg_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg_2,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => btn_jstk,
      Q => btn_jstk_reg
    );
btn_trigger_reg_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg_2,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => btn_trigger,
      Q => btn_trigger_reg
    );
\jstk_x_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg_2,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => jstk_x(0),
      Q => jstk_x_reg(0)
    );
\jstk_x_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg_2,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => jstk_x(1),
      Q => jstk_x_reg(1)
    );
\jstk_x_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg_2,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => jstk_x(2),
      Q => jstk_x_reg(2)
    );
\jstk_x_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg_2,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => jstk_x(3),
      Q => jstk_x_reg(3)
    );
\jstk_x_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg_2,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => jstk_x(4),
      Q => jstk_x_reg(4)
    );
\jstk_x_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg_2,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => jstk_x(5),
      Q => jstk_x_reg(5)
    );
\jstk_x_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg_2,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => jstk_x(6),
      Q => jstk_x_reg(6)
    );
\jstk_y_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg_2,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => jstk_y(0),
      Q => jstk_y_reg(0)
    );
\jstk_y_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg_2,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => jstk_y(1),
      Q => jstk_y_reg(1)
    );
\jstk_y_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg_2,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => jstk_y(2),
      Q => jstk_y_reg(2)
    );
\jstk_y_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg_2,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => jstk_y(3),
      Q => jstk_y_reg(3)
    );
\jstk_y_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg_2,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => jstk_y(4),
      Q => jstk_y_reg(4)
    );
\jstk_y_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg_2,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => jstk_y(5),
      Q => jstk_y_reg(5)
    );
\jstk_y_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg_2,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => jstk_y(6),
      Q => jstk_y_reg(6)
    );
\led_b_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_b_reg,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => s_axis_tdata(0),
      Q => led_b(0)
    );
\led_b_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_b_reg,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => s_axis_tdata(1),
      Q => led_b(1)
    );
\led_b_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_b_reg,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => s_axis_tdata(2),
      Q => led_b(2)
    );
\led_b_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_b_reg,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => s_axis_tdata(3),
      Q => led_b(3)
    );
\led_b_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_b_reg,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => s_axis_tdata(4),
      Q => led_b(4)
    );
\led_b_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_b_reg,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => s_axis_tdata(5),
      Q => led_b(5)
    );
\led_b_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_b_reg,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => s_axis_tdata(6),
      Q => led_b(6)
    );
\led_b_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_b_reg,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => s_axis_tdata(7),
      Q => led_b(7)
    );
\led_g_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_b_reg,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => temp_reg_led_g(0),
      Q => led_g(0)
    );
\led_g_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_b_reg,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => temp_reg_led_g(1),
      Q => led_g(1)
    );
\led_g_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_b_reg,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => temp_reg_led_g(2),
      Q => led_g(2)
    );
\led_g_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_b_reg,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => temp_reg_led_g(3),
      Q => led_g(3)
    );
\led_g_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_b_reg,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => temp_reg_led_g(4),
      Q => led_g(4)
    );
\led_g_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_b_reg,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => temp_reg_led_g(5),
      Q => led_g(5)
    );
\led_g_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_b_reg,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => temp_reg_led_g(6),
      Q => led_g(6)
    );
\led_g_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_b_reg,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => temp_reg_led_g(7),
      Q => led_g(7)
    );
\led_r_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => rx_state(0),
      I1 => s_axis_tvalid,
      I2 => rx_state(1),
      I3 => rx_state(2),
      O => led_b_reg
    );
\led_r_reg[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \led_r_reg[7]_i_2_n_0\
    );
\led_r_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_b_reg,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => temp_reg_led_r(0),
      Q => led_r(0)
    );
\led_r_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_b_reg,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => temp_reg_led_r(1),
      Q => led_r(1)
    );
\led_r_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_b_reg,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => temp_reg_led_r(2),
      Q => led_r(2)
    );
\led_r_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_b_reg,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => temp_reg_led_r(3),
      Q => led_r(3)
    );
\led_r_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_b_reg,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => temp_reg_led_r(4),
      Q => led_r(4)
    );
\led_r_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_b_reg,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => temp_reg_led_r(5),
      Q => led_r(5)
    );
\led_r_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_b_reg,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => temp_reg_led_r(6),
      Q => led_r(6)
    );
\led_r_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_b_reg,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => temp_reg_led_r(7),
      Q => led_r(7)
    );
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000CA000000CA0"
    )
        port map (
      I0 => btn_jstk_reg,
      I1 => jstk_x_reg(0),
      I2 => \tx_state__0\(2),
      I3 => \tx_state__0\(1),
      I4 => \tx_state__0\(0),
      I5 => jstk_y_reg(0),
      O => m_axis_tdata(0)
    );
\m_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C00AF000C00A00"
    )
        port map (
      I0 => btn_trigger_reg,
      I1 => jstk_y_reg(1),
      I2 => \tx_state__0\(1),
      I3 => \tx_state__0\(2),
      I4 => \tx_state__0\(0),
      I5 => jstk_x_reg(1),
      O => m_axis_tdata(1)
    );
\m_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E200"
    )
        port map (
      I0 => jstk_x_reg(2),
      I1 => \tx_state__0\(0),
      I2 => jstk_y_reg(2),
      I3 => \tx_state__0\(1),
      I4 => \tx_state__0\(2),
      O => m_axis_tdata(2)
    );
\m_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E200"
    )
        port map (
      I0 => jstk_x_reg(3),
      I1 => \tx_state__0\(0),
      I2 => jstk_y_reg(3),
      I3 => \tx_state__0\(1),
      I4 => \tx_state__0\(2),
      O => m_axis_tdata(3)
    );
\m_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E200"
    )
        port map (
      I0 => jstk_x_reg(4),
      I1 => \tx_state__0\(0),
      I2 => jstk_y_reg(4),
      I3 => \tx_state__0\(1),
      I4 => \tx_state__0\(2),
      O => m_axis_tdata(4)
    );
\m_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E200"
    )
        port map (
      I0 => jstk_x_reg(5),
      I1 => \tx_state__0\(0),
      I2 => jstk_y_reg(5),
      I3 => \tx_state__0\(1),
      I4 => \tx_state__0\(2),
      O => m_axis_tdata(5)
    );
\m_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F30088"
    )
        port map (
      I0 => jstk_x_reg(6),
      I1 => \tx_state__0\(1),
      I2 => jstk_y_reg(6),
      I3 => \tx_state__0\(2),
      I4 => \tx_state__0\(0),
      O => m_axis_tdata(6)
    );
\m_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \tx_state__0\(1),
      I1 => \tx_state__0\(0),
      I2 => \tx_state__0\(2),
      O => m_axis_tdata(7)
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"36"
    )
        port map (
      I0 => \tx_state__0\(1),
      I1 => \tx_state__0\(2),
      I2 => \tx_state__0\(0),
      O => m_axis_tvalid
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(0),
      I2 => rx_state(1),
      O => s_axis_tready
    );
\temp_reg_led_g[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => rx_state(0),
      I1 => s_axis_tvalid,
      I2 => rx_state(1),
      I3 => rx_state(2),
      O => temp_reg_led_g_0
    );
\temp_reg_led_g_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_led_g_0,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => s_axis_tdata(0),
      Q => temp_reg_led_g(0)
    );
\temp_reg_led_g_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_led_g_0,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => s_axis_tdata(1),
      Q => temp_reg_led_g(1)
    );
\temp_reg_led_g_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_led_g_0,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => s_axis_tdata(2),
      Q => temp_reg_led_g(2)
    );
\temp_reg_led_g_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_led_g_0,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => s_axis_tdata(3),
      Q => temp_reg_led_g(3)
    );
\temp_reg_led_g_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_led_g_0,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => s_axis_tdata(4),
      Q => temp_reg_led_g(4)
    );
\temp_reg_led_g_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_led_g_0,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => s_axis_tdata(5),
      Q => temp_reg_led_g(5)
    );
\temp_reg_led_g_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_led_g_0,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => s_axis_tdata(6),
      Q => temp_reg_led_g(6)
    );
\temp_reg_led_g_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_led_g_0,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => s_axis_tdata(7),
      Q => temp_reg_led_g(7)
    );
\temp_reg_led_r[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => rx_state(0),
      I1 => s_axis_tvalid,
      I2 => rx_state(1),
      I3 => rx_state(2),
      O => temp_reg_led_r_1
    );
\temp_reg_led_r_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_led_r_1,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => s_axis_tdata(0),
      Q => temp_reg_led_r(0)
    );
\temp_reg_led_r_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_led_r_1,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => s_axis_tdata(1),
      Q => temp_reg_led_r(1)
    );
\temp_reg_led_r_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_led_r_1,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => s_axis_tdata(2),
      Q => temp_reg_led_r(2)
    );
\temp_reg_led_r_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_led_r_1,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => s_axis_tdata(3),
      Q => temp_reg_led_r(3)
    );
\temp_reg_led_r_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_led_r_1,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => s_axis_tdata(4),
      Q => temp_reg_led_r(4)
    );
\temp_reg_led_r_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_led_r_1,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => s_axis_tdata(5),
      Q => temp_reg_led_r(5)
    );
\temp_reg_led_r_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_led_r_1,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => s_axis_tdata(6),
      Q => temp_reg_led_r(6)
    );
\temp_reg_led_r_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_led_r_1,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => s_axis_tdata(7),
      Q => temp_reg_led_r(7)
    );
tx_delay_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => tx_delay_counter0_carry_n_0,
      CO(2) => tx_delay_counter0_carry_n_1,
      CO(1) => tx_delay_counter0_carry_n_2,
      CO(0) => tx_delay_counter0_carry_n_3,
      CYINIT => tx_delay_counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => tx_delay_counter(4 downto 1)
    );
\tx_delay_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => tx_delay_counter0_carry_n_0,
      CO(3) => \tx_delay_counter0_carry__0_n_0\,
      CO(2) => \tx_delay_counter0_carry__0_n_1\,
      CO(1) => \tx_delay_counter0_carry__0_n_2\,
      CO(0) => \tx_delay_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => tx_delay_counter(8 downto 5)
    );
\tx_delay_counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tx_delay_counter0_carry__0_n_0\,
      CO(3) => \tx_delay_counter0_carry__1_n_0\,
      CO(2) => \tx_delay_counter0_carry__1_n_1\,
      CO(1) => \tx_delay_counter0_carry__1_n_2\,
      CO(0) => \tx_delay_counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => tx_delay_counter(12 downto 9)
    );
\tx_delay_counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tx_delay_counter0_carry__1_n_0\,
      CO(3) => \tx_delay_counter0_carry__2_n_0\,
      CO(2) => \tx_delay_counter0_carry__2_n_1\,
      CO(1) => \tx_delay_counter0_carry__2_n_2\,
      CO(0) => \tx_delay_counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => tx_delay_counter(16 downto 13)
    );
\tx_delay_counter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \tx_delay_counter0_carry__2_n_0\,
      CO(3 downto 2) => \NLW_tx_delay_counter0_carry__3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \tx_delay_counter0_carry__3_n_2\,
      CO(0) => \tx_delay_counter0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_tx_delay_counter0_carry__3_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(19 downto 17),
      S(3) => '0',
      S(2 downto 0) => tx_delay_counter(19 downto 17)
    );
\tx_delay_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tx_delay_counter(0),
      O => \tx_delay_counter[0]_i_1_n_0\
    );
\tx_delay_counter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000000"
    )
        port map (
      I0 => \tx_delay_counter[19]_i_3_n_0\,
      I1 => \tx_delay_counter[19]_i_4_n_0\,
      I2 => \tx_delay_counter[19]_i_5_n_0\,
      I3 => \tx_delay_counter[19]_i_6_n_0\,
      I4 => \tx_delay_counter[19]_i_7_n_0\,
      I5 => data0(10),
      O => \tx_delay_counter[10]_i_1_n_0\
    );
\tx_delay_counter[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000000"
    )
        port map (
      I0 => \tx_delay_counter[19]_i_3_n_0\,
      I1 => \tx_delay_counter[19]_i_4_n_0\,
      I2 => \tx_delay_counter[19]_i_5_n_0\,
      I3 => \tx_delay_counter[19]_i_6_n_0\,
      I4 => \tx_delay_counter[19]_i_7_n_0\,
      I5 => data0(11),
      O => \tx_delay_counter[11]_i_1_n_0\
    );
\tx_delay_counter[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000000"
    )
        port map (
      I0 => \tx_delay_counter[19]_i_3_n_0\,
      I1 => \tx_delay_counter[19]_i_4_n_0\,
      I2 => \tx_delay_counter[19]_i_5_n_0\,
      I3 => \tx_delay_counter[19]_i_6_n_0\,
      I4 => \tx_delay_counter[19]_i_7_n_0\,
      I5 => data0(12),
      O => \tx_delay_counter[12]_i_1_n_0\
    );
\tx_delay_counter[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000000"
    )
        port map (
      I0 => \tx_delay_counter[19]_i_3_n_0\,
      I1 => \tx_delay_counter[19]_i_4_n_0\,
      I2 => \tx_delay_counter[19]_i_5_n_0\,
      I3 => \tx_delay_counter[19]_i_6_n_0\,
      I4 => \tx_delay_counter[19]_i_7_n_0\,
      I5 => data0(13),
      O => \tx_delay_counter[13]_i_1_n_0\
    );
\tx_delay_counter[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000000"
    )
        port map (
      I0 => \tx_delay_counter[19]_i_3_n_0\,
      I1 => \tx_delay_counter[19]_i_4_n_0\,
      I2 => \tx_delay_counter[19]_i_5_n_0\,
      I3 => \tx_delay_counter[19]_i_6_n_0\,
      I4 => \tx_delay_counter[19]_i_7_n_0\,
      I5 => data0(14),
      O => \tx_delay_counter[14]_i_1_n_0\
    );
\tx_delay_counter[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000000"
    )
        port map (
      I0 => \tx_delay_counter[19]_i_3_n_0\,
      I1 => \tx_delay_counter[19]_i_4_n_0\,
      I2 => \tx_delay_counter[19]_i_5_n_0\,
      I3 => \tx_delay_counter[19]_i_6_n_0\,
      I4 => \tx_delay_counter[19]_i_7_n_0\,
      I5 => data0(15),
      O => \tx_delay_counter[15]_i_1_n_0\
    );
\tx_delay_counter[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000000"
    )
        port map (
      I0 => \tx_delay_counter[19]_i_3_n_0\,
      I1 => \tx_delay_counter[19]_i_4_n_0\,
      I2 => \tx_delay_counter[19]_i_5_n_0\,
      I3 => \tx_delay_counter[19]_i_6_n_0\,
      I4 => \tx_delay_counter[19]_i_7_n_0\,
      I5 => data0(16),
      O => \tx_delay_counter[16]_i_1_n_0\
    );
\tx_delay_counter[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000000"
    )
        port map (
      I0 => \tx_delay_counter[19]_i_3_n_0\,
      I1 => \tx_delay_counter[19]_i_4_n_0\,
      I2 => \tx_delay_counter[19]_i_5_n_0\,
      I3 => \tx_delay_counter[19]_i_6_n_0\,
      I4 => \tx_delay_counter[19]_i_7_n_0\,
      I5 => data0(17),
      O => \tx_delay_counter[17]_i_1_n_0\
    );
\tx_delay_counter[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000000"
    )
        port map (
      I0 => \tx_delay_counter[19]_i_3_n_0\,
      I1 => \tx_delay_counter[19]_i_4_n_0\,
      I2 => \tx_delay_counter[19]_i_5_n_0\,
      I3 => \tx_delay_counter[19]_i_6_n_0\,
      I4 => \tx_delay_counter[19]_i_7_n_0\,
      I5 => data0(18),
      O => \tx_delay_counter[18]_i_1_n_0\
    );
\tx_delay_counter[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \tx_state__0\(1),
      I1 => \tx_state__0\(0),
      I2 => \tx_state__0\(2),
      O => \tx_delay_counter[19]_i_1_n_0\
    );
\tx_delay_counter[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000000"
    )
        port map (
      I0 => \tx_delay_counter[19]_i_3_n_0\,
      I1 => \tx_delay_counter[19]_i_4_n_0\,
      I2 => \tx_delay_counter[19]_i_5_n_0\,
      I3 => \tx_delay_counter[19]_i_6_n_0\,
      I4 => \tx_delay_counter[19]_i_7_n_0\,
      I5 => data0(19),
      O => \tx_delay_counter[19]_i_2_n_0\
    );
\tx_delay_counter[19]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => tx_delay_counter(12),
      I1 => tx_delay_counter(7),
      I2 => tx_delay_counter(6),
      I3 => tx_delay_counter(15),
      O => \tx_delay_counter[19]_i_3_n_0\
    );
\tx_delay_counter[19]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => tx_delay_counter(4),
      I1 => tx_delay_counter(13),
      I2 => tx_delay_counter(2),
      I3 => tx_delay_counter(3),
      O => \tx_delay_counter[19]_i_4_n_0\
    );
\tx_delay_counter[19]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => tx_delay_counter(5),
      I1 => tx_delay_counter(14),
      I2 => tx_delay_counter(9),
      I3 => tx_delay_counter(8),
      O => \tx_delay_counter[19]_i_5_n_0\
    );
\tx_delay_counter[19]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => tx_delay_counter(0),
      I1 => tx_delay_counter(11),
      I2 => tx_delay_counter(19),
      I3 => tx_delay_counter(17),
      O => \tx_delay_counter[19]_i_6_n_0\
    );
\tx_delay_counter[19]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => tx_delay_counter(18),
      I1 => tx_delay_counter(16),
      I2 => tx_delay_counter(1),
      I3 => tx_delay_counter(10),
      O => \tx_delay_counter[19]_i_7_n_0\
    );
\tx_delay_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000000"
    )
        port map (
      I0 => \tx_delay_counter[19]_i_3_n_0\,
      I1 => \tx_delay_counter[19]_i_4_n_0\,
      I2 => \tx_delay_counter[19]_i_5_n_0\,
      I3 => \tx_delay_counter[19]_i_6_n_0\,
      I4 => \tx_delay_counter[19]_i_7_n_0\,
      I5 => data0(1),
      O => \tx_delay_counter[1]_i_1_n_0\
    );
\tx_delay_counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000000"
    )
        port map (
      I0 => \tx_delay_counter[19]_i_3_n_0\,
      I1 => \tx_delay_counter[19]_i_4_n_0\,
      I2 => \tx_delay_counter[19]_i_5_n_0\,
      I3 => \tx_delay_counter[19]_i_6_n_0\,
      I4 => \tx_delay_counter[19]_i_7_n_0\,
      I5 => data0(2),
      O => \tx_delay_counter[2]_i_1_n_0\
    );
\tx_delay_counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000000"
    )
        port map (
      I0 => \tx_delay_counter[19]_i_3_n_0\,
      I1 => \tx_delay_counter[19]_i_4_n_0\,
      I2 => \tx_delay_counter[19]_i_5_n_0\,
      I3 => \tx_delay_counter[19]_i_6_n_0\,
      I4 => \tx_delay_counter[19]_i_7_n_0\,
      I5 => data0(3),
      O => \tx_delay_counter[3]_i_1_n_0\
    );
\tx_delay_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000000"
    )
        port map (
      I0 => \tx_delay_counter[19]_i_3_n_0\,
      I1 => \tx_delay_counter[19]_i_4_n_0\,
      I2 => \tx_delay_counter[19]_i_5_n_0\,
      I3 => \tx_delay_counter[19]_i_6_n_0\,
      I4 => \tx_delay_counter[19]_i_7_n_0\,
      I5 => data0(4),
      O => \tx_delay_counter[4]_i_1_n_0\
    );
\tx_delay_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000000"
    )
        port map (
      I0 => \tx_delay_counter[19]_i_3_n_0\,
      I1 => \tx_delay_counter[19]_i_4_n_0\,
      I2 => \tx_delay_counter[19]_i_5_n_0\,
      I3 => \tx_delay_counter[19]_i_6_n_0\,
      I4 => \tx_delay_counter[19]_i_7_n_0\,
      I5 => data0(5),
      O => \tx_delay_counter[5]_i_1_n_0\
    );
\tx_delay_counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000000"
    )
        port map (
      I0 => \tx_delay_counter[19]_i_3_n_0\,
      I1 => \tx_delay_counter[19]_i_4_n_0\,
      I2 => \tx_delay_counter[19]_i_5_n_0\,
      I3 => \tx_delay_counter[19]_i_6_n_0\,
      I4 => \tx_delay_counter[19]_i_7_n_0\,
      I5 => data0(6),
      O => \tx_delay_counter[6]_i_1_n_0\
    );
\tx_delay_counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000000"
    )
        port map (
      I0 => \tx_delay_counter[19]_i_3_n_0\,
      I1 => \tx_delay_counter[19]_i_4_n_0\,
      I2 => \tx_delay_counter[19]_i_5_n_0\,
      I3 => \tx_delay_counter[19]_i_6_n_0\,
      I4 => \tx_delay_counter[19]_i_7_n_0\,
      I5 => data0(7),
      O => \tx_delay_counter[7]_i_1_n_0\
    );
\tx_delay_counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000000"
    )
        port map (
      I0 => \tx_delay_counter[19]_i_3_n_0\,
      I1 => \tx_delay_counter[19]_i_4_n_0\,
      I2 => \tx_delay_counter[19]_i_5_n_0\,
      I3 => \tx_delay_counter[19]_i_6_n_0\,
      I4 => \tx_delay_counter[19]_i_7_n_0\,
      I5 => data0(8),
      O => \tx_delay_counter[8]_i_1_n_0\
    );
\tx_delay_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000000"
    )
        port map (
      I0 => \tx_delay_counter[19]_i_3_n_0\,
      I1 => \tx_delay_counter[19]_i_4_n_0\,
      I2 => \tx_delay_counter[19]_i_5_n_0\,
      I3 => \tx_delay_counter[19]_i_6_n_0\,
      I4 => \tx_delay_counter[19]_i_7_n_0\,
      I5 => data0(9),
      O => \tx_delay_counter[9]_i_1_n_0\
    );
\tx_delay_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tx_delay_counter[19]_i_1_n_0\,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => \tx_delay_counter[0]_i_1_n_0\,
      Q => tx_delay_counter(0)
    );
\tx_delay_counter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tx_delay_counter[19]_i_1_n_0\,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => \tx_delay_counter[10]_i_1_n_0\,
      Q => tx_delay_counter(10)
    );
\tx_delay_counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tx_delay_counter[19]_i_1_n_0\,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => \tx_delay_counter[11]_i_1_n_0\,
      Q => tx_delay_counter(11)
    );
\tx_delay_counter_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tx_delay_counter[19]_i_1_n_0\,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => \tx_delay_counter[12]_i_1_n_0\,
      Q => tx_delay_counter(12)
    );
\tx_delay_counter_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tx_delay_counter[19]_i_1_n_0\,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => \tx_delay_counter[13]_i_1_n_0\,
      Q => tx_delay_counter(13)
    );
\tx_delay_counter_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tx_delay_counter[19]_i_1_n_0\,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => \tx_delay_counter[14]_i_1_n_0\,
      Q => tx_delay_counter(14)
    );
\tx_delay_counter_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tx_delay_counter[19]_i_1_n_0\,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => \tx_delay_counter[15]_i_1_n_0\,
      Q => tx_delay_counter(15)
    );
\tx_delay_counter_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tx_delay_counter[19]_i_1_n_0\,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => \tx_delay_counter[16]_i_1_n_0\,
      Q => tx_delay_counter(16)
    );
\tx_delay_counter_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tx_delay_counter[19]_i_1_n_0\,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => \tx_delay_counter[17]_i_1_n_0\,
      Q => tx_delay_counter(17)
    );
\tx_delay_counter_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tx_delay_counter[19]_i_1_n_0\,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => \tx_delay_counter[18]_i_1_n_0\,
      Q => tx_delay_counter(18)
    );
\tx_delay_counter_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tx_delay_counter[19]_i_1_n_0\,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => \tx_delay_counter[19]_i_2_n_0\,
      Q => tx_delay_counter(19)
    );
\tx_delay_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tx_delay_counter[19]_i_1_n_0\,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => \tx_delay_counter[1]_i_1_n_0\,
      Q => tx_delay_counter(1)
    );
\tx_delay_counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tx_delay_counter[19]_i_1_n_0\,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => \tx_delay_counter[2]_i_1_n_0\,
      Q => tx_delay_counter(2)
    );
\tx_delay_counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tx_delay_counter[19]_i_1_n_0\,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => \tx_delay_counter[3]_i_1_n_0\,
      Q => tx_delay_counter(3)
    );
\tx_delay_counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tx_delay_counter[19]_i_1_n_0\,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => \tx_delay_counter[4]_i_1_n_0\,
      Q => tx_delay_counter(4)
    );
\tx_delay_counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tx_delay_counter[19]_i_1_n_0\,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => \tx_delay_counter[5]_i_1_n_0\,
      Q => tx_delay_counter(5)
    );
\tx_delay_counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tx_delay_counter[19]_i_1_n_0\,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => \tx_delay_counter[6]_i_1_n_0\,
      Q => tx_delay_counter(6)
    );
\tx_delay_counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tx_delay_counter[19]_i_1_n_0\,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => \tx_delay_counter[7]_i_1_n_0\,
      Q => tx_delay_counter(7)
    );
\tx_delay_counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tx_delay_counter[19]_i_1_n_0\,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => \tx_delay_counter[8]_i_1_n_0\,
      Q => tx_delay_counter(8)
    );
\tx_delay_counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tx_delay_counter[19]_i_1_n_0\,
      CLR => \led_r_reg[7]_i_2_n_0\,
      D => \tx_delay_counter[9]_i_1_n_0\,
      Q => tx_delay_counter(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_jstk_uart_bridge_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tready : out STD_LOGIC;
    jstk_x : in STD_LOGIC_VECTOR ( 9 downto 0 );
    jstk_y : in STD_LOGIC_VECTOR ( 9 downto 0 );
    btn_jstk : in STD_LOGIC;
    btn_trigger : in STD_LOGIC;
    led_r : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led_g : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led_b : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of BD_jstk_uart_bridge_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of BD_jstk_uart_bridge_0_0 : entity is "BD_jstk_uart_bridge_0_0,jstk_uart_bridge,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of BD_jstk_uart_bridge_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of BD_jstk_uart_bridge_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of BD_jstk_uart_bridge_0_0 : entity is "jstk_uart_bridge,Vivado 2020.2";
end BD_jstk_uart_bridge_0_0;

architecture STRUCTURE of BD_jstk_uart_bridge_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_parameter of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_parameter of s_axis_tvalid : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
U0: entity work.BD_jstk_uart_bridge_0_0_jstk_uart_bridge
     port map (
      aclk => aclk,
      aresetn => aresetn,
      btn_jstk => btn_jstk,
      btn_trigger => btn_trigger,
      jstk_x(6 downto 0) => jstk_x(9 downto 3),
      jstk_y(6 downto 0) => jstk_y(9 downto 3),
      led_b(7 downto 0) => led_b(7 downto 0),
      led_g(7 downto 0) => led_g(7 downto 0),
      led_r(7 downto 0) => led_r(7 downto 0),
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(7 downto 0) => s_axis_tdata(7 downto 0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
