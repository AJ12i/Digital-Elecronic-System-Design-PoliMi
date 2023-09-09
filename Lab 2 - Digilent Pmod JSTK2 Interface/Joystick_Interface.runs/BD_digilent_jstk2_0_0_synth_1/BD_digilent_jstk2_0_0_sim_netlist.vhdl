-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Apr 13 15:17:43 2023
-- Host        : DESKTOP-AVPI1T7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ BD_digilent_jstk2_0_0_sim_netlist.vhdl
-- Design      : BD_digilent_jstk2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_digilent_jstk2 is
  port (
    jstk_x : out STD_LOGIC_VECTOR ( 9 downto 0 );
    jstk_y : out STD_LOGIC_VECTOR ( 9 downto 0 );
    btn_jstk : out STD_LOGIC;
    btn_trigger : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tready : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    led_b : in STD_LOGIC_VECTOR ( 7 downto 0 );
    led_g : in STD_LOGIC_VECTOR ( 7 downto 0 );
    led_r : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_digilent_jstk2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_digilent_jstk2 is
  signal \FSM_sequential_state_cmd[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cmd[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cmd[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_sts[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_sts[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_sts[2]_i_1_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal delay_counter : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \delay_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \delay_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \delay_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \delay_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \delay_counter0_carry__1_n_0\ : STD_LOGIC;
  signal \delay_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \delay_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \delay_counter0_carry__1_n_3\ : STD_LOGIC;
  signal \delay_counter0_carry__2_n_3\ : STD_LOGIC;
  signal delay_counter0_carry_n_0 : STD_LOGIC;
  signal delay_counter0_carry_n_1 : STD_LOGIC;
  signal delay_counter0_carry_n_2 : STD_LOGIC;
  signal delay_counter0_carry_n_3 : STD_LOGIC;
  signal \delay_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[11]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[12]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[13]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[14]_i_2_n_0\ : STD_LOGIC;
  signal \delay_counter[14]_i_3_n_0\ : STD_LOGIC;
  signal \delay_counter[14]_i_4_n_0\ : STD_LOGIC;
  signal \delay_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[9]_i_1_n_0\ : STD_LOGIC;
  signal delay_counter_1 : STD_LOGIC;
  signal jstk_x_reg : STD_LOGIC;
  signal \jstk_x_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal led_b_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \led_b_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal led_g_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal led_r_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal led_r_reg_0 : STD_LOGIC;
  signal \state_cmd__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal state_sts : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal temp_reg_jstk_x : STD_LOGIC_VECTOR ( 7 to 7 );
  signal temp_reg_jstk_x0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \temp_reg_jstk_x[8]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg_jstk_x[9]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg_jstk_x_reg_n_0_[0]\ : STD_LOGIC;
  signal \temp_reg_jstk_x_reg_n_0_[1]\ : STD_LOGIC;
  signal \temp_reg_jstk_x_reg_n_0_[2]\ : STD_LOGIC;
  signal \temp_reg_jstk_x_reg_n_0_[3]\ : STD_LOGIC;
  signal \temp_reg_jstk_x_reg_n_0_[4]\ : STD_LOGIC;
  signal \temp_reg_jstk_x_reg_n_0_[5]\ : STD_LOGIC;
  signal \temp_reg_jstk_x_reg_n_0_[6]\ : STD_LOGIC;
  signal \temp_reg_jstk_x_reg_n_0_[7]\ : STD_LOGIC;
  signal \temp_reg_jstk_x_reg_n_0_[8]\ : STD_LOGIC;
  signal \temp_reg_jstk_x_reg_n_0_[9]\ : STD_LOGIC;
  signal temp_reg_jstk_y : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \temp_reg_jstk_y[8]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg_jstk_y[9]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg_jstk_y_reg_n_0_[0]\ : STD_LOGIC;
  signal \temp_reg_jstk_y_reg_n_0_[1]\ : STD_LOGIC;
  signal \temp_reg_jstk_y_reg_n_0_[2]\ : STD_LOGIC;
  signal \temp_reg_jstk_y_reg_n_0_[3]\ : STD_LOGIC;
  signal \temp_reg_jstk_y_reg_n_0_[4]\ : STD_LOGIC;
  signal \temp_reg_jstk_y_reg_n_0_[5]\ : STD_LOGIC;
  signal \temp_reg_jstk_y_reg_n_0_[6]\ : STD_LOGIC;
  signal \temp_reg_jstk_y_reg_n_0_[7]\ : STD_LOGIC;
  signal \temp_reg_jstk_y_reg_n_0_[8]\ : STD_LOGIC;
  signal \temp_reg_jstk_y_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_delay_counter0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_counter0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_cmd[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state_cmd[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state_cmd[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_cmd_reg[0]\ : label is "wait_delay:000,send_cmd:001,send_red:010,send_green:011,send_blue:100,send_dummy:101,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_cmd_reg[1]\ : label is "wait_delay:000,send_cmd:001,send_red:010,send_green:011,send_blue:100,send_dummy:101,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_cmd_reg[2]\ : label is "wait_delay:000,send_cmd:001,send_red:010,send_green:011,send_blue:100,send_dummy:101,";
  attribute SOFT_HLUTNM of \FSM_sequential_state_sts[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_state_sts[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_state_sts[2]_i_1\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_sts_reg[0]\ : label is "get_x_lsb:000,get_x_msb:001,get_y_lsb:010,get_y_msb:011,get_buttons:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_sts_reg[1]\ : label is "get_x_lsb:000,get_x_msb:001,get_y_lsb:010,get_y_msb:011,get_buttons:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_sts_reg[2]\ : label is "get_x_lsb:000,get_x_msb:001,get_y_lsb:010,get_y_msb:011,get_buttons:100,";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of delay_counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \delay_counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \delay_counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \delay_counter0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of m_axis_tvalid_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \temp_reg_jstk_x[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \temp_reg_jstk_x[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \temp_reg_jstk_x[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \temp_reg_jstk_x[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \temp_reg_jstk_x[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \temp_reg_jstk_x[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \temp_reg_jstk_x[7]_i_1\ : label is "soft_lutpair3";
begin
\FSM_sequential_state_cmd[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"43324666"
    )
        port map (
      I0 => led_r_reg_0,
      I1 => \state_cmd__0\(0),
      I2 => \state_cmd__0\(1),
      I3 => \state_cmd__0\(2),
      I4 => m_axis_tready,
      O => \FSM_sequential_state_cmd[0]_i_1_n_0\
    );
\FSM_sequential_state_cmd[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"503C5078"
    )
        port map (
      I0 => led_r_reg_0,
      I1 => \state_cmd__0\(0),
      I2 => \state_cmd__0\(1),
      I3 => \state_cmd__0\(2),
      I4 => m_axis_tready,
      O => \FSM_sequential_state_cmd[1]_i_1_n_0\
    );
\FSM_sequential_state_cmd[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"53C05780"
    )
        port map (
      I0 => led_r_reg_0,
      I1 => \state_cmd__0\(0),
      I2 => \state_cmd__0\(1),
      I3 => \state_cmd__0\(2),
      I4 => m_axis_tready,
      O => \FSM_sequential_state_cmd[2]_i_1_n_0\
    );
\FSM_sequential_state_cmd_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \FSM_sequential_state_cmd[0]_i_1_n_0\,
      Q => \state_cmd__0\(0)
    );
\FSM_sequential_state_cmd_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \FSM_sequential_state_cmd[1]_i_1_n_0\,
      Q => \state_cmd__0\(1)
    );
\FSM_sequential_state_cmd_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \FSM_sequential_state_cmd[2]_i_1_n_0\,
      Q => \state_cmd__0\(2)
    );
\FSM_sequential_state_sts[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"34"
    )
        port map (
      I0 => state_sts(2),
      I1 => s_axis_tvalid,
      I2 => state_sts(0),
      O => \FSM_sequential_state_sts[0]_i_1_n_0\
    );
\FSM_sequential_state_sts[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F20"
    )
        port map (
      I0 => state_sts(0),
      I1 => state_sts(2),
      I2 => s_axis_tvalid,
      I3 => state_sts(1),
      O => \FSM_sequential_state_sts[1]_i_1_n_0\
    );
\FSM_sequential_state_sts[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F80"
    )
        port map (
      I0 => state_sts(0),
      I1 => state_sts(1),
      I2 => s_axis_tvalid,
      I3 => state_sts(2),
      O => \FSM_sequential_state_sts[2]_i_1_n_0\
    );
\FSM_sequential_state_sts_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \FSM_sequential_state_sts[0]_i_1_n_0\,
      Q => state_sts(0)
    );
\FSM_sequential_state_sts_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \FSM_sequential_state_sts[1]_i_1_n_0\,
      Q => state_sts(1)
    );
\FSM_sequential_state_sts_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \FSM_sequential_state_sts[2]_i_1_n_0\,
      Q => state_sts(2)
    );
\U0/\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => state_sts(2),
      I1 => state_sts(1),
      I2 => s_axis_tvalid,
      I3 => state_sts(0),
      O => temp_reg_jstk_x(7)
    );
\__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => state_sts(2),
      I1 => state_sts(0),
      I2 => s_axis_tvalid,
      I3 => state_sts(1),
      O => temp_reg_jstk_y(7)
    );
btn_jstk_reg_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => s_axis_tdata(0),
      Q => btn_jstk
    );
btn_trigger_reg_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => s_axis_tdata(1),
      Q => btn_trigger
    );
delay_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => delay_counter0_carry_n_0,
      CO(2) => delay_counter0_carry_n_1,
      CO(1) => delay_counter0_carry_n_2,
      CO(0) => delay_counter0_carry_n_3,
      CYINIT => delay_counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => delay_counter(4 downto 1)
    );
\delay_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => delay_counter0_carry_n_0,
      CO(3) => \delay_counter0_carry__0_n_0\,
      CO(2) => \delay_counter0_carry__0_n_1\,
      CO(1) => \delay_counter0_carry__0_n_2\,
      CO(0) => \delay_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => delay_counter(8 downto 5)
    );
\delay_counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_counter0_carry__0_n_0\,
      CO(3) => \delay_counter0_carry__1_n_0\,
      CO(2) => \delay_counter0_carry__1_n_1\,
      CO(1) => \delay_counter0_carry__1_n_2\,
      CO(0) => \delay_counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => delay_counter(12 downto 9)
    );
\delay_counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_counter0_carry__1_n_0\,
      CO(3 downto 1) => \NLW_delay_counter0_carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \delay_counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_delay_counter0_carry__2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => data0(14 downto 13),
      S(3 downto 2) => B"00",
      S(1 downto 0) => delay_counter(14 downto 13)
    );
\delay_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_counter(0),
      O => \delay_counter[0]_i_1_n_0\
    );
\delay_counter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => \delay_counter[14]_i_3_n_0\,
      I1 => delay_counter(8),
      I2 => delay_counter(11),
      I3 => delay_counter(4),
      I4 => \delay_counter[14]_i_4_n_0\,
      I5 => data0(10),
      O => \delay_counter[10]_i_1_n_0\
    );
\delay_counter[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => \delay_counter[14]_i_3_n_0\,
      I1 => delay_counter(8),
      I2 => delay_counter(11),
      I3 => delay_counter(4),
      I4 => \delay_counter[14]_i_4_n_0\,
      I5 => data0(11),
      O => \delay_counter[11]_i_1_n_0\
    );
\delay_counter[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => \delay_counter[14]_i_3_n_0\,
      I1 => delay_counter(8),
      I2 => delay_counter(11),
      I3 => delay_counter(4),
      I4 => \delay_counter[14]_i_4_n_0\,
      I5 => data0(12),
      O => \delay_counter[12]_i_1_n_0\
    );
\delay_counter[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => \delay_counter[14]_i_3_n_0\,
      I1 => delay_counter(8),
      I2 => delay_counter(11),
      I3 => delay_counter(4),
      I4 => \delay_counter[14]_i_4_n_0\,
      I5 => data0(13),
      O => \delay_counter[13]_i_1_n_0\
    );
\delay_counter[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \state_cmd__0\(2),
      I1 => \state_cmd__0\(0),
      I2 => \state_cmd__0\(1),
      O => delay_counter_1
    );
\delay_counter[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => \delay_counter[14]_i_3_n_0\,
      I1 => delay_counter(8),
      I2 => delay_counter(11),
      I3 => delay_counter(4),
      I4 => \delay_counter[14]_i_4_n_0\,
      I5 => data0(14),
      O => \delay_counter[14]_i_2_n_0\
    );
\delay_counter[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => delay_counter(6),
      I1 => delay_counter(5),
      I2 => delay_counter(3),
      I3 => delay_counter(7),
      I4 => delay_counter(10),
      I5 => delay_counter(9),
      O => \delay_counter[14]_i_3_n_0\
    );
\delay_counter[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => delay_counter(12),
      I1 => delay_counter(13),
      I2 => delay_counter(0),
      I3 => delay_counter(14),
      I4 => delay_counter(2),
      I5 => delay_counter(1),
      O => \delay_counter[14]_i_4_n_0\
    );
\delay_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => \delay_counter[14]_i_3_n_0\,
      I1 => delay_counter(8),
      I2 => delay_counter(11),
      I3 => delay_counter(4),
      I4 => \delay_counter[14]_i_4_n_0\,
      I5 => data0(1),
      O => \delay_counter[1]_i_1_n_0\
    );
