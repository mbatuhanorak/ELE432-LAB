-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;
-----------------------------------------------------------
entity lab1_seq_top_tb is
end entity lab1_seq_top_tb;
-----------------------------------------------------------
architecture testbench of lab1_seq_top_tb is
	-- Testbench DUT generics
	-- Testbench DUT ports
	signal clk      : STD_LOGIC;
	signal reset    : STD_LOGIC:='0';
	signal enable   : STD_LOGIC:='0';
	signal data_i   : std_logic_vector( 7 downto 0 );
	signal h_o      : std_logic_vector(6 downto 0);
	signal output_s : STD_LOGIC;
	-- Other constants
	constant C_CLK_PERIOD : time := 5 ns; -- NS
   constant Clk_div :  integer := 25;
begin
	CLK_GEN : process
	begin
		clk <= '0';
		wait for C_CLK_PERIOD;
		clk <= '1';
		wait for C_CLK_PERIOD;
	end process CLK_GEN;
	ST_GEN : process
	begin
		data_i <="01010101";
		enable <='0';
 		wait for 10 ns;
 		enable <='1';
 		wait for 100 ns;
 		wait for 100 ns;
 		wait for 1 ms;
	end process ST_GEN;
	DUT : entity work.lab1_seq_top
	generic map (
		Clk_div    =>Clk_div)
		port map (
			clk      => clk,
			reset    => reset,
			enable   => enable,
			data_i   => data_i,
			h_o      => h_o,
			output_s => output_s
		);
end architecture testbench;