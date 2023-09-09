-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sat May 20 20:32:22 2023
-- Host        : DESKTOP-AVPI1T7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/alija/Audio/Audio.gen/sources_1/bd/BD/ip/BD_LED_controller_0_0/BD_LED_controller_0_0_stub.vhdl
-- Design      : BD_LED_controller_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BD_LED_controller_0_0 is
  Port ( 
    mute_enable : in STD_LOGIC;
    filter_enable : in STD_LOGIC;
    led_r : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led_g : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led_b : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end BD_LED_controller_0_0;

architecture stub of BD_LED_controller_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "mute_enable,filter_enable,led_r[7:0],led_g[7:0],led_b[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "LED_controller,Vivado 2020.2";
begin
end;