\delay_counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => \delay_counter[14]_i_3_n_0\,
      I1 => delay_counter(8),
      I2 => delay_counter(11),
      I3 => delay_counter(4),
      I4 => \delay_counter[14]_i_4_n_0\,
      I5 => data0(2),
      O => \delay_counter[2]_i_1_n_0\
    );
\delay_counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => \delay_counter[14]_i_3_n_0\,
      I1 => delay_counter(8),
      I2 => delay_counter(11),
      I3 => delay_counter(4),
      I4 => \delay_counter[14]_i_4_n_0\,
      I5 => data0(3),
      O => \delay_counter[3]_i_1_n_0\
    );
\delay_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => \delay_counter[14]_i_3_n_0\,
      I1 => delay_counter(8),
      I2 => delay_counter(11),
      I3 => delay_counter(4),
      I4 => \delay_counter[14]_i_4_n_0\,
      I5 => data0(4),
      O => \delay_counter[4]_i_1_n_0\
    );
\delay_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => \delay_counter[14]_i_3_n_0\,
      I1 => delay_counter(8),
      I2 => delay_counter(11),
      I3 => delay_counter(4),
      I4 => \delay_counter[14]_i_4_n_0\,
      I5 => data0(5),
      O => \delay_counter[5]_i_1_n_0\
    );
