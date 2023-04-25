library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity lab1_bcd_counter is
  port (
    clk                      : in std_logic                                            ;
    rst                      : in std_logic                                            ;
    bcd_out                  : out std_logic_vector(3 downto 0)                       );
end entity;
architecture rtl of lab1_bcd_counter  is
  
  signal count               :integer   range 0 to 9                                   ;
begin
  process(clk, rst)
  begin
    if rst = '0' then
      count                  <= 0                                                      ;
   elsif rising_edge(clk) then
    if count = 9 then
        count                <= 0                                                      ;
      else
        count                <= count + 1                                              ;
      end if;
    
    end if;
   
  end process;
  bcd_out                    <= std_logic_vector(to_unsigned(count,4))                ;
end rtl                                                                               ;