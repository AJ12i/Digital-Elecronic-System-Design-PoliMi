-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sat May 20 20:46:56 2023
-- Host        : DESKTOP-AVPI1T7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/alija/Audio/Audio.gen/sources_1/bd/BD/ip/BD_Balance_controller_0_0/BD_Balance_controller_0_0_sim_netlist.vhdl
-- Design      : BD_Balance_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_Balance_controller_0_0_Balance_controller is
  port (
    \FSM_onehot_tx_state_reg[2]_0\ : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    balance : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axis_tready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BD_Balance_controller_0_0_Balance_controller : entity is "Balance_controller";
end BD_Balance_controller_0_0_Balance_controller;

architecture STRUCTURE of BD_Balance_controller_0_0_Balance_controller is
  signal \FSM_onehot_rx_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rx_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_tx_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_tx_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_tx_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_tx_state_reg[2]_0\ : STD_LOGIC;
  signal \FSM_onehot_tx_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_tx_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_sequential_balance_control_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_balance_control_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_balance_control_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_balance_control_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_balance_control_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \balance_control_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal exponent : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal exponent0 : STD_LOGIC;
  signal \exponent[0]_i_2_n_0\ : STD_LOGIC;
  signal \exponent[1]_i_2_n_0\ : STD_LOGIC;
  signal \exponent[2]_i_2_n_0\ : STD_LOGIC;
  signal \exponent[3]_i_2_n_0\ : STD_LOGIC;
  signal \exponent[3]_i_3_n_0\ : STD_LOGIC;
  signal \exponent[5]_i_2_n_0\ : STD_LOGIC;
  signal \exponent[9]_i_3_n_0\ : STD_LOGIC;
  signal \exponent[9]_i_4_n_0\ : STD_LOGIC;
  signal \exponent_reg_n_0_[0]\ : STD_LOGIC;
  signal \exponent_reg_n_0_[1]\ : STD_LOGIC;
  signal \exponent_reg_n_0_[2]\ : STD_LOGIC;
  signal \exponent_reg_n_0_[3]\ : STD_LOGIC;
  signal \exponent_reg_n_0_[4]\ : STD_LOGIC;
  signal \exponent_reg_n_0_[5]\ : STD_LOGIC;
  signal \exponent_reg_n_0_[6]\ : STD_LOGIC;
  signal \exponent_reg_n_0_[7]\ : STD_LOGIC;
  signal \exponent_reg_n_0_[8]\ : STD_LOGIC;
  signal \exponent_reg_n_0_[9]\ : STD_LOGIC;
  signal l_channel : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \l_channel__0\ : STD_LOGIC;
  signal l_channel_bal : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal l_channel_bal0 : STD_LOGIC;
  signal \l_channel_bal_reg_n_0_[0]\ : STD_LOGIC;
  signal \l_channel_bal_reg_n_0_[10]\ : STD_LOGIC;
  signal \l_channel_bal_reg_n_0_[11]\ : STD_LOGIC;
  signal \l_channel_bal_reg_n_0_[12]\ : STD_LOGIC;
  signal \l_channel_bal_reg_n_0_[13]\ : STD_LOGIC;
  signal \l_channel_bal_reg_n_0_[14]\ : STD_LOGIC;
  signal \l_channel_bal_reg_n_0_[15]\ : STD_LOGIC;
  signal \l_channel_bal_reg_n_0_[16]\ : STD_LOGIC;
  signal \l_channel_bal_reg_n_0_[17]\ : STD_LOGIC;
  signal \l_channel_bal_reg_n_0_[18]\ : STD_LOGIC;
  signal \l_channel_bal_reg_n_0_[19]\ : STD_LOGIC;
  signal \l_channel_bal_reg_n_0_[1]\ : STD_LOGIC;
  signal \l_channel_bal_reg_n_0_[20]\ : STD_LOGIC;
  signal \l_channel_bal_reg_n_0_[21]\ : STD_LOGIC;
  signal \l_channel_bal_reg_n_0_[22]\ : STD_LOGIC;
  signal \l_channel_bal_reg_n_0_[23]\ : STD_LOGIC;
  signal \l_channel_bal_reg_n_0_[2]\ : STD_LOGIC;
  signal \l_channel_bal_reg_n_0_[3]\ : STD_LOGIC;
  signal \l_channel_bal_reg_n_0_[4]\ : STD_LOGIC;
  signal \l_channel_bal_reg_n_0_[5]\ : STD_LOGIC;
  signal \l_channel_bal_reg_n_0_[6]\ : STD_LOGIC;
  signal \l_channel_bal_reg_n_0_[7]\ : STD_LOGIC;
  signal \l_channel_bal_reg_n_0_[8]\ : STD_LOGIC;
  signal \l_channel_bal_reg_n_0_[9]\ : STD_LOGIC;
  signal \m_axis_tdata_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal r_channel : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \r_channel__0\ : STD_LOGIC;
  signal r_channel_bal : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal r_channel_bal0 : STD_LOGIC;
  signal \r_channel_bal_reg_n_0_[0]\ : STD_LOGIC;
  signal tx_state0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[1]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[0]\ : label is "idle:100,receive_l:001,receive_r:010,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[1]\ : label is "idle:100,receive_l:001,receive_r:010,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rx_state_reg[2]\ : label is "idle:100,receive_l:001,receive_r:010,";
  attribute SOFT_HLUTNM of \FSM_onehot_tx_state[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_tx_state[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_tx_state[2]_i_1\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES of \FSM_onehot_tx_state_reg[0]\ : label is "idle:001,transmit_l:010,transmit_r:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_tx_state_reg[1]\ : label is "idle:001,transmit_l:010,transmit_r:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_tx_state_reg[2]\ : label is "idle:001,transmit_l:010,transmit_r:100,";
  attribute SOFT_HLUTNM of \FSM_sequential_balance_control_state[1]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_balance_control_state[1]_i_3\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES of \FSM_sequential_balance_control_state_reg[0]\ : label is "idle:00,finish:11,reduce_left:10,reduce_right:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_balance_control_state_reg[1]\ : label is "idle:00,finish:11,reduce_left:10,reduce_right:01";
  attribute SOFT_HLUTNM of \exponent[3]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \exponent[3]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \exponent[5]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \exponent[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \exponent[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \exponent[9]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \l_channel_bal[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \l_channel_bal[10]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \l_channel_bal[11]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \l_channel_bal[12]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \l_channel_bal[13]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \l_channel_bal[14]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \l_channel_bal[15]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \l_channel_bal[16]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \l_channel_bal[17]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \l_channel_bal[18]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \l_channel_bal[19]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \l_channel_bal[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \l_channel_bal[20]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \l_channel_bal[21]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \l_channel_bal[22]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \l_channel_bal[23]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \l_channel_bal[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \l_channel_bal[3]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \l_channel_bal[4]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \l_channel_bal[5]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \l_channel_bal[6]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \l_channel_bal[7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \l_channel_bal[8]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \l_channel_bal[9]_i_1\ : label is "soft_lutpair20";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \l_channel_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \l_channel_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \l_channel_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \l_channel_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \l_channel_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \l_channel_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \l_channel_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \l_channel_reg[16]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \l_channel_reg[17]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \l_channel_reg[18]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \l_channel_reg[19]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \l_channel_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \l_channel_reg[20]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \l_channel_reg[21]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \l_channel_reg[22]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \l_channel_reg[23]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \l_channel_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \l_channel_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \l_channel_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \l_channel_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \l_channel_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \l_channel_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \l_channel_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \l_channel_reg[9]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[0]\ : label is "LDC";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[0]_i_1\ : label is "soft_lutpair42";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[10]\ : label is "LDC";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[10]_i_1\ : label is "soft_lutpair20";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[11]\ : label is "LDC";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[11]_i_1\ : label is "soft_lutpair19";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[12]\ : label is "LDC";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[12]_i_1\ : label is "soft_lutpair18";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[13]\ : label is "LDC";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[13]_i_1\ : label is "soft_lutpair17";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[14]\ : label is "LDC";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[14]_i_1\ : label is "soft_lutpair16";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[15]\ : label is "LDC";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[15]_i_1\ : label is "soft_lutpair15";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[16]\ : label is "LDC";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[16]_i_1\ : label is "soft_lutpair14";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[17]\ : label is "LDC";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[17]_i_1\ : label is "soft_lutpair13";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[18]\ : label is "LDC";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[18]_i_1\ : label is "soft_lutpair12";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[19]\ : label is "LDC";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[19]_i_1\ : label is "soft_lutpair11";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[1]\ : label is "LDC";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[1]_i_1\ : label is "soft_lutpair29";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[20]\ : label is "LDC";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[20]_i_1\ : label is "soft_lutpair10";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[21]\ : label is "LDC";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[21]_i_1\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[22]\ : label is "LDC";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[22]_i_1\ : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[23]\ : label is "LDC";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[23]_i_1\ : label is "soft_lutpair42";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[2]\ : label is "LDC";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[2]_i_1\ : label is "soft_lutpair28";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[3]\ : label is "LDC";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[3]_i_1\ : label is "soft_lutpair27";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[4]\ : label is "LDC";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[4]_i_1\ : label is "soft_lutpair26";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[5]\ : label is "LDC";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[5]_i_1\ : label is "soft_lutpair25";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[6]\ : label is "LDC";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[6]_i_1\ : label is "soft_lutpair24";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[7]\ : label is "LDC";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[7]_i_1\ : label is "soft_lutpair23";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[8]\ : label is "LDC";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[8]_i_1\ : label is "soft_lutpair22";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[9]\ : label is "LDC";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[9]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of m_axis_tvalid_INST_0 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_channel_bal[0]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \r_channel_bal[10]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \r_channel_bal[11]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \r_channel_bal[12]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \r_channel_bal[13]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \r_channel_bal[14]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \r_channel_bal[15]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \r_channel_bal[16]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \r_channel_bal[17]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \r_channel_bal[18]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \r_channel_bal[19]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \r_channel_bal[1]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \r_channel_bal[20]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \r_channel_bal[21]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \r_channel_bal[22]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \r_channel_bal[23]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \r_channel_bal[2]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \r_channel_bal[3]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \r_channel_bal[4]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \r_channel_bal[5]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \r_channel_bal[6]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \r_channel_bal[7]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \r_channel_bal[8]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \r_channel_bal[9]_i_1\ : label is "soft_lutpair37";
  attribute XILINX_LEGACY_PRIM of \r_channel_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_channel_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_channel_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_channel_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_channel_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_channel_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_channel_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_channel_reg[16]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_channel_reg[17]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_channel_reg[18]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_channel_reg[19]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_channel_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_channel_reg[20]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_channel_reg[21]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_channel_reg[22]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_channel_reg[23]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_channel_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_channel_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_channel_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_channel_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_channel_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_channel_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_channel_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_channel_reg[9]\ : label is "LD";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0 : label is "soft_lutpair0";
begin
  \FSM_onehot_tx_state_reg[2]_0\ <= \^fsm_onehot_tx_state_reg[2]_0\;
  m_axis_tvalid <= \^m_axis_tvalid\;
\FSM_onehot_rx_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCC004C"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \l_channel__0\,
      I2 => aresetn,
      I3 => \FSM_onehot_rx_state[2]_i_2_n_0\,
      I4 => \FSM_onehot_rx_state_reg_n_0_[2]\,
      O => \FSM_onehot_rx_state[0]_i_1_n_0\
    );
\FSM_onehot_rx_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFFCC80"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \l_channel__0\,
      I2 => aresetn,
      I3 => \FSM_onehot_rx_state[2]_i_2_n_0\,
      I4 => \r_channel__0\,
      O => \FSM_onehot_rx_state[1]_i_1_n_0\
    );
\FSM_onehot_rx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF007FFF800000"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \l_channel__0\,
      I2 => aresetn,
      I3 => \FSM_onehot_rx_state[2]_i_2_n_0\,
      I4 => \r_channel__0\,
      I5 => \FSM_onehot_rx_state_reg_n_0_[2]\,
      O => \FSM_onehot_rx_state[2]_i_1_n_0\
    );
\FSM_onehot_rx_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888000088880000"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => \r_channel__0\,
      I2 => \balance_control_state__0\(1),
      I3 => \FSM_onehot_rx_state_reg_n_0_[2]\,
      I4 => aresetn,
      I5 => \balance_control_state__0\(0),
      O => \FSM_onehot_rx_state[2]_i_2_n_0\
    );
\FSM_onehot_rx_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_rx_state[0]_i_1_n_0\,
      Q => \l_channel__0\,
      R => '0'
    );
\FSM_onehot_rx_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_rx_state[1]_i_1_n_0\,
      Q => \r_channel__0\,
      R => '0'
    );
\FSM_onehot_rx_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_rx_state[2]_i_1_n_0\,
      Q => \FSM_onehot_rx_state_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_tx_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^fsm_onehot_tx_state_reg[2]_0\,
      I1 => tx_state0,
      I2 => \FSM_onehot_tx_state_reg_n_0_[0]\,
      O => \FSM_onehot_tx_state[0]_i_1_n_0\
    );
\FSM_onehot_tx_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_tx_state_reg_n_0_[0]\,
      I1 => tx_state0,
      I2 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      O => \FSM_onehot_tx_state[1]_i_1_n_0\
    );
\FSM_onehot_tx_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I1 => tx_state0,
      I2 => \^fsm_onehot_tx_state_reg[2]_0\,
      O => \FSM_onehot_tx_state[2]_i_1_n_0\
    );