\delay_counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => \delay_counter[14]_i_3_n_0\,
      I1 => delay_counter(8),
      I2 => delay_counter(11),
      I3 => delay_counter(4),
      I4 => \delay_counter[14]_i_4_n_0\,
      I5 => data0(6),
      O => \delay_counter[6]_i_1_n_0\
    );
\delay_counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => \delay_counter[14]_i_3_n_0\,
      I1 => delay_counter(8),
      I2 => delay_counter(11),
      I3 => delay_counter(4),
      I4 => \delay_counter[14]_i_4_n_0\,
      I5 => data0(7),
      O => \delay_counter[7]_i_1_n_0\
    );
\delay_counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => \delay_counter[14]_i_3_n_0\,
      I1 => delay_counter(8),
      I2 => delay_counter(11),
      I3 => delay_counter(4),
      I4 => \delay_counter[14]_i_4_n_0\,
      I5 => data0(8),
      O => \delay_counter[8]_i_1_n_0\
    );
\delay_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => \delay_counter[14]_i_3_n_0\,
      I1 => delay_counter(8),
      I2 => delay_counter(11),
      I3 => delay_counter(4),
      I4 => \delay_counter[14]_i_4_n_0\,
      I5 => data0(9),
      O => \delay_counter[9]_i_1_n_0\
    );
