library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;
-----------------------------------------------------------
entity lab1_bcd_tb is
end entity lab1_bcd_tb;
-----------------------------------------------------------
architecture testbench of lab1_bcd_tb is
	-- Testbench DUT generics
	-- Testbench DUT ports
	signal rst   : std_logic:='1';
	signal clk_s : std_logic;
	signal h_o   : std_logic_vector(6 downto 0);
	-- Other constants
	constant C_CLK_PERIOD : time := 1 ns; -- NS
begin
	CLK_GEN : process
	begin
		clk_s <= '1';
		wait for C_CLK_PERIOD ;
		clk_s <= '0';
		wait for C_CLK_PERIOD ;
	end process CLK_GEN;
	DUT : entity work.lab1_bcd
		port map (
			rst   => rst,
			clk_s => clk_s,
			h_o   => h_o
		);
end architecture testbench;