\FSM_onehot_tx_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808000000000"
    )
        port map (
      I0 => \FSM_onehot_tx_state_reg_n_0_[0]\,
      I1 => \balance_control_state__0\(0),
      I2 => \balance_control_state__0\(1),
      I3 => \^m_axis_tvalid\,
      I4 => m_axis_tready,
      I5 => aresetn,
      O => tx_state0
    );
\FSM_onehot_tx_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_tx_state[0]_i_1_n_0\,
      Q => \FSM_onehot_tx_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_tx_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_tx_state[1]_i_1_n_0\,
      Q => \FSM_onehot_tx_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_tx_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_tx_state[2]_i_1_n_0\,
      Q => \^fsm_onehot_tx_state_reg[2]_0\,
      R => '0'
    );
\FSM_sequential_balance_control_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFCF8833FFCC88"
    )
        port map (
      I0 => \FSM_sequential_balance_control_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_balance_control_state[1]_i_3_n_0\,
      I2 => \FSM_sequential_balance_control_state[1]_i_4_n_0\,
      I3 => \balance_control_state__0\(1),
      I4 => \balance_control_state__0\(0),
      I5 => aresetn,
      O => \FSM_sequential_balance_control_state[0]_i_1_n_0\
    );
\FSM_sequential_balance_control_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CFFF4433CCFF44"
    )
        port map (
      I0 => \FSM_sequential_balance_control_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_balance_control_state[1]_i_3_n_0\,
      I2 => \FSM_sequential_balance_control_state[1]_i_4_n_0\,
      I3 => \balance_control_state__0\(1),
      I4 => \balance_control_state__0\(0),
      I5 => aresetn,
      O => \FSM_sequential_balance_control_state[1]_i_1_n_0\
    );
