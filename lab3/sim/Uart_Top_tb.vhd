

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

-----------------------------------------------------------

entity Uart_Top_tb is

end entity Uart_Top_tb;

-----------------------------------------------------------

architecture testbench of Uart_Top_tb is

	-- Testbench DUT generics
	constant Clk_fr     : integer := 50_000_000;
	constant Baudrate   : integer := 1_000_000;
	constant Parity     : integer := 0;
	constant Stop_bit   : integer := 1;
	constant Data_width : integer := 8;

	-- Testbench DUT ports
	signal clk      : std_logic;
	signal RX_I     : std_logic;
	signal rst      : std_logic:='0';
	signal data_in_o: std_logic_vector(7 downto 0);
	signal enable_read  : std_logic:='0';
	signal Busy_O   : std_logic;
	signal Ready_O  : std_logic:='0';
	signal TX_O     : std_logic;

constant c_clkperiod	: time := 5 ns;
-- constant c_baud115200	: time := 8.68 us;
constant c_baud115200	: time := 1 us;
constant c_hex43		: std_logic_vector ( 10 downto 0) := '1' &'1' & x"43" & '0';
constant c_hexA5		: std_logic_vector (9 downto 0) := '1' & x"A5" & '0';

begin
	-----------------------------------------------------------
	-- Clocks and Reset
	-----------------------------------------------------------
P_CLKGEN : process begin

clk	<= '0';
wait for c_clkperiod/2;
clk	<= '1';
wait for c_clkperiod/2;

end process P_CLKGEN;

	-----------------------------------------------------------
	-- Testbench Stimulus
	-----------------------------------------------------------

	-----------------------------------------------------------
	-- Entity Under Test
	-----------------------------------------------------------
	DUT : entity work.Uart_Top
		generic map (
			Clk_fr     => Clk_fr,
			Baudrate   => Baudrate,
			Parity     => Parity,
			Stop_bit   => Stop_bit,
			Data_width => Data_width
		)
		port map (
			clk      => clk,
			RX_I     => RX_I,
			rst      => rst,
			Data_I   => data_in_o,
			Enable_I => enable_read,
			Busy_O   => Busy_O,
			Ready_O  => enable_read,
			Data_O   => data_in_o,
			TX_O     => TX_O
		);
P_STIMULI : process begin
rx_i <= '1';
wait for c_clkperiod*10;
wait for c_clkperiod*1000;

for i in 0 to 10 loop
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



end architecture testbench;