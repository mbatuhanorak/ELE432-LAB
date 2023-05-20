

library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;

entity Uart_RX is
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
	  
	  Ready_O       : out  std_logic  						                        ; 
	  Data_O        : out std_logic_vector(7 downto 0)								  );
	  
end Uart_RX;




architecture Rtl of Uart_RX is

constant c_lim     : integer :=Clk_fr/Baudrate	                              ;
constant c_h_lim   : integer :=(Clk_fr/Baudrate)/2	                           ;
constant c_s_lim   : integer :=(Clk_fr/Baudrate)*Stop_bit	                  ;
type   state       is     (S_IDLE, S_START, S_DATA,S_PARITY,S_STOP)           ;
signal rx_state    : state                                                    ;

signal count       : integer range 0 to  c_s_lim         ; 
signal sht_count   : integer range 0 to  9           			                  ; 
signal RX_prev_r   : std_logic                                               ;
signal RX_r        : std_logic                                               ;
signal RX_prt_r   : std_logic                                               ;
signal RX_done   : std_logic                                               ;
signal busy_r	   : std_logic                                               ;	
signal temp_r      : std_logic_vector(Data_width -1 downto 0)                            ;



begin
RX_r               <=RX_I                                                   ;
Ready_O            <=RX_done                                                ;
Data_O             <=temp_r                                                 ;
  process(clk)
  begin 
     if rising_edge(clk) then
  	    if rst ='1' then
  	      count     <= 0                                                       ;
			rx_state  <= S_IDLE                                                  ;
			sht_count <= 0                                                       ;
			RX_prev_r <= '0'																		;
			RX_done   <='0'                                                      ; 	
			busy_r    <='0'                                                      ;
			temp_r    <= (others=>'0')                                           ;
  	    else
		  RX_prev_r<= RX_I															         ;
		   case rx_state is
	        when S_IDLE  =>
			     count     <= 1                                                  ;
				  sht_count <= 0                                                  ;
				  RX_prt_r  <= '0'															   ;
				  RX_done   <= '0'                                                ;
				  
				  busy_r    <='0'                                                 ;  
				  if RX_r = '0' and RX_prev_r = '1' then 
				    temp_r    <= (others=>'0')                                    ;
				    rx_state  <= S_START                                          ; 
					 busy_r    <='1'                                                ; 
				  end if;
	        when S_START =>
			    if count = c_h_lim-1 then
				   if RX_r ='0'	then 
					  rx_state  <= S_DATA                                          ;   
					else 
					   rx_state  <= S_IDLE                                          ; 
					end if;
					count	    <=0                                                  ;
				 else
               count	    <=count +1                                           ;	 
				 end if;
		 
			  
			  when S_DATA  =>
			   if sht_count = Data_width-1 then
				  	if count = c_lim-1 then

					  if Parity =0 then
				        rx_state <= S_STOP                                            ;
					 sht_count <= 0                                                   ;
				     elsif Parity =1  then
					     RX_prt_r<= not  (temp_r(7) xor temp_r(6) xor temp_r(5) xor temp_r(4) xor  temp_r(3) xor temp_r(2) xor  temp_r(1) xor temp_r(0));
						  rx_state  <= S_PARITY                                      ; 
						  sht_count <= 0                                                   ;
					  elsif Parity =2  then
					     RX_prt_r<= temp_r(7) xor temp_r(6) xor temp_r(5) xor temp_r(4) xor temp_r(3) xor temp_r(2) xor  temp_r(1) xor temp_r(0);
				        rx_state  <= S_PARITY                                      ; 
						  sht_count <= 0                                                   ;
					  else
					  end if; 
					  count	    <=0                                               ;
				   else
                 count	   <=count +1                                         ;	 
                  temp_r(sht_count)<= RX_r                                      ;
				   end if;
		      else		
			      if count = c_lim-1 then
				 	 temp_r(sht_count)<= RX_r                                      ;
				 	 sht_count <= sht_count +1                                     ;
					 count	    <=0                                               ;
				   else
                 count	   <=count +1                                         ;	 
				   end if;
			   end if;
				
			  when S_PARITY =>
			    	if count = c_lim-1 then 	
					  if RX_r =RX_prt_r	then 
					    rx_state  <= S_STOP                                       ;   
					  else 
					    rx_state  <= S_IDLE                                        ; 
					  end if                                                       ; 
					  count	    <=0                                               ;
				   else
                 count	   <=count +1                                         ;	 
				   end if;
			  
			  
			  when S_STOP  =>
			    if count = c_s_lim-1 then
				   if RX_r ='1'	then 
				     RX_done<='1'                                                 ; 	 
					else 
					   RX_done<='0'                                                ; 	 
					end if                                                         ; 
				   rx_state  <= S_IDLE                                            ;
					count     <=  0                                                ;
				 else
               count	    <=count +1                                           ;	 
				 end if;
		 
			  
			  
	        when others =>
			    null;
         end case;
   
		 
  	    
  	    end if                                                                 ;
  	end if                                                                     ;
  end process                                                                 ;



end Rtl;



