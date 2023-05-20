--------------------------------------------------------------------------------
-- Title       : <Title Block>
-- Project     : Default Project Name
--------------------------------------------------------------------------------
-- File        : Uart_top_l_tb.vhd
-- Author      : User Name <user.email@user.company.com>
-- Company     : User Company Name
-- Created     : Sat May 20 22:23:28 2023
-- Last update : Sat May 20 22:57:18 2023
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

entity Uart_top_l_tb is

end entity Uart_top_l_tb;

-----------------------------------------------------------

architecture testbench of Uart_top_l_tb is

	-- Testbench DUT generics
	constant Clk_fr     : integer := 100_000_000;
	constant Baudrate   : integer := 10_000_000;
	constant Parity     : integer := 0;
	constant Stop_bit   : integer := 1;
	constant Data_width : integer := 8;

	-- Testbench DUT ports
	signal clk           : std_logic;
	signal tx_en_top     : std_logic;
	signal tx_data_i_top : std_logic_vector (7 downto 0);
	signal tx_done_o_top : std_logic;
	signal rx_done_o_top : std_logic;
	signal led_out1      : std_logic_vector (6 DOWNTO 0);
	signal led_out2      : std_logic_vector (6 DOWNTO 0);

	-- Other constants
	constant C_CLK_PERIOD : time := 10 ns; -- NS
	constant c_clkperiod	: time := 10 ns;
begin
	-----------------------------------------------------------
	-- Clocks and Reset
	-----------------------------------------------------------
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
	identifie : process 
	begin
		wait for c_clkperiod*10;
		tx_en_top<='1';
		tx_data_i_top<=x"FF";
		wait for c_clkperiod;
		tx_en_top<='0';
		wait for c_clkperiod*130;
		tx_en_top<='1';
		tx_data_i_top<=x"e5";
		wait for c_clkperiod;
		tx_en_top<='0';
	    wait for c_clkperiod*130;
		tx_en_top<='1';
		tx_data_i_top<=x"de";
		wait for c_clkperiod;
		tx_en_top<='0';
	    wait for c_clkperiod*130;
		tx_en_top<='1';
		tx_data_i_top<=x"af";
		wait for c_clkperiod;
		tx_en_top<='0';
	    wait for c_clkperiod*130;
		tx_en_top<='1';
		tx_data_i_top<=x"c1";
		wait for c_clkperiod;
		tx_en_top<='0';
	    wait for c_clkperiod*130;
		tx_en_top<='1';
		tx_data_i_top<=x"b4";
		wait for c_clkperiod;
		tx_en_top<='0';








	end process; -- identifier

	-----------------------------------------------------------
	-- Entity Under Test
	-----------------------------------------------------------
	DUT : entity work.Uart_top_l
		generic map (
			Clk_fr     => Clk_fr,
			Baudrate   => Baudrate,
			Parity     => Parity,
			Stop_bit   => Stop_bit,
			Data_width => Data_width
		)
		port map (
			clk           => clk,
			tx_en_top     => tx_en_top,
			tx_data_i_top => tx_data_i_top,
			tx_done_o_top => tx_done_o_top,
			rx_done_o_top => rx_done_o_top,
			led_out1      => led_out1,
			led_out2      => led_out2
		);

end architecture testbench;