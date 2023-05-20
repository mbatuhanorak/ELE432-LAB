

library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;

entity Uart_TX is
  generic( 
     Clk_fr			 : integer :=  50_000_000                                     ;
     Baudrate	    : integer :=  115_200                                       ;
	  Parity        : integer :=  0                                            ;--none odd even
	  Stop_bit	    : integer :=  1														   ;
     Data_width	 : integer :=  8														  );
  port(
     clk           : in std_logic                      							   ;
	  rst           : in std_logic                      							   ;
	  Data_I        : in std_logic_vector(7 downto 0)								   ;
	  Enable_I      : in std_logic                      							   ;
	  Busy_O        : out  std_logic  						                        ;
	  TX_O          : out std_logic  						                        );
end Uart_TX;


architecture Rtl of Uart_TX is

constant c_lim     : integer :=Clk_fr/Baudrate	                              ;
constant c_s_lim   : integer :=(Clk_fr/Baudrate)*Stop_bit	                  ;
type   state       is     (S_IDLE, S_START, S_DATA,S_PARITY,S_STOP)           ;
signal tx_state    : state                                                    ;

signal count       : integer range 0 to  (Clk_fr/Baudrate)*Stop_bit	         ; 
signal sht_count   : integer range 0 to  9           			                  ; 
signal TX_r        : std_logic                                               ;
signal TX_done_r   : std_logic                                               ;
signal temp_r      : std_logic_vector(7 downto 0)                            ;
signal busy_r	   : std_logic                                               ;	

begin
TX_O               <=TX_r                                                     ;
Busy_O             <=busy_r                                                   ;
  process(clk)
  begin 
     if rising_edge(clk) then
  	    if rst ='1' then
  	      count     <= 0                                                       ;
			tx_state  <= S_IDLE                                                  ;
			sht_count <= 0                                                       ;
			TX_done_r   <= '0'                                                     ;
			busy_r     <= '0'                                                     ;
  	    else
		   case tx_state is
	        when S_IDLE  =>
			     count     <= 0                                                  ;
				  TX_r      <= '1'                                                ;
				  sht_count <= 1                                                  ;
				  TX_done_r   <= '0'                                                ;
				  busy_r    <='0'                                               ;
				  if Enable_I='1' then 
				    tx_state  <= S_START                                          ;
				    busy_r    <='1'                                               ;
					 temp_r    <=Data_I                                            ;
					 TX_r     <='0'                                                ; 
				  end if;
	        when S_START =>
			    if count = c_lim-1 then
				   tx_state  <= S_DATA                                            ;
					TX_r      <=temp_r(0)                                          ;
					count	    <=0                                                  ;
				 else
               count	    <=count +1                                           ;	 
				 end if;
		 
			  
			  when S_DATA  =>
			   if sht_count = Data_width then
				  	if count = c_lim-1 then
					  sht_count <= 1                                                   ;
					  if Parity =0 then
				       TX_r    <='1'                                                ; 
					    tx_state <= S_STOP                                            ;
				     elsif Parity =1  then
					     TX_r<= not  (temp_r(7) xor temp_r(6) xor temp_r(5) xor temp_r(4) xor  temp_r(3) xor temp_r(2) xor  temp_r(1) xor temp_r(0));
						  tx_state  <= S_PARITY                                      ; 
					  elsif Parity =2  then
					     TX_r<= temp_r(7) xor temp_r(6) xor temp_r(5) xor temp_r(4) xor temp_r(3) xor temp_r(2) xor  temp_r(1) xor temp_r(0);
				       tx_state  <= S_PARITY                                      ; 
					  else
					  end if; 
					 count	    <=0                                               ;
				   else
                 count	   <=count +1                                         ;	 
				   end if;
		      else		
			      if count = c_lim-1 then
				 	 TX_r      <=temp_r(sht_count)                               ;
				 	 sht_count <= sht_count +1                                     ;
					 count	    <=0                                               ;
				   else
                 count	   <=count +1                                         ;	 
				   end if;
			   end if;
			  when S_PARITY =>
			    	if count = c_lim-1 then 	
					  tx_state  <= S_STOP                                            ;
					 count	    <=0                                               ;
					 TX_r    <='1'                                                ; 
				   else
                 count	   <=count +1                                         ;	 
				   end if;
			  
			  
			  when S_STOP  =>
			    if count = c_s_lim-1 then
				   tx_state  <= S_IDLE                                            ;
					TX_done_r   <= '1'                                               ;
					count     <=  0                                               ;
					 busy_r    <='0'                                               ;
				 else
				   
               count	    <=count +1                                           ;	 
				 end if;
		        TX_r    <='1'                                                ; 
			  
			  
	        when others =>
			    null;
         end case;
   
		 
  	    
  	    end if                                                                 ;
  	end if                                                                     ;
  end process                                                                 ;



end Rtl;

