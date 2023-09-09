// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May 20 20:46:54 2023
// Host        : DESKTOP-AVPI1T7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ BD_Volume_controller_0_0_sim_netlist.v
// Design      : BD_Volume_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BD_Volume_controller_0_0,Volume_controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Volume_controller,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    volume,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tready,
    m_axis_tlast,
    s_axis_tvalid,
    s_axis_tdata,
    s_axis_tready,
    s_axis_tlast);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input [9:0]volume;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [23:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [23:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;

  wire aclk;
  wire aresetn;
  wire [23:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [23:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [9:0]volume;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Volume_controller U0
       (.\FSM_onehot_tx_state_reg[2]_0 (m_axis_tlast),
        .aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .volume(volume));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Volume_controller
   (\FSM_onehot_tx_state_reg[2]_0 ,
    m_axis_tdata,
    m_axis_tvalid,
    s_axis_tready,
    s_axis_tvalid,
    aresetn,
    aclk,
    volume,
    s_axis_tdata,
    m_axis_tready,
    s_axis_tlast);
  output \FSM_onehot_tx_state_reg[2]_0 ;
  output [23:0]m_axis_tdata;
  output m_axis_tvalid;
  output s_axis_tready;
  input s_axis_tvalid;
  input aresetn;
  input aclk;
  input [9:0]volume;
  input [23:0]s_axis_tdata;
  input m_axis_tready;
  input s_axis_tlast;

  wire \FSM_onehot_rx_state[0]_i_1_n_0 ;
  wire \FSM_onehot_rx_state[1]_i_1_n_0 ;
  wire \FSM_onehot_rx_state[2]_i_1_n_0 ;
  wire \FSM_onehot_rx_state[2]_i_2_n_0 ;
  wire \FSM_onehot_rx_state_reg_n_0_[2] ;
  wire \FSM_onehot_tx_state[0]_i_1_n_0 ;
  wire \FSM_onehot_tx_state[1]_i_1_n_0 ;
  wire \FSM_onehot_tx_state[2]_i_1_n_0 ;
  wire \FSM_onehot_tx_state_reg[2]_0 ;
  wire \FSM_onehot_tx_state_reg_n_0_[0] ;
  wire \FSM_onehot_tx_state_reg_n_0_[1] ;
  wire \FSM_sequential_volume_control_state[0]_i_1_n_0 ;
  wire \FSM_sequential_volume_control_state[1]_i_1_n_0 ;
  wire \FSM_sequential_volume_control_state[1]_i_2_n_0 ;
  wire \FSM_sequential_volume_control_state[1]_i_4_n_0 ;
  wire \FSM_sequential_volume_control_state[1]_i_5_n_0 ;
  wire \FSM_sequential_volume_control_state[1]_i_6_n_0 ;
  wire aclk;
  wire aresetn;
  wire [9:0]exponent;
  wire \exponent[0]_i_2_n_0 ;
  wire \exponent[1]_i_2_n_0 ;
  wire \exponent[2]_i_2_n_0 ;
  wire \exponent[3]_i_2_n_0 ;
  wire \exponent[5]_i_2_n_0 ;
  wire \exponent[9]_i_1_n_0 ;
  wire \exponent[9]_i_3_n_0 ;
  wire \exponent[9]_i_4_n_0 ;
  wire \exponent[9]_i_5_n_0 ;
  wire \exponent_reg_n_0_[0] ;
  wire \exponent_reg_n_0_[1] ;
  wire \exponent_reg_n_0_[2] ;
  wire \exponent_reg_n_0_[3] ;
  wire \exponent_reg_n_0_[4] ;
  wire \exponent_reg_n_0_[5] ;
  wire \exponent_reg_n_0_[6] ;
  wire \exponent_reg_n_0_[7] ;
  wire \exponent_reg_n_0_[8] ;
  wire \exponent_reg_n_0_[9] ;
  wire in110;
  wire in70;
  wire [23:0]l_channel;
  wire l_channel__0;
  wire [23:0]l_channel_vol;
  wire \l_channel_vol[10]_i_1_n_0 ;
  wire \l_channel_vol[11]_i_1_n_0 ;
  wire \l_channel_vol[12]_i_1_n_0 ;
  wire \l_channel_vol[13]_i_1_n_0 ;
  wire \l_channel_vol[14]_i_1_n_0 ;
  wire \l_channel_vol[15]_i_1_n_0 ;
  wire \l_channel_vol[16]_i_1_n_0 ;
  wire \l_channel_vol[17]_i_1_n_0 ;
  wire \l_channel_vol[18]_i_1_n_0 ;
  wire \l_channel_vol[19]_i_1_n_0 ;
  wire \l_channel_vol[1]_i_1_n_0 ;
  wire \l_channel_vol[20]_i_1_n_0 ;
  wire \l_channel_vol[20]_i_2_n_0 ;
  wire \l_channel_vol[20]_i_3_n_0 ;
  wire \l_channel_vol[21]_i_1_n_0 ;
  wire \l_channel_vol[21]_i_2_n_0 ;
  wire \l_channel_vol[22]_i_1_n_0 ;
  wire \l_channel_vol[22]_i_2_n_0 ;
  wire \l_channel_vol[23]_i_1_n_0 ;
  wire \l_channel_vol[23]_i_3_n_0 ;
  wire \l_channel_vol[2]_i_1_n_0 ;
  wire \l_channel_vol[3]_i_1_n_0 ;
  wire \l_channel_vol[4]_i_1_n_0 ;
  wire \l_channel_vol[5]_i_1_n_0 ;
  wire \l_channel_vol[6]_i_1_n_0 ;
  wire \l_channel_vol[7]_i_1_n_0 ;
  wire \l_channel_vol[8]_i_1_n_0 ;
  wire \l_channel_vol[9]_i_1_n_0 ;
  wire \l_channel_vol_reg_n_0_[0] ;
  wire \l_channel_vol_reg_n_0_[10] ;
  wire \l_channel_vol_reg_n_0_[11] ;
  wire \l_channel_vol_reg_n_0_[12] ;
  wire \l_channel_vol_reg_n_0_[13] ;
  wire \l_channel_vol_reg_n_0_[14] ;
  wire \l_channel_vol_reg_n_0_[15] ;
  wire \l_channel_vol_reg_n_0_[16] ;
  wire \l_channel_vol_reg_n_0_[17] ;
  wire \l_channel_vol_reg_n_0_[18] ;
  wire \l_channel_vol_reg_n_0_[19] ;
  wire \l_channel_vol_reg_n_0_[1] ;
  wire \l_channel_vol_reg_n_0_[20] ;
  wire \l_channel_vol_reg_n_0_[21] ;
  wire \l_channel_vol_reg_n_0_[2] ;
  wire \l_channel_vol_reg_n_0_[3] ;
  wire \l_channel_vol_reg_n_0_[4] ;
  wire \l_channel_vol_reg_n_0_[5] ;
  wire \l_channel_vol_reg_n_0_[6] ;
  wire \l_channel_vol_reg_n_0_[7] ;
  wire \l_channel_vol_reg_n_0_[8] ;
  wire \l_channel_vol_reg_n_0_[9] ;
  wire [23:0]m_axis_tdata;
  wire \m_axis_tdata_reg[0]_i_1_n_0 ;
  wire \m_axis_tdata_reg[10]_i_1_n_0 ;
  wire \m_axis_tdata_reg[11]_i_1_n_0 ;
  wire \m_axis_tdata_reg[12]_i_1_n_0 ;
  wire \m_axis_tdata_reg[13]_i_1_n_0 ;
  wire \m_axis_tdata_reg[14]_i_1_n_0 ;
  wire \m_axis_tdata_reg[15]_i_1_n_0 ;
  wire \m_axis_tdata_reg[16]_i_1_n_0 ;
  wire \m_axis_tdata_reg[17]_i_1_n_0 ;
  wire \m_axis_tdata_reg[18]_i_1_n_0 ;
  wire \m_axis_tdata_reg[19]_i_1_n_0 ;
  wire \m_axis_tdata_reg[1]_i_1_n_0 ;
  wire \m_axis_tdata_reg[20]_i_1_n_0 ;
  wire \m_axis_tdata_reg[21]_i_1_n_0 ;
  wire \m_axis_tdata_reg[22]_i_1_n_0 ;
  wire \m_axis_tdata_reg[23]_i_1_n_0 ;
  wire \m_axis_tdata_reg[2]_i_1_n_0 ;
  wire \m_axis_tdata_reg[3]_i_1_n_0 ;
  wire \m_axis_tdata_reg[4]_i_1_n_0 ;
  wire \m_axis_tdata_reg[5]_i_1_n_0 ;
  wire \m_axis_tdata_reg[6]_i_1_n_0 ;
  wire \m_axis_tdata_reg[7]_i_1_n_0 ;
  wire \m_axis_tdata_reg[8]_i_1_n_0 ;
  wire \m_axis_tdata_reg[9]_i_1_n_0 ;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire p_0_in;
  wire p_0_in0_in;
  wire [23:0]r_channel;
  wire r_channel__0;
  wire [23:0]r_channel_vol;
  wire \r_channel_vol[10]_i_1_n_0 ;
  wire \r_channel_vol[11]_i_1_n_0 ;
  wire \r_channel_vol[12]_i_1_n_0 ;
  wire \r_channel_vol[13]_i_1_n_0 ;
  wire \r_channel_vol[14]_i_1_n_0 ;
  wire \r_channel_vol[15]_i_1_n_0 ;
  wire \r_channel_vol[16]_i_1_n_0 ;
  wire \r_channel_vol[17]_i_1_n_0 ;
  wire \r_channel_vol[18]_i_1_n_0 ;
  wire \r_channel_vol[19]_i_1_n_0 ;
  wire \r_channel_vol[1]_i_1_n_0 ;
  wire \r_channel_vol[20]_i_1_n_0 ;
  wire \r_channel_vol[20]_i_2_n_0 ;
  wire \r_channel_vol[20]_i_3_n_0 ;
  wire \r_channel_vol[21]_i_1_n_0 ;
  wire \r_channel_vol[21]_i_2_n_0 ;
  wire \r_channel_vol[22]_i_1_n_0 ;
  wire \r_channel_vol[22]_i_2_n_0 ;
  wire \r_channel_vol[23]_i_1_n_0 ;
  wire \r_channel_vol[23]_i_3_n_0 ;
  wire \r_channel_vol[23]_i_4_n_0 ;
  wire \r_channel_vol[23]_i_5_n_0 ;
  wire \r_channel_vol[2]_i_1_n_0 ;
  wire \r_channel_vol[3]_i_1_n_0 ;
  wire \r_channel_vol[4]_i_1_n_0 ;
  wire \r_channel_vol[5]_i_1_n_0 ;
  wire \r_channel_vol[6]_i_1_n_0 ;
  wire \r_channel_vol[7]_i_1_n_0 ;
  wire \r_channel_vol[8]_i_1_n_0 ;
  wire \r_channel_vol[9]_i_1_n_0 ;
  wire \r_channel_vol_reg_n_0_[0] ;
  wire \r_channel_vol_reg_n_0_[10] ;
  wire \r_channel_vol_reg_n_0_[11] ;
  wire \r_channel_vol_reg_n_0_[12] ;
  wire \r_channel_vol_reg_n_0_[13] ;
  wire \r_channel_vol_reg_n_0_[14] ;
  wire \r_channel_vol_reg_n_0_[15] ;
  wire \r_channel_vol_reg_n_0_[16] ;
  wire \r_channel_vol_reg_n_0_[17] ;
  wire \r_channel_vol_reg_n_0_[18] ;
  wire \r_channel_vol_reg_n_0_[19] ;
  wire \r_channel_vol_reg_n_0_[1] ;
  wire \r_channel_vol_reg_n_0_[20] ;
  wire \r_channel_vol_reg_n_0_[21] ;
  wire \r_channel_vol_reg_n_0_[2] ;
  wire \r_channel_vol_reg_n_0_[3] ;
  wire \r_channel_vol_reg_n_0_[4] ;
  wire \r_channel_vol_reg_n_0_[5] ;
  wire \r_channel_vol_reg_n_0_[6] ;
  wire \r_channel_vol_reg_n_0_[7] ;
  wire \r_channel_vol_reg_n_0_[8] ;
  wire \r_channel_vol_reg_n_0_[9] ;
  wire [23:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire tx_state0;
  wire [9:0]volume;
  wire volume_control_state0;
  wire [1:0]volume_control_state__0;

  LUT5 #(
    .INIT(32'hFFCC004C)) 
    \FSM_onehot_rx_state[0]_i_1 
       (.I0(s_axis_tvalid),
        .I1(l_channel__0),
        .I2(aresetn),
        .I3(\FSM_onehot_rx_state[2]_i_2_n_0 ),
        .I4(\FSM_onehot_rx_state_reg_n_0_[2] ),
        .O(\FSM_onehot_rx_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCCFFCC80)) 
    \FSM_onehot_rx_state[1]_i_1 
       (.I0(s_axis_tvalid),
        .I1(l_channel__0),
        .I2(aresetn),
        .I3(\FSM_onehot_rx_state[2]_i_2_n_0 ),
        .I4(r_channel__0),
        .O(\FSM_onehot_rx_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF007FFF800000)) 
    \FSM_onehot_rx_state[2]_i_1 
       (.I0(s_axis_tvalid),
        .I1(l_channel__0),
        .I2(aresetn),
        .I3(\FSM_onehot_rx_state[2]_i_2_n_0 ),
        .I4(r_channel__0),
        .I5(\FSM_onehot_rx_state_reg_n_0_[2] ),
        .O(\FSM_onehot_rx_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF800880088008800)) 
    \FSM_onehot_rx_state[2]_i_2 
       (.I0(s_axis_tlast),
        .I1(r_channel__0),
        .I2(volume_control_state__0[1]),
        .I3(aresetn),
        .I4(volume_control_state__0[0]),
        .I5(\FSM_onehot_rx_state_reg_n_0_[2] ),
        .O(\FSM_onehot_rx_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "idle:100,receive_l:001,receive_r:010," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_rx_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_rx_state[0]_i_1_n_0 ),
        .Q(l_channel__0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idle:100,receive_l:001,receive_r:010," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rx_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_rx_state[1]_i_1_n_0 ),
        .Q(r_channel__0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idle:100,receive_l:001,receive_r:010," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rx_state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_rx_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_rx_state_reg_n_0_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_tx_state[0]_i_1 
       (.I0(\FSM_onehot_tx_state_reg[2]_0 ),
        .I1(tx_state0),
        .I2(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .O(\FSM_onehot_tx_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_tx_state[1]_i_1 
       (.I0(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .I1(tx_state0),
        .I2(\FSM_onehot_tx_state_reg_n_0_[1] ),
        .O(\FSM_onehot_tx_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_tx_state[2]_i_1 
       (.I0(\FSM_onehot_tx_state_reg_n_0_[1] ),
        .I1(tx_state0),
        .I2(\FSM_onehot_tx_state_reg[2]_0 ),
        .O(\FSM_onehot_tx_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808000000000)) 
    \FSM_onehot_tx_state[2]_i_2 
       (.I0(volume_control_state__0[1]),
        .I1(volume_control_state__0[0]),
        .I2(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .I3(m_axis_tvalid),
        .I4(m_axis_tready),
        .I5(aresetn),
        .O(tx_state0));
  (* FSM_ENCODED_STATES = "idle:001,transmit_l:010,transmit_r:100," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_tx_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_tx_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idle:001,transmit_l:010,transmit_r:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_tx_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_tx_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_tx_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idle:001,transmit_l:010,transmit_r:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_tx_state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_tx_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_tx_state_reg[2]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00FFFFFFFF1F0000)) 
    \FSM_sequential_volume_control_state[0]_i_1 
       (.I0(volume[8]),
        .I1(\FSM_sequential_volume_control_state[1]_i_2_n_0 ),
        .I2(volume[9]),
        .I3(volume_control_state__0[1]),
        .I4(volume_control_state0),
        .I5(volume_control_state__0[0]),
        .O(\FSM_sequential_volume_control_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFFFFE00000)) 
    \FSM_sequential_volume_control_state[1]_i_1 
       (.I0(volume[8]),
        .I1(\FSM_sequential_volume_control_state[1]_i_2_n_0 ),
        .I2(volume[9]),
        .I3(volume_control_state__0[0]),
        .I4(volume_control_state0),
        .I5(volume_control_state__0[1]),
        .O(\FSM_sequential_volume_control_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_volume_control_state[1]_i_2 
       (.I0(volume[6]),
        .I1(\exponent[0]_i_2_n_0 ),
        .I2(volume[7]),
        .O(\FSM_sequential_volume_control_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7400)) 
    \FSM_sequential_volume_control_state[1]_i_3 
       (.I0(\exponent[9]_i_3_n_0 ),
        .I1(\exponent[9]_i_5_n_0 ),
        .I2(\FSM_sequential_volume_control_state[1]_i_4_n_0 ),
        .I3(aresetn),
        .I4(\FSM_sequential_volume_control_state[1]_i_5_n_0 ),
        .I5(\FSM_sequential_volume_control_state[1]_i_6_n_0 ),
        .O(volume_control_state0));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_volume_control_state[1]_i_4 
       (.I0(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_rx_state_reg_n_0_[2] ),
        .O(\FSM_sequential_volume_control_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hBE000000)) 
    \FSM_sequential_volume_control_state[1]_i_5 
       (.I0(volume_control_state__0[0]),
        .I1(p_0_in0_in),
        .I2(in70),
        .I3(aresetn),
        .I4(volume_control_state__0[1]),
        .O(\FSM_sequential_volume_control_state[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6000)) 
    \FSM_sequential_volume_control_state[1]_i_6 
       (.I0(in110),
        .I1(p_0_in),
        .I2(aresetn),
        .I3(volume_control_state__0[1]),
        .O(\FSM_sequential_volume_control_state[1]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "idle:00,finish:11,increase_vol:10,reduce_vol:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_volume_control_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_volume_control_state[0]_i_1_n_0 ),
        .Q(volume_control_state__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idle:00,finish:11,increase_vol:10,reduce_vol:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_volume_control_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_volume_control_state[1]_i_1_n_0 ),
        .Q(volume_control_state__0[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h555555555555CF30)) 
    \exponent[0]_i_1 
       (.I0(\exponent_reg_n_0_[0] ),
        .I1(volume[9]),
        .I2(\exponent[0]_i_2_n_0 ),
        .I3(volume[6]),
        .I4(volume_control_state__0[1]),
        .I5(volume_control_state__0[0]),
        .O(exponent[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \exponent[0]_i_2 
       (.I0(volume[4]),
        .I1(volume[5]),
        .I2(volume[2]),
        .I3(volume[3]),
        .I4(volume[1]),
        .I5(volume[0]),
        .O(\exponent[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEBE44144414EEBE)) 
    \exponent[1]_i_1 
       (.I0(\exponent[9]_i_5_n_0 ),
        .I1(volume[7]),
        .I2(\exponent[1]_i_2_n_0 ),
        .I3(volume[9]),
        .I4(\exponent_reg_n_0_[0] ),
        .I5(\exponent_reg_n_0_[1] ),
        .O(exponent[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \exponent[1]_i_2 
       (.I0(\exponent[0]_i_2_n_0 ),
        .I1(volume[6]),
        .O(\exponent[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEBE44144414EEBE)) 
    \exponent[2]_i_1 
       (.I0(\exponent[9]_i_5_n_0 ),
        .I1(volume[8]),
        .I2(\FSM_sequential_volume_control_state[1]_i_2_n_0 ),
        .I3(volume[9]),
        .I4(\exponent[2]_i_2_n_0 ),
        .I5(\exponent_reg_n_0_[2] ),
        .O(exponent[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \exponent[2]_i_2 
       (.I0(\exponent_reg_n_0_[0] ),
        .I1(\exponent_reg_n_0_[1] ),
        .O(\exponent[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00010100FF0101)) 
    \exponent[3]_i_1 
       (.I0(volume[9]),
        .I1(volume[8]),
        .I2(\FSM_sequential_volume_control_state[1]_i_2_n_0 ),
        .I3(\exponent[3]_i_2_n_0 ),
        .I4(\exponent[9]_i_5_n_0 ),
        .I5(\exponent_reg_n_0_[3] ),
        .O(exponent[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \exponent[3]_i_2 
       (.I0(\exponent_reg_n_0_[1] ),
        .I1(\exponent_reg_n_0_[0] ),
        .I2(\exponent_reg_n_0_[2] ),
        .O(\exponent[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000100000000)) 
    \exponent[4]_i_1 
       (.I0(\exponent_reg_n_0_[3] ),
        .I1(\exponent_reg_n_0_[1] ),
        .I2(\exponent_reg_n_0_[0] ),
        .I3(\exponent_reg_n_0_[2] ),
        .I4(\exponent_reg_n_0_[4] ),
        .I5(\exponent[9]_i_5_n_0 ),
        .O(exponent[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h9990)) 
    \exponent[5]_i_1 
       (.I0(\exponent[5]_i_2_n_0 ),
        .I1(\exponent_reg_n_0_[5] ),
        .I2(volume_control_state__0[0]),
        .I3(volume_control_state__0[1]),
        .O(exponent[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \exponent[5]_i_2 
       (.I0(\exponent_reg_n_0_[3] ),
        .I1(\exponent_reg_n_0_[1] ),
        .I2(\exponent_reg_n_0_[0] ),
        .I3(\exponent_reg_n_0_[2] ),
        .I4(\exponent_reg_n_0_[4] ),
        .O(\exponent[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h9990)) 
    \exponent[6]_i_1 
       (.I0(\exponent[9]_i_4_n_0 ),
        .I1(\exponent_reg_n_0_[6] ),
        .I2(volume_control_state__0[0]),
        .I3(volume_control_state__0[1]),
        .O(exponent[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hE1E1E100)) 
    \exponent[7]_i_1 
       (.I0(\exponent_reg_n_0_[6] ),
        .I1(\exponent[9]_i_4_n_0 ),
        .I2(\exponent_reg_n_0_[7] ),
        .I3(volume_control_state__0[0]),
        .I4(volume_control_state__0[1]),
        .O(exponent[7]));
  LUT6 #(
    .INIT(64'hFE01FE01FE010000)) 
    \exponent[8]_i_1 
       (.I0(\exponent_reg_n_0_[7] ),
        .I1(\exponent[9]_i_4_n_0 ),
        .I2(\exponent_reg_n_0_[6] ),
        .I3(\exponent_reg_n_0_[8] ),
        .I4(volume_control_state__0[0]),
        .I5(volume_control_state__0[1]),
        .O(exponent[8]));
  LUT6 #(
    .INIT(64'h2B28282800000000)) 
    \exponent[9]_i_1 
       (.I0(\exponent[9]_i_3_n_0 ),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\FSM_onehot_rx_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .I5(aresetn),
        .O(\exponent[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000100000000)) 
    \exponent[9]_i_2 
       (.I0(\exponent_reg_n_0_[8] ),
        .I1(\exponent_reg_n_0_[6] ),
        .I2(\exponent[9]_i_4_n_0 ),
        .I3(\exponent_reg_n_0_[7] ),
        .I4(\exponent_reg_n_0_[9] ),
        .I5(\exponent[9]_i_5_n_0 ),
        .O(exponent[9]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \exponent[9]_i_3 
       (.I0(\exponent_reg_n_0_[8] ),
        .I1(\exponent_reg_n_0_[6] ),
        .I2(\exponent[9]_i_4_n_0 ),
        .I3(\exponent_reg_n_0_[7] ),
        .I4(\exponent_reg_n_0_[9] ),
        .O(\exponent[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \exponent[9]_i_4 
       (.I0(\exponent_reg_n_0_[4] ),
        .I1(\exponent_reg_n_0_[2] ),
        .I2(\exponent_reg_n_0_[0] ),
        .I3(\exponent_reg_n_0_[1] ),
        .I4(\exponent_reg_n_0_[3] ),
        .I5(\exponent_reg_n_0_[5] ),
        .O(\exponent[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \exponent[9]_i_5 
       (.I0(volume_control_state__0[0]),
        .I1(volume_control_state__0[1]),
        .O(\exponent[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exponent_reg[0] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(exponent[0]),
        .Q(\exponent_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \exponent_reg[1] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(exponent[1]),
        .Q(\exponent_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \exponent_reg[2] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(exponent[2]),
        .Q(\exponent_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \exponent_reg[3] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(exponent[3]),
        .Q(\exponent_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \exponent_reg[4] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(exponent[4]),
        .Q(\exponent_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \exponent_reg[5] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(exponent[5]),
        .Q(\exponent_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \exponent_reg[6] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(exponent[6]),
        .Q(\exponent_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \exponent_reg[7] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(exponent[7]),
        .Q(\exponent_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \exponent_reg[8] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(exponent[8]),
        .Q(\exponent_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \exponent_reg[9] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(exponent[9]),
        .Q(\exponent_reg_n_0_[9] ),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \l_channel_reg[0] 
       (.CLR(1'b0),
        .D(s_axis_tdata[0]),
        .G(l_channel__0),
        .GE(1'b1),
        .Q(l_channel[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \l_channel_reg[10] 
       (.CLR(1'b0),
        .D(s_axis_tdata[10]),
        .G(l_channel__0),
        .GE(1'b1),
        .Q(l_channel[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \l_channel_reg[11] 
       (.CLR(1'b0),
        .D(s_axis_tdata[11]),
        .G(l_channel__0),
        .GE(1'b1),
        .Q(l_channel[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \l_channel_reg[12] 
       (.CLR(1'b0),
        .D(s_axis_tdata[12]),
        .G(l_channel__0),
        .GE(1'b1),
        .Q(l_channel[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \l_channel_reg[13] 
       (.CLR(1'b0),
        .D(s_axis_tdata[13]),
        .G(l_channel__0),
        .GE(1'b1),
        .Q(l_channel[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \l_channel_reg[14] 
       (.CLR(1'b0),
        .D(s_axis_tdata[14]),
        .G(l_channel__0),
        .GE(1'b1),
        .Q(l_channel[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \l_channel_reg[15] 
       (.CLR(1'b0),
        .D(s_axis_tdata[15]),
        .G(l_channel__0),
        .GE(1'b1),
        .Q(l_channel[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \l_channel_reg[16] 
       (.CLR(1'b0),
        .D(s_axis_tdata[16]),
        .G(l_channel__0),
        .GE(1'b1),
        .Q(l_channel[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \l_channel_reg[17] 
       (.CLR(1'b0),
        .D(s_axis_tdata[17]),
        .G(l_channel__0),
        .GE(1'b1),
        .Q(l_channel[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \l_channel_reg[18] 
       (.CLR(1'b0),
        .D(s_axis_tdata[18]),
        .G(l_channel__0),
        .GE(1'b1),
        .Q(l_channel[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \l_channel_reg[19] 
       (.CLR(1'b0),
        .D(s_axis_tdata[19]),
        .G(l_channel__0),
        .GE(1'b1),
        .Q(l_channel[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \l_channel_reg[1] 
       (.CLR(1'b0),
        .D(s_axis_tdata[1]),
        .G(l_channel__0),
        .GE(1'b1),
        .Q(l_channel[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \l_channel_reg[20] 
       (.CLR(1'b0),
        .D(s_axis_tdata[20]),
        .G(l_channel__0),
        .GE(1'b1),
        .Q(l_channel[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \l_channel_reg[21] 
       (.CLR(1'b0),
        .D(s_axis_tdata[21]),
        .G(l_channel__0),
        .GE(1'b1),
        .Q(l_channel[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \l_channel_reg[22] 
       (.CLR(1'b0),
        .D(s_axis_tdata[22]),
        .G(l_channel__0),
        .GE(1'b1),
        .Q(l_channel[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \l_channel_reg[23] 
       (.CLR(1'b0),
        .D(s_axis_tdata[23]),
        .G(l_channel__0),
        .GE(1'b1),
        .Q(l_channel[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \l_channel_reg[2] 
       (.CLR(1'b0),
        .D(s_axis_tdata[2]),
        .G(l_channel__0),
        .GE(1'b1),
        .Q(l_channel[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \l_channel_reg[3] 
       (.CLR(1'b0),
        .D(s_axis_tdata[3]),
        .G(l_channel__0),
        .GE(1'b1),
        .Q(l_channel[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \l_channel_reg[4] 
       (.CLR(1'b0),
        .D(s_axis_tdata[4]),
        .G(l_channel__0),
        .GE(1'b1),
        .Q(l_channel[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \l_channel_reg[5] 
       (.CLR(1'b0),
        .D(s_axis_tdata[5]),
        .G(l_channel__0),
        .GE(1'b1),
        .Q(l_channel[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \l_channel_reg[6] 
       (.CLR(1'b0),
        .D(s_axis_tdata[6]),
        .G(l_channel__0),
        .GE(1'b1),
        .Q(l_channel[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \l_channel_reg[7] 
       (.CLR(1'b0),
        .D(s_axis_tdata[7]),
        .G(l_channel__0),
        .GE(1'b1),
        .Q(l_channel[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \l_channel_reg[8] 
       (.CLR(1'b0),
        .D(s_axis_tdata[8]),
        .G(l_channel__0),
        .GE(1'b1),
        .Q(l_channel[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \l_channel_reg[9] 
       (.CLR(1'b0),
        .D(s_axis_tdata[9]),
        .G(l_channel__0),
        .GE(1'b1),
        .Q(l_channel[9]));
  LUT6 #(
    .INIT(64'h22222222FF00F0F0)) 
    \l_channel_vol[0]_i_1 
       (.I0(p_0_in),
        .I1(in110),
        .I2(l_channel[0]),
        .I3(\l_channel_vol_reg_n_0_[1] ),
        .I4(volume_control_state__0[0]),
        .I5(volume_control_state__0[1]),
        .O(l_channel_vol[0]));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \l_channel_vol[10]_i_1 
       (.I0(l_channel[10]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\l_channel_vol_reg_n_0_[11] ),
        .I4(\l_channel_vol_reg_n_0_[9] ),
        .I5(\l_channel_vol[20]_i_3_n_0 ),
        .O(\l_channel_vol[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \l_channel_vol[11]_i_1 
       (.I0(l_channel[11]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\l_channel_vol_reg_n_0_[12] ),
        .I4(\l_channel_vol_reg_n_0_[10] ),
        .I5(\l_channel_vol[20]_i_3_n_0 ),
        .O(\l_channel_vol[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \l_channel_vol[12]_i_1 
       (.I0(l_channel[12]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\l_channel_vol_reg_n_0_[13] ),
        .I4(\l_channel_vol_reg_n_0_[11] ),
        .I5(\l_channel_vol[20]_i_3_n_0 ),
        .O(\l_channel_vol[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \l_channel_vol[13]_i_1 
       (.I0(l_channel[13]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\l_channel_vol_reg_n_0_[14] ),
        .I4(\l_channel_vol_reg_n_0_[12] ),
        .I5(\l_channel_vol[20]_i_3_n_0 ),
        .O(\l_channel_vol[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \l_channel_vol[14]_i_1 
       (.I0(l_channel[14]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\l_channel_vol_reg_n_0_[15] ),
        .I4(\l_channel_vol_reg_n_0_[13] ),
        .I5(\l_channel_vol[20]_i_3_n_0 ),
        .O(\l_channel_vol[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \l_channel_vol[15]_i_1 
       (.I0(l_channel[15]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\l_channel_vol_reg_n_0_[16] ),
        .I4(\l_channel_vol_reg_n_0_[14] ),
        .I5(\l_channel_vol[20]_i_3_n_0 ),
        .O(\l_channel_vol[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \l_channel_vol[16]_i_1 
       (.I0(l_channel[16]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\l_channel_vol_reg_n_0_[17] ),
        .I4(\l_channel_vol_reg_n_0_[15] ),
        .I5(\l_channel_vol[20]_i_3_n_0 ),
        .O(\l_channel_vol[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \l_channel_vol[17]_i_1 
       (.I0(l_channel[17]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\l_channel_vol_reg_n_0_[18] ),
        .I4(\l_channel_vol_reg_n_0_[16] ),
        .I5(\l_channel_vol[20]_i_3_n_0 ),
        .O(\l_channel_vol[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \l_channel_vol[18]_i_1 
       (.I0(l_channel[18]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\l_channel_vol_reg_n_0_[19] ),
        .I4(\l_channel_vol_reg_n_0_[17] ),
        .I5(\l_channel_vol[20]_i_3_n_0 ),
        .O(\l_channel_vol[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \l_channel_vol[19]_i_1 
       (.I0(l_channel[19]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\l_channel_vol_reg_n_0_[20] ),
        .I4(\l_channel_vol_reg_n_0_[18] ),
        .I5(\l_channel_vol[20]_i_3_n_0 ),
        .O(\l_channel_vol[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \l_channel_vol[1]_i_1 
       (.I0(l_channel[1]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\l_channel_vol_reg_n_0_[2] ),
        .I4(\l_channel_vol_reg_n_0_[0] ),
        .I5(\l_channel_vol[20]_i_3_n_0 ),
        .O(\l_channel_vol[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \l_channel_vol[20]_i_1 
       (.I0(in110),
        .I1(p_0_in),
        .I2(volume_control_state__0[1]),
        .I3(\exponent[9]_i_1_n_0 ),
        .O(\l_channel_vol[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \l_channel_vol[20]_i_2 
       (.I0(l_channel[20]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\l_channel_vol_reg_n_0_[21] ),
        .I4(\l_channel_vol_reg_n_0_[19] ),
        .I5(\l_channel_vol[20]_i_3_n_0 ),
        .O(\l_channel_vol[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \l_channel_vol[20]_i_3 
       (.I0(in110),
        .I1(p_0_in),
        .I2(volume_control_state__0[1]),
        .O(\l_channel_vol[20]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    \l_channel_vol[21]_i_1 
       (.I0(in110),
        .I1(p_0_in),
        .I2(volume_control_state__0[1]),
        .I3(\l_channel_vol[21]_i_2_n_0 ),
        .O(\l_channel_vol[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F000F0EEEE2222)) 
    \l_channel_vol[21]_i_2 
       (.I0(l_channel[21]),
        .I1(volume_control_state__0[0]),
        .I2(\l_channel_vol_reg_n_0_[20] ),
        .I3(in110),
        .I4(p_0_in),
        .I5(volume_control_state__0[1]),
        .O(\l_channel_vol[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    \l_channel_vol[22]_i_1 
       (.I0(in110),
        .I1(p_0_in),
        .I2(volume_control_state__0[1]),
        .I3(\l_channel_vol[22]_i_2_n_0 ),
        .O(\l_channel_vol[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F000F0EE22EE22)) 
    \l_channel_vol[22]_i_2 
       (.I0(l_channel[22]),
        .I1(volume_control_state__0[0]),
        .I2(\l_channel_vol_reg_n_0_[21] ),
        .I3(in110),
        .I4(p_0_in),
        .I5(volume_control_state__0[1]),
        .O(\l_channel_vol[22]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \l_channel_vol[23]_i_1 
       (.I0(l_channel_vol[23]),
        .I1(\l_channel_vol[23]_i_3_n_0 ),
        .I2(\r_channel_vol[23]_i_5_n_0 ),
        .I3(in110),
        .O(\l_channel_vol[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAAAAF0CC)) 
    \l_channel_vol[23]_i_2 
       (.I0(p_0_in),
        .I1(l_channel[23]),
        .I2(in110),
        .I3(volume_control_state__0[0]),
        .I4(volume_control_state__0[1]),
        .O(l_channel_vol[23]));
  LUT6 #(
    .INIT(64'h0000900000000000)) 
    \l_channel_vol[23]_i_3 
       (.I0(p_0_in),
        .I1(in110),
        .I2(aresetn),
        .I3(volume_control_state__0[1]),
        .I4(volume_control_state__0[0]),
        .I5(\exponent[9]_i_3_n_0 ),
        .O(\l_channel_vol[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \l_channel_vol[2]_i_1 
       (.I0(l_channel[2]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\l_channel_vol_reg_n_0_[3] ),
        .I4(\l_channel_vol_reg_n_0_[1] ),
        .I5(\l_channel_vol[20]_i_3_n_0 ),
        .O(\l_channel_vol[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \l_channel_vol[3]_i_1 
       (.I0(l_channel[3]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\l_channel_vol_reg_n_0_[4] ),
        .I4(\l_channel_vol_reg_n_0_[2] ),
        .I5(\l_channel_vol[20]_i_3_n_0 ),
        .O(\l_channel_vol[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \l_channel_vol[4]_i_1 
       (.I0(l_channel[4]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\l_channel_vol_reg_n_0_[5] ),
        .I4(\l_channel_vol_reg_n_0_[3] ),
        .I5(\l_channel_vol[20]_i_3_n_0 ),
        .O(\l_channel_vol[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \l_channel_vol[5]_i_1 
       (.I0(l_channel[5]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\l_channel_vol_reg_n_0_[6] ),
        .I4(\l_channel_vol_reg_n_0_[4] ),
        .I5(\l_channel_vol[20]_i_3_n_0 ),
        .O(\l_channel_vol[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \l_channel_vol[6]_i_1 
       (.I0(l_channel[6]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\l_channel_vol_reg_n_0_[7] ),
        .I4(\l_channel_vol_reg_n_0_[5] ),
        .I5(\l_channel_vol[20]_i_3_n_0 ),
        .O(\l_channel_vol[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \l_channel_vol[7]_i_1 
       (.I0(l_channel[7]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\l_channel_vol_reg_n_0_[8] ),
        .I4(\l_channel_vol_reg_n_0_[6] ),
        .I5(\l_channel_vol[20]_i_3_n_0 ),
        .O(\l_channel_vol[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \l_channel_vol[8]_i_1 
       (.I0(l_channel[8]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\l_channel_vol_reg_n_0_[9] ),
        .I4(\l_channel_vol_reg_n_0_[7] ),
        .I5(\l_channel_vol[20]_i_3_n_0 ),
        .O(\l_channel_vol[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \l_channel_vol[9]_i_1 
       (.I0(l_channel[9]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\l_channel_vol_reg_n_0_[10] ),
        .I4(\l_channel_vol_reg_n_0_[8] ),
        .I5(\l_channel_vol[20]_i_3_n_0 ),
        .O(\l_channel_vol[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \l_channel_vol_reg[0] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(l_channel_vol[0]),
        .Q(\l_channel_vol_reg_n_0_[0] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \l_channel_vol_reg[10] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\l_channel_vol[10]_i_1_n_0 ),
        .Q(\l_channel_vol_reg_n_0_[10] ),
        .S(\l_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \l_channel_vol_reg[11] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\l_channel_vol[11]_i_1_n_0 ),
        .Q(\l_channel_vol_reg_n_0_[11] ),
        .S(\l_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \l_channel_vol_reg[12] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\l_channel_vol[12]_i_1_n_0 ),
        .Q(\l_channel_vol_reg_n_0_[12] ),
        .S(\l_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \l_channel_vol_reg[13] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\l_channel_vol[13]_i_1_n_0 ),
        .Q(\l_channel_vol_reg_n_0_[13] ),
        .S(\l_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \l_channel_vol_reg[14] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\l_channel_vol[14]_i_1_n_0 ),
        .Q(\l_channel_vol_reg_n_0_[14] ),
        .S(\l_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \l_channel_vol_reg[15] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\l_channel_vol[15]_i_1_n_0 ),
        .Q(\l_channel_vol_reg_n_0_[15] ),
        .S(\l_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \l_channel_vol_reg[16] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\l_channel_vol[16]_i_1_n_0 ),
        .Q(\l_channel_vol_reg_n_0_[16] ),
        .S(\l_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \l_channel_vol_reg[17] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\l_channel_vol[17]_i_1_n_0 ),
        .Q(\l_channel_vol_reg_n_0_[17] ),
        .S(\l_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \l_channel_vol_reg[18] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\l_channel_vol[18]_i_1_n_0 ),
        .Q(\l_channel_vol_reg_n_0_[18] ),
        .S(\l_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \l_channel_vol_reg[19] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\l_channel_vol[19]_i_1_n_0 ),
        .Q(\l_channel_vol_reg_n_0_[19] ),
        .S(\l_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \l_channel_vol_reg[1] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\l_channel_vol[1]_i_1_n_0 ),
        .Q(\l_channel_vol_reg_n_0_[1] ),
        .S(\l_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \l_channel_vol_reg[20] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\l_channel_vol[20]_i_2_n_0 ),
        .Q(\l_channel_vol_reg_n_0_[20] ),
        .S(\l_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \l_channel_vol_reg[21] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\l_channel_vol[21]_i_1_n_0 ),
        .Q(\l_channel_vol_reg_n_0_[21] ),
        .S(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \l_channel_vol_reg[22] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\l_channel_vol[22]_i_1_n_0 ),
        .Q(p_0_in),
        .S(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \l_channel_vol_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(\l_channel_vol[23]_i_1_n_0 ),
        .Q(in110),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \l_channel_vol_reg[2] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\l_channel_vol[2]_i_1_n_0 ),
        .Q(\l_channel_vol_reg_n_0_[2] ),
        .S(\l_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \l_channel_vol_reg[3] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\l_channel_vol[3]_i_1_n_0 ),
        .Q(\l_channel_vol_reg_n_0_[3] ),
        .S(\l_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \l_channel_vol_reg[4] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\l_channel_vol[4]_i_1_n_0 ),
        .Q(\l_channel_vol_reg_n_0_[4] ),
        .S(\l_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \l_channel_vol_reg[5] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\l_channel_vol[5]_i_1_n_0 ),
        .Q(\l_channel_vol_reg_n_0_[5] ),
        .S(\l_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \l_channel_vol_reg[6] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\l_channel_vol[6]_i_1_n_0 ),
        .Q(\l_channel_vol_reg_n_0_[6] ),
        .S(\l_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \l_channel_vol_reg[7] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\l_channel_vol[7]_i_1_n_0 ),
        .Q(\l_channel_vol_reg_n_0_[7] ),
        .S(\l_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \l_channel_vol_reg[8] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\l_channel_vol[8]_i_1_n_0 ),
        .Q(\l_channel_vol_reg_n_0_[8] ),
        .S(\l_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \l_channel_vol_reg[9] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\l_channel_vol[9]_i_1_n_0 ),
        .Q(\l_channel_vol_reg_n_0_[9] ),
        .S(\l_channel_vol[20]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[0] 
       (.CLR(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .D(\m_axis_tdata_reg[0]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[0]_i_1 
       (.I0(\l_channel_vol_reg_n_0_[0] ),
        .I1(\FSM_onehot_tx_state_reg_n_0_[1] ),
        .I2(\r_channel_vol_reg_n_0_[0] ),
        .O(\m_axis_tdata_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[10] 
       (.CLR(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .D(\m_axis_tdata_reg[10]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[10]_i_1 
       (.I0(\l_channel_vol_reg_n_0_[10] ),
        .I1(\FSM_onehot_tx_state_reg_n_0_[1] ),
        .I2(\r_channel_vol_reg_n_0_[10] ),
        .O(\m_axis_tdata_reg[10]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[11] 
       (.CLR(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .D(\m_axis_tdata_reg[11]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[11]_i_1 
       (.I0(\l_channel_vol_reg_n_0_[11] ),
        .I1(\FSM_onehot_tx_state_reg_n_0_[1] ),
        .I2(\r_channel_vol_reg_n_0_[11] ),
        .O(\m_axis_tdata_reg[11]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[12] 
       (.CLR(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .D(\m_axis_tdata_reg[12]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[12]_i_1 
       (.I0(\l_channel_vol_reg_n_0_[12] ),
        .I1(\FSM_onehot_tx_state_reg_n_0_[1] ),
        .I2(\r_channel_vol_reg_n_0_[12] ),
        .O(\m_axis_tdata_reg[12]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[13] 
       (.CLR(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .D(\m_axis_tdata_reg[13]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[13]_i_1 
       (.I0(\l_channel_vol_reg_n_0_[13] ),
        .I1(\FSM_onehot_tx_state_reg_n_0_[1] ),
        .I2(\r_channel_vol_reg_n_0_[13] ),
        .O(\m_axis_tdata_reg[13]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[14] 
       (.CLR(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .D(\m_axis_tdata_reg[14]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[14]_i_1 
       (.I0(\l_channel_vol_reg_n_0_[14] ),
        .I1(\FSM_onehot_tx_state_reg_n_0_[1] ),
        .I2(\r_channel_vol_reg_n_0_[14] ),
        .O(\m_axis_tdata_reg[14]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[15] 
       (.CLR(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .D(\m_axis_tdata_reg[15]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[15]_i_1 
       (.I0(\l_channel_vol_reg_n_0_[15] ),
        .I1(\FSM_onehot_tx_state_reg_n_0_[1] ),
        .I2(\r_channel_vol_reg_n_0_[15] ),
        .O(\m_axis_tdata_reg[15]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[16] 
       (.CLR(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .D(\m_axis_tdata_reg[16]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[16]_i_1 
       (.I0(\l_channel_vol_reg_n_0_[16] ),
        .I1(\FSM_onehot_tx_state_reg_n_0_[1] ),
        .I2(\r_channel_vol_reg_n_0_[16] ),
        .O(\m_axis_tdata_reg[16]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[17] 
       (.CLR(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .D(\m_axis_tdata_reg[17]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[17]_i_1 
       (.I0(\l_channel_vol_reg_n_0_[17] ),
        .I1(\FSM_onehot_tx_state_reg_n_0_[1] ),
        .I2(\r_channel_vol_reg_n_0_[17] ),
        .O(\m_axis_tdata_reg[17]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[18] 
       (.CLR(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .D(\m_axis_tdata_reg[18]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[18]_i_1 
       (.I0(\l_channel_vol_reg_n_0_[18] ),
        .I1(\FSM_onehot_tx_state_reg_n_0_[1] ),
        .I2(\r_channel_vol_reg_n_0_[18] ),
        .O(\m_axis_tdata_reg[18]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[19] 
       (.CLR(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .D(\m_axis_tdata_reg[19]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[19]_i_1 
       (.I0(\l_channel_vol_reg_n_0_[19] ),
        .I1(\FSM_onehot_tx_state_reg_n_0_[1] ),
        .I2(\r_channel_vol_reg_n_0_[19] ),
        .O(\m_axis_tdata_reg[19]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[1] 
       (.CLR(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .D(\m_axis_tdata_reg[1]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[1]_i_1 
       (.I0(\l_channel_vol_reg_n_0_[1] ),
        .I1(\FSM_onehot_tx_state_reg_n_0_[1] ),
        .I2(\r_channel_vol_reg_n_0_[1] ),
        .O(\m_axis_tdata_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[20] 
       (.CLR(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .D(\m_axis_tdata_reg[20]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[20]_i_1 
       (.I0(\l_channel_vol_reg_n_0_[20] ),
        .I1(\FSM_onehot_tx_state_reg_n_0_[1] ),
        .I2(\r_channel_vol_reg_n_0_[20] ),
        .O(\m_axis_tdata_reg[20]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[21] 
       (.CLR(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .D(\m_axis_tdata_reg[21]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[21]_i_1 
       (.I0(\l_channel_vol_reg_n_0_[21] ),
        .I1(\FSM_onehot_tx_state_reg_n_0_[1] ),
        .I2(\r_channel_vol_reg_n_0_[21] ),
        .O(\m_axis_tdata_reg[21]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[22] 
       (.CLR(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .D(\m_axis_tdata_reg[22]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[22]_i_1 
       (.I0(p_0_in),
        .I1(\FSM_onehot_tx_state_reg_n_0_[1] ),
        .I2(p_0_in0_in),
        .O(\m_axis_tdata_reg[22]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[23] 
       (.CLR(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .D(\m_axis_tdata_reg[23]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[23]_i_1 
       (.I0(in110),
        .I1(\FSM_onehot_tx_state_reg_n_0_[1] ),
        .I2(in70),
        .O(\m_axis_tdata_reg[23]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[2] 
       (.CLR(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .D(\m_axis_tdata_reg[2]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[2]_i_1 
       (.I0(\l_channel_vol_reg_n_0_[2] ),
        .I1(\FSM_onehot_tx_state_reg_n_0_[1] ),
        .I2(\r_channel_vol_reg_n_0_[2] ),
        .O(\m_axis_tdata_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[3] 
       (.CLR(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .D(\m_axis_tdata_reg[3]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[3]_i_1 
       (.I0(\l_channel_vol_reg_n_0_[3] ),
        .I1(\FSM_onehot_tx_state_reg_n_0_[1] ),
        .I2(\r_channel_vol_reg_n_0_[3] ),
        .O(\m_axis_tdata_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[4] 
       (.CLR(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .D(\m_axis_tdata_reg[4]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[4]_i_1 
       (.I0(\l_channel_vol_reg_n_0_[4] ),
        .I1(\FSM_onehot_tx_state_reg_n_0_[1] ),
        .I2(\r_channel_vol_reg_n_0_[4] ),
        .O(\m_axis_tdata_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[5] 
       (.CLR(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .D(\m_axis_tdata_reg[5]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[5]_i_1 
       (.I0(\l_channel_vol_reg_n_0_[5] ),
        .I1(\FSM_onehot_tx_state_reg_n_0_[1] ),
        .I2(\r_channel_vol_reg_n_0_[5] ),
        .O(\m_axis_tdata_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[6] 
       (.CLR(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .D(\m_axis_tdata_reg[6]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[6]_i_1 
       (.I0(\l_channel_vol_reg_n_0_[6] ),
        .I1(\FSM_onehot_tx_state_reg_n_0_[1] ),
        .I2(\r_channel_vol_reg_n_0_[6] ),
        .O(\m_axis_tdata_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[7] 
       (.CLR(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .D(\m_axis_tdata_reg[7]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[7]_i_1 
       (.I0(\l_channel_vol_reg_n_0_[7] ),
        .I1(\FSM_onehot_tx_state_reg_n_0_[1] ),
        .I2(\r_channel_vol_reg_n_0_[7] ),
        .O(\m_axis_tdata_reg[7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[8] 
       (.CLR(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .D(\m_axis_tdata_reg[8]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[8]_i_1 
       (.I0(\l_channel_vol_reg_n_0_[8] ),
        .I1(\FSM_onehot_tx_state_reg_n_0_[1] ),
        .I2(\r_channel_vol_reg_n_0_[8] ),
        .O(\m_axis_tdata_reg[8]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[9] 
       (.CLR(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .D(\m_axis_tdata_reg[9]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[9]_i_1 
       (.I0(\l_channel_vol_reg_n_0_[9] ),
        .I1(\FSM_onehot_tx_state_reg_n_0_[1] ),
        .I2(\r_channel_vol_reg_n_0_[9] ),
        .O(\m_axis_tdata_reg[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    m_axis_tvalid_INST_0
       (.I0(\FSM_onehot_tx_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_tx_state_reg[2]_0 ),
        .O(m_axis_tvalid));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_channel_reg[0] 
       (.CLR(1'b0),
        .D(s_axis_tdata[0]),
        .G(r_channel__0),
        .GE(1'b1),
        .Q(r_channel[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_channel_reg[10] 
       (.CLR(1'b0),
        .D(s_axis_tdata[10]),
        .G(r_channel__0),
        .GE(1'b1),
        .Q(r_channel[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_channel_reg[11] 
       (.CLR(1'b0),
        .D(s_axis_tdata[11]),
        .G(r_channel__0),
        .GE(1'b1),
        .Q(r_channel[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_channel_reg[12] 
       (.CLR(1'b0),
        .D(s_axis_tdata[12]),
        .G(r_channel__0),
        .GE(1'b1),
        .Q(r_channel[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_channel_reg[13] 
       (.CLR(1'b0),
        .D(s_axis_tdata[13]),
        .G(r_channel__0),
        .GE(1'b1),
        .Q(r_channel[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_channel_reg[14] 
       (.CLR(1'b0),
        .D(s_axis_tdata[14]),
        .G(r_channel__0),
        .GE(1'b1),
        .Q(r_channel[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_channel_reg[15] 
       (.CLR(1'b0),
        .D(s_axis_tdata[15]),
        .G(r_channel__0),
        .GE(1'b1),
        .Q(r_channel[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_channel_reg[16] 
       (.CLR(1'b0),
        .D(s_axis_tdata[16]),
        .G(r_channel__0),
        .GE(1'b1),
        .Q(r_channel[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_channel_reg[17] 
       (.CLR(1'b0),
        .D(s_axis_tdata[17]),
        .G(r_channel__0),
        .GE(1'b1),
        .Q(r_channel[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_channel_reg[18] 
       (.CLR(1'b0),
        .D(s_axis_tdata[18]),
        .G(r_channel__0),
        .GE(1'b1),
        .Q(r_channel[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_channel_reg[19] 
       (.CLR(1'b0),
        .D(s_axis_tdata[19]),
        .G(r_channel__0),
        .GE(1'b1),
        .Q(r_channel[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_channel_reg[1] 
       (.CLR(1'b0),
        .D(s_axis_tdata[1]),
        .G(r_channel__0),
        .GE(1'b1),
        .Q(r_channel[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_channel_reg[20] 
       (.CLR(1'b0),
        .D(s_axis_tdata[20]),
        .G(r_channel__0),
        .GE(1'b1),
        .Q(r_channel[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_channel_reg[21] 
       (.CLR(1'b0),
        .D(s_axis_tdata[21]),
        .G(r_channel__0),
        .GE(1'b1),
        .Q(r_channel[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_channel_reg[22] 
       (.CLR(1'b0),
        .D(s_axis_tdata[22]),
        .G(r_channel__0),
        .GE(1'b1),
        .Q(r_channel[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_channel_reg[23] 
       (.CLR(1'b0),
        .D(s_axis_tdata[23]),
        .G(r_channel__0),
        .GE(1'b1),
        .Q(r_channel[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_channel_reg[2] 
       (.CLR(1'b0),
        .D(s_axis_tdata[2]),
        .G(r_channel__0),
        .GE(1'b1),
        .Q(r_channel[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_channel_reg[3] 
       (.CLR(1'b0),
        .D(s_axis_tdata[3]),
        .G(r_channel__0),
        .GE(1'b1),
        .Q(r_channel[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_channel_reg[4] 
       (.CLR(1'b0),
        .D(s_axis_tdata[4]),
        .G(r_channel__0),
        .GE(1'b1),
        .Q(r_channel[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_channel_reg[5] 
       (.CLR(1'b0),
        .D(s_axis_tdata[5]),
        .G(r_channel__0),
        .GE(1'b1),
        .Q(r_channel[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_channel_reg[6] 
       (.CLR(1'b0),
        .D(s_axis_tdata[6]),
        .G(r_channel__0),
        .GE(1'b1),
        .Q(r_channel[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_channel_reg[7] 
       (.CLR(1'b0),
        .D(s_axis_tdata[7]),
        .G(r_channel__0),
        .GE(1'b1),
        .Q(r_channel[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_channel_reg[8] 
       (.CLR(1'b0),
        .D(s_axis_tdata[8]),
        .G(r_channel__0),
        .GE(1'b1),
        .Q(r_channel[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r_channel_reg[9] 
       (.CLR(1'b0),
        .D(s_axis_tdata[9]),
        .G(r_channel__0),
        .GE(1'b1),
        .Q(r_channel[9]));
  LUT6 #(
    .INIT(64'h22222222FF00F0F0)) 
    \r_channel_vol[0]_i_1 
       (.I0(p_0_in0_in),
        .I1(in70),
        .I2(r_channel[0]),
        .I3(\r_channel_vol_reg_n_0_[1] ),
        .I4(volume_control_state__0[0]),
        .I5(volume_control_state__0[1]),
        .O(r_channel_vol[0]));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \r_channel_vol[10]_i_1 
       (.I0(r_channel[10]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\r_channel_vol_reg_n_0_[11] ),
        .I4(\r_channel_vol_reg_n_0_[9] ),
        .I5(\r_channel_vol[20]_i_3_n_0 ),
        .O(\r_channel_vol[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \r_channel_vol[11]_i_1 
       (.I0(r_channel[11]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\r_channel_vol_reg_n_0_[12] ),
        .I4(\r_channel_vol_reg_n_0_[10] ),
        .I5(\r_channel_vol[20]_i_3_n_0 ),
        .O(\r_channel_vol[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \r_channel_vol[12]_i_1 
       (.I0(r_channel[12]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\r_channel_vol_reg_n_0_[13] ),
        .I4(\r_channel_vol_reg_n_0_[11] ),
        .I5(\r_channel_vol[20]_i_3_n_0 ),
        .O(\r_channel_vol[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \r_channel_vol[13]_i_1 
       (.I0(r_channel[13]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\r_channel_vol_reg_n_0_[14] ),
        .I4(\r_channel_vol_reg_n_0_[12] ),
        .I5(\r_channel_vol[20]_i_3_n_0 ),
        .O(\r_channel_vol[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \r_channel_vol[14]_i_1 
       (.I0(r_channel[14]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\r_channel_vol_reg_n_0_[15] ),
        .I4(\r_channel_vol_reg_n_0_[13] ),
        .I5(\r_channel_vol[20]_i_3_n_0 ),
        .O(\r_channel_vol[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \r_channel_vol[15]_i_1 
       (.I0(r_channel[15]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\r_channel_vol_reg_n_0_[16] ),
        .I4(\r_channel_vol_reg_n_0_[14] ),
        .I5(\r_channel_vol[20]_i_3_n_0 ),
        .O(\r_channel_vol[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \r_channel_vol[16]_i_1 
       (.I0(r_channel[16]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\r_channel_vol_reg_n_0_[17] ),
        .I4(\r_channel_vol_reg_n_0_[15] ),
        .I5(\r_channel_vol[20]_i_3_n_0 ),
        .O(\r_channel_vol[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \r_channel_vol[17]_i_1 
       (.I0(r_channel[17]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\r_channel_vol_reg_n_0_[18] ),
        .I4(\r_channel_vol_reg_n_0_[16] ),
        .I5(\r_channel_vol[20]_i_3_n_0 ),
        .O(\r_channel_vol[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \r_channel_vol[18]_i_1 
       (.I0(r_channel[18]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\r_channel_vol_reg_n_0_[19] ),
        .I4(\r_channel_vol_reg_n_0_[17] ),
        .I5(\r_channel_vol[20]_i_3_n_0 ),
        .O(\r_channel_vol[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \r_channel_vol[19]_i_1 
       (.I0(r_channel[19]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\r_channel_vol_reg_n_0_[20] ),
        .I4(\r_channel_vol_reg_n_0_[18] ),
        .I5(\r_channel_vol[20]_i_3_n_0 ),
        .O(\r_channel_vol[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \r_channel_vol[1]_i_1 
       (.I0(r_channel[1]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\r_channel_vol_reg_n_0_[2] ),
        .I4(\r_channel_vol_reg_n_0_[0] ),
        .I5(\r_channel_vol[20]_i_3_n_0 ),
        .O(\r_channel_vol[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \r_channel_vol[20]_i_1 
       (.I0(in70),
        .I1(p_0_in0_in),
        .I2(volume_control_state__0[1]),
        .I3(\exponent[9]_i_1_n_0 ),
        .O(\r_channel_vol[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \r_channel_vol[20]_i_2 
       (.I0(r_channel[20]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\r_channel_vol_reg_n_0_[21] ),
        .I4(\r_channel_vol_reg_n_0_[19] ),
        .I5(\r_channel_vol[20]_i_3_n_0 ),
        .O(\r_channel_vol[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \r_channel_vol[20]_i_3 
       (.I0(in70),
        .I1(p_0_in0_in),
        .I2(volume_control_state__0[1]),
        .O(\r_channel_vol[20]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    \r_channel_vol[21]_i_1 
       (.I0(in70),
        .I1(p_0_in0_in),
        .I2(volume_control_state__0[1]),
        .I3(\r_channel_vol[21]_i_2_n_0 ),
        .O(\r_channel_vol[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F000F0EEEE2222)) 
    \r_channel_vol[21]_i_2 
       (.I0(r_channel[21]),
        .I1(volume_control_state__0[0]),
        .I2(\r_channel_vol_reg_n_0_[20] ),
        .I3(in70),
        .I4(p_0_in0_in),
        .I5(volume_control_state__0[1]),
        .O(\r_channel_vol[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    \r_channel_vol[22]_i_1 
       (.I0(in70),
        .I1(p_0_in0_in),
        .I2(volume_control_state__0[1]),
        .I3(\r_channel_vol[22]_i_2_n_0 ),
        .O(\r_channel_vol[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F000F0EE22EE22)) 
    \r_channel_vol[22]_i_2 
       (.I0(r_channel[22]),
        .I1(volume_control_state__0[0]),
        .I2(\r_channel_vol_reg_n_0_[21] ),
        .I3(in70),
        .I4(p_0_in0_in),
        .I5(volume_control_state__0[1]),
        .O(\r_channel_vol[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \r_channel_vol[23]_i_1 
       (.I0(r_channel_vol[23]),
        .I1(\exponent[9]_i_3_n_0 ),
        .I2(\r_channel_vol[23]_i_3_n_0 ),
        .I3(\r_channel_vol[23]_i_4_n_0 ),
        .I4(\r_channel_vol[23]_i_5_n_0 ),
        .I5(in70),
        .O(\r_channel_vol[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAAAAF0CC)) 
    \r_channel_vol[23]_i_2 
       (.I0(p_0_in0_in),
        .I1(r_channel[23]),
        .I2(in70),
        .I3(volume_control_state__0[0]),
        .I4(volume_control_state__0[1]),
        .O(r_channel_vol[23]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_channel_vol[23]_i_3 
       (.I0(volume_control_state__0[1]),
        .I1(aresetn),
        .O(\r_channel_vol[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF6)) 
    \r_channel_vol[23]_i_4 
       (.I0(in70),
        .I1(p_0_in0_in),
        .I2(volume_control_state__0[0]),
        .O(\r_channel_vol[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2320202000000000)) 
    \r_channel_vol[23]_i_5 
       (.I0(\exponent[9]_i_3_n_0 ),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\FSM_onehot_rx_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_tx_state_reg_n_0_[0] ),
        .I5(aresetn),
        .O(\r_channel_vol[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \r_channel_vol[2]_i_1 
       (.I0(r_channel[2]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\r_channel_vol_reg_n_0_[3] ),
        .I4(\r_channel_vol_reg_n_0_[1] ),
        .I5(\r_channel_vol[20]_i_3_n_0 ),
        .O(\r_channel_vol[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \r_channel_vol[3]_i_1 
       (.I0(r_channel[3]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\r_channel_vol_reg_n_0_[4] ),
        .I4(\r_channel_vol_reg_n_0_[2] ),
        .I5(\r_channel_vol[20]_i_3_n_0 ),
        .O(\r_channel_vol[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \r_channel_vol[4]_i_1 
       (.I0(r_channel[4]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\r_channel_vol_reg_n_0_[5] ),
        .I4(\r_channel_vol_reg_n_0_[3] ),
        .I5(\r_channel_vol[20]_i_3_n_0 ),
        .O(\r_channel_vol[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \r_channel_vol[5]_i_1 
       (.I0(r_channel[5]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\r_channel_vol_reg_n_0_[6] ),
        .I4(\r_channel_vol_reg_n_0_[4] ),
        .I5(\r_channel_vol[20]_i_3_n_0 ),
        .O(\r_channel_vol[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \r_channel_vol[6]_i_1 
       (.I0(r_channel[6]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\r_channel_vol_reg_n_0_[7] ),
        .I4(\r_channel_vol_reg_n_0_[5] ),
        .I5(\r_channel_vol[20]_i_3_n_0 ),
        .O(\r_channel_vol[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \r_channel_vol[7]_i_1 
       (.I0(r_channel[7]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\r_channel_vol_reg_n_0_[8] ),
        .I4(\r_channel_vol_reg_n_0_[6] ),
        .I5(\r_channel_vol[20]_i_3_n_0 ),
        .O(\r_channel_vol[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \r_channel_vol[8]_i_1 
       (.I0(r_channel[8]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\r_channel_vol_reg_n_0_[9] ),
        .I4(\r_channel_vol_reg_n_0_[7] ),
        .I5(\r_channel_vol[20]_i_3_n_0 ),
        .O(\r_channel_vol[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF320232023202)) 
    \r_channel_vol[9]_i_1 
       (.I0(r_channel[9]),
        .I1(volume_control_state__0[1]),
        .I2(volume_control_state__0[0]),
        .I3(\r_channel_vol_reg_n_0_[10] ),
        .I4(\r_channel_vol_reg_n_0_[8] ),
        .I5(\r_channel_vol[20]_i_3_n_0 ),
        .O(\r_channel_vol[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_channel_vol_reg[0] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(r_channel_vol[0]),
        .Q(\r_channel_vol_reg_n_0_[0] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \r_channel_vol_reg[10] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\r_channel_vol[10]_i_1_n_0 ),
        .Q(\r_channel_vol_reg_n_0_[10] ),
        .S(\r_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_channel_vol_reg[11] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\r_channel_vol[11]_i_1_n_0 ),
        .Q(\r_channel_vol_reg_n_0_[11] ),
        .S(\r_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_channel_vol_reg[12] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\r_channel_vol[12]_i_1_n_0 ),
        .Q(\r_channel_vol_reg_n_0_[12] ),
        .S(\r_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_channel_vol_reg[13] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\r_channel_vol[13]_i_1_n_0 ),
        .Q(\r_channel_vol_reg_n_0_[13] ),
        .S(\r_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_channel_vol_reg[14] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\r_channel_vol[14]_i_1_n_0 ),
        .Q(\r_channel_vol_reg_n_0_[14] ),
        .S(\r_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_channel_vol_reg[15] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\r_channel_vol[15]_i_1_n_0 ),
        .Q(\r_channel_vol_reg_n_0_[15] ),
        .S(\r_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_channel_vol_reg[16] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\r_channel_vol[16]_i_1_n_0 ),
        .Q(\r_channel_vol_reg_n_0_[16] ),
        .S(\r_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_channel_vol_reg[17] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\r_channel_vol[17]_i_1_n_0 ),
        .Q(\r_channel_vol_reg_n_0_[17] ),
        .S(\r_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_channel_vol_reg[18] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\r_channel_vol[18]_i_1_n_0 ),
        .Q(\r_channel_vol_reg_n_0_[18] ),
        .S(\r_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_channel_vol_reg[19] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\r_channel_vol[19]_i_1_n_0 ),
        .Q(\r_channel_vol_reg_n_0_[19] ),
        .S(\r_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_channel_vol_reg[1] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\r_channel_vol[1]_i_1_n_0 ),
        .Q(\r_channel_vol_reg_n_0_[1] ),
        .S(\r_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_channel_vol_reg[20] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\r_channel_vol[20]_i_2_n_0 ),
        .Q(\r_channel_vol_reg_n_0_[20] ),
        .S(\r_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_channel_vol_reg[21] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\r_channel_vol[21]_i_1_n_0 ),
        .Q(\r_channel_vol_reg_n_0_[21] ),
        .S(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \r_channel_vol_reg[22] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\r_channel_vol[22]_i_1_n_0 ),
        .Q(p_0_in0_in),
        .S(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_channel_vol_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r_channel_vol[23]_i_1_n_0 ),
        .Q(in70),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \r_channel_vol_reg[2] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\r_channel_vol[2]_i_1_n_0 ),
        .Q(\r_channel_vol_reg_n_0_[2] ),
        .S(\r_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_channel_vol_reg[3] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\r_channel_vol[3]_i_1_n_0 ),
        .Q(\r_channel_vol_reg_n_0_[3] ),
        .S(\r_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_channel_vol_reg[4] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\r_channel_vol[4]_i_1_n_0 ),
        .Q(\r_channel_vol_reg_n_0_[4] ),
        .S(\r_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_channel_vol_reg[5] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\r_channel_vol[5]_i_1_n_0 ),
        .Q(\r_channel_vol_reg_n_0_[5] ),
        .S(\r_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_channel_vol_reg[6] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\r_channel_vol[6]_i_1_n_0 ),
        .Q(\r_channel_vol_reg_n_0_[6] ),
        .S(\r_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_channel_vol_reg[7] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\r_channel_vol[7]_i_1_n_0 ),
        .Q(\r_channel_vol_reg_n_0_[7] ),
        .S(\r_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_channel_vol_reg[8] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\r_channel_vol[8]_i_1_n_0 ),
        .Q(\r_channel_vol_reg_n_0_[8] ),
        .S(\r_channel_vol[20]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_channel_vol_reg[9] 
       (.C(aclk),
        .CE(\exponent[9]_i_1_n_0 ),
        .D(\r_channel_vol[9]_i_1_n_0 ),
        .Q(\r_channel_vol_reg_n_0_[9] ),
        .S(\r_channel_vol[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    s_axis_tready_INST_0
       (.I0(l_channel__0),
        .I1(r_channel__0),
        .O(s_axis_tready));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
