----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/20/2023 09:41:37 PM
-- Design Name: 
-- Module Name: KittCarPWM_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
	use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity KittCarPWM_tb is
end KittCarPWM_tb;
 
architecture Behavioral of KittCarPWM_tb is 

	------------------ CONSTANT DECLARATION -------------------------

	--------- Timing Control -----------
	constant    RESET_ON    				:   STD_LOGIC := '1';
	
	constant	CLK_PERIOD 					:	TIME	:= 10 ns;
	constant	RESET_WND					:	TIME	:= 10 * CLK_PERIOD;
	constant	KITTCAR_WND					:	TIME	:= 1 ms;

	------- Constants for DUT  -------
	constant	DUT_CLK_PERIOD_NS			:	POSITIVE	RANGE	1	TO	100		:=	10;
	constant	DUT_MIN_KITT_CAR_STEP_MS	:	POSITIVE	RANGE	1	TO	2000	:=	1;

	constant	DUT_NUM_OF_LEDS				:	INTEGER	RANGE	1 TO 16 := 16;
	constant	DUT_NUM_OF_SWS				:	INTEGER	RANGE	1 TO 16 := 16;

	constant	DUT_TAIL_LENGTH				:	INTEGER RANGE	1 TO 16 := 4;


	----------- DEVICE UNDER TEST (DUT) DECLARATION -----------

	component KittCarPWM
		Generic(

			CLK_PERIOD_NS			:	POSITIVE	RANGE	1	TO	100;
			MIN_KITT_CAR_STEP_MS	:	POSITIVE	RANGE	1	TO	2000;
			
			NUM_OF_LEDS				:	INTEGER	RANGE	1 TO 16;
			NUM_OF_SWS				:	INTEGER	RANGE	1 TO 16;

			TAIL_LENGTH				:	INTEGER	RANGE	1 TO 16
		
		);
		Port(
		
			reset	:	IN	STD_LOGIC;
			clk		:	IN	STD_LOGIC;

			sw		:	IN	STD_LOGIC_VECTOR(NUM_OF_SWS - 1 downto 0);
			leds	:	OUT	STD_LOGIC_VECTOR(NUM_OF_LEDS - 1 downto 0)
			
		);
	end component;

	--------------------- SIGNALS DECLARATION -----------------------
	
	signal	reset		:	STD_LOGIC	:= RESET_ON;
	signal	clk			:	STD_LOGIC	:= '1';
	
	signal	dut_SWs		:	STD_LOGIC_VECTOR(DUT_NUM_OF_SWS - 1 downto 0);
	signal	dut_LEDs	:	STD_LOGIC_VECTOR(DUT_NUM_OF_LEDS - 1 downto 0);


begin
	
	----------- DEVICE UNDER TEST (DUT) WRAPPER -----------
	
	dut_KittCarPWM	:	KittCarPWM
		Generic Map(
		
			CLK_PERIOD_NS			=> DUT_CLK_PERIOD_NS,
			MIN_KITT_CAR_STEP_MS	=> DUT_MIN_KITT_CAR_STEP_MS,
			
			NUM_OF_LEDS				=> DUT_NUM_OF_LEDS,
			NUM_OF_SWS				=> DUT_NUM_OF_SWS,

			TAIL_LENGTH				=> DUT_TAIL_LENGTH
		
		)
		Port Map(

			reset	=> reset,
			clk		=> clk,
			
			sw		=> dut_SWs,
			leds	=> dut_LEDs

		);

	--------------------- SIGNAL GENERATION  -----------------------
	
	clk <= not clk after CLK_PERIOD/2; 	-- generating a 100MHz clock
	
	----- RESET GENERATION --------
	reset_wave :process
	begin
		reset <= '1';
		wait for RESET_WND;
		
		reset <= '0';
		wait;
	end process;

	------ Main pattern generation -------

	dut_main_pattern: process
	begin
		-- wait till the reset window
		dut_SWs	<= STD_LOGIC_VECTOR(to_unsigned(0,DUT_NUM_OF_SWS));
		wait for RESET_WND;	

		-- Start
				
		dut_SWs	<= STD_LOGIC_VECTOR(to_unsigned(3,DUT_NUM_OF_SWS));
		wait for KITTCAR_WND;
		
		dut_SWs	<= STD_LOGIC_VECTOR(to_unsigned(2,DUT_NUM_OF_SWS));
		wait for KITTCAR_WND;

		dut_SWs	<= STD_LOGIC_VECTOR(to_unsigned(1,DUT_NUM_OF_SWS));
        wait for KITTCAR_WND;
    
        dut_SWs	<= STD_LOGIC_VECTOR(to_unsigned(0,DUT_NUM_OF_SWS));
		-- Stop
		wait;

	end process;

end;