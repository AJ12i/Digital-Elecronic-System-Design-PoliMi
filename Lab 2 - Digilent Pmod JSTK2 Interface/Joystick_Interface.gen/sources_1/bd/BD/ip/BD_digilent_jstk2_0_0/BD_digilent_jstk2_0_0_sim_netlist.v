// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 13 15:17:43 2023
// Host        : DESKTOP-AVPI1T7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/alija/Joystick_Interface/Joystick_Interface.gen/sources_1/bd/BD/ip/BD_digilent_jstk2_0_0/BD_digilent_jstk2_0_0_sim_netlist.v
// Design      : BD_digilent_jstk2_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BD_digilent_jstk2_0_0,digilent_jstk2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "digilent_jstk2,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module BD_digilent_jstk2_0_0
   (aclk,
    aresetn,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tready,
    s_axis_tvalid,
    s_axis_tdata,
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
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [7:0]s_axis_tdata;
  output [9:0]jstk_x;
  output [9:0]jstk_y;
  output btn_jstk;
  output btn_trigger;
  input [7:0]led_r;
  input [7:0]led_g;
  input [7:0]led_b;

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
  wire s_axis_tvalid;

  BD_digilent_jstk2_0_0_digilent_jstk2 U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .btn_jstk(btn_jstk),
        .btn_trigger(btn_trigger),
        .jstk_x(jstk_x),
        .jstk_y(jstk_y),
        .led_b(led_b),
        .led_g(led_g),
        .led_r(led_r),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "digilent_jstk2" *) 
