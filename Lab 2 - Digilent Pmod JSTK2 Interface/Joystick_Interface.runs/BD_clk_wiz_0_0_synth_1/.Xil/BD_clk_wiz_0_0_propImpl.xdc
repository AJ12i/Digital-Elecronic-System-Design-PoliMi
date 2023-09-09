set_property SRC_FILE_INFO {cfile:c:/Users/alija/Joystick_Interface/Joystick_Interface.gen/sources_1/bd/BD/ip/BD_clk_wiz_0_0/BD_clk_wiz_0_0.xdc rfile:../../../Joystick_Interface.gen/sources_1/bd/BD/ip/BD_clk_wiz_0_0/BD_clk_wiz_0_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