\FSM_sequential_balance_control_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => balance(8),
      I1 => balance(6),
      I2 => \exponent[0]_i_2_n_0\,
      I3 => balance(7),
      I4 => balance(9),
      O => \FSM_sequential_balance_control_state[1]_i_2_n_0\
    );
\FSM_sequential_balance_control_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \FSM_onehot_rx_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_tx_state_reg_n_0_[0]\,
      I2 => aresetn,
      I3 => \balance_control_state__0\(1),
      I4 => \balance_control_state__0\(0),
      O => \FSM_sequential_balance_control_state[1]_i_3_n_0\
    );
\FSM_sequential_balance_control_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \exponent_reg_n_0_[8]\,
      I1 => \exponent_reg_n_0_[6]\,
      I2 => \exponent[9]_i_3_n_0\,
      I3 => \exponent_reg_n_0_[7]\,
      I4 => \exponent_reg_n_0_[9]\,
      O => \FSM_sequential_balance_control_state[1]_i_4_n_0\
    );
\FSM_sequential_balance_control_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_balance_control_state[0]_i_1_n_0\,
      Q => \balance_control_state__0\(0),
      R => '0'
    );
\FSM_sequential_balance_control_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_balance_control_state[1]_i_1_n_0\,
      Q => \balance_control_state__0\(1),
      R => '0'
    );
\exponent[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555555555CF30"
    )
        port map (
      I0 => \exponent_reg_n_0_[0]\,
      I1 => balance(9),
      I2 => \exponent[0]_i_2_n_0\,
      I3 => balance(6),
      I4 => \balance_control_state__0\(1),
      I5 => \balance_control_state__0\(0),
      O => exponent(0)
    );
\exponent[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => balance(4),
      I1 => balance(5),
      I2 => balance(2),
      I3 => balance(3),
      I4 => balance(1),
      I5 => balance(0),
      O => \exponent[0]_i_2_n_0\
    );
\exponent[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEBE44144414EEBE"
    )
        port map (
      I0 => \exponent[9]_i_4_n_0\,
      I1 => balance(7),
      I2 => \exponent[1]_i_2_n_0\,
      I3 => balance(9),
      I4 => \exponent_reg_n_0_[0]\,
      I5 => \exponent_reg_n_0_[1]\,
      O => exponent(1)
    );
\exponent[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \exponent[0]_i_2_n_0\,
      I1 => balance(6),
      O => \exponent[1]_i_2_n_0\
    );
\exponent[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEBE44144414EEBE"
    )
        port map (
      I0 => \exponent[9]_i_4_n_0\,
      I1 => balance(8),
      I2 => \exponent[3]_i_2_n_0\,
      I3 => balance(9),
      I4 => \exponent[2]_i_2_n_0\,
      I5 => \exponent_reg_n_0_[2]\,
      O => exponent(2)
    );
\exponent[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \exponent_reg_n_0_[0]\,
      I1 => \exponent_reg_n_0_[1]\,
      O => \exponent[2]_i_2_n_0\
    );
\exponent[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00010100FF0101"
    )
        port map (
      I0 => balance(9),
      I1 => balance(8),
      I2 => \exponent[3]_i_2_n_0\,
      I3 => \exponent[3]_i_3_n_0\,
      I4 => \exponent[9]_i_4_n_0\,
      I5 => \exponent_reg_n_0_[3]\,
      O => exponent(3)
    );
\exponent[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => balance(6),
      I1 => \exponent[0]_i_2_n_0\,
      I2 => balance(7),
      O => \exponent[3]_i_2_n_0\
    );
\exponent[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \exponent_reg_n_0_[1]\,
      I1 => \exponent_reg_n_0_[0]\,
      I2 => \exponent_reg_n_0_[2]\,
      O => \exponent[3]_i_3_n_0\
    );
\exponent[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000100000000"
    )
        port map (
      I0 => \exponent_reg_n_0_[3]\,
      I1 => \exponent_reg_n_0_[1]\,
      I2 => \exponent_reg_n_0_[0]\,
      I3 => \exponent_reg_n_0_[2]\,
      I4 => \exponent_reg_n_0_[4]\,
      I5 => \exponent[9]_i_4_n_0\,
      O => exponent(4)
    );
\exponent[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9990"
    )
        port map (
      I0 => \exponent[5]_i_2_n_0\,
      I1 => \exponent_reg_n_0_[5]\,
      I2 => \balance_control_state__0\(0),
      I3 => \balance_control_state__0\(1),
      O => exponent(5)
    );
\exponent[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \exponent_reg_n_0_[3]\,
      I1 => \exponent_reg_n_0_[1]\,
      I2 => \exponent_reg_n_0_[0]\,
      I3 => \exponent_reg_n_0_[2]\,
      I4 => \exponent_reg_n_0_[4]\,
      O => \exponent[5]_i_2_n_0\
    );
