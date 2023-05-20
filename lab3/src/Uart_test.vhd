library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

-----------------------------------------------------------
entity Uart_Test is
	generic (
		Clk_fr     : integer := 50_000_000;
		Baudrate   : integer := 115200;
		Parity     : integer := 0;
		Stop_bit   : integer := 1;
		Data_width : integer := 8
	);
	port (
		clk      : in  std_logic;
		RX_I     : in  std_logic;-- AB21 rx-GPIO_12--sol üst 2 ikinci             gpio 034(ag18) 0 olan en alt sol button tx
		TX_O     : out std_logic);--AA21 tx GPIO_11--sağ üst köşed ilk olan       gpio 035(aj21) 0 olan en alt sağ button 
end entity Uart_Test;

-----------------------------------------------------------

architecture Rtl of Uart_Test is
signal rst      :  std_logic;
signal rx_n_w :  std_logic;
signal T_Data_w :  std_logic_vector(7 downto 0);
signal En_Data_Re_r  :  std_logic;
signal Busy_O  :  std_logic;
begin
rst<='0';
rx_n_w <= not RX_I;
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
			RX_I     => rx_n_w,
			rst      => rst,
			Data_I   => T_Data_w,
			Enable_I => En_Data_Re_r,
			Busy_O   => Busy_O,
			Ready_O  => En_Data_Re_r,
			Data_O   => T_Data_w,
			TX_O     => TX_O
		);

end  Rtl;