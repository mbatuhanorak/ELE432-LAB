library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_uart_rx is
generic (
Clk_fr		: integer := 100_000_000;
Baudrate		: integer := 1000000;
Stop_bit		: integer := 1     ;
Data_width      : integer := 8      ;
 Parity         : integer := 2    
);
end tb_uart_rx;
architecture Behavioral of tb_uart_rx is


signal clk				: std_logic := '0';
signal rx_i				: std_logic := '1';
signal dout_o			: std_logic_vector (7 downto 0);
signal  Ready_O         : std_logic;
signal rst           : std_logic:='0';
signal busy_o           : std_logic;


constant c_clkperiod	: time := 10 ns;
-- constant c_baud115200	: time := 8.68 us;
constant c_baud115200	: time := 1 us;
constant c_hex43		: std_logic_vector ( 10 downto 0) := '1' &'1' & x"43" & '0';
constant c_hexA5		: std_logic_vector (9 downto 0) := '1' & x"A5" & '0';


begin
	Uart_RX_1 : entity work.Uart_RX
		generic map (
			Clk_fr     => Clk_fr,
			Baudrate   => Baudrate,
			Parity     => Parity,
			Stop_bit   => Stop_bit,
			Data_width => Data_width
		)
		port map (
			clk     => clk,
			RX_I    => rx_i,
			rst     => rst,
			Ready_O => Ready_O,
			Data_O  => dout_o
		);	 
	 
	 

	

P_CLKGEN : process begin

clk	<= '0';
wait for c_clkperiod/2;
clk	<= '1';
wait for c_clkperiod/2;

end process P_CLKGEN;

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


end Behavioral;