\exponent[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9990"
    )
        port map (
      I0 => \exponent[9]_i_3_n_0\,
      I1 => \exponent_reg_n_0_[6]\,
      I2 => \balance_control_state__0\(0),
      I3 => \balance_control_state__0\(1),
      O => exponent(6)
    );
\exponent[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1E1E100"
    )
        port map (
      I0 => \exponent_reg_n_0_[6]\,
      I1 => \exponent[9]_i_3_n_0\,
      I2 => \exponent_reg_n_0_[7]\,
      I3 => \balance_control_state__0\(0),
      I4 => \balance_control_state__0\(1),
      O => exponent(7)
    );
\exponent[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE01FE01FE010000"
    )
        port map (
      I0 => \exponent_reg_n_0_[7]\,
      I1 => \exponent[9]_i_3_n_0\,
      I2 => \exponent_reg_n_0_[6]\,
      I3 => \exponent_reg_n_0_[8]\,
      I4 => \balance_control_state__0\(0),
      I5 => \balance_control_state__0\(1),
      O => exponent(8)
    );
\exponent[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2B00280028002800"
    )
        port map (
      I0 => \FSM_sequential_balance_control_state[1]_i_4_n_0\,
      I1 => \balance_control_state__0\(0),
      I2 => \balance_control_state__0\(1),
      I3 => aresetn,
      I4 => \FSM_onehot_tx_state_reg_n_0_[0]\,
      I5 => \FSM_onehot_rx_state_reg_n_0_[2]\,
      O => exponent0
    );
\exponent[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000100000000"
    )
        port map (
      I0 => \exponent_reg_n_0_[8]\,
      I1 => \exponent_reg_n_0_[6]\,
      I2 => \exponent[9]_i_3_n_0\,
      I3 => \exponent_reg_n_0_[7]\,
      I4 => \exponent_reg_n_0_[9]\,
      I5 => \exponent[9]_i_4_n_0\,
      O => exponent(9)
    );
\exponent[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \exponent_reg_n_0_[4]\,
      I1 => \exponent_reg_n_0_[2]\,
      I2 => \exponent_reg_n_0_[0]\,
      I3 => \exponent_reg_n_0_[1]\,
      I4 => \exponent_reg_n_0_[3]\,
      I5 => \exponent_reg_n_0_[5]\,
      O => \exponent[9]_i_3_n_0\
    );
\exponent[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \balance_control_state__0\(0),
      I1 => \balance_control_state__0\(1),
      O => \exponent[9]_i_4_n_0\
    );
\exponent_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => exponent0,
      D => exponent(0),
      Q => \exponent_reg_n_0_[0]\,
      R => '0'
    );
\exponent_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => exponent0,
      D => exponent(1),
      Q => \exponent_reg_n_0_[1]\,
      R => '0'
    );
\exponent_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => exponent0,
      D => exponent(2),
      Q => \exponent_reg_n_0_[2]\,
      R => '0'
    );
\exponent_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => exponent0,
      D => exponent(3),
      Q => \exponent_reg_n_0_[3]\,
      R => '0'
    );
\exponent_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => exponent0,
      D => exponent(4),
      Q => \exponent_reg_n_0_[4]\,
      R => '0'
    );
\exponent_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => exponent0,
      D => exponent(5),
      Q => \exponent_reg_n_0_[5]\,
      R => '0'
    );
\exponent_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => exponent0,
      D => exponent(6),
      Q => \exponent_reg_n_0_[6]\,
      R => '0'
    );
\exponent_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => exponent0,
      D => exponent(7),
      Q => \exponent_reg_n_0_[7]\,
      R => '0'
    );
\exponent_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => exponent0,
      D => exponent(8),
      Q => \exponent_reg_n_0_[8]\,
      R => '0'
    );
\exponent_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => exponent0,
      D => exponent(9),
      Q => \exponent_reg_n_0_[9]\,
      R => '0'
    );
\l_channel_bal[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[1]\,
      I1 => \balance_control_state__0\(1),
      I2 => l_channel(0),
      O => l_channel_bal(0)
    );
\l_channel_bal[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[11]\,
      I1 => \balance_control_state__0\(1),
      I2 => l_channel(10),
      O => l_channel_bal(10)
    );
\l_channel_bal[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[12]\,
      I1 => \balance_control_state__0\(1),
      I2 => l_channel(11),
      O => l_channel_bal(11)
    );
\l_channel_bal[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[13]\,
      I1 => \balance_control_state__0\(1),
      I2 => l_channel(12),
      O => l_channel_bal(12)
    );
\l_channel_bal[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[14]\,
      I1 => \balance_control_state__0\(1),
      I2 => l_channel(13),
      O => l_channel_bal(13)
    );
\l_channel_bal[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[15]\,
      I1 => \balance_control_state__0\(1),
      I2 => l_channel(14),
      O => l_channel_bal(14)
    );
\l_channel_bal[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[16]\,
      I1 => \balance_control_state__0\(1),
      I2 => l_channel(15),
      O => l_channel_bal(15)
    );
\l_channel_bal[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[17]\,
      I1 => \balance_control_state__0\(1),
      I2 => l_channel(16),
      O => l_channel_bal(16)
    );
\l_channel_bal[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[18]\,
      I1 => \balance_control_state__0\(1),
      I2 => l_channel(17),
      O => l_channel_bal(17)
    );
\l_channel_bal[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[19]\,
      I1 => \balance_control_state__0\(1),
      I2 => l_channel(18),
      O => l_channel_bal(18)
    );
\l_channel_bal[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[20]\,
      I1 => \balance_control_state__0\(1),
      I2 => l_channel(19),
      O => l_channel_bal(19)
    );
\l_channel_bal[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[2]\,
      I1 => \balance_control_state__0\(1),
      I2 => l_channel(1),
      O => l_channel_bal(1)
    );
\l_channel_bal[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[21]\,
      I1 => \balance_control_state__0\(1),
      I2 => l_channel(20),
      O => l_channel_bal(20)
    );
\l_channel_bal[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[22]\,
      I1 => \balance_control_state__0\(1),
      I2 => l_channel(21),
      O => l_channel_bal(21)
    );
\l_channel_bal[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[23]\,
      I1 => \balance_control_state__0\(1),
      I2 => l_channel(22),
      O => l_channel_bal(22)
    );
\l_channel_bal[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2300200020002000"
    )
        port map (
      I0 => \FSM_sequential_balance_control_state[1]_i_4_n_0\,
      I1 => \balance_control_state__0\(0),
      I2 => \balance_control_state__0\(1),
      I3 => aresetn,
      I4 => \FSM_onehot_tx_state_reg_n_0_[0]\,
      I5 => \FSM_onehot_rx_state_reg_n_0_[2]\,
      O => l_channel_bal0
    );
