library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;


entity Uart_Top is
  generic( 
     Clk_fr			 : integer :=  50000000                                     ;
     Baudrate	    : integer :=  115200                                       ;
	  Parity        : integer :=  0                                            ;--none odd even
	  Stop_bit	    : integer :=  1														   ;
     Data_width	 : integer :=  8														  );
  port(
     clk           : in std_logic                      							   ;
	  RX_I          : in std_logic  						                           ; 
	  rst           : in std_logic                      							   ; 
	  Data_I        : in std_logic_vector(7 downto 0)                          ;
	  Enable_I      : in std_logic                      							   ; 
	  Busy_O        : out  std_logic  						                        ; 
	  Ready_O       : out  std_logic  						                        ; 
	  Data_O        : out std_logic_vector(7 downto 0)								    ;
	  TX_O          :out  std_logic                                            );
	  
end Uart_Top;

architecture Rtl of Uart_Top is

begin 
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
			Data_I   => Data_I,
			Enable_I => Enable_I,
			TX_O     => TX_O,
			Busy_O  => Busy_O
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
			RX_I    => RX_I,
			rst     => rst,
			Ready_O => Ready_O,
			Data_O  => Data_O
		);




















end Rtl;
