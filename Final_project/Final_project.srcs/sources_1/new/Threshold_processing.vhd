
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Threshold_processing is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           threshold_input : in INTEGER range -32767 to 32767;
           starting_value : in INTEGER range -32767 to 32767;
           calibration_value : in INTEGER range -32767 to 32767;
           LED_signal : out STD_LOGIC
           );
end Threshold_processing;

architecture Behavioral of Threshold_processing is
    signal current_value : INTEGER range 0 to 2100 := 0;
    signal total_value : INTEGER range -32767 to 32767 := threshold_input;
begin
    process (clk, reset)
    begin
        if reset = '1' then
            current_value <= starting_value;
            LED_signal <= '0';
        elsif rising_edge(clk) then
            if current_value = 2100 then
                current_value <= starting_value;                
            else
                current_value <= current_value + 1;               
            end if;           
            total_value <= threshold_input * 2 + calibration_value;
            if total_value > current_value then
               LED_signal <= '1';
            else 
                LED_signal <= '0';
            end if;                    
        end if;
    end process;
            


end Behavioral;
