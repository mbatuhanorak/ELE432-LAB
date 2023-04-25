library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;
entity overlap_sequence_detector is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           input_bit : in  STD_LOGIC;
           output_s : out  STD_LOGIC);
end overlap_sequence_detector;
architecture Behavioral of overlap_sequence_detector is
    type state_type is (S0, S1, S2, S3);
    signal current_state, next_state : state_type;
begin
    -- State transition logic
    process (clk, reset)
    begin
        if reset = '1' then
            current_state <= S0;
        elsif rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process;
    -- Output logic
    process (current_state, input_bit)
    begin
        case current_state is
            when S0 =>
                 output_s <= '0';
                if input_bit = '1' then
                    next_state <= S1;
                else
                    next_state <= S0;
                end if;
            when S1 =>
                 output_s <= '0';
                if input_bit = '0' then
                    next_state <= S2;
                else
                    next_state <= S1;
                end if;
            when S2 =>
                output_s <= '0';
                if input_bit = '1' then
                    next_state <= S3;
                else
                    next_state <= S0;
                end if;
            when S3 =>
                output_s <= '1';
                if input_bit = '1' then
                    next_state <= S1;
                    
                else
                    next_state <= S2;
                end if;
            when others =>
                next_state <= S0;
        end case;
    end process;
end Behavioral;