module BD_digilent_jstk2_0_0_digilent_jstk2
   (jstk_x,
    jstk_y,
    btn_jstk,
    btn_trigger,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tready,
    aclk,
    s_axis_tvalid,
    led_b,
    led_g,
    led_r,
    s_axis_tdata,
    aresetn);
  output [9:0]jstk_x;
  output [9:0]jstk_y;
  output btn_jstk;
  output btn_trigger;
  output m_axis_tvalid;
  output [7:0]m_axis_tdata;
  input m_axis_tready;
  input aclk;
  input s_axis_tvalid;
  input [7:0]led_b;
  input [7:0]led_g;
  input [7:0]led_r;
  input [7:0]s_axis_tdata;
  input aresetn;

  wire \FSM_sequential_state_cmd[0]_i_1_n_0 ;
  wire \FSM_sequential_state_cmd[1]_i_1_n_0 ;
  wire \FSM_sequential_state_cmd[2]_i_1_n_0 ;
  wire \FSM_sequential_state_sts[0]_i_1_n_0 ;
  wire \FSM_sequential_state_sts[1]_i_1_n_0 ;
  wire \FSM_sequential_state_sts[2]_i_1_n_0 ;
  wire aclk;
  wire aresetn;
  wire btn_jstk;
  wire btn_trigger;
  wire [14:1]data0;
  wire [14:0]delay_counter;
  wire delay_counter0_carry__0_n_0;
  wire delay_counter0_carry__0_n_1;
  wire delay_counter0_carry__0_n_2;
  wire delay_counter0_carry__0_n_3;
  wire delay_counter0_carry__1_n_0;
  wire delay_counter0_carry__1_n_1;
  wire delay_counter0_carry__1_n_2;
  wire delay_counter0_carry__1_n_3;
  wire delay_counter0_carry__2_n_3;
  wire delay_counter0_carry_n_0;
  wire delay_counter0_carry_n_1;
  wire delay_counter0_carry_n_2;
  wire delay_counter0_carry_n_3;
  wire \delay_counter[0]_i_1_n_0 ;
  wire \delay_counter[10]_i_1_n_0 ;
  wire \delay_counter[11]_i_1_n_0 ;
  wire \delay_counter[12]_i_1_n_0 ;
  wire \delay_counter[13]_i_1_n_0 ;
  wire \delay_counter[14]_i_2_n_0 ;
  wire \delay_counter[14]_i_3_n_0 ;
  wire \delay_counter[14]_i_4_n_0 ;
  wire \delay_counter[1]_i_1_n_0 ;
  wire \delay_counter[2]_i_1_n_0 ;
  wire \delay_counter[3]_i_1_n_0 ;
  wire \delay_counter[4]_i_1_n_0 ;
  wire \delay_counter[5]_i_1_n_0 ;
  wire \delay_counter[6]_i_1_n_0 ;
  wire \delay_counter[7]_i_1_n_0 ;
  wire \delay_counter[8]_i_1_n_0 ;
  wire \delay_counter[9]_i_1_n_0 ;
  wire delay_counter_1;
  wire [9:0]jstk_x;
  wire jstk_x_reg;
  wire \jstk_x_reg[9]_i_2_n_0 ;
  wire [9:0]jstk_y;
  wire [7:0]led_b;
  wire [7:0]led_b_reg;
  wire \led_b_reg[7]_i_2_n_0 ;
  wire [7:0]led_g;
  wire [7:0]led_g_reg;
  wire [7:0]led_r;
  wire [7:0]led_r_reg;
  wire led_r_reg_0;
  wire [7:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [7:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire [2:0]state_cmd__0;
  wire [2:0]state_sts;
  wire [7:7]temp_reg_jstk_x;
  wire [7:0]temp_reg_jstk_x0_in;
  wire \temp_reg_jstk_x[8]_i_1_n_0 ;
  wire \temp_reg_jstk_x[9]_i_1_n_0 ;
  wire \temp_reg_jstk_x_reg_n_0_[0] ;
  wire \temp_reg_jstk_x_reg_n_0_[1] ;
  wire \temp_reg_jstk_x_reg_n_0_[2] ;
  wire \temp_reg_jstk_x_reg_n_0_[3] ;
  wire \temp_reg_jstk_x_reg_n_0_[4] ;
  wire \temp_reg_jstk_x_reg_n_0_[5] ;
  wire \temp_reg_jstk_x_reg_n_0_[6] ;
  wire \temp_reg_jstk_x_reg_n_0_[7] ;
  wire \temp_reg_jstk_x_reg_n_0_[8] ;
  wire \temp_reg_jstk_x_reg_n_0_[9] ;
  wire [7:7]temp_reg_jstk_y;
  wire \temp_reg_jstk_y[8]_i_1_n_0 ;
  wire \temp_reg_jstk_y[9]_i_1_n_0 ;
  wire \temp_reg_jstk_y_reg_n_0_[0] ;
  wire \temp_reg_jstk_y_reg_n_0_[1] ;
  wire \temp_reg_jstk_y_reg_n_0_[2] ;
  wire \temp_reg_jstk_y_reg_n_0_[3] ;
  wire \temp_reg_jstk_y_reg_n_0_[4] ;
  wire \temp_reg_jstk_y_reg_n_0_[5] ;
  wire \temp_reg_jstk_y_reg_n_0_[6] ;
  wire \temp_reg_jstk_y_reg_n_0_[7] ;
  wire \temp_reg_jstk_y_reg_n_0_[8] ;
  wire \temp_reg_jstk_y_reg_n_0_[9] ;
  wire [3:1]NLW_delay_counter0_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_delay_counter0_carry__2_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h43324666)) 
    \FSM_sequential_state_cmd[0]_i_1 
       (.I0(led_r_reg_0),
        .I1(state_cmd__0[0]),
        .I2(state_cmd__0[1]),
        .I3(state_cmd__0[2]),
        .I4(m_axis_tready),
        .O(\FSM_sequential_state_cmd[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h503C5078)) 
    \FSM_sequential_state_cmd[1]_i_1 
       (.I0(led_r_reg_0),
        .I1(state_cmd__0[0]),
        .I2(state_cmd__0[1]),
        .I3(state_cmd__0[2]),
        .I4(m_axis_tready),
        .O(\FSM_sequential_state_cmd[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h53C05780)) 
    \FSM_sequential_state_cmd[2]_i_1 
       (.I0(led_r_reg_0),
        .I1(state_cmd__0[0]),
        .I2(state_cmd__0[1]),
        .I3(state_cmd__0[2]),
        .I4(m_axis_tready),
        .O(\FSM_sequential_state_cmd[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "wait_delay:000,send_cmd:001,send_red:010,send_green:011,send_blue:100,send_dummy:101," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_cmd_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\FSM_sequential_state_cmd[0]_i_1_n_0 ),
        .Q(state_cmd__0[0]));
  (* FSM_ENCODED_STATES = "wait_delay:000,send_cmd:001,send_red:010,send_green:011,send_blue:100,send_dummy:101," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_cmd_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\FSM_sequential_state_cmd[1]_i_1_n_0 ),
        .Q(state_cmd__0[1]));
  (* FSM_ENCODED_STATES = "wait_delay:000,send_cmd:001,send_red:010,send_green:011,send_blue:100,send_dummy:101," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_cmd_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\FSM_sequential_state_cmd[2]_i_1_n_0 ),
        .Q(state_cmd__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \FSM_sequential_state_sts[0]_i_1 
       (.I0(state_sts[2]),
        .I1(s_axis_tvalid),
        .I2(state_sts[0]),
        .O(\FSM_sequential_state_sts[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1F20)) 
    \FSM_sequential_state_sts[1]_i_1 
       (.I0(state_sts[0]),
        .I1(state_sts[2]),
        .I2(s_axis_tvalid),
        .I3(state_sts[1]),
        .O(\FSM_sequential_state_sts[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0F80)) 
    \FSM_sequential_state_sts[2]_i_1 
       (.I0(state_sts[0]),
        .I1(state_sts[1]),
        .I2(s_axis_tvalid),
        .I3(state_sts[2]),
        .O(\FSM_sequential_state_sts[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "get_x_lsb:000,get_x_msb:001,get_y_lsb:010,get_y_msb:011,get_buttons:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_sts_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\FSM_sequential_state_sts[0]_i_1_n_0 ),
        .Q(state_sts[0]));
  (* FSM_ENCODED_STATES = "get_x_lsb:000,get_x_msb:001,get_y_lsb:010,get_y_msb:011,get_buttons:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_sts_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\FSM_sequential_state_sts[1]_i_1_n_0 ),
        .Q(state_sts[1]));
  (* FSM_ENCODED_STATES = "get_x_lsb:000,get_x_msb:001,get_y_lsb:010,get_y_msb:011,get_buttons:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_sts_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\FSM_sequential_state_sts[2]_i_1_n_0 ),
        .Q(state_sts[2]));
  LUT4 #(
    .INIT(16'h0010)) 
    \U0/ 
       (.I0(state_sts[2]),
        .I1(state_sts[1]),
        .I2(s_axis_tvalid),
        .I3(state_sts[0]),
        .O(temp_reg_jstk_x));
  LUT4 #(
    .INIT(16'h1000)) 
    __0
       (.I0(state_sts[2]),
        .I1(state_sts[0]),
        .I2(s_axis_tvalid),
        .I3(state_sts[1]),
        .O(temp_reg_jstk_y));
  FDCE #(
    .INIT(1'b0)) 
    btn_jstk_reg_reg
       (.C(aclk),
        .CE(jstk_x_reg),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(btn_jstk));
  FDCE #(
    .INIT(1'b0)) 
    btn_trigger_reg_reg
       (.C(aclk),
        .CE(jstk_x_reg),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(btn_trigger));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter0_carry
       (.CI(1'b0),
        .CO({delay_counter0_carry_n_0,delay_counter0_carry_n_1,delay_counter0_carry_n_2,delay_counter0_carry_n_3}),
        .CYINIT(delay_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(delay_counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter0_carry__0
       (.CI(delay_counter0_carry_n_0),
        .CO({delay_counter0_carry__0_n_0,delay_counter0_carry__0_n_1,delay_counter0_carry__0_n_2,delay_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(delay_counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter0_carry__1
       (.CI(delay_counter0_carry__0_n_0),
        .CO({delay_counter0_carry__1_n_0,delay_counter0_carry__1_n_1,delay_counter0_carry__1_n_2,delay_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(delay_counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter0_carry__2
       (.CI(delay_counter0_carry__1_n_0),
        .CO({NLW_delay_counter0_carry__2_CO_UNCONNECTED[3:1],delay_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_delay_counter0_carry__2_O_UNCONNECTED[3:2],data0[14:13]}),
        .S({1'b0,1'b0,delay_counter[14:13]}));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_counter[0]_i_1 
       (.I0(delay_counter[0]),
        .O(\delay_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000000)) 
    \delay_counter[10]_i_1 
       (.I0(\delay_counter[14]_i_3_n_0 ),
        .I1(delay_counter[8]),
        .I2(delay_counter[11]),
        .I3(delay_counter[4]),
        .I4(\delay_counter[14]_i_4_n_0 ),
        .I5(data0[10]),
        .O(\delay_counter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000000)) 
    \delay_counter[11]_i_1 
       (.I0(\delay_counter[14]_i_3_n_0 ),
        .I1(delay_counter[8]),
        .I2(delay_counter[11]),
        .I3(delay_counter[4]),
        .I4(\delay_counter[14]_i_4_n_0 ),
        .I5(data0[11]),
        .O(\delay_counter[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000000)) 
    \delay_counter[12]_i_1 
       (.I0(\delay_counter[14]_i_3_n_0 ),
        .I1(delay_counter[8]),
        .I2(delay_counter[11]),
        .I3(delay_counter[4]),
        .I4(\delay_counter[14]_i_4_n_0 ),
        .I5(data0[12]),
        .O(\delay_counter[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000000)) 
    \delay_counter[13]_i_1 
       (.I0(\delay_counter[14]_i_3_n_0 ),
        .I1(delay_counter[8]),
        .I2(delay_counter[11]),
        .I3(delay_counter[4]),
        .I4(\delay_counter[14]_i_4_n_0 ),
        .I5(data0[13]),
        .O(\delay_counter[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \delay_counter[14]_i_1 
       (.I0(state_cmd__0[2]),
        .I1(state_cmd__0[0]),
        .I2(state_cmd__0[1]),
        .O(delay_counter_1));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000000)) 
    \delay_counter[14]_i_2 
       (.I0(\delay_counter[14]_i_3_n_0 ),
        .I1(delay_counter[8]),
        .I2(delay_counter[11]),
        .I3(delay_counter[4]),
        .I4(\delay_counter[14]_i_4_n_0 ),
        .I5(data0[14]),
        .O(\delay_counter[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \delay_counter[14]_i_3 
       (.I0(delay_counter[6]),
        .I1(delay_counter[5]),
        .I2(delay_counter[3]),
        .I3(delay_counter[7]),
        .I4(delay_counter[10]),
        .I5(delay_counter[9]),
        .O(\delay_counter[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \delay_counter[14]_i_4 
       (.I0(delay_counter[12]),
        .I1(delay_counter[13]),
        .I2(delay_counter[0]),
        .I3(delay_counter[14]),
        .I4(delay_counter[2]),
        .I5(delay_counter[1]),
        .O(\delay_counter[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000000)) 
    \delay_counter[1]_i_1 
       (.I0(\delay_counter[14]_i_3_n_0 ),
        .I1(delay_counter[8]),
        .I2(delay_counter[11]),
        .I3(delay_counter[4]),
        .I4(\delay_counter[14]_i_4_n_0 ),
        .I5(data0[1]),
        .O(\delay_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000000)) 
    \delay_counter[2]_i_1 
       (.I0(\delay_counter[14]_i_3_n_0 ),
        .I1(delay_counter[8]),
        .I2(delay_counter[11]),
        .I3(delay_counter[4]),
        .I4(\delay_counter[14]_i_4_n_0 ),
        .I5(data0[2]),
        .O(\delay_counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000000)) 
    \delay_counter[3]_i_1 
       (.I0(\delay_counter[14]_i_3_n_0 ),
        .I1(delay_counter[8]),
        .I2(delay_counter[11]),
        .I3(delay_counter[4]),
        .I4(\delay_counter[14]_i_4_n_0 ),
        .I5(data0[3]),
        .O(\delay_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000000)) 
    \delay_counter[4]_i_1 
       (.I0(\delay_counter[14]_i_3_n_0 ),
        .I1(delay_counter[8]),
        .I2(delay_counter[11]),
        .I3(delay_counter[4]),
        .I4(\delay_counter[14]_i_4_n_0 ),
        .I5(data0[4]),
        .O(\delay_counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000000)) 
    \delay_counter[5]_i_1 
       (.I0(\delay_counter[14]_i_3_n_0 ),
        .I1(delay_counter[8]),
        .I2(delay_counter[11]),
        .I3(delay_counter[4]),
        .I4(\delay_counter[14]_i_4_n_0 ),
        .I5(data0[5]),
        .O(\delay_counter[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000000)) 
    \delay_counter[6]_i_1 
       (.I0(\delay_counter[14]_i_3_n_0 ),
        .I1(delay_counter[8]),
        .I2(delay_counter[11]),
        .I3(delay_counter[4]),
        .I4(\delay_counter[14]_i_4_n_0 ),
        .I5(data0[6]),
        .O(\delay_counter[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000000)) 
    \delay_counter[7]_i_1 
       (.I0(\delay_counter[14]_i_3_n_0 ),
        .I1(delay_counter[8]),
        .I2(delay_counter[11]),
        .I3(delay_counter[4]),
        .I4(\delay_counter[14]_i_4_n_0 ),
        .I5(data0[7]),
        .O(\delay_counter[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000000)) 
    \delay_counter[8]_i_1 
       (.I0(\delay_counter[14]_i_3_n_0 ),
        .I1(delay_counter[8]),
        .I2(delay_counter[11]),
        .I3(delay_counter[4]),
        .I4(\delay_counter[14]_i_4_n_0 ),
        .I5(data0[8]),
        .O(\delay_counter[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000000)) 
    \delay_counter[9]_i_1 
       (.I0(\delay_counter[14]_i_3_n_0 ),
        .I1(delay_counter[8]),
        .I2(delay_counter[11]),
        .I3(delay_counter[4]),
        .I4(\delay_counter[14]_i_4_n_0 ),
        .I5(data0[9]),
        .O(\delay_counter[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[0] 
       (.C(aclk),
        .CE(delay_counter_1),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\delay_counter[0]_i_1_n_0 ),
        .Q(delay_counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[10] 
       (.C(aclk),
        .CE(delay_counter_1),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\delay_counter[10]_i_1_n_0 ),
        .Q(delay_counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[11] 
       (.C(aclk),
        .CE(delay_counter_1),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\delay_counter[11]_i_1_n_0 ),
        .Q(delay_counter[11]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[12] 
       (.C(aclk),
        .CE(delay_counter_1),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\delay_counter[12]_i_1_n_0 ),
        .Q(delay_counter[12]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[13] 
       (.C(aclk),
        .CE(delay_counter_1),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\delay_counter[13]_i_1_n_0 ),
        .Q(delay_counter[13]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[14] 
       (.C(aclk),
        .CE(delay_counter_1),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\delay_counter[14]_i_2_n_0 ),
        .Q(delay_counter[14]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[1] 
       (.C(aclk),
        .CE(delay_counter_1),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\delay_counter[1]_i_1_n_0 ),
        .Q(delay_counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[2] 
       (.C(aclk),
        .CE(delay_counter_1),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\delay_counter[2]_i_1_n_0 ),
        .Q(delay_counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[3] 
       (.C(aclk),
        .CE(delay_counter_1),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\delay_counter[3]_i_1_n_0 ),
        .Q(delay_counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[4] 
       (.C(aclk),
        .CE(delay_counter_1),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\delay_counter[4]_i_1_n_0 ),
        .Q(delay_counter[4]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[5] 
       (.C(aclk),
        .CE(delay_counter_1),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\delay_counter[5]_i_1_n_0 ),
        .Q(delay_counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[6] 
       (.C(aclk),
        .CE(delay_counter_1),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\delay_counter[6]_i_1_n_0 ),
        .Q(delay_counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[7] 
       (.C(aclk),
        .CE(delay_counter_1),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\delay_counter[7]_i_1_n_0 ),
        .Q(delay_counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[8] 
       (.C(aclk),
        .CE(delay_counter_1),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\delay_counter[8]_i_1_n_0 ),
        .Q(delay_counter[8]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_counter_reg[9] 
       (.C(aclk),
        .CE(delay_counter_1),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\delay_counter[9]_i_1_n_0 ),
        .Q(delay_counter[9]));
  LUT4 #(
    .INIT(16'h1000)) 
    \jstk_x_reg[9]_i_1 
       (.I0(state_sts[0]),
        .I1(state_sts[1]),
        .I2(s_axis_tvalid),
        .I3(state_sts[2]),
        .O(jstk_x_reg));
  LUT1 #(
    .INIT(2'h1)) 
    \jstk_x_reg[9]_i_2 
       (.I0(aresetn),
        .O(\jstk_x_reg[9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_x_reg_reg[0] 
       (.C(aclk),
        .CE(jstk_x_reg),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\temp_reg_jstk_x_reg_n_0_[0] ),
        .Q(jstk_x[0]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_x_reg_reg[1] 
       (.C(aclk),
        .CE(jstk_x_reg),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\temp_reg_jstk_x_reg_n_0_[1] ),
        .Q(jstk_x[1]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_x_reg_reg[2] 
       (.C(aclk),
        .CE(jstk_x_reg),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\temp_reg_jstk_x_reg_n_0_[2] ),
        .Q(jstk_x[2]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_x_reg_reg[3] 
       (.C(aclk),
        .CE(jstk_x_reg),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\temp_reg_jstk_x_reg_n_0_[3] ),
        .Q(jstk_x[3]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_x_reg_reg[4] 
       (.C(aclk),
        .CE(jstk_x_reg),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\temp_reg_jstk_x_reg_n_0_[4] ),
        .Q(jstk_x[4]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_x_reg_reg[5] 
       (.C(aclk),
        .CE(jstk_x_reg),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\temp_reg_jstk_x_reg_n_0_[5] ),
        .Q(jstk_x[5]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_x_reg_reg[6] 
       (.C(aclk),
        .CE(jstk_x_reg),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\temp_reg_jstk_x_reg_n_0_[6] ),
        .Q(jstk_x[6]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_x_reg_reg[7] 
       (.C(aclk),
        .CE(jstk_x_reg),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\temp_reg_jstk_x_reg_n_0_[7] ),
        .Q(jstk_x[7]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_x_reg_reg[8] 
       (.C(aclk),
        .CE(jstk_x_reg),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\temp_reg_jstk_x_reg_n_0_[8] ),
        .Q(jstk_x[8]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_x_reg_reg[9] 
       (.C(aclk),
        .CE(jstk_x_reg),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\temp_reg_jstk_x_reg_n_0_[9] ),
        .Q(jstk_x[9]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_y_reg_reg[0] 
       (.C(aclk),
        .CE(jstk_x_reg),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\temp_reg_jstk_y_reg_n_0_[0] ),
        .Q(jstk_y[0]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_y_reg_reg[1] 
       (.C(aclk),
        .CE(jstk_x_reg),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\temp_reg_jstk_y_reg_n_0_[1] ),
        .Q(jstk_y[1]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_y_reg_reg[2] 
       (.C(aclk),
        .CE(jstk_x_reg),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\temp_reg_jstk_y_reg_n_0_[2] ),
        .Q(jstk_y[2]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_y_reg_reg[3] 
       (.C(aclk),
        .CE(jstk_x_reg),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\temp_reg_jstk_y_reg_n_0_[3] ),
        .Q(jstk_y[3]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_y_reg_reg[4] 
       (.C(aclk),
        .CE(jstk_x_reg),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\temp_reg_jstk_y_reg_n_0_[4] ),
        .Q(jstk_y[4]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_y_reg_reg[5] 
       (.C(aclk),
        .CE(jstk_x_reg),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\temp_reg_jstk_y_reg_n_0_[5] ),
        .Q(jstk_y[5]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_y_reg_reg[6] 
       (.C(aclk),
        .CE(jstk_x_reg),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\temp_reg_jstk_y_reg_n_0_[6] ),
        .Q(jstk_y[6]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_y_reg_reg[7] 
       (.C(aclk),
        .CE(jstk_x_reg),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\temp_reg_jstk_y_reg_n_0_[7] ),
        .Q(jstk_y[7]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_y_reg_reg[8] 
       (.C(aclk),
        .CE(jstk_x_reg),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\temp_reg_jstk_y_reg_n_0_[8] ),
        .Q(jstk_y[8]));
  FDCE #(
    .INIT(1'b0)) 
    \jstk_y_reg_reg[9] 
       (.C(aclk),
        .CE(jstk_x_reg),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\temp_reg_jstk_y_reg_n_0_[9] ),
        .Q(jstk_y[9]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \led_b_reg[7]_i_1 
       (.I0(\delay_counter[14]_i_3_n_0 ),
        .I1(delay_counter[8]),
        .I2(delay_counter[11]),
        .I3(delay_counter[4]),
        .I4(\delay_counter[14]_i_4_n_0 ),
        .I5(\led_b_reg[7]_i_2_n_0 ),
        .O(led_r_reg_0));
  LUT3 #(
    .INIT(8'hFE)) 
    \led_b_reg[7]_i_2 
       (.I0(state_cmd__0[1]),
        .I1(state_cmd__0[0]),
        .I2(state_cmd__0[2]),
        .O(\led_b_reg[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \led_b_reg_reg[0] 
       (.C(aclk),
        .CE(led_r_reg_0),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(led_b[0]),
        .Q(led_b_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \led_b_reg_reg[1] 
       (.C(aclk),
        .CE(led_r_reg_0),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(led_b[1]),
        .Q(led_b_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \led_b_reg_reg[2] 
       (.C(aclk),
        .CE(led_r_reg_0),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(led_b[2]),
        .Q(led_b_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \led_b_reg_reg[3] 
       (.C(aclk),
        .CE(led_r_reg_0),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(led_b[3]),
        .Q(led_b_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \led_b_reg_reg[4] 
       (.C(aclk),
        .CE(led_r_reg_0),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(led_b[4]),
        .Q(led_b_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \led_b_reg_reg[5] 
       (.C(aclk),
        .CE(led_r_reg_0),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(led_b[5]),
        .Q(led_b_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \led_b_reg_reg[6] 
       (.C(aclk),
        .CE(led_r_reg_0),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(led_b[6]),
        .Q(led_b_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \led_b_reg_reg[7] 
       (.C(aclk),
        .CE(led_r_reg_0),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(led_b[7]),
        .Q(led_b_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \led_g_reg_reg[0] 
       (.C(aclk),
        .CE(led_r_reg_0),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(led_g[0]),
        .Q(led_g_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \led_g_reg_reg[1] 
       (.C(aclk),
        .CE(led_r_reg_0),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(led_g[1]),
        .Q(led_g_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \led_g_reg_reg[2] 
       (.C(aclk),
        .CE(led_r_reg_0),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(led_g[2]),
        .Q(led_g_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \led_g_reg_reg[3] 
       (.C(aclk),
        .CE(led_r_reg_0),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(led_g[3]),
        .Q(led_g_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \led_g_reg_reg[4] 
       (.C(aclk),
        .CE(led_r_reg_0),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(led_g[4]),
        .Q(led_g_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \led_g_reg_reg[5] 
       (.C(aclk),
        .CE(led_r_reg_0),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(led_g[5]),
        .Q(led_g_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \led_g_reg_reg[6] 
       (.C(aclk),
        .CE(led_r_reg_0),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(led_g[6]),
        .Q(led_g_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \led_g_reg_reg[7] 
       (.C(aclk),
        .CE(led_r_reg_0),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(led_g[7]),
        .Q(led_g_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \led_r_reg_reg[0] 
       (.C(aclk),
        .CE(led_r_reg_0),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(led_r[0]),
        .Q(led_r_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \led_r_reg_reg[1] 
       (.C(aclk),
        .CE(led_r_reg_0),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(led_r[1]),
        .Q(led_r_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \led_r_reg_reg[2] 
       (.C(aclk),
        .CE(led_r_reg_0),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(led_r[2]),
        .Q(led_r_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \led_r_reg_reg[3] 
       (.C(aclk),
        .CE(led_r_reg_0),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(led_r[3]),
        .Q(led_r_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \led_r_reg_reg[4] 
       (.C(aclk),
        .CE(led_r_reg_0),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(led_r[4]),
        .Q(led_r_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \led_r_reg_reg[5] 
       (.C(aclk),
        .CE(led_r_reg_0),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(led_r[5]),
        .Q(led_r_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \led_r_reg_reg[6] 
       (.C(aclk),
        .CE(led_r_reg_0),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(led_r[6]),
        .Q(led_r_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \led_r_reg_reg[7] 
       (.C(aclk),
        .CE(led_r_reg_0),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(led_r[7]),
        .Q(led_r_reg[7]));
  LUT6 #(
    .INIT(64'h000CFA00000C0A00)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(led_r_reg[0]),
        .I1(led_b_reg[0]),
        .I2(state_cmd__0[0]),
        .I3(state_cmd__0[1]),
        .I4(state_cmd__0[2]),
        .I5(led_g_reg[0]),
        .O(m_axis_tdata[0]));
  LUT6 #(
    .INIT(64'h000CFA00000C0A00)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(led_r_reg[1]),
        .I1(led_b_reg[1]),
        .I2(state_cmd__0[0]),
        .I3(state_cmd__0[1]),
        .I4(state_cmd__0[2]),
        .I5(led_g_reg[1]),
        .O(m_axis_tdata[1]));
  LUT6 #(
    .INIT(64'h0F0F0CA0000F0CA0)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(led_b_reg[2]),
        .I1(led_r_reg[2]),
        .I2(state_cmd__0[2]),
        .I3(state_cmd__0[1]),
        .I4(state_cmd__0[0]),
        .I5(led_g_reg[2]),
        .O(m_axis_tdata[2]));
  LUT6 #(
    .INIT(64'h000CFA00000C0A00)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(led_r_reg[3]),
        .I1(led_b_reg[3]),
        .I2(state_cmd__0[0]),
        .I3(state_cmd__0[1]),
        .I4(state_cmd__0[2]),
        .I5(led_g_reg[3]),
        .O(m_axis_tdata[3]));
  LUT6 #(
    .INIT(64'h000CFA00000C0A00)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(led_r_reg[4]),
        .I1(led_b_reg[4]),
        .I2(state_cmd__0[0]),
        .I3(state_cmd__0[1]),
        .I4(state_cmd__0[2]),
        .I5(led_g_reg[4]),
        .O(m_axis_tdata[4]));
  LUT6 #(
    .INIT(64'h0F000CA000000CA0)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(led_b_reg[5]),
        .I1(led_r_reg[5]),
        .I2(state_cmd__0[2]),
        .I3(state_cmd__0[1]),
        .I4(state_cmd__0[0]),
        .I5(led_g_reg[5]),
        .O(m_axis_tdata[5]));
  LUT6 #(
    .INIT(64'h000CFA00000C0A00)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(led_r_reg[6]),
        .I1(led_b_reg[6]),
        .I2(state_cmd__0[0]),
        .I3(state_cmd__0[1]),
        .I4(state_cmd__0[2]),
        .I5(led_g_reg[6]),
        .O(m_axis_tdata[6]));
  LUT6 #(
    .INIT(64'h000CFAF0000C0AF0)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(led_r_reg[7]),
        .I1(led_b_reg[7]),
        .I2(state_cmd__0[0]),
        .I3(state_cmd__0[1]),
        .I4(state_cmd__0[2]),
        .I5(led_g_reg[7]),
        .O(m_axis_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h3E)) 
    m_axis_tvalid_INST_0
       (.I0(state_cmd__0[0]),
        .I1(state_cmd__0[1]),
        .I2(state_cmd__0[2]),
        .O(m_axis_tvalid));
  LUT3 #(
    .INIT(8'h04)) 
    \temp_reg_jstk_x[0]_i_1 
       (.I0(state_sts[0]),
        .I1(s_axis_tdata[0]),
        .I2(state_sts[2]),
        .O(temp_reg_jstk_x0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \temp_reg_jstk_x[1]_i_1 
       (.I0(state_sts[0]),
        .I1(s_axis_tdata[1]),
        .I2(state_sts[2]),
        .O(temp_reg_jstk_x0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \temp_reg_jstk_x[2]_i_1 
       (.I0(state_sts[0]),
        .I1(s_axis_tdata[2]),
        .I2(state_sts[2]),
        .O(temp_reg_jstk_x0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \temp_reg_jstk_x[3]_i_1 
       (.I0(state_sts[0]),
        .I1(s_axis_tdata[3]),
        .I2(state_sts[2]),
        .O(temp_reg_jstk_x0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \temp_reg_jstk_x[4]_i_1 
       (.I0(state_sts[0]),
        .I1(s_axis_tdata[4]),
        .I2(state_sts[2]),
        .O(temp_reg_jstk_x0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \temp_reg_jstk_x[5]_i_1 
       (.I0(state_sts[0]),
        .I1(s_axis_tdata[5]),
        .I2(state_sts[2]),
        .O(temp_reg_jstk_x0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \temp_reg_jstk_x[6]_i_1 
       (.I0(state_sts[0]),
        .I1(s_axis_tdata[6]),
        .I2(state_sts[2]),
        .O(temp_reg_jstk_x0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \temp_reg_jstk_x[7]_i_1 
       (.I0(state_sts[0]),
        .I1(s_axis_tdata[7]),
        .I2(state_sts[2]),
        .O(temp_reg_jstk_x0_in[7]));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \temp_reg_jstk_x[8]_i_1 
       (.I0(s_axis_tdata[0]),
        .I1(state_sts[2]),
        .I2(state_sts[1]),
        .I3(s_axis_tvalid),
        .I4(state_sts[0]),
        .I5(\temp_reg_jstk_x_reg_n_0_[8] ),
        .O(\temp_reg_jstk_x[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \temp_reg_jstk_x[9]_i_1 
       (.I0(s_axis_tdata[1]),
        .I1(state_sts[2]),
        .I2(state_sts[1]),
        .I3(s_axis_tvalid),
        .I4(state_sts[0]),
        .I5(\temp_reg_jstk_x_reg_n_0_[9] ),
        .O(\temp_reg_jstk_x[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_jstk_x_reg[0] 
       (.C(aclk),
        .CE(temp_reg_jstk_x),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(temp_reg_jstk_x0_in[0]),
        .Q(\temp_reg_jstk_x_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_jstk_x_reg[1] 
       (.C(aclk),
        .CE(temp_reg_jstk_x),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(temp_reg_jstk_x0_in[1]),
        .Q(\temp_reg_jstk_x_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_jstk_x_reg[2] 
       (.C(aclk),
        .CE(temp_reg_jstk_x),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(temp_reg_jstk_x0_in[2]),
        .Q(\temp_reg_jstk_x_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_jstk_x_reg[3] 
       (.C(aclk),
        .CE(temp_reg_jstk_x),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(temp_reg_jstk_x0_in[3]),
        .Q(\temp_reg_jstk_x_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_jstk_x_reg[4] 
       (.C(aclk),
        .CE(temp_reg_jstk_x),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(temp_reg_jstk_x0_in[4]),
        .Q(\temp_reg_jstk_x_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_jstk_x_reg[5] 
       (.C(aclk),
        .CE(temp_reg_jstk_x),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(temp_reg_jstk_x0_in[5]),
        .Q(\temp_reg_jstk_x_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_jstk_x_reg[6] 
       (.C(aclk),
        .CE(temp_reg_jstk_x),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(temp_reg_jstk_x0_in[6]),
        .Q(\temp_reg_jstk_x_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_jstk_x_reg[7] 
       (.C(aclk),
        .CE(temp_reg_jstk_x),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(temp_reg_jstk_x0_in[7]),
        .Q(\temp_reg_jstk_x_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_jstk_x_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\temp_reg_jstk_x[8]_i_1_n_0 ),
        .Q(\temp_reg_jstk_x_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_jstk_x_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\temp_reg_jstk_x[9]_i_1_n_0 ),
        .Q(\temp_reg_jstk_x_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \temp_reg_jstk_y[8]_i_1 
       (.I0(s_axis_tdata[0]),
        .I1(state_sts[2]),
        .I2(s_axis_tvalid),
        .I3(state_sts[1]),
        .I4(state_sts[0]),
        .I5(\temp_reg_jstk_y_reg_n_0_[8] ),
        .O(\temp_reg_jstk_y[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \temp_reg_jstk_y[9]_i_1 
       (.I0(s_axis_tdata[1]),
        .I1(state_sts[2]),
        .I2(s_axis_tvalid),
        .I3(state_sts[1]),
        .I4(state_sts[0]),
        .I5(\temp_reg_jstk_y_reg_n_0_[9] ),
        .O(\temp_reg_jstk_y[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_jstk_y_reg[0] 
       (.C(aclk),
        .CE(temp_reg_jstk_y),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(temp_reg_jstk_x0_in[0]),
        .Q(\temp_reg_jstk_y_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_jstk_y_reg[1] 
       (.C(aclk),
        .CE(temp_reg_jstk_y),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(temp_reg_jstk_x0_in[1]),
        .Q(\temp_reg_jstk_y_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_jstk_y_reg[2] 
       (.C(aclk),
        .CE(temp_reg_jstk_y),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(temp_reg_jstk_x0_in[2]),
        .Q(\temp_reg_jstk_y_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_jstk_y_reg[3] 
       (.C(aclk),
        .CE(temp_reg_jstk_y),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(temp_reg_jstk_x0_in[3]),
        .Q(\temp_reg_jstk_y_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_jstk_y_reg[4] 
       (.C(aclk),
        .CE(temp_reg_jstk_y),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(temp_reg_jstk_x0_in[4]),
        .Q(\temp_reg_jstk_y_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_jstk_y_reg[5] 
       (.C(aclk),
        .CE(temp_reg_jstk_y),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(temp_reg_jstk_x0_in[5]),
        .Q(\temp_reg_jstk_y_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_jstk_y_reg[6] 
       (.C(aclk),
        .CE(temp_reg_jstk_y),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(temp_reg_jstk_x0_in[6]),
        .Q(\temp_reg_jstk_y_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_jstk_y_reg[7] 
       (.C(aclk),
        .CE(temp_reg_jstk_y),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(temp_reg_jstk_x0_in[7]),
        .Q(\temp_reg_jstk_y_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_jstk_y_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\temp_reg_jstk_y[8]_i_1_n_0 ),
        .Q(\temp_reg_jstk_y_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg_jstk_y_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\jstk_x_reg[9]_i_2_n_0 ),
        .D(\temp_reg_jstk_y[9]_i_1_n_0 ),
        .Q(\temp_reg_jstk_y_reg_n_0_[9] ));
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