\l_channel_bal[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[23]\,
      I1 => \balance_control_state__0\(1),
      I2 => l_channel(23),
      O => l_channel_bal(23)
    );
\l_channel_bal[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[3]\,
      I1 => \balance_control_state__0\(1),
      I2 => l_channel(2),
      O => l_channel_bal(2)
    );
\l_channel_bal[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[4]\,
      I1 => \balance_control_state__0\(1),
      I2 => l_channel(3),
      O => l_channel_bal(3)
    );
\l_channel_bal[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[5]\,
      I1 => \balance_control_state__0\(1),
      I2 => l_channel(4),
      O => l_channel_bal(4)
    );
\l_channel_bal[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[6]\,
      I1 => \balance_control_state__0\(1),
      I2 => l_channel(5),
      O => l_channel_bal(5)
    );
\l_channel_bal[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[7]\,
      I1 => \balance_control_state__0\(1),
      I2 => l_channel(6),
      O => l_channel_bal(6)
    );
\l_channel_bal[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[8]\,
      I1 => \balance_control_state__0\(1),
      I2 => l_channel(7),
      O => l_channel_bal(7)
    );
\l_channel_bal[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[9]\,
      I1 => \balance_control_state__0\(1),
      I2 => l_channel(8),
      O => l_channel_bal(8)
    );
\l_channel_bal[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[10]\,
      I1 => \balance_control_state__0\(1),
      I2 => l_channel(9),
      O => l_channel_bal(9)
    );
\l_channel_bal_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => l_channel_bal0,
      D => l_channel_bal(0),
      Q => \l_channel_bal_reg_n_0_[0]\,
      R => '0'
    );
\l_channel_bal_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => l_channel_bal0,
      D => l_channel_bal(10),
      Q => \l_channel_bal_reg_n_0_[10]\,
      R => '0'
    );
\l_channel_bal_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => l_channel_bal0,
      D => l_channel_bal(11),
      Q => \l_channel_bal_reg_n_0_[11]\,
      R => '0'
    );
\l_channel_bal_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => l_channel_bal0,
      D => l_channel_bal(12),
      Q => \l_channel_bal_reg_n_0_[12]\,
      R => '0'
    );
\l_channel_bal_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => l_channel_bal0,
      D => l_channel_bal(13),
      Q => \l_channel_bal_reg_n_0_[13]\,
      R => '0'
    );
\l_channel_bal_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => l_channel_bal0,
      D => l_channel_bal(14),
      Q => \l_channel_bal_reg_n_0_[14]\,
      R => '0'
    );
\l_channel_bal_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => l_channel_bal0,
      D => l_channel_bal(15),
      Q => \l_channel_bal_reg_n_0_[15]\,
      R => '0'
    );
\l_channel_bal_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => l_channel_bal0,
      D => l_channel_bal(16),
      Q => \l_channel_bal_reg_n_0_[16]\,
      R => '0'
    );
\l_channel_bal_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => l_channel_bal0,
      D => l_channel_bal(17),
      Q => \l_channel_bal_reg_n_0_[17]\,
      R => '0'
    );
\l_channel_bal_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => l_channel_bal0,
      D => l_channel_bal(18),
      Q => \l_channel_bal_reg_n_0_[18]\,
      R => '0'
    );
\l_channel_bal_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => l_channel_bal0,
      D => l_channel_bal(19),
      Q => \l_channel_bal_reg_n_0_[19]\,
      R => '0'
    );
\l_channel_bal_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => l_channel_bal0,
      D => l_channel_bal(1),
      Q => \l_channel_bal_reg_n_0_[1]\,
      R => '0'
    );
\l_channel_bal_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => l_channel_bal0,
      D => l_channel_bal(20),
      Q => \l_channel_bal_reg_n_0_[20]\,
      R => '0'
    );
\l_channel_bal_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => l_channel_bal0,
      D => l_channel_bal(21),
      Q => \l_channel_bal_reg_n_0_[21]\,
      R => '0'
    );
\l_channel_bal_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => l_channel_bal0,
      D => l_channel_bal(22),
      Q => \l_channel_bal_reg_n_0_[22]\,
      R => '0'
    );
\l_channel_bal_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => l_channel_bal0,
      D => l_channel_bal(23),
      Q => \l_channel_bal_reg_n_0_[23]\,
      R => '0'
    );
\l_channel_bal_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => l_channel_bal0,
      D => l_channel_bal(2),
      Q => \l_channel_bal_reg_n_0_[2]\,
      R => '0'
    );
\l_channel_bal_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => l_channel_bal0,
      D => l_channel_bal(3),
      Q => \l_channel_bal_reg_n_0_[3]\,
      R => '0'
    );
\l_channel_bal_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => l_channel_bal0,
      D => l_channel_bal(4),
      Q => \l_channel_bal_reg_n_0_[4]\,
      R => '0'
    );
\l_channel_bal_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => l_channel_bal0,
      D => l_channel_bal(5),
      Q => \l_channel_bal_reg_n_0_[5]\,
      R => '0'
    );
\l_channel_bal_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => l_channel_bal0,
      D => l_channel_bal(6),
      Q => \l_channel_bal_reg_n_0_[6]\,
      R => '0'
    );
\l_channel_bal_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => l_channel_bal0,
      D => l_channel_bal(7),
      Q => \l_channel_bal_reg_n_0_[7]\,
      R => '0'
    );
\l_channel_bal_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => l_channel_bal0,
      D => l_channel_bal(8),
      Q => \l_channel_bal_reg_n_0_[8]\,
      R => '0'
    );
\l_channel_bal_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => l_channel_bal0,
      D => l_channel_bal(9),
      Q => \l_channel_bal_reg_n_0_[9]\,
      R => '0'
    );
\l_channel_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(0),
      G => \l_channel__0\,
      GE => '1',
      Q => l_channel(0)
    );
\l_channel_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(10),
      G => \l_channel__0\,
      GE => '1',
      Q => l_channel(10)
    );
\l_channel_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(11),
      G => \l_channel__0\,
      GE => '1',
      Q => l_channel(11)
    );
\l_channel_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(12),
      G => \l_channel__0\,
      GE => '1',
      Q => l_channel(12)
    );
\l_channel_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(13),
      G => \l_channel__0\,
      GE => '1',
      Q => l_channel(13)
    );
\l_channel_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(14),
      G => \l_channel__0\,
      GE => '1',
      Q => l_channel(14)
    );
\l_channel_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(15),
      G => \l_channel__0\,
      GE => '1',
      Q => l_channel(15)
    );
\l_channel_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(16),
      G => \l_channel__0\,
      GE => '1',
      Q => l_channel(16)
    );
