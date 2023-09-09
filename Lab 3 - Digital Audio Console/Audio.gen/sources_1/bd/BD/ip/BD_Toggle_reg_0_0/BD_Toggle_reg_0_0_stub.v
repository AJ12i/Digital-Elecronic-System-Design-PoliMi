// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu May 18 21:47:37 2023
// Host        : DESKTOP-AVPI1T7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/alija/Audio/Audio.gen/sources_1/bd/BD/ip/BD_Toggle_reg_0_0/BD_Toggle_reg_0_0_stub.v
// Design      : BD_Toggle_reg_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Toggle_reg,Vivado 2020.2" *)
module BD_Toggle_reg_0_0(clk, rst, input_signal, output_signal)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,input_signal,output_signal" */;
  input clk;
  input rst;
  input input_signal;
  output output_signal;
endmodule
