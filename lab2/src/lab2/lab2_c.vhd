library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;
entity lab2_c is
port (
		rst		              : in std_logic														                   ;--
		clk		              : in std_logic														                   ;--
		A_i                    : in std_logic_vector(2 downto 0)								         ;--
		B_i                    : in std_logic_vector(2 downto 0)									       ;--
		load_A_i					  : in std_logic														                   ;--
		load_B_i					  : in std_logic														                   ;--
		ALu_A_i                : in std_logic_vector(3 downto 0)								         ;--
		ALu_B_i                : in std_logic_vector(3 downto 0)									       ;--
		Sel_i                  : in std_logic                                            ;                        					  
		A_o                    : out std_logic_vector(3 downto 0)							           ;
		B_o                    : out std_logic_vector(3 downto 0)							  )        ;-- 
end entity;
architecture behavioral of lab2_c is
signal m_A_i               : std_logic_vector(3 downto 0)									           ;---
signal m_B_i               : std_logic_vector(3 downto 0)									           ;---
signal m_A_r               : std_logic_vector(3 downto 0)									           ;---
signal m_B_r               : std_logic_vector(3 downto 0)									           ;---
begin
with Sel_i select m_A_i    <=  ALu_A_i when '0', ('0'& A_i)  when '1'  ,('0'& A_i)  when others   ; -- 
with Sel_i select m_B_i    <=  ALu_B_i when '0', ('0'& B_i)  when '1', ('0'& A_i)  when others    ; -- 
A_o                        <=  m_A_r 		                                             ;																					           
B_o                        <=  m_B_r 		                                             ;	
	
process (clk)
  begin
    if (rising_edge(clk)) then
    	if rst='0' then
		  m_A_r              <=(others=>'0')													                    ;
		  m_B_r              <=(others=>'0')													                   ;
		else
		  if (load_A_i='0') then
		    m_A_r              <= m_A_i                                                  ;
		  else
		    m_A_r              <= m_A_r                                                  ;
		  end if																									                       ;
		  
		  if (load_B_i='0') then
		    m_B_r              <= m_B_i                                                  ;
		  else
		    m_B_r              <= m_B_r                                                  ;
		  end if																									                       ;
		end if																									                         ;
		
    end if																										                       ;
 end process																									                       ;
end behavioral                                                                       ;