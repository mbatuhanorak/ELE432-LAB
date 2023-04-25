library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use std.textio.all;
use ieee.std_logic_textio.all;
---------------------------------------------
entity lab2_tb is
end entity lab2_tb;
---------------------------------------------
architecture testbench of lab2_tb is
	signal rst         : std_logic:='1';
	signal clk,led_Clock : std_logic;
	signal A_i,B_i     : std_logic_vector(2 downto 0);
	signal load_A_i    : std_logic:='0';
	signal load_B_i    : std_logic:='0';
	signal Sel_i       : std_logic:='1';
	signal opcode_i    : std_logic_vector(3 downto 0);
	signal A_hx_o,B_hx_o,result_hx_o: std_logic_vector(6 downto 0);
	constant Clk_div     : integer := 1;
	constant C_CLK_PERIOD : time := 10 ns; -- NS
	signal i     : integer := 1;
begin
	CLK_GEN : process
	begin
		clk <= '0';
		wait for C_CLK_PERIOD /2;
		clk <= '1';
		wait for C_CLK_PERIOD /2;
	end process CLK_GEN;
	ST_GEN : process
	begin
		A_i<="101";
 		B_i<="110";
 		opcode_i<=x"0";
 		wait for 60 ns;
 		loopforopcode : for i in 1 to 15 loop
 			opcode_i<=std_logic_vector(to_unsigned(i, opcode_i'length));
 			wait for 40 ns;
 		end loop;
	end process ST_GEN;
	DUT : entity work.lab2
	generic map ( Clk_div     =>Clk_div)
    port map (    rst         => rst,
			      clk         => clk,
			      A_i         => A_i,
			      B_i         => B_i,
			      load_A_i    => load_A_i,
			      load_B_i    => load_B_i,
			      Sel_i       => Sel_i,
			      opcode_i    => opcode_i,
			      A_hx_o      => A_hx_o,
			      B_hx_o      => B_hx_o,
			      led_Clock   => led_Clock,
			      result_hx_o => result_hx_o );
end architecture testbench;