\delay_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => delay_counter_1,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \delay_counter[0]_i_1_n_0\,
      Q => delay_counter(0)
    );
\delay_counter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => delay_counter_1,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \delay_counter[10]_i_1_n_0\,
      Q => delay_counter(10)
    );
\delay_counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => delay_counter_1,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \delay_counter[11]_i_1_n_0\,
      Q => delay_counter(11)
    );
\delay_counter_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => delay_counter_1,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \delay_counter[12]_i_1_n_0\,
      Q => delay_counter(12)
    );
\delay_counter_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => delay_counter_1,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \delay_counter[13]_i_1_n_0\,
      Q => delay_counter(13)
    );
\delay_counter_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => delay_counter_1,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \delay_counter[14]_i_2_n_0\,
      Q => delay_counter(14)
    );
\delay_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => delay_counter_1,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \delay_counter[1]_i_1_n_0\,
      Q => delay_counter(1)
    );
\delay_counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => delay_counter_1,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \delay_counter[2]_i_1_n_0\,
      Q => delay_counter(2)
    );
\delay_counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => delay_counter_1,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \delay_counter[3]_i_1_n_0\,
      Q => delay_counter(3)
    );
\delay_counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => delay_counter_1,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \delay_counter[4]_i_1_n_0\,
      Q => delay_counter(4)
    );
\delay_counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => delay_counter_1,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \delay_counter[5]_i_1_n_0\,
      Q => delay_counter(5)
    );
\delay_counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => delay_counter_1,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \delay_counter[6]_i_1_n_0\,
      Q => delay_counter(6)
    );
\delay_counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => delay_counter_1,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \delay_counter[7]_i_1_n_0\,
      Q => delay_counter(7)
    );
\delay_counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => delay_counter_1,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \delay_counter[8]_i_1_n_0\,
      Q => delay_counter(8)
    );
\delay_counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => delay_counter_1,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \delay_counter[9]_i_1_n_0\,
      Q => delay_counter(9)
    );
\jstk_x_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => state_sts(0),
      I1 => state_sts(1),
      I2 => s_axis_tvalid,
      I3 => state_sts(2),
      O => jstk_x_reg
    );
\jstk_x_reg[9]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \jstk_x_reg[9]_i_2_n_0\
    );
\jstk_x_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \temp_reg_jstk_x_reg_n_0_[0]\,
      Q => jstk_x(0)
    );
\jstk_x_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \temp_reg_jstk_x_reg_n_0_[1]\,
      Q => jstk_x(1)
    );
\jstk_x_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \temp_reg_jstk_x_reg_n_0_[2]\,
      Q => jstk_x(2)
    );
\jstk_x_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \temp_reg_jstk_x_reg_n_0_[3]\,
      Q => jstk_x(3)
    );
\jstk_x_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \temp_reg_jstk_x_reg_n_0_[4]\,
      Q => jstk_x(4)
    );
\jstk_x_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \temp_reg_jstk_x_reg_n_0_[5]\,
      Q => jstk_x(5)
    );
\jstk_x_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \temp_reg_jstk_x_reg_n_0_[6]\,
      Q => jstk_x(6)
    );
\jstk_x_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \temp_reg_jstk_x_reg_n_0_[7]\,
      Q => jstk_x(7)
    );
\jstk_x_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \temp_reg_jstk_x_reg_n_0_[8]\,
      Q => jstk_x(8)
    );
\jstk_x_reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \temp_reg_jstk_x_reg_n_0_[9]\,
      Q => jstk_x(9)
    );
\jstk_y_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \temp_reg_jstk_y_reg_n_0_[0]\,
      Q => jstk_y(0)
    );
\jstk_y_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \temp_reg_jstk_y_reg_n_0_[1]\,
      Q => jstk_y(1)
    );
\jstk_y_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \temp_reg_jstk_y_reg_n_0_[2]\,
      Q => jstk_y(2)
    );
\jstk_y_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \temp_reg_jstk_y_reg_n_0_[3]\,
      Q => jstk_y(3)
    );
\jstk_y_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \temp_reg_jstk_y_reg_n_0_[4]\,
      Q => jstk_y(4)
    );
\jstk_y_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \temp_reg_jstk_y_reg_n_0_[5]\,
      Q => jstk_y(5)
    );
\jstk_y_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \temp_reg_jstk_y_reg_n_0_[6]\,
      Q => jstk_y(6)
    );
\jstk_y_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \temp_reg_jstk_y_reg_n_0_[7]\,
      Q => jstk_y(7)
    );
\jstk_y_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \temp_reg_jstk_y_reg_n_0_[8]\,
      Q => jstk_y(8)
    );
\jstk_y_reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => jstk_x_reg,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \temp_reg_jstk_y_reg_n_0_[9]\,
      Q => jstk_y(9)
    );
\led_b_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \delay_counter[14]_i_3_n_0\,
      I1 => delay_counter(8),
      I2 => delay_counter(11),
      I3 => delay_counter(4),
      I4 => \delay_counter[14]_i_4_n_0\,
      I5 => \led_b_reg[7]_i_2_n_0\,
      O => led_r_reg_0
    );
\led_b_reg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \state_cmd__0\(1),
      I1 => \state_cmd__0\(0),
      I2 => \state_cmd__0\(2),
      O => \led_b_reg[7]_i_2_n_0\
    );
\led_b_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_r_reg_0,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => led_b(0),
      Q => led_b_reg(0)
    );
\led_b_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_r_reg_0,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => led_b(1),
      Q => led_b_reg(1)
    );
\led_b_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_r_reg_0,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => led_b(2),
      Q => led_b_reg(2)
    );
\led_b_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_r_reg_0,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => led_b(3),
      Q => led_b_reg(3)
    );
\led_b_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_r_reg_0,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => led_b(4),
      Q => led_b_reg(4)
    );
\led_b_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_r_reg_0,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => led_b(5),
      Q => led_b_reg(5)
    );
\led_b_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_r_reg_0,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => led_b(6),
      Q => led_b_reg(6)
    );
\led_b_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_r_reg_0,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => led_b(7),
      Q => led_b_reg(7)
    );
\led_g_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_r_reg_0,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => led_g(0),
      Q => led_g_reg(0)
    );
\led_g_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_r_reg_0,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => led_g(1),
      Q => led_g_reg(1)
    );
\led_g_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_r_reg_0,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => led_g(2),
      Q => led_g_reg(2)
    );
\led_g_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_r_reg_0,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => led_g(3),
      Q => led_g_reg(3)
    );
\led_g_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_r_reg_0,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => led_g(4),
      Q => led_g_reg(4)
    );
\led_g_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_r_reg_0,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => led_g(5),
      Q => led_g_reg(5)
    );
\led_g_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_r_reg_0,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => led_g(6),
      Q => led_g_reg(6)
    );
\led_g_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_r_reg_0,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => led_g(7),
      Q => led_g_reg(7)
    );
\led_r_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_r_reg_0,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => led_r(0),
      Q => led_r_reg(0)
    );
\led_r_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_r_reg_0,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => led_r(1),
      Q => led_r_reg(1)
    );
\led_r_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_r_reg_0,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => led_r(2),
      Q => led_r_reg(2)
    );
\led_r_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_r_reg_0,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => led_r(3),
      Q => led_r_reg(3)
    );
\led_r_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_r_reg_0,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => led_r(4),
      Q => led_r_reg(4)
    );
\led_r_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_r_reg_0,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => led_r(5),
      Q => led_r_reg(5)
    );
\led_r_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_r_reg_0,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => led_r(6),
      Q => led_r_reg(6)
    );
\led_r_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => led_r_reg_0,
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => led_r(7),
      Q => led_r_reg(7)
    );
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000CFA00000C0A00"
    )
        port map (
      I0 => led_r_reg(0),
      I1 => led_b_reg(0),
      I2 => \state_cmd__0\(0),
      I3 => \state_cmd__0\(1),
      I4 => \state_cmd__0\(2),
      I5 => led_g_reg(0),
      O => m_axis_tdata(0)
    );
\m_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000CFA00000C0A00"
    )
        port map (
      I0 => led_r_reg(1),
      I1 => led_b_reg(1),
      I2 => \state_cmd__0\(0),
      I3 => \state_cmd__0\(1),
      I4 => \state_cmd__0\(2),
      I5 => led_g_reg(1),
      O => m_axis_tdata(1)
    );
\m_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0CA0000F0CA0"
    )
        port map (
      I0 => led_b_reg(2),
      I1 => led_r_reg(2),
      I2 => \state_cmd__0\(2),
      I3 => \state_cmd__0\(1),
      I4 => \state_cmd__0\(0),
      I5 => led_g_reg(2),
      O => m_axis_tdata(2)
    );
\m_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000CFA00000C0A00"
    )
        port map (
      I0 => led_r_reg(3),
      I1 => led_b_reg(3),
      I2 => \state_cmd__0\(0),
      I3 => \state_cmd__0\(1),
      I4 => \state_cmd__0\(2),
      I5 => led_g_reg(3),
      O => m_axis_tdata(3)
    );
\m_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000CFA00000C0A00"
    )
        port map (
      I0 => led_r_reg(4),
      I1 => led_b_reg(4),
      I2 => \state_cmd__0\(0),
      I3 => \state_cmd__0\(1),
      I4 => \state_cmd__0\(2),
      I5 => led_g_reg(4),
      O => m_axis_tdata(4)
    );
\m_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000CA000000CA0"
    )
        port map (
      I0 => led_b_reg(5),
      I1 => led_r_reg(5),
      I2 => \state_cmd__0\(2),
      I3 => \state_cmd__0\(1),
      I4 => \state_cmd__0\(0),
      I5 => led_g_reg(5),
      O => m_axis_tdata(5)
    );