\l_channel_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(17),
      G => \l_channel__0\,
      GE => '1',
      Q => l_channel(17)
    );
\l_channel_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(18),
      G => \l_channel__0\,
      GE => '1',
      Q => l_channel(18)
    );
\l_channel_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(19),
      G => \l_channel__0\,
      GE => '1',
      Q => l_channel(19)
    );
\l_channel_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(1),
      G => \l_channel__0\,
      GE => '1',
      Q => l_channel(1)
    );
\l_channel_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(20),
      G => \l_channel__0\,
      GE => '1',
      Q => l_channel(20)
    );
\l_channel_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(21),
      G => \l_channel__0\,
      GE => '1',
      Q => l_channel(21)
    );
\l_channel_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(22),
      G => \l_channel__0\,
      GE => '1',
      Q => l_channel(22)
    );
\l_channel_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(23),
      G => \l_channel__0\,
      GE => '1',
      Q => l_channel(23)
    );
\l_channel_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(2),
      G => \l_channel__0\,
      GE => '1',
      Q => l_channel(2)
    );
\l_channel_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(3),
      G => \l_channel__0\,
      GE => '1',
      Q => l_channel(3)
    );
\l_channel_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(4),
      G => \l_channel__0\,
      GE => '1',
      Q => l_channel(4)
    );
\l_channel_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(5),
      G => \l_channel__0\,
      GE => '1',
      Q => l_channel(5)
    );
\l_channel_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(6),
      G => \l_channel__0\,
      GE => '1',
      Q => l_channel(6)
    );
\l_channel_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(7),
      G => \l_channel__0\,
      GE => '1',
      Q => l_channel(7)
    );
\l_channel_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(8),
      G => \l_channel__0\,
      GE => '1',
      Q => l_channel(8)
    );
\l_channel_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(9),
      G => \l_channel__0\,
      GE => '1',
      Q => l_channel(9)
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_tx_state_reg_n_0_[0]\,
      D => \m_axis_tdata_reg[0]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(0)
    );
\m_axis_tdata_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[0]\,
      I1 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I2 => \r_channel_bal_reg_n_0_[0]\,
      O => \m_axis_tdata_reg[0]_i_1_n_0\
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_tx_state_reg_n_0_[0]\,
      D => \m_axis_tdata_reg[10]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(10)
    );
\m_axis_tdata_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[10]\,
      I1 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I2 => p_0_in(9),
      O => \m_axis_tdata_reg[10]_i_1_n_0\
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_tx_state_reg_n_0_[0]\,
      D => \m_axis_tdata_reg[11]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(11)
    );
\m_axis_tdata_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[11]\,
      I1 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I2 => p_0_in(10),
      O => \m_axis_tdata_reg[11]_i_1_n_0\
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_tx_state_reg_n_0_[0]\,
      D => \m_axis_tdata_reg[12]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(12)
    );
\m_axis_tdata_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[12]\,
      I1 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I2 => p_0_in(11),
      O => \m_axis_tdata_reg[12]_i_1_n_0\
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_tx_state_reg_n_0_[0]\,
      D => \m_axis_tdata_reg[13]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(13)
    );
\m_axis_tdata_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[13]\,
      I1 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I2 => p_0_in(12),
      O => \m_axis_tdata_reg[13]_i_1_n_0\
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_tx_state_reg_n_0_[0]\,
      D => \m_axis_tdata_reg[14]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(14)
    );
\m_axis_tdata_reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[14]\,
      I1 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I2 => p_0_in(13),
      O => \m_axis_tdata_reg[14]_i_1_n_0\
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_tx_state_reg_n_0_[0]\,
      D => \m_axis_tdata_reg[15]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(15)
    );
\m_axis_tdata_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[15]\,
      I1 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I2 => p_0_in(14),
      O => \m_axis_tdata_reg[15]_i_1_n_0\
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_tx_state_reg_n_0_[0]\,
      D => \m_axis_tdata_reg[16]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(16)
    );
\m_axis_tdata_reg[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[16]\,
      I1 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I2 => p_0_in(15),
      O => \m_axis_tdata_reg[16]_i_1_n_0\
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_tx_state_reg_n_0_[0]\,
      D => \m_axis_tdata_reg[17]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(17)
    );
\m_axis_tdata_reg[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[17]\,
      I1 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I2 => p_0_in(16),
      O => \m_axis_tdata_reg[17]_i_1_n_0\
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_tx_state_reg_n_0_[0]\,
      D => \m_axis_tdata_reg[18]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(18)
    );
\m_axis_tdata_reg[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[18]\,
      I1 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I2 => p_0_in(17),
      O => \m_axis_tdata_reg[18]_i_1_n_0\
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_tx_state_reg_n_0_[0]\,
      D => \m_axis_tdata_reg[19]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(19)
    );
\m_axis_tdata_reg[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[19]\,
      I1 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I2 => p_0_in(18),
      O => \m_axis_tdata_reg[19]_i_1_n_0\
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_tx_state_reg_n_0_[0]\,
      D => \m_axis_tdata_reg[1]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(1)
    );
\m_axis_tdata_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[1]\,
      I1 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I2 => p_0_in(0),
      O => \m_axis_tdata_reg[1]_i_1_n_0\
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_tx_state_reg_n_0_[0]\,
      D => \m_axis_tdata_reg[20]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(20)
    );
\m_axis_tdata_reg[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[20]\,
      I1 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I2 => p_0_in(19),
      O => \m_axis_tdata_reg[20]_i_1_n_0\
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_tx_state_reg_n_0_[0]\,
      D => \m_axis_tdata_reg[21]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(21)
    );
\m_axis_tdata_reg[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[21]\,
      I1 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I2 => p_0_in(20),
      O => \m_axis_tdata_reg[21]_i_1_n_0\
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_tx_state_reg_n_0_[0]\,
      D => \m_axis_tdata_reg[22]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(22)
    );
\m_axis_tdata_reg[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[22]\,
      I1 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I2 => p_0_in(21),
      O => \m_axis_tdata_reg[22]_i_1_n_0\
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_tx_state_reg_n_0_[0]\,
      D => \m_axis_tdata_reg[23]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(23)
    );
\m_axis_tdata_reg[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[23]\,
      I1 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I2 => p_0_in(22),
      O => \m_axis_tdata_reg[23]_i_1_n_0\
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_tx_state_reg_n_0_[0]\,
      D => \m_axis_tdata_reg[2]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(2)
    );
\m_axis_tdata_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[2]\,
      I1 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I2 => p_0_in(1),
      O => \m_axis_tdata_reg[2]_i_1_n_0\
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_tx_state_reg_n_0_[0]\,
      D => \m_axis_tdata_reg[3]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(3)
    );
