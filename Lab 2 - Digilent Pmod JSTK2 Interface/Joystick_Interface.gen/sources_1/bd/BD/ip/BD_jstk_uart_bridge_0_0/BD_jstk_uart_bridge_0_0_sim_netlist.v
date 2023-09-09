// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 13 15:17:43 2023
// Host        : DESKTOP-AVPI1T7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/alija/Joystick_Interface/Joystick_Interface.gen/sources_1/bd/BD/ip/BD_jstk_uart_bridge_0_0/BD_jstk_uart_bridge_0_0_sim_netlist.v
// Design      : BD_jstk_uart_bridge_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BD_jstk_uart_bridge_0_0,jstk_uart_bridge,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "jstk_uart_bridge,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module BD_jstk_uart_bridge_0_0
   (aclk,
    aresetn,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tready,
    s_axis_tvalid,
    s_axis_tdata,
    s_axis_tready,
    jstk_x,
    jstk_y,
    btn_jstk,
    btn_trigger,
    led_r,
    led_g,
    led_b);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [7:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [7:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  input [9:0]jstk_x;
  input [9:0]jstk_y;
  input btn_jstk;
  input btn_trigger;
  output [7:0]led_r;
  output [7:0]led_g;
  output [7:0]led_b;

  wire aclk;
  wire aresetn;
  wire btn_jstk;
  wire btn_trigger;
  wire [9:0]jstk_x;
  wire [9:0]jstk_y;
  wire [7:0]led_b;
  wire [7:0]led_g;
  wire [7:0]led_r;
  wire [7:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

  BD_jstk_uart_bridge_0_0_jstk_uart_bridge U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .btn_jstk(btn_jstk),
        .btn_trigger(btn_trigger),
        .jstk_x(jstk_x[9:3]),
        .jstk_y(jstk_y[9:3]),
        .led_b(led_b),
        .led_g(led_g),
        .led_r(led_r),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "jstk_uart_bridge" *) 
module BD_jstk_uart_bridge_0_0_jstk_uart_bridge
   (m_axis_tdata,
    s_axis_tready,
    led_r,
    led_g,
    led_b,
    m_axis_tvalid,
    m_axis_tready,
    aclk,
    s_axis_tvalid,
    s_axis_tdata,
    btn_jstk,
    btn_trigger,
    jstk_y,
    jstk_x,
    aresetn);
  output [7:0]m_axis_tdata;
  output s_axis_tready;
  output [7:0]led_r;
  output [7:0]led_g;
  output [7:0]led_b;
  output m_axis_tvalid;
  input m_axis_tready;
  input aclk;
  input s_axis_tvalid;
  input [7:0]s_axis_tdata;
  input btn_jstk;
  input btn_trigger;
  input [6:0]jstk_y;
  input [6:0]jstk_x;
  input aresetn;

  wire \FSM_sequential_rx_state[0]_i_1_n_0 ;
  wire \FSM_sequential_rx_state[1]_i_1_n_0 ;
  wire \FSM_sequential_rx_state[1]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[0]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[1]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_1_n_0 ;
  wire aclk;
  wire aresetn;
  wire btn_jstk;
  wire btn_jstk_reg;
  wire btn_trigger;
  wire btn_trigger_reg;
  wire [19:1]data0;
  wire [6:0]jstk_x;
  wire [6:0]jstk_x_reg;
  wire jstk_x_reg_2;
  wire [6:0]jstk_y;
  wire [6:0]jstk_y_reg;
  wire [7:0]led_b;
  wire led_b_reg;
  wire [7:0]led_g;
  wire [7:0]led_r;
  wire \led_r_reg[7]_i_2_n_0 ;
  wire [7:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [2:0]rx_state;
  wire [1:1]rx_state__0;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [7:0]temp_reg_led_g;
  wire temp_reg_led_g_0;
  wire [7:0]temp_reg_led_r;
  wire temp_reg_led_r_1;
  wire [19:0]tx_delay_counter;
  wire tx_delay_counter0_carry__0_n_0;
  wire tx_delay_counter0_carry__0_n_1;
  wire tx_delay_counter0_carry__0_n_2;
  wire tx_delay_counter0_carry__0_n_3;
  wire tx_delay_counter0_carry__1_n_0;
  wire tx_delay_counter0_carry__1_n_1;
  wire tx_delay_counter0_carry__1_n_2;
  wire tx_delay_counter0_carry__1_n_3;
  wire tx_delay_counter0_carry__2_n_0;
  wire tx_delay_counter0_carry__2_n_1;
  wire tx_delay_counter0_carry__2_n_2;
  wire tx_delay_counter0_carry__2_n_3;
  wire tx_delay_counter0_carry__3_n_2;
  wire tx_delay_counter0_carry__3_n_3;
  wire tx_delay_counter0_carry_n_0;
  wire tx_delay_counter0_carry_n_1;
  wire tx_delay_counter0_carry_n_2;
  wire tx_delay_counter0_carry_n_3;
  wire \tx_delay_counter[0]_i_1_n_0 ;
  wire \tx_delay_counter[10]_i_1_n_0 ;
  wire \tx_delay_counter[11]_i_1_n_0 ;
  wire \tx_delay_counter[12]_i_1_n_0 ;
  wire \tx_delay_counter[13]_i_1_n_0 ;
  wire \tx_delay_counter[14]_i_1_n_0 ;
  wire \tx_delay_counter[15]_i_1_n_0 ;
  wire \tx_delay_counter[16]_i_1_n_0 ;
  wire \tx_delay_counter[17]_i_1_n_0 ;
  wire \tx_delay_counter[18]_i_1_n_0 ;
  wire \tx_delay_counter[19]_i_1_n_0 ;
  wire \tx_delay_counter[19]_i_2_n_0 ;
  wire \tx_delay_counter[19]_i_3_n_0 ;
  wire \tx_delay_counter[19]_i_4_n_0 ;
  wire \tx_delay_counter[19]_i_5_n_0 ;
  wire \tx_delay_counter[19]_i_6_n_0 ;
  wire \tx_delay_counter[19]_i_7_n_0 ;
  wire \tx_delay_counter[1]_i_1_n_0 ;
  wire \tx_delay_counter[2]_i_1_n_0 ;
  wire \tx_delay_counter[3]_i_1_n_0 ;
  wire \tx_delay_counter[4]_i_1_n_0 ;
  wire \tx_delay_counter[5]_i_1_n_0 ;
  wire \tx_delay_counter[6]_i_1_n_0 ;
  wire \tx_delay_counter[7]_i_1_n_0 ;
  wire \tx_delay_counter[8]_i_1_n_0 ;
  wire \tx_delay_counter[9]_i_1_n_0 ;
  wire [2:0]tx_state__0;
  wire [3:2]NLW_tx_delay_counter0_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_tx_delay_counter0_carry__3_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hA5E0)) 
    \FSM_sequential_rx_state[0]_i_1 
       (.I0(rx_state[2]),
        .I1(rx_state[1]),
        .I2(rx_state[0]),
        .I3(s_axis_tvalid),
        .O(\FSM_sequential_rx_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hE2EAF2F0)) 
    \FSM_sequential_rx_state[1]_i_1 
       (.I0(rx_state__0),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .I3(rx_state[0]),
        .I4(s_axis_tvalid),
        .O(\FSM_sequential_rx_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000062222222)) 
    \FSM_sequential_rx_state[1]_i_2 
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .I2(s_axis_tdata[6]),
        .I3(\FSM_sequential_rx_state[1]_i_3_n_0 ),
        .I4(s_axis_tdata[7]),
        .I5(rx_state[2]),
        .O(rx_state__0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_rx_state[1]_i_3 
       (.I0(s_axis_tdata[3]),
        .I1(s_axis_tdata[4]),
        .I2(s_axis_tdata[1]),
        .I3(s_axis_tdata[0]),
        .I4(s_axis_tdata[5]),
        .I5(s_axis_tdata[2]),
        .O(\FSM_sequential_rx_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hE8AA)) 
    \FSM_sequential_rx_state[2]_i_1 
       (.I0(rx_state[2]),
        .I1(rx_state[1]),
        .I2(rx_state[0]),
        .I3(s_axis_tvalid),
        .O(\FSM_sequential_rx_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "get_header:001,get_led_g:011,get_led_b:100,idle:000,get_led_r:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(\FSM_sequential_rx_state[0]_i_1_n_0 ),
        .Q(rx_state[0]));
  (* FSM_ENCODED_STATES = "get_header:001,get_led_g:011,get_led_b:100,idle:000,get_led_r:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(\FSM_sequential_rx_state[1]_i_1_n_0 ),
        .Q(rx_state[1]));
  (* FSM_ENCODED_STATES = "get_header:001,get_led_g:011,get_led_b:100,idle:000,get_led_r:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(\FSM_sequential_rx_state[2]_i_1_n_0 ),
        .Q(rx_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h500E550A)) 
    \FSM_sequential_tx_state[0]_i_1 
       (.I0(jstk_x_reg_2),
        .I1(tx_state__0[1]),
        .I2(tx_state__0[2]),
        .I3(tx_state__0[0]),
        .I4(m_axis_tready),
        .O(\FSM_sequential_tx_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h434C464C)) 
    \FSM_sequential_tx_state[1]_i_1 
       (.I0(jstk_x_reg_2),
        .I1(tx_state__0[1]),
        .I2(tx_state__0[2]),
        .I3(tx_state__0[0]),
        .I4(m_axis_tready),
        .O(\FSM_sequential_tx_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h5C405850)) 
    \FSM_sequential_tx_state[2]_i_1 
       (.I0(jstk_x_reg_2),
        .I1(tx_state__0[1]),
        .I2(tx_state__0[2]),
        .I3(tx_state__0[0]),
        .I4(m_axis_tready),
        .O(\FSM_sequential_tx_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "delay:000,send_header:001,send_jstk_x:010,send_jstk_y:011,send_buttons:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(\FSM_sequential_tx_state[0]_i_1_n_0 ),
        .Q(tx_state__0[0]));
  (* FSM_ENCODED_STATES = "delay:000,send_header:001,send_jstk_x:010,send_jstk_y:011,send_buttons:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(\FSM_sequential_tx_state[1]_i_1_n_0 ),
        .Q(tx_state__0[1]));
  (* FSM_ENCODED_STATES = "delay:000,send_header:001,send_jstk_x:010,send_jstk_y:011,send_buttons:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(\FSM_sequential_tx_state[2]_i_1_n_0 ),
        .Q(tx_state__0[2]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    btn_jstk_reg_i_1
       (.I0(\tx_delay_counter[19]_i_3_n_0 ),
        .I1(\tx_delay_counter[19]_i_4_n_0 ),
        .I2(\tx_delay_counter[19]_i_5_n_0 ),
        .I3(\tx_delay_counter[19]_i_1_n_0 ),
        .I4(\tx_delay_counter[19]_i_7_n_0 ),
        .I5(\tx_delay_counter[19]_i_6_n_0 ),
        .O(jstk_x_reg_2));
  FDCE #(
    .INIT(1'b0)) 
    btn_jstk_reg_reg
       (.C(aclk),
        .CE(jstk_x_reg_2),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(btn_jstk),
        .Q(btn_jstk_reg));
  FDCE #(
    .INIT(1'b0)) 
    btn_trigger_reg_reg
       (.C(aclk),
        .CE(jstk_x_reg_2),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(btn_trigger),
        .Q(btn_trigger_reg));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_x_reg_reg[0] 
       (.C(aclk),
        .CE(jstk_x_reg_2),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(jstk_x[0]),
        .Q(jstk_x_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_x_reg_reg[1] 
       (.C(aclk),
        .CE(jstk_x_reg_2),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(jstk_x[1]),
        .Q(jstk_x_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_x_reg_reg[2] 
       (.C(aclk),
        .CE(jstk_x_reg_2),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(jstk_x[2]),
        .Q(jstk_x_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_x_reg_reg[3] 
       (.C(aclk),
        .CE(jstk_x_reg_2),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(jstk_x[3]),
        .Q(jstk_x_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_x_reg_reg[4] 
       (.C(aclk),
        .CE(jstk_x_reg_2),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(jstk_x[4]),
        .Q(jstk_x_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_x_reg_reg[5] 
       (.C(aclk),
        .CE(jstk_x_reg_2),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(jstk_x[5]),
        .Q(jstk_x_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_x_reg_reg[6] 
       (.C(aclk),
        .CE(jstk_x_reg_2),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(jstk_x[6]),
        .Q(jstk_x_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_y_reg_reg[0] 
       (.C(aclk),
        .CE(jstk_x_reg_2),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(jstk_y[0]),
        .Q(jstk_y_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_y_reg_reg[1] 
       (.C(aclk),
        .CE(jstk_x_reg_2),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(jstk_y[1]),
        .Q(jstk_y_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_y_reg_reg[2] 
       (.C(aclk),
        .CE(jstk_x_reg_2),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(jstk_y[2]),
        .Q(jstk_y_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_y_reg_reg[3] 
       (.C(aclk),
        .CE(jstk_x_reg_2),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(jstk_y[3]),
        .Q(jstk_y_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_y_reg_reg[4] 
       (.C(aclk),
        .CE(jstk_x_reg_2),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(jstk_y[4]),
        .Q(jstk_y_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_y_reg_reg[5] 
       (.C(aclk),
        .CE(jstk_x_reg_2),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(jstk_y[5]),
        .Q(jstk_y_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_y_reg_reg[6] 
       (.C(aclk),
        .CE(jstk_x_reg_2),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(jstk_y[6]),
        .Q(jstk_y_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \led_b_reg_reg[0] 
       (.C(aclk),
        .CE(led_b_reg),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(led_b[0]));
  FDCE #(
    .INIT(1'b0)) 
    \led_b_reg_reg[1] 
       (.C(aclk),
        .CE(led_b_reg),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(led_b[1]));
  FDCE #(
    .INIT(1'b0)) 
    \led_b_reg_reg[2] 
       (.C(aclk),
        .CE(led_b_reg),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(led_b[2]));
  FDCE #(
    .INIT(1'b0)) 
    \led_b_reg_reg[3] 
       (.C(aclk),
        .CE(led_b_reg),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(led_b[3]));
  FDCE #(
    .INIT(1'b0)) 
    \led_b_reg_reg[4] 
       (.C(aclk),
        .CE(led_b_reg),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(led_b[4]));
  FDCE #(
    .INIT(1'b0)) 
    \led_b_reg_reg[5] 
       (.C(aclk),
        .CE(led_b_reg),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(led_b[5]));
  FDCE #(
    .INIT(1'b0)) 
    \led_b_reg_reg[6] 
       (.C(aclk),
        .CE(led_b_reg),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(led_b[6]));
  FDCE #(
    .INIT(1'b0)) 
    \led_b_reg_reg[7] 
       (.C(aclk),
        .CE(led_b_reg),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(led_b[7]));
  FDCE #(
    .INIT(1'b0)) 
    \led_g_reg_reg[0] 
       (.C(aclk),
        .CE(led_b_reg),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(temp_reg_led_g[0]),
        .Q(led_g[0]));
  FDCE #(
    .INIT(1'b0)) 
    \led_g_reg_reg[1] 
       (.C(aclk),
        .CE(led_b_reg),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(temp_reg_led_g[1]),
        .Q(led_g[1]));
  FDCE #(
    .INIT(1'b0)) 
    \led_g_reg_reg[2] 
       (.C(aclk),
        .CE(led_b_reg),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(temp_reg_led_g[2]),
        .Q(led_g[2]));
  FDCE #(
    .INIT(1'b0)) 
    \led_g_reg_reg[3] 
       (.C(aclk),
        .CE(led_b_reg),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(temp_reg_led_g[3]),
        .Q(led_g[3]));
  FDCE #(
    .INIT(1'b0)) 
    \led_g_reg_reg[4] 
       (.C(aclk),
        .CE(led_b_reg),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(temp_reg_led_g[4]),
        .Q(led_g[4]));
  FDCE #(
    .INIT(1'b0)) 
    \led_g_reg_reg[5] 
       (.C(aclk),
        .CE(led_b_reg),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(temp_reg_led_g[5]),
        .Q(led_g[5]));
  FDCE #(
    .INIT(1'b0)) 
    \led_g_reg_reg[6] 
       (.C(aclk),
        .CE(led_b_reg),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(temp_reg_led_g[6]),
        .Q(led_g[6]));
  FDCE #(
    .INIT(1'b0)) 
    \led_g_reg_reg[7] 
       (.C(aclk),
        .CE(led_b_reg),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(temp_reg_led_g[7]),
        .Q(led_g[7]));
  LUT4 #(
    .INIT(16'h0400)) 
    \led_r_reg[7]_i_1 
       (.I0(rx_state[0]),
        .I1(s_axis_tvalid),
        .I2(rx_state[1]),
        .I3(rx_state[2]),
        .O(led_b_reg));
  LUT1 #(
    .INIT(2'h1)) 
    \led_r_reg[7]_i_2 
       (.I0(aresetn),
        .O(\led_r_reg[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \led_r_reg_reg[0] 
       (.C(aclk),
        .CE(led_b_reg),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(temp_reg_led_r[0]),
        .Q(led_r[0]));
  FDCE #(
    .INIT(1'b0)) 
    \led_r_reg_reg[1] 
       (.C(aclk),
        .CE(led_b_reg),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(temp_reg_led_r[1]),
        .Q(led_r[1]));
  FDCE #(
    .INIT(1'b0)) 
    \led_r_reg_reg[2] 
       (.C(aclk),
        .CE(led_b_reg),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(temp_reg_led_r[2]),
        .Q(led_r[2]));
  FDCE #(
    .INIT(1'b0)) 
    \led_r_reg_reg[3] 
       (.C(aclk),
        .CE(led_b_reg),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(temp_reg_led_r[3]),
        .Q(led_r[3]));
  FDCE #(
    .INIT(1'b0)) 
    \led_r_reg_reg[4] 
       (.C(aclk),
        .CE(led_b_reg),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(temp_reg_led_r[4]),
        .Q(led_r[4]));
  FDCE #(
    .INIT(1'b0)) 
    \led_r_reg_reg[5] 
       (.C(aclk),
        .CE(led_b_reg),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(temp_reg_led_r[5]),
        .Q(led_r[5]));
  FDCE #(
    .INIT(1'b0)) 
    \led_r_reg_reg[6] 
       (.C(aclk),
        .CE(led_b_reg),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(temp_reg_led_r[6]),
        .Q(led_r[6]));
  FDCE #(
    .INIT(1'b0)) 
    \led_r_reg_reg[7] 
       (.C(aclk),
        .CE(led_b_reg),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(temp_reg_led_r[7]),
        .Q(led_r[7]));
  LUT6 #(
    .INIT(64'h0F000CA000000CA0)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(btn_jstk_reg),
        .I1(jstk_x_reg[0]),
        .I2(tx_state__0[2]),
        .I3(tx_state__0[1]),
        .I4(tx_state__0[0]),
        .I5(jstk_y_reg[0]),
        .O(m_axis_tdata[0]));
  LUT6 #(
    .INIT(64'h00C00AF000C00A00)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(btn_trigger_reg),
        .I1(jstk_y_reg[1]),
        .I2(tx_state__0[1]),
        .I3(tx_state__0[2]),
        .I4(tx_state__0[0]),
        .I5(jstk_x_reg[1]),
        .O(m_axis_tdata[1]));
  LUT5 #(
    .INIT(32'h0000E200)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(jstk_x_reg[2]),
        .I1(tx_state__0[0]),
        .I2(jstk_y_reg[2]),
        .I3(tx_state__0[1]),
        .I4(tx_state__0[2]),
        .O(m_axis_tdata[2]));
  LUT5 #(
    .INIT(32'h0000E200)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(jstk_x_reg[3]),
        .I1(tx_state__0[0]),
        .I2(jstk_y_reg[3]),
        .I3(tx_state__0[1]),
        .I4(tx_state__0[2]),
        .O(m_axis_tdata[3]));
  LUT5 #(
    .INIT(32'h0000E200)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(jstk_x_reg[4]),
        .I1(tx_state__0[0]),
        .I2(jstk_y_reg[4]),
        .I3(tx_state__0[1]),
        .I4(tx_state__0[2]),
        .O(m_axis_tdata[4]));
  LUT5 #(
    .INIT(32'h0000E200)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(jstk_x_reg[5]),
        .I1(tx_state__0[0]),
        .I2(jstk_y_reg[5]),
        .I3(tx_state__0[1]),
        .I4(tx_state__0[2]),
        .O(m_axis_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00F30088)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(jstk_x_reg[6]),
        .I1(tx_state__0[1]),
        .I2(jstk_y_reg[6]),
        .I3(tx_state__0[2]),
        .I4(tx_state__0[0]),
        .O(m_axis_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(tx_state__0[1]),
        .I1(tx_state__0[0]),
        .I2(tx_state__0[2]),
        .O(m_axis_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h36)) 
    m_axis_tvalid_INST_0
       (.I0(tx_state__0[1]),
        .I1(tx_state__0[2]),
        .I2(tx_state__0[0]),
        .O(m_axis_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h56)) 
    s_axis_tready_INST_0
       (.I0(rx_state[2]),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .O(s_axis_tready));
  LUT4 #(
    .INIT(16'h0080)) 
    \temp_reg_led_g[7]_i_1 
       (.I0(rx_state[0]),
        .I1(s_axis_tvalid),
        .I2(rx_state[1]),
        .I3(rx_state[2]),
        .O(temp_reg_led_g_0));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_led_g_reg[0] 
       (.C(aclk),
        .CE(temp_reg_led_g_0),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(temp_reg_led_g[0]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_led_g_reg[1] 
       (.C(aclk),
        .CE(temp_reg_led_g_0),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(temp_reg_led_g[1]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_led_g_reg[2] 
       (.C(aclk),
        .CE(temp_reg_led_g_0),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(temp_reg_led_g[2]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_led_g_reg[3] 
       (.C(aclk),
        .CE(temp_reg_led_g_0),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(temp_reg_led_g[3]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_led_g_reg[4] 
       (.C(aclk),
        .CE(temp_reg_led_g_0),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(temp_reg_led_g[4]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_led_g_reg[5] 
       (.C(aclk),
        .CE(temp_reg_led_g_0),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(temp_reg_led_g[5]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_led_g_reg[6] 
       (.C(aclk),
        .CE(temp_reg_led_g_0),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(temp_reg_led_g[6]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_led_g_reg[7] 
       (.C(aclk),
        .CE(temp_reg_led_g_0),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(temp_reg_led_g[7]));
  LUT4 #(
    .INIT(16'h0040)) 
    \temp_reg_led_r[7]_i_1 
       (.I0(rx_state[0]),
        .I1(s_axis_tvalid),
        .I2(rx_state[1]),
        .I3(rx_state[2]),
        .O(temp_reg_led_r_1));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_led_r_reg[0] 
       (.C(aclk),
        .CE(temp_reg_led_r_1),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(temp_reg_led_r[0]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_led_r_reg[1] 
       (.C(aclk),
        .CE(temp_reg_led_r_1),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(temp_reg_led_r[1]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_led_r_reg[2] 
       (.C(aclk),
        .CE(temp_reg_led_r_1),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(temp_reg_led_r[2]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_led_r_reg[3] 
       (.C(aclk),
        .CE(temp_reg_led_r_1),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(temp_reg_led_r[3]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_led_r_reg[4] 
       (.C(aclk),
        .CE(temp_reg_led_r_1),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(temp_reg_led_r[4]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_led_r_reg[5] 
       (.C(aclk),
        .CE(temp_reg_led_r_1),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(temp_reg_led_r[5]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_led_r_reg[6] 
       (.C(aclk),
        .CE(temp_reg_led_r_1),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(temp_reg_led_r[6]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_led_r_reg[7] 
       (.C(aclk),
        .CE(temp_reg_led_r_1),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(temp_reg_led_r[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tx_delay_counter0_carry
       (.CI(1'b0),
        .CO({tx_delay_counter0_carry_n_0,tx_delay_counter0_carry_n_1,tx_delay_counter0_carry_n_2,tx_delay_counter0_carry_n_3}),
        .CYINIT(tx_delay_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(tx_delay_counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tx_delay_counter0_carry__0
       (.CI(tx_delay_counter0_carry_n_0),
        .CO({tx_delay_counter0_carry__0_n_0,tx_delay_counter0_carry__0_n_1,tx_delay_counter0_carry__0_n_2,tx_delay_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(tx_delay_counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tx_delay_counter0_carry__1
       (.CI(tx_delay_counter0_carry__0_n_0),
        .CO({tx_delay_counter0_carry__1_n_0,tx_delay_counter0_carry__1_n_1,tx_delay_counter0_carry__1_n_2,tx_delay_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(tx_delay_counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tx_delay_counter0_carry__2
       (.CI(tx_delay_counter0_carry__1_n_0),
        .CO({tx_delay_counter0_carry__2_n_0,tx_delay_counter0_carry__2_n_1,tx_delay_counter0_carry__2_n_2,tx_delay_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(tx_delay_counter[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tx_delay_counter0_carry__3
       (.CI(tx_delay_counter0_carry__2_n_0),
        .CO({NLW_tx_delay_counter0_carry__3_CO_UNCONNECTED[3:2],tx_delay_counter0_carry__3_n_2,tx_delay_counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_tx_delay_counter0_carry__3_O_UNCONNECTED[3],data0[19:17]}),
        .S({1'b0,tx_delay_counter[19:17]}));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \tx_delay_counter[0]_i_1 
       (.I0(tx_delay_counter[0]),
        .O(\tx_delay_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \tx_delay_counter[10]_i_1 
       (.I0(\tx_delay_counter[19]_i_3_n_0 ),
        .I1(\tx_delay_counter[19]_i_4_n_0 ),
        .I2(\tx_delay_counter[19]_i_5_n_0 ),
        .I3(\tx_delay_counter[19]_i_6_n_0 ),
        .I4(\tx_delay_counter[19]_i_7_n_0 ),
        .I5(data0[10]),
        .O(\tx_delay_counter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \tx_delay_counter[11]_i_1 
       (.I0(\tx_delay_counter[19]_i_3_n_0 ),
        .I1(\tx_delay_counter[19]_i_4_n_0 ),
        .I2(\tx_delay_counter[19]_i_5_n_0 ),
        .I3(\tx_delay_counter[19]_i_6_n_0 ),
        .I4(\tx_delay_counter[19]_i_7_n_0 ),
        .I5(data0[11]),
        .O(\tx_delay_counter[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \tx_delay_counter[12]_i_1 
       (.I0(\tx_delay_counter[19]_i_3_n_0 ),
        .I1(\tx_delay_counter[19]_i_4_n_0 ),
        .I2(\tx_delay_counter[19]_i_5_n_0 ),
        .I3(\tx_delay_counter[19]_i_6_n_0 ),
        .I4(\tx_delay_counter[19]_i_7_n_0 ),
        .I5(data0[12]),
        .O(\tx_delay_counter[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \tx_delay_counter[13]_i_1 
       (.I0(\tx_delay_counter[19]_i_3_n_0 ),
        .I1(\tx_delay_counter[19]_i_4_n_0 ),
        .I2(\tx_delay_counter[19]_i_5_n_0 ),
        .I3(\tx_delay_counter[19]_i_6_n_0 ),
        .I4(\tx_delay_counter[19]_i_7_n_0 ),
        .I5(data0[13]),
        .O(\tx_delay_counter[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \tx_delay_counter[14]_i_1 
       (.I0(\tx_delay_counter[19]_i_3_n_0 ),
        .I1(\tx_delay_counter[19]_i_4_n_0 ),
        .I2(\tx_delay_counter[19]_i_5_n_0 ),
        .I3(\tx_delay_counter[19]_i_6_n_0 ),
        .I4(\tx_delay_counter[19]_i_7_n_0 ),
        .I5(data0[14]),
        .O(\tx_delay_counter[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \tx_delay_counter[15]_i_1 
       (.I0(\tx_delay_counter[19]_i_3_n_0 ),
        .I1(\tx_delay_counter[19]_i_4_n_0 ),
        .I2(\tx_delay_counter[19]_i_5_n_0 ),
        .I3(\tx_delay_counter[19]_i_6_n_0 ),
        .I4(\tx_delay_counter[19]_i_7_n_0 ),
        .I5(data0[15]),
        .O(\tx_delay_counter[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \tx_delay_counter[16]_i_1 
       (.I0(\tx_delay_counter[19]_i_3_n_0 ),
        .I1(\tx_delay_counter[19]_i_4_n_0 ),
        .I2(\tx_delay_counter[19]_i_5_n_0 ),
        .I3(\tx_delay_counter[19]_i_6_n_0 ),
        .I4(\tx_delay_counter[19]_i_7_n_0 ),
        .I5(data0[16]),
        .O(\tx_delay_counter[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \tx_delay_counter[17]_i_1 
       (.I0(\tx_delay_counter[19]_i_3_n_0 ),
        .I1(\tx_delay_counter[19]_i_4_n_0 ),
        .I2(\tx_delay_counter[19]_i_5_n_0 ),
        .I3(\tx_delay_counter[19]_i_6_n_0 ),
        .I4(\tx_delay_counter[19]_i_7_n_0 ),
        .I5(data0[17]),
        .O(\tx_delay_counter[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \tx_delay_counter[18]_i_1 
       (.I0(\tx_delay_counter[19]_i_3_n_0 ),
        .I1(\tx_delay_counter[19]_i_4_n_0 ),
        .I2(\tx_delay_counter[19]_i_5_n_0 ),
        .I3(\tx_delay_counter[19]_i_6_n_0 ),
        .I4(\tx_delay_counter[19]_i_7_n_0 ),
        .I5(data0[18]),
        .O(\tx_delay_counter[18]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \tx_delay_counter[19]_i_1 
       (.I0(tx_state__0[1]),
        .I1(tx_state__0[0]),
        .I2(tx_state__0[2]),
        .O(\tx_delay_counter[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \tx_delay_counter[19]_i_2 
       (.I0(\tx_delay_counter[19]_i_3_n_0 ),
        .I1(\tx_delay_counter[19]_i_4_n_0 ),
        .I2(\tx_delay_counter[19]_i_5_n_0 ),
        .I3(\tx_delay_counter[19]_i_6_n_0 ),
        .I4(\tx_delay_counter[19]_i_7_n_0 ),
        .I5(data0[19]),
        .O(\tx_delay_counter[19]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tx_delay_counter[19]_i_3 
       (.I0(tx_delay_counter[12]),
        .I1(tx_delay_counter[7]),
        .I2(tx_delay_counter[6]),
        .I3(tx_delay_counter[15]),
        .O(\tx_delay_counter[19]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \tx_delay_counter[19]_i_4 
       (.I0(tx_delay_counter[4]),
        .I1(tx_delay_counter[13]),
        .I2(tx_delay_counter[2]),
        .I3(tx_delay_counter[3]),
        .O(\tx_delay_counter[19]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \tx_delay_counter[19]_i_5 
       (.I0(tx_delay_counter[5]),
        .I1(tx_delay_counter[14]),
        .I2(tx_delay_counter[9]),
        .I3(tx_delay_counter[8]),
        .O(\tx_delay_counter[19]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \tx_delay_counter[19]_i_6 
       (.I0(tx_delay_counter[0]),
        .I1(tx_delay_counter[11]),
        .I2(tx_delay_counter[19]),
        .I3(tx_delay_counter[17]),
        .O(\tx_delay_counter[19]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \tx_delay_counter[19]_i_7 
       (.I0(tx_delay_counter[18]),
        .I1(tx_delay_counter[16]),
        .I2(tx_delay_counter[1]),
        .I3(tx_delay_counter[10]),
        .O(\tx_delay_counter[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \tx_delay_counter[1]_i_1 
       (.I0(\tx_delay_counter[19]_i_3_n_0 ),
        .I1(\tx_delay_counter[19]_i_4_n_0 ),
        .I2(\tx_delay_counter[19]_i_5_n_0 ),
        .I3(\tx_delay_counter[19]_i_6_n_0 ),
        .I4(\tx_delay_counter[19]_i_7_n_0 ),
        .I5(data0[1]),
        .O(\tx_delay_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \tx_delay_counter[2]_i_1 
       (.I0(\tx_delay_counter[19]_i_3_n_0 ),
        .I1(\tx_delay_counter[19]_i_4_n_0 ),
        .I2(\tx_delay_counter[19]_i_5_n_0 ),
        .I3(\tx_delay_counter[19]_i_6_n_0 ),
        .I4(\tx_delay_counter[19]_i_7_n_0 ),
        .I5(data0[2]),
        .O(\tx_delay_counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \tx_delay_counter[3]_i_1 
       (.I0(\tx_delay_counter[19]_i_3_n_0 ),
        .I1(\tx_delay_counter[19]_i_4_n_0 ),
        .I2(\tx_delay_counter[19]_i_5_n_0 ),
        .I3(\tx_delay_counter[19]_i_6_n_0 ),
        .I4(\tx_delay_counter[19]_i_7_n_0 ),
        .I5(data0[3]),
        .O(\tx_delay_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \tx_delay_counter[4]_i_1 
       (.I0(\tx_delay_counter[19]_i_3_n_0 ),
        .I1(\tx_delay_counter[19]_i_4_n_0 ),
        .I2(\tx_delay_counter[19]_i_5_n_0 ),
        .I3(\tx_delay_counter[19]_i_6_n_0 ),
        .I4(\tx_delay_counter[19]_i_7_n_0 ),
        .I5(data0[4]),
        .O(\tx_delay_counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \tx_delay_counter[5]_i_1 
       (.I0(\tx_delay_counter[19]_i_3_n_0 ),
        .I1(\tx_delay_counter[19]_i_4_n_0 ),
        .I2(\tx_delay_counter[19]_i_5_n_0 ),
        .I3(\tx_delay_counter[19]_i_6_n_0 ),
        .I4(\tx_delay_counter[19]_i_7_n_0 ),
        .I5(data0[5]),
        .O(\tx_delay_counter[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \tx_delay_counter[6]_i_1 
       (.I0(\tx_delay_counter[19]_i_3_n_0 ),
        .I1(\tx_delay_counter[19]_i_4_n_0 ),
        .I2(\tx_delay_counter[19]_i_5_n_0 ),
        .I3(\tx_delay_counter[19]_i_6_n_0 ),
        .I4(\tx_delay_counter[19]_i_7_n_0 ),
        .I5(data0[6]),
        .O(\tx_delay_counter[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \tx_delay_counter[7]_i_1 
       (.I0(\tx_delay_counter[19]_i_3_n_0 ),
        .I1(\tx_delay_counter[19]_i_4_n_0 ),
        .I2(\tx_delay_counter[19]_i_5_n_0 ),
        .I3(\tx_delay_counter[19]_i_6_n_0 ),
        .I4(\tx_delay_counter[19]_i_7_n_0 ),
        .I5(data0[7]),
        .O(\tx_delay_counter[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \tx_delay_counter[8]_i_1 
       (.I0(\tx_delay_counter[19]_i_3_n_0 ),
        .I1(\tx_delay_counter[19]_i_4_n_0 ),
        .I2(\tx_delay_counter[19]_i_5_n_0 ),
        .I3(\tx_delay_counter[19]_i_6_n_0 ),
        .I4(\tx_delay_counter[19]_i_7_n_0 ),
        .I5(data0[8]),
        .O(\tx_delay_counter[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \tx_delay_counter[9]_i_1 
       (.I0(\tx_delay_counter[19]_i_3_n_0 ),
        .I1(\tx_delay_counter[19]_i_4_n_0 ),
        .I2(\tx_delay_counter[19]_i_5_n_0 ),
        .I3(\tx_delay_counter[19]_i_6_n_0 ),
        .I4(\tx_delay_counter[19]_i_7_n_0 ),
        .I5(data0[9]),
        .O(\tx_delay_counter[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[0] 
       (.C(aclk),
        .CE(\tx_delay_counter[19]_i_1_n_0 ),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(\tx_delay_counter[0]_i_1_n_0 ),
        .Q(tx_delay_counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[10] 
       (.C(aclk),
        .CE(\tx_delay_counter[19]_i_1_n_0 ),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(\tx_delay_counter[10]_i_1_n_0 ),
        .Q(tx_delay_counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[11] 
       (.C(aclk),
        .CE(\tx_delay_counter[19]_i_1_n_0 ),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(\tx_delay_counter[11]_i_1_n_0 ),
        .Q(tx_delay_counter[11]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[12] 
       (.C(aclk),
        .CE(\tx_delay_counter[19]_i_1_n_0 ),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(\tx_delay_counter[12]_i_1_n_0 ),
        .Q(tx_delay_counter[12]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[13] 
       (.C(aclk),
        .CE(\tx_delay_counter[19]_i_1_n_0 ),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(\tx_delay_counter[13]_i_1_n_0 ),
        .Q(tx_delay_counter[13]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[14] 
       (.C(aclk),
        .CE(\tx_delay_counter[19]_i_1_n_0 ),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(\tx_delay_counter[14]_i_1_n_0 ),
        .Q(tx_delay_counter[14]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[15] 
       (.C(aclk),
        .CE(\tx_delay_counter[19]_i_1_n_0 ),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(\tx_delay_counter[15]_i_1_n_0 ),
        .Q(tx_delay_counter[15]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[16] 
       (.C(aclk),
        .CE(\tx_delay_counter[19]_i_1_n_0 ),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(\tx_delay_counter[16]_i_1_n_0 ),
        .Q(tx_delay_counter[16]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[17] 
       (.C(aclk),
        .CE(\tx_delay_counter[19]_i_1_n_0 ),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(\tx_delay_counter[17]_i_1_n_0 ),
        .Q(tx_delay_counter[17]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[18] 
       (.C(aclk),
        .CE(\tx_delay_counter[19]_i_1_n_0 ),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(\tx_delay_counter[18]_i_1_n_0 ),
        .Q(tx_delay_counter[18]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[19] 
       (.C(aclk),
        .CE(\tx_delay_counter[19]_i_1_n_0 ),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(\tx_delay_counter[19]_i_2_n_0 ),
        .Q(tx_delay_counter[19]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[1] 
       (.C(aclk),
        .CE(\tx_delay_counter[19]_i_1_n_0 ),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(\tx_delay_counter[1]_i_1_n_0 ),
        .Q(tx_delay_counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[2] 
       (.C(aclk),
        .CE(\tx_delay_counter[19]_i_1_n_0 ),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(\tx_delay_counter[2]_i_1_n_0 ),
        .Q(tx_delay_counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[3] 
       (.C(aclk),
        .CE(\tx_delay_counter[19]_i_1_n_0 ),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(\tx_delay_counter[3]_i_1_n_0 ),
        .Q(tx_delay_counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[4] 
       (.C(aclk),
        .CE(\tx_delay_counter[19]_i_1_n_0 ),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(\tx_delay_counter[4]_i_1_n_0 ),
        .Q(tx_delay_counter[4]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[5] 
       (.C(aclk),
        .CE(\tx_delay_counter[19]_i_1_n_0 ),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(\tx_delay_counter[5]_i_1_n_0 ),
        .Q(tx_delay_counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[6] 
       (.C(aclk),
        .CE(\tx_delay_counter[19]_i_1_n_0 ),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(\tx_delay_counter[6]_i_1_n_0 ),
        .Q(tx_delay_counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[7] 
       (.C(aclk),
        .CE(\tx_delay_counter[19]_i_1_n_0 ),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(\tx_delay_counter[7]_i_1_n_0 ),
        .Q(tx_delay_counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[8] 
       (.C(aclk),
        .CE(\tx_delay_counter[19]_i_1_n_0 ),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(\tx_delay_counter[8]_i_1_n_0 ),
        .Q(tx_delay_counter[8]));
  FDCE #(
    .INIT(1'b0)) 
    \tx_delay_counter_reg[9] 
       (.C(aclk),
        .CE(\tx_delay_counter[19]_i_1_n_0 ),
        .CLR(\led_r_reg[7]_i_2_n_0 ),
        .D(\tx_delay_counter[9]_i_1_n_0 ),
        .Q(tx_delay_counter[9]));
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
