library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use IEEE.NUMERIC_STD.ALL;

entity Toggle_reg is
	Port (
		clk				: in STD_LOGIC;
		rst				: in STD_LOGIC;

		input_signal	: in	STD_LOGIC;
		output_signal	: out	STD_LOGIC
	);
end Toggle_reg;

architecture Behavioral of Toggle_reg is

	signal toggle_reg	: STD_LOGIC := '0';

begin

	-- The edge-detected input signal is converted to a toggling signal.
	toggle_reg			<= not	toggle_reg	when input_signal = '1' else toggle_reg;

	output_signal		<=	toggle_reg;

end Behavioral;
