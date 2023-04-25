

library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;
entity lab1_alu is
port (
		rst		              : in std_logic														   ;
		A_i                    : in std_logic_vector(2 downto 0)								   ;
		B_i                    : in std_logic_vector(2 downto 0)									;
		Sel_i                  : in std_logic_vector(3 downto 0)									;
		Y_o		              : out std_logic_vector(3 downto 0)							  );

end entity;

architecture rtl of lab1_alu is

signal y_r                   : std_logic_vector(3 downto 0)							         ;																	 
signal A_r                   : std_logic_vector(3 downto 0)									   ;
signal B_r                   : std_logic_vector(3 downto 0)									   ;																
signal Sel_r                 : std_logic_vector(3 downto 0)									   ;

begin
--combinatinal
	A_r							  <= '0' & A_i																;	
	B_r							  <= '0' & B_i															   ;
	Sel_r							  <= Sel_i																	;
   Y_o                       <= y_r																	   ;
	process(A_r,B_r,Sel_r,rst)
	begin
		if(rst='0') then
		   y_r                 <=  x"0"														  		   ;     
		else
         case Sel_r is
          --arith	
				when    x"0"=>
         		y_r     		  <=  A_r                                                   ;
         	when    x"1"=>
         		y_r     		  <=  A_r+1                                                 ;
         	when    x"2"=>
         		y_r     		  <=  A_r-1                                                 ;
         	when    x"3"=>
         		y_r     		  <=  B_r                                                   ;
         	when    x"4"=>
         		y_r     		  <=  A_r+B_r                                               ;
         	when    x"5"=>
         		y_r     		  <=  A_r-B_r                                               ;
         	when    x"6"=>
				  y_r <=std_logic_vector(to_unsigned((to_integer(unsigned(A_r)) * to_integer(unsigned(B_r))),4)) ;
         	when    x"7"=>
         		y_r     		  <=  x"0"														  		   ;
			  --logic
         	when    x"8"=>
         		y_r     		  <=  '0' & (not A_r(2 downto 0) )                          ;
         	when    x"9"=>
         		y_r     		  <=  '0' & (not B_r(2 downto 0) )                          ;
         	when    x"a"=>
         		y_r    		  <=  A_r and B_r                                           ;
         	when    x"b"=>
         		y_r     		  <=  A_r or B_r                                            ;
         	when    x"c"=>
         		y_r     		  <=  A_r xnor B_r                                          ;
         	when    x"d"=>
         		y_r     		  <=  A_r xor B_r                                           ;
         	when    x"e"=>
				  y_r            <=  A_r nor B_r                                           ;
         	when    x"f"=>
         		y_r     		  <=  A_r nand B_r                                          ;
				
         	when others =>

					null                                                                    ;
         end case                                                                      ;	
		end if                                                                           ;
	end process                                                                         ;
	

end rtl                                                                                ;
