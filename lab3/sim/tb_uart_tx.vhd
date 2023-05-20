library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity tb_uart_tx is
generic (
Clk_fr		: integer := 100_000_000;
Baudrate		: integer := 10_000_000;
Stop_bit		: integer := 1     ;
Data_width      : integer := 8      ;
 Parity         : integer := 2      
);
end tb_uart_tx;

architecture Behavioral of tb_uart_tx is



signal clk				: std_logic := '0';
signal rst				: std_logic := '0';
signal din_i			: std_logic_vector (7 downto 0) := (others => '0');
signal tx_start_i		: std_logic := '0';
signal tx_o				: std_logic;
signal tx_done_tick_o	: std_logic;

constant c_clkperiod	: time := 10 ns;

begin
tx:entity work.Uart_TX
generic map( 
     Clk_fr		    =>Clk_fr	,        	
     Baudrate	    =>Baudrate	,
	 Parity         =>Parity    ,
	 Stop_bit	    =>Stop_bit	,
     Data_width	    =>Data_width     ) 
  port map(
     clk          =>clk       ,
	 rst          =>rst       ,
	 Data_I       =>din_i    ,
	 Enable_I     =>tx_start_i  ,		
	 TX_O         =>tx_o      ,
	 Busy_o      =>tx_done_tick_o   );
P_CLKGEN : process begin

clk	<= '0';
wait for c_clkperiod/2;
clk	<= '1';
wait for c_clkperiod/2;

end process P_CLKGEN;

P_STIMULI : process begin

din_i			<= x"00";
tx_start_i		<= '0';

wait for c_clkperiod*10;

din_i		<= x"51";
tx_start_i	<= '1';
wait for c_clkperiod;
tx_start_i	<= '0';

wait for 1.2 us;

din_i		<= x"A3";
tx_start_i	<= '1';
wait for c_clkperiod;
tx_start_i	<= '0';

wait until (rising_edge(tx_done_tick_o));

wait for 1 us;

assert false
report "SIM DONE"
severity failure;


end process P_STIMULI;


end Behavioral;