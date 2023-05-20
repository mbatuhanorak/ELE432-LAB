--------------------------------------------------------------------------------
-- Title       : <Title Block>
-- Project     : Default Project Name
--------------------------------------------------------------------------------
-- File        : Uart_Test_tb.vhd
-- Author      : User Name <user.email@user.company.com>
-- Company     : User Company Name
-- Created     : Sat Apr 22 04:35:29 2023
-- Last update : Mon Apr 24 21:28:48 2023
-- Platform    : Default Part Number
-- Standard    : <VHDL-2008 | VHDL-2002 | VHDL-1993 | VHDL-1987>
--------------------------------------------------------------------------------
-- Copyright (c) 2023 User Company Name
-------------------------------------------------------------------------------
-- Description: 
--------------------------------------------------------------------------------
-- Revisions:  Revisions and documentation are controlled by
-- the revision control system (RCS).  The RCS should be consulted
-- on revision history.
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

-----------------------------------------------------------

entity Uart_Test_tb is

end entity Uart_Test_tb;

-----------------------------------------------------------

architecture testbench of Uart_Test_tb is

	-- Testbench DUT generics
	constant Clk_fr     : integer := 100_000_000;
	constant Baudrate   : integer := 1000000;
	constant Parity     : integer := 0;
	constant Stop_bit   : integer := 1;
	constant Data_width : integer := 8;

	-- Testbench DUT ports
	signal clk  : std_logic;
	signal rx_i : std_logic:='1';
	signal rx : std_logic;
	signal TX_O : std_logic;
-- constant c_baud115200	: time := 8.68 us;
constant c_baud115200	: time := 1 us;

constant c_hex43		: std_logic_vector ( 9 downto 0) := '1'  & "01111101" & '0';
constant c_hexA5		: std_logic_vector (9 downto 0) := '1' & x"A5" & '0';

	-- Other constants
	constant C_CLK_PERIOD : time := 10 ns; -- NS
	constant c_clkperiod	: time := 10 ns;

begin
	-----------------------------------------------------------
	-- Clocks and Reset
	-----------------------------------------------------------
	rx<=NOT rx_i;
	CLK_GEN : process
	begin
		clk <= '1';
		wait for c_clkperiod /2;
		clk <= '0';
		wait for c_clkperiod /2;
	end process CLK_GEN;

	-----------------------------------------------------------
	-- Testbench Stimulus
	-----------------------------------------------------------
P_STIMULI : process begin
rx_i <= '1';
wait for c_clkperiod*1000;
for i in 0 to 9 loop
	rx_i <= c_hex43(i);
	wait for c_baud115200;
end loop;
wait for c_baud115200;
wait for 10 us;

for i in 0 to 9 loop
	rx_i <= c_hexA5(i);
	wait for c_baud115200;
end loop; 

wait for 20 us;

assert false
report "SIM DONE"
severity failure;

end process P_STIMULI;


	-----------------------------------------------------------
	-- Entity Under Test
	-----------------------------------------------------------
	DUT : entity work.Uart_Test
		generic map (
			Clk_fr     => Clk_fr,
			Baudrate   => Baudrate,
			Parity     => Parity,
			Stop_bit   => Stop_bit,
			Data_width => Data_width
		)
		port map (
			clk  => clk,
			RX_I => rx,
			TX_O => TX_O
		);

end architecture testbench;