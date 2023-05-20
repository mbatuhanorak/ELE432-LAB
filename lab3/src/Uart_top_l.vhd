

library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;

entity Uart_top_l is
  generic( 
     Clk_fr			 : integer :=  50_000_000                                     ;
     Baudrate	    : integer :=  115_200                                       ;
	  Parity        : integer :=  0                                            ;--none odd even
	  Stop_bit	    : integer :=  1														   ;
     Data_width	 : integer :=  8														  );
port (
		clk   			: in std_logic ;
		tx_en_top     	: in  std_logic;
		tx_data_i_top 	: in std_logic_vector  (7 downto 0);
		tx_done_o_top	: out std_logic;
		rx_done_o_top  	: out std_logic;
		led_out1		: out std_logic_vector (6 DOWNTO 0);
		led_out2		: out std_logic_vector (6 DOWNTO 0)
);
end Uart_top_l;


architecture Rtl of Uart_top_l is


signal tx_w : std_logic;
signal rst : std_logic:='0';
signal rx_data_signal 	 : std_logic_vector(7 downto 0) 	  := x"00";
signal hex_in1		 	 : std_logic_vector(3 DOWNTO 0) 	  := rx_data_signal(3 downto 0); 
signal hex_in2		 	 : std_logic_vector(3 DOWNTO 0) 	  := rx_data_signal(7 downto 4); 
signal tx_data_o 		 : std_logic;

begin
	hex_in1<=rx_data_signal(3 downto 0);
	hex_in2<=rx_data_signal(7 downto 4); 
	
	Uart_TX_1 : entity work.Uart_TX
		generic map (
			Clk_fr     => Clk_fr,
			Baudrate   => Baudrate,
			Parity     => Parity,
			Stop_bit   => Stop_bit,
			Data_width => Data_width
		)
		port map (
			clk      => clk,
			rst      => rst,
			Data_I   => tx_data_i_top,
			Enable_I => tx_en_top,
			TX_O     => tx_w,
			Busy_O  => tx_done_o_top
		);

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
			RX_I    => tx_w,
			rst     => rst,
			Ready_O => rx_done_o_top,
			Data_O  => rx_data_signal
		);
	hex2led_1 : entity work.hex2led
		port map (
			HEX => hex_in1,
			LED => led_out1
		);	
	hex2led_2 : entity work.hex2led
		port map (
			HEX => hex_in2,
			LED => led_out2
		);			






end Rtl;