\m_axis_tdata_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[3]\,
      I1 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I2 => p_0_in(2),
      O => \m_axis_tdata_reg[3]_i_1_n_0\
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_tx_state_reg_n_0_[0]\,
      D => \m_axis_tdata_reg[4]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(4)
    );
\m_axis_tdata_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[4]\,
      I1 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I2 => p_0_in(3),
      O => \m_axis_tdata_reg[4]_i_1_n_0\
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_tx_state_reg_n_0_[0]\,
      D => \m_axis_tdata_reg[5]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(5)
    );
\m_axis_tdata_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[5]\,
      I1 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I2 => p_0_in(4),
      O => \m_axis_tdata_reg[5]_i_1_n_0\
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_tx_state_reg_n_0_[0]\,
      D => \m_axis_tdata_reg[6]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(6)
    );
\m_axis_tdata_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[6]\,
      I1 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I2 => p_0_in(5),
      O => \m_axis_tdata_reg[6]_i_1_n_0\
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_tx_state_reg_n_0_[0]\,
      D => \m_axis_tdata_reg[7]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(7)
    );
\m_axis_tdata_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[7]\,
      I1 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I2 => p_0_in(6),
      O => \m_axis_tdata_reg[7]_i_1_n_0\
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_tx_state_reg_n_0_[0]\,
      D => \m_axis_tdata_reg[8]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(8)
    );
\m_axis_tdata_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[8]\,
      I1 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I2 => p_0_in(7),
      O => \m_axis_tdata_reg[8]_i_1_n_0\
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_tx_state_reg_n_0_[0]\,
      D => \m_axis_tdata_reg[9]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(9)
    );
\m_axis_tdata_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \l_channel_bal_reg_n_0_[9]\,
      I1 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I2 => p_0_in(8),
      O => \m_axis_tdata_reg[9]_i_1_n_0\
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_tx_state_reg_n_0_[1]\,
      I1 => \^fsm_onehot_tx_state_reg[2]_0\,
      O => \^m_axis_tvalid\
    );
\r_channel_bal[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \balance_control_state__0\(0),
      I2 => r_channel(0),
      O => r_channel_bal(0)
    );
\r_channel_bal[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(10),
      I1 => \balance_control_state__0\(0),
      I2 => r_channel(10),
      O => r_channel_bal(10)
    );
\r_channel_bal[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(11),
      I1 => \balance_control_state__0\(0),
      I2 => r_channel(11),
      O => r_channel_bal(11)
    );
\r_channel_bal[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(12),
      I1 => \balance_control_state__0\(0),
      I2 => r_channel(12),
      O => r_channel_bal(12)
    );
\r_channel_bal[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(13),
      I1 => \balance_control_state__0\(0),
      I2 => r_channel(13),
      O => r_channel_bal(13)
    );
\r_channel_bal[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(14),
      I1 => \balance_control_state__0\(0),
      I2 => r_channel(14),
      O => r_channel_bal(14)
    );
\r_channel_bal[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(15),
      I1 => \balance_control_state__0\(0),
      I2 => r_channel(15),
      O => r_channel_bal(15)
    );
\r_channel_bal[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(16),
      I1 => \balance_control_state__0\(0),
      I2 => r_channel(16),
      O => r_channel_bal(16)
    );
\r_channel_bal[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(17),
      I1 => \balance_control_state__0\(0),
      I2 => r_channel(17),
      O => r_channel_bal(17)
    );
\r_channel_bal[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(18),
      I1 => \balance_control_state__0\(0),
      I2 => r_channel(18),
      O => r_channel_bal(18)
    );
\r_channel_bal[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(19),
      I1 => \balance_control_state__0\(0),
      I2 => r_channel(19),
      O => r_channel_bal(19)
    );
\r_channel_bal[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \balance_control_state__0\(0),
      I2 => r_channel(1),
      O => r_channel_bal(1)
    );
\r_channel_bal[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(20),
      I1 => \balance_control_state__0\(0),
      I2 => r_channel(20),
      O => r_channel_bal(20)
    );
\r_channel_bal[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(21),
      I1 => \balance_control_state__0\(0),
      I2 => r_channel(21),
      O => r_channel_bal(21)
    );
\r_channel_bal[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(22),
      I1 => \balance_control_state__0\(0),
      I2 => r_channel(22),
      O => r_channel_bal(22)
    );
\r_channel_bal[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B00080008000800"
    )
        port map (
      I0 => \FSM_sequential_balance_control_state[1]_i_4_n_0\,
      I1 => \balance_control_state__0\(0),
      I2 => \balance_control_state__0\(1),
      I3 => aresetn,
      I4 => \FSM_onehot_tx_state_reg_n_0_[0]\,
      I5 => \FSM_onehot_rx_state_reg_n_0_[2]\,
      O => r_channel_bal0
    );
\r_channel_bal[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(22),
      I1 => \balance_control_state__0\(0),
      I2 => r_channel(23),
      O => r_channel_bal(23)
    );
\r_channel_bal[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(2),
      I1 => \balance_control_state__0\(0),
      I2 => r_channel(2),
      O => r_channel_bal(2)
    );
\r_channel_bal[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(3),
      I1 => \balance_control_state__0\(0),
      I2 => r_channel(3),
      O => r_channel_bal(3)
    );
\r_channel_bal[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(4),
      I1 => \balance_control_state__0\(0),
      I2 => r_channel(4),
      O => r_channel_bal(4)
    );
\r_channel_bal[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(5),
      I1 => \balance_control_state__0\(0),
      I2 => r_channel(5),
      O => r_channel_bal(5)
    );
\r_channel_bal[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(6),
      I1 => \balance_control_state__0\(0),
      I2 => r_channel(6),
      O => r_channel_bal(6)
    );
\r_channel_bal[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(7),
      I1 => \balance_control_state__0\(0),
      I2 => r_channel(7),
      O => r_channel_bal(7)
    );
\r_channel_bal[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(8),
      I1 => \balance_control_state__0\(0),
      I2 => r_channel(8),
      O => r_channel_bal(8)
    );
\r_channel_bal[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(9),
      I1 => \balance_control_state__0\(0),
      I2 => r_channel(9),
      O => r_channel_bal(9)
    );
\r_channel_bal_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => r_channel_bal0,
      D => r_channel_bal(0),
      Q => \r_channel_bal_reg_n_0_[0]\,
      R => '0'
    );
\r_channel_bal_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => r_channel_bal0,
      D => r_channel_bal(10),
      Q => p_0_in(9),
      R => '0'
    );
\r_channel_bal_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => r_channel_bal0,
      D => r_channel_bal(11),
      Q => p_0_in(10),
      R => '0'
    );
