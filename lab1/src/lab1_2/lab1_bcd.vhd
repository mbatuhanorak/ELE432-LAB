library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;
entity lab1_bcd is
port (
    rst                 : in std_logic                                 ;
    clk_s               : in std_logic                                 ;--clk
    h_o                 : out std_logic_vector(6 downto 0)            );--HX_LD
end entity;                                                                          
architecture behavioral of lab1_bcd is                                               
signal  bcd_w                : std_logic_vector(3 downto 0)            ;
signal  h_w                  : std_logic_vector(6 downto 0)            ;
begin
lab1bcd:entity work.lab1_bcd_counter
  port map(
    clk                      =>clk_s                                    ,
    rst                      =>rst                                      ,
    bcd_out                  => bcd_w                                  );  
hex:entity work.hex_encoder
 port map (
      vin                  => bcd_w                                     ,
    hout                  => h_o                                       );
end behavioral                                                          ;
