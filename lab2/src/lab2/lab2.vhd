library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;
entity lab2 is
generic (
		Clk_div     : integer := 25_000_000
		);	
port (
		rst		             : in std_logic							     ;--BT0
		clk		             : in std_logic							     ;--clk
		A_i                    : in std_logic_vector(2 downto 0)		  	     ;--sw5-4-3
		B_i                    : in std_logic_vector(2 downto 0)		          ;--sw2-1-0
		load_A_i               : in std_logic							  	;
		load_B_i               : in std_logic							  	;
		Sel_i                  : in std_logic							     ;
		opcode_i               : in std_logic_vector(3 downto 0)		          ;--sw9-8-7-6<
		A_hx_o                 : out std_logic_vector(6 downto 0)		          ;--HX_A
		B_hx_o                 : out std_logic_vector(6 downto 0)		          ;--HX_B	
		led_Clock			   : out std_logic						          ;		
	     result_hx_o            : out std_logic_vector(6 downto 0)	              );-- hx result
		
end entity;
architecture behavioral of lab2 is
signal Alu_A_w               :  std_logic_vector(3 downto 0)			          ;
signal Alu_B_w               :  std_logic_vector(3 downto 0)			          ;
signal Alu_result_w          :  std_logic_vector(3 downto 0)			          ;
signal clk_w		         :  std_logic								     ;
begin
led_Clock                    <=clk_w                                                 ;
clock_divider_1 : entity work.clock_divider
generic map (
Clk_div    =>Clk_div)
port map (
	clk_50MHz => clk,
	rst       => rst,
	clk_out   => clk_w
);
A_hex:entity work.hex_encoder
 port map (
      vin	                 => Alu_A_w                                               ,
		hout 		              => A_hx_o		                            );
B_hex:entity work.hex_encoder                                 
 port map (                                                   
      vin	                 => Alu_B_w                                               ,
		hout 		              => B_hx_o		                            );
Rslt_hex:entity work.hex_encoder                              
 port map (                                                   
      vin	                 => Alu_result_w                                          ,
		hout 		              => result_hx_o		      		        );
															  
lab2_C:entity work.lab2_c                                     
port map  (                                                   
		rst		              =>rst		                                      , 
		clk		              =>clk_w		                                 , 
		A_i                    =>A_i                                             , 
		B_i                    =>B_i                                             , 
		load_A_i			   =>load_A_i                                        , 
		load_B_i			   =>load_B_i                                       ,
		ALu_A_i                =>Alu_result_w                                    , 
		ALu_B_i                =>Alu_result_w                                    , 
		Sel_i                  =>Sel_i                                           ,
		A_o                    =>Alu_A_w     				  			   ,	
		B_o                    =>Alu_B_w                                        );
alu:entity work.lab1_alu                                      
port map(                                                     
		rst		             =>rst		                                     ,					   
		A_i                    =>Alu_A_w (2 downto 0)                           ,  						   
		B_i                    =>Alu_B_w (2 downto 0)                           ,  							
		Sel_i                  =>opcode_i 	                                     ,						
		Y_o		             =>Alu_result_w				                );
end behavioral                                                                   ;