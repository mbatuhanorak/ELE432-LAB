library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;
-----------------------------------------------------------
entity lab1_tb is
end entity lab1_tb;
-----------------------------------------------------------
architecture testbench of lab1_tb is
	signal rst   : std_logic:='1';
	signal A_i   : std_logic_vector(2 downto 0);
	signal B_i   : std_logic_vector(2 downto 0);
	signal Sel_i : std_logic_vector(3 downto 0);
	signal h_o   : std_logic_vector(6 downto 0);
begin
	ST_GEN : process
	begin
		A_i<="101";
 		B_i<="110";
 		Sel_i<=x"0";
		wait for 10 ns;
 		Sel_i<=x"1";
		wait for 10 ns;
 		Sel_i<=x"2";
		wait for 10 ns;
 		Sel_i<=x"3";
		wait for 10 ns;
 		Sel_i<=x"4";
		wait for 10 ns;
 		Sel_i<=x"5";
		wait for 10 ns;
 		Sel_i<=x"6";
		wait for 10 ns;
 		Sel_i<=x"7";
		wait for 10 ns;
 		Sel_i<=x"8";
		wait for 10 ns;
 		Sel_i<=x"9";
		wait for 10 ns;
 		Sel_i<=x"a";
		wait for 10 ns;
 		Sel_i<=x"b";
		wait for 10 ns;
 		Sel_i<=x"c";
		wait for 10 ns;
 		Sel_i<=x"d";
		wait for 10 ns;
 		Sel_i<=x"e";
		wait for 10 ns;
 		Sel_i<=x"f";
		wait for 10 ns;
	end process ST_GEN;
	DUT : entity work.lab1
		port map (
			rst   => rst,
			A_i   => A_i,
			B_i   => B_i,
			Sel_i => Sel_i,
			h_o   => h_o
		);
end architecture testbench;