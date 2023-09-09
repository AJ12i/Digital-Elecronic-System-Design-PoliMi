// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May 20 20:32:22 2023
// Host        : DESKTOP-AVPI1T7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/alija/Audio/Audio.gen/sources_1/bd/BD/ip/BD_LED_controller_0_0/BD_LED_controller_0_0_sim_netlist.v
// Design      : BD_LED_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BD_LED_controller_0_0,LED_controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "LED_controller,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module BD_LED_controller_0_0
   (mute_enable,
    filter_enable,
    led_r,
    led_g,
    led_b);
  input mute_enable;
  input filter_enable;
  output [7:0]led_r;
  output [7:0]led_g;
  output [7:0]led_b;

  wire filter_enable;
  wire [0:0]\^led_b ;
  wire [0:0]\^led_g ;
  wire mute_enable;

  assign led_b[7] = \^led_b [0];
  assign led_b[6] = \^led_b [0];
  assign led_b[5] = \^led_b [0];
  assign led_b[4] = \^led_b [0];
  assign led_b[3] = \^led_b [0];
  assign led_b[2] = \^led_b [0];
  assign led_b[1] = \^led_b [0];
  assign led_b[0] = \^led_b [0];
  assign led_g[7] = \^led_g [0];
  assign led_g[6] = \^led_g [0];
  assign led_g[5] = \^led_g [0];
  assign led_g[4] = \^led_g [0];
  assign led_g[3] = \^led_g [0];
  assign led_g[2] = \^led_g [0];
  assign led_g[1] = \^led_g [0];
  assign led_g[0] = \^led_g [0];
  assign led_r[7] = mute_enable;
  assign led_r[6] = mute_enable;
  assign led_r[5] = mute_enable;
  assign led_r[4] = mute_enable;
  assign led_r[3] = mute_enable;
  assign led_r[2] = mute_enable;
  assign led_r[1] = mute_enable;
  assign led_r[0] = mute_enable;
  LUT2 #(
    .INIT(4'h2)) 
    \led_b[0]_INST_0 
       (.I0(filter_enable),
        .I1(mute_enable),
        .O(\^led_b ));
  LUT2 #(
    .INIT(4'h1)) 
    \led_g[0]_INST_0 
       (.I0(mute_enable),
        .I1(filter_enable),
        .O(\^led_g ));
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
