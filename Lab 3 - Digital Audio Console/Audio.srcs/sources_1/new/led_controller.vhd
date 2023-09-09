library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity LED_controller is
	Port (
		mute_enable		:	in	STD_LOGIC;
		filter_enable	:	in	STD_LOGIC;

		led_r			:	out	STD_LOGIC_VECTOR(7 downto 0);
		led_g			:	out	STD_LOGIC_VECTOR(7 downto 0);
		led_b			:	out	STD_LOGIC_VECTOR(7 downto 0)
	);
end LED_controller;

architecture Behavioral of LED_controller is

	------------------- CONSTANT DECLARATION -------------------

	constant	LED_ON		: STD_LOGIC_VECTOR(led_r'range) := (Others => '1');
	constant	LED_OFF		: STD_LOGIC_VECTOR(led_r'range) := (Others => '0');

begin
	-- LED-R ON -> MUTE Enabled
	-- LED-G ON -> DEFAULT (MUTE and MAF are OFF)
	-- LED-B ON -> Moving Average Filter Enabled
	led_r	<=	LED_ON when mute_enable = '1' else LED_OFF;

	led_g	<=	LED_ON when mute_enable = '0' and filter_enable = '0' else LED_OFF;
	
	led_b	<=	LED_ON when mute_enable = '0' and filter_enable = '1' else LED_OFF;

end Behavioral;