\r_channel_bal_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => r_channel_bal0,
      D => r_channel_bal(12),
      Q => p_0_in(11),
      R => '0'
    );
\r_channel_bal_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => r_channel_bal0,
      D => r_channel_bal(13),
      Q => p_0_in(12),
      R => '0'
    );
\r_channel_bal_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => r_channel_bal0,
      D => r_channel_bal(14),
      Q => p_0_in(13),
      R => '0'
    );
\r_channel_bal_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => r_channel_bal0,
      D => r_channel_bal(15),
      Q => p_0_in(14),
      R => '0'
    );
\r_channel_bal_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => r_channel_bal0,
      D => r_channel_bal(16),
      Q => p_0_in(15),
      R => '0'
    );
\r_channel_bal_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => r_channel_bal0,
      D => r_channel_bal(17),
      Q => p_0_in(16),
      R => '0'
    );
\r_channel_bal_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => r_channel_bal0,
      D => r_channel_bal(18),
      Q => p_0_in(17),
      R => '0'
    );
\r_channel_bal_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => r_channel_bal0,
      D => r_channel_bal(19),
      Q => p_0_in(18),
      R => '0'
    );
\r_channel_bal_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => r_channel_bal0,
      D => r_channel_bal(1),
      Q => p_0_in(0),
      R => '0'
    );
\r_channel_bal_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => r_channel_bal0,
      D => r_channel_bal(20),
      Q => p_0_in(19),
      R => '0'
    );
\r_channel_bal_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => r_channel_bal0,
      D => r_channel_bal(21),
      Q => p_0_in(20),
      R => '0'
    );
\r_channel_bal_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => r_channel_bal0,
      D => r_channel_bal(22),
      Q => p_0_in(21),
      R => '0'
    );
\r_channel_bal_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => r_channel_bal0,
      D => r_channel_bal(23),
      Q => p_0_in(22),
      R => '0'
    );
\r_channel_bal_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => r_channel_bal0,
      D => r_channel_bal(2),
      Q => p_0_in(1),
      R => '0'
    );
\r_channel_bal_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => r_channel_bal0,
      D => r_channel_bal(3),
      Q => p_0_in(2),
      R => '0'
    );
\r_channel_bal_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => r_channel_bal0,
      D => r_channel_bal(4),
      Q => p_0_in(3),
      R => '0'
    );
\r_channel_bal_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => r_channel_bal0,
      D => r_channel_bal(5),
      Q => p_0_in(4),
      R => '0'
    );
\r_channel_bal_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => r_channel_bal0,
      D => r_channel_bal(6),
      Q => p_0_in(5),
      R => '0'
    );
\r_channel_bal_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => r_channel_bal0,
      D => r_channel_bal(7),
      Q => p_0_in(6),
      R => '0'
    );
\r_channel_bal_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => r_channel_bal0,
      D => r_channel_bal(8),
      Q => p_0_in(7),
      R => '0'
    );
\r_channel_bal_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => r_channel_bal0,
      D => r_channel_bal(9),
      Q => p_0_in(8),
      R => '0'
    );
\r_channel_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(0),
      G => \r_channel__0\,
      GE => '1',
      Q => r_channel(0)
    );
\r_channel_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(10),
      G => \r_channel__0\,
      GE => '1',
      Q => r_channel(10)
    );
\r_channel_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(11),
      G => \r_channel__0\,
      GE => '1',
      Q => r_channel(11)
    );
\r_channel_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(12),
      G => \r_channel__0\,
      GE => '1',
      Q => r_channel(12)
    );
\r_channel_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(13),
      G => \r_channel__0\,
      GE => '1',
      Q => r_channel(13)
    );
\r_channel_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(14),
      G => \r_channel__0\,
      GE => '1',
      Q => r_channel(14)
    );
\r_channel_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(15),
      G => \r_channel__0\,
      GE => '1',
      Q => r_channel(15)
    );
\r_channel_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(16),
      G => \r_channel__0\,
      GE => '1',
      Q => r_channel(16)
    );
\r_channel_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(17),
      G => \r_channel__0\,
      GE => '1',
      Q => r_channel(17)
    );
\r_channel_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(18),
      G => \r_channel__0\,
      GE => '1',
      Q => r_channel(18)
    );
\r_channel_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(19),
      G => \r_channel__0\,
      GE => '1',
      Q => r_channel(19)
    );
\r_channel_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(1),
      G => \r_channel__0\,
      GE => '1',
      Q => r_channel(1)
    );
\r_channel_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(20),
      G => \r_channel__0\,
      GE => '1',
      Q => r_channel(20)
    );
\r_channel_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(21),
      G => \r_channel__0\,
      GE => '1',
      Q => r_channel(21)
    );
\r_channel_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(22),
      G => \r_channel__0\,
      GE => '1',
      Q => r_channel(22)
    );
\r_channel_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(23),
      G => \r_channel__0\,
      GE => '1',
      Q => r_channel(23)
    );
\r_channel_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(2),
      G => \r_channel__0\,
      GE => '1',
      Q => r_channel(2)
    );
\r_channel_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(3),
      G => \r_channel__0\,
      GE => '1',
      Q => r_channel(3)
    );
\r_channel_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(4),
      G => \r_channel__0\,
      GE => '1',
      Q => r_channel(4)
    );
\r_channel_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(5),
      G => \r_channel__0\,
      GE => '1',
      Q => r_channel(5)
    );
\r_channel_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(6),
      G => \r_channel__0\,
      GE => '1',
      Q => r_channel(6)
    );
\r_channel_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(7),
      G => \r_channel__0\,
      GE => '1',
      Q => r_channel(7)
    );
\r_channel_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(8),
      G => \r_channel__0\,
      GE => '1',
      Q => r_channel(8)
    );
\r_channel_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axis_tdata(9),
      G => \r_channel__0\,
      GE => '1',
      Q => r_channel(9)
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \l_channel__0\,
      I1 => \r_channel__0\,
      O => s_axis_tready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_Balance_controller_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    balance : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tready : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of BD_Balance_controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of BD_Balance_controller_0_0 : entity is "BD_Balance_controller_0_0,Balance_controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of BD_Balance_controller_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of BD_Balance_controller_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of BD_Balance_controller_0_0 : entity is "Balance_controller,Vivado 2020.2";
end BD_Balance_controller_0_0;

architecture STRUCTURE of BD_Balance_controller_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_parameter of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_parameter of s_axis_tvalid : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
U0: entity work.BD_Balance_controller_0_0_Balance_controller
     port map (
      \FSM_onehot_tx_state_reg[2]_0\ => m_axis_tlast,
      aclk => aclk,
      aresetn => aresetn,
      balance(9 downto 0) => balance(9 downto 0),
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