\m_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000CFA00000C0A00"
    )
        port map (
      I0 => led_r_reg(6),
      I1 => led_b_reg(6),
      I2 => \state_cmd__0\(0),
      I3 => \state_cmd__0\(1),
      I4 => \state_cmd__0\(2),
      I5 => led_g_reg(6),
      O => m_axis_tdata(6)
    );
\m_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000CFAF0000C0AF0"
    )
        port map (
      I0 => led_r_reg(7),
      I1 => led_b_reg(7),
      I2 => \state_cmd__0\(0),
      I3 => \state_cmd__0\(1),
      I4 => \state_cmd__0\(2),
      I5 => led_g_reg(7),
      O => m_axis_tdata(7)
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => \state_cmd__0\(0),
      I1 => \state_cmd__0\(1),
      I2 => \state_cmd__0\(2),
      O => m_axis_tvalid
    );
\temp_reg_jstk_x[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state_sts(0),
      I1 => s_axis_tdata(0),
      I2 => state_sts(2),
      O => temp_reg_jstk_x0_in(0)
    );
\temp_reg_jstk_x[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state_sts(0),
      I1 => s_axis_tdata(1),
      I2 => state_sts(2),
      O => temp_reg_jstk_x0_in(1)
    );
\temp_reg_jstk_x[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state_sts(0),
      I1 => s_axis_tdata(2),
      I2 => state_sts(2),
      O => temp_reg_jstk_x0_in(2)
    );
\temp_reg_jstk_x[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state_sts(0),
      I1 => s_axis_tdata(3),
      I2 => state_sts(2),
      O => temp_reg_jstk_x0_in(3)
    );
\temp_reg_jstk_x[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state_sts(0),
      I1 => s_axis_tdata(4),
      I2 => state_sts(2),
      O => temp_reg_jstk_x0_in(4)
    );
\temp_reg_jstk_x[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state_sts(0),
      I1 => s_axis_tdata(5),
      I2 => state_sts(2),
      O => temp_reg_jstk_x0_in(5)
    );
\temp_reg_jstk_x[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state_sts(0),
      I1 => s_axis_tdata(6),
      I2 => state_sts(2),
      O => temp_reg_jstk_x0_in(6)
    );
\temp_reg_jstk_x[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state_sts(0),
      I1 => s_axis_tdata(7),
      I2 => state_sts(2),
      O => temp_reg_jstk_x0_in(7)
    );
\temp_reg_jstk_x[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => state_sts(2),
      I2 => state_sts(1),
      I3 => s_axis_tvalid,
      I4 => state_sts(0),
      I5 => \temp_reg_jstk_x_reg_n_0_[8]\,
      O => \temp_reg_jstk_x[8]_i_1_n_0\
    );
\temp_reg_jstk_x[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => state_sts(2),
      I2 => state_sts(1),
      I3 => s_axis_tvalid,
      I4 => state_sts(0),
      I5 => \temp_reg_jstk_x_reg_n_0_[9]\,
      O => \temp_reg_jstk_x[9]_i_1_n_0\
    );
\temp_reg_jstk_x_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_jstk_x(7),
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => temp_reg_jstk_x0_in(0),
      Q => \temp_reg_jstk_x_reg_n_0_[0]\
    );
\temp_reg_jstk_x_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_jstk_x(7),
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => temp_reg_jstk_x0_in(1),
      Q => \temp_reg_jstk_x_reg_n_0_[1]\
    );
\temp_reg_jstk_x_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_jstk_x(7),
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => temp_reg_jstk_x0_in(2),
      Q => \temp_reg_jstk_x_reg_n_0_[2]\
    );
\temp_reg_jstk_x_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_jstk_x(7),
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => temp_reg_jstk_x0_in(3),
      Q => \temp_reg_jstk_x_reg_n_0_[3]\
    );
\temp_reg_jstk_x_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_jstk_x(7),
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => temp_reg_jstk_x0_in(4),
      Q => \temp_reg_jstk_x_reg_n_0_[4]\
    );
\temp_reg_jstk_x_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_jstk_x(7),
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => temp_reg_jstk_x0_in(5),
      Q => \temp_reg_jstk_x_reg_n_0_[5]\
    );
\temp_reg_jstk_x_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_jstk_x(7),
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => temp_reg_jstk_x0_in(6),
      Q => \temp_reg_jstk_x_reg_n_0_[6]\
    );
\temp_reg_jstk_x_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_jstk_x(7),
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => temp_reg_jstk_x0_in(7),
      Q => \temp_reg_jstk_x_reg_n_0_[7]\
    );
\temp_reg_jstk_x_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \temp_reg_jstk_x[8]_i_1_n_0\,
      Q => \temp_reg_jstk_x_reg_n_0_[8]\
    );
\temp_reg_jstk_x_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \temp_reg_jstk_x[9]_i_1_n_0\,
      Q => \temp_reg_jstk_x_reg_n_0_[9]\
    );
\temp_reg_jstk_y[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => state_sts(2),
      I2 => s_axis_tvalid,
      I3 => state_sts(1),
      I4 => state_sts(0),
      I5 => \temp_reg_jstk_y_reg_n_0_[8]\,
      O => \temp_reg_jstk_y[8]_i_1_n_0\
    );
\temp_reg_jstk_y[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => state_sts(2),
      I2 => s_axis_tvalid,
      I3 => state_sts(1),
      I4 => state_sts(0),
      I5 => \temp_reg_jstk_y_reg_n_0_[9]\,
      O => \temp_reg_jstk_y[9]_i_1_n_0\
    );
\temp_reg_jstk_y_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_jstk_y(7),
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => temp_reg_jstk_x0_in(0),
      Q => \temp_reg_jstk_y_reg_n_0_[0]\
    );
\temp_reg_jstk_y_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_jstk_y(7),
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => temp_reg_jstk_x0_in(1),
      Q => \temp_reg_jstk_y_reg_n_0_[1]\
    );
\temp_reg_jstk_y_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_jstk_y(7),
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => temp_reg_jstk_x0_in(2),
      Q => \temp_reg_jstk_y_reg_n_0_[2]\
    );
\temp_reg_jstk_y_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_jstk_y(7),
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => temp_reg_jstk_x0_in(3),
      Q => \temp_reg_jstk_y_reg_n_0_[3]\
    );
\temp_reg_jstk_y_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_jstk_y(7),
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => temp_reg_jstk_x0_in(4),
      Q => \temp_reg_jstk_y_reg_n_0_[4]\
    );
\temp_reg_jstk_y_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_jstk_y(7),
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => temp_reg_jstk_x0_in(5),
      Q => \temp_reg_jstk_y_reg_n_0_[5]\
    );
\temp_reg_jstk_y_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_jstk_y(7),
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => temp_reg_jstk_x0_in(6),
      Q => \temp_reg_jstk_y_reg_n_0_[6]\
    );
\temp_reg_jstk_y_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => temp_reg_jstk_y(7),
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => temp_reg_jstk_x0_in(7),
      Q => \temp_reg_jstk_y_reg_n_0_[7]\
    );
\temp_reg_jstk_y_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \temp_reg_jstk_y[8]_i_1_n_0\,
      Q => \temp_reg_jstk_y_reg_n_0_[8]\
    );
\temp_reg_jstk_y_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \jstk_x_reg[9]_i_2_n_0\,
      D => \temp_reg_jstk_y[9]_i_1_n_0\,
      Q => \temp_reg_jstk_y_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    jstk_x : out STD_LOGIC_VECTOR ( 9 downto 0 );
    jstk_y : out STD_LOGIC_VECTOR ( 9 downto 0 );
    btn_jstk : out STD_LOGIC;
    btn_trigger : out STD_LOGIC;
    led_r : in STD_LOGIC_VECTOR ( 7 downto 0 );
    led_g : in STD_LOGIC_VECTOR ( 7 downto 0 );
    led_b : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "BD_digilent_jstk2_0_0,digilent_jstk2,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "digilent_jstk2,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_parameter of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_parameter of s_axis_tvalid : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_digilent_jstk2
     port map (
      aclk => aclk,
      aresetn => aresetn,
      btn_jstk => btn_jstk,
      btn_trigger => btn_trigger,
      jstk_x(9 downto 0) => jstk_x(9 downto 0),
      jstk_y(9 downto 0) => jstk_y(9 downto 0),
      led_b(7 downto 0) => led_b(7 downto 0),
      led_g(7 downto 0) => led_g(7 downto 0),
      led_r(7 downto 0) => led_r(7 downto 0),
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(7 downto 0) => s_axis_tdata(7 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
