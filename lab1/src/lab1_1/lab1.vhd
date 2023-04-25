library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;
entity lab1 is
port (
		rst		            : in std_logic			        ;--BT0
		A_i                   : in std_logic_vector(2 downto 0)   ;--sw5-4-3
		B_i                   : in std_logic_vector(2 downto 0)   ;--sw2-1-0
		Sel_i                 : in std_logic_vector(3 downto 0)   ;--sw9-8-7-6
		h_o		            : out std_logic_vector(6 downto 0) );--HX_LD
end entity;	
architecture behavioral of lab1 is	
signal  y_w                   : std_logic_vector(3 downto 0)	   ;
signal  h_w                   : std_logic_vector(6 downto 0)	   ;
begin	
lab1:entity work.lab1_alu 	
port map (	
		rst		              => rst		              	   ,
		A_i                    => A_i                    		   ,
		B_i                    => B_i                    		   ,
		Sel_i                  => Sel_i                  		   ,
		Y_o		              => y_w		              	  );
hex:entity work.hex_encoder	
 port map (	
      vin	                 => y_w                                   ,
		hout 		         => h_o		              	  );
end behavioral                                                      ;