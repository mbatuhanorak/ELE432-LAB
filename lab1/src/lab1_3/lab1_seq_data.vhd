library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;
entity lab1_seq_data is
 Port ( 
 	clk : in  STD_LOGIC;
 	reset : in  STD_LOGIC;
    enable : in  STD_LOGIC;
    data_i : in  std_logic_vector( 7 downto 0 );
    data_o : out  STD_LOGIC);
end entity lab1_seq_data;
architecture behavioral of lab1_seq_data is
signal data_count : integer:=0;
signal data_r : std_logic;
begin
data_p : process(clk) is
begin
	if (rising_edge(clk)) then
	   if (reset='1') then	
        data_count<=0;
        data_r    <='0';
	   else
	     if (enable='1') then
	       
	       if data_count=8 then
	       	data_count<=0;
	       	data_r<=data_i(0);
	       else 	
	         data_r<=data_i(data_count);
	         data_count<= data_count+1 ;
	       end if                     ; 
        end if                        ;
       end if;
   	end if                         ;
end process; -- data_p
data_o  <=data_r;
end architecture behavioral;
