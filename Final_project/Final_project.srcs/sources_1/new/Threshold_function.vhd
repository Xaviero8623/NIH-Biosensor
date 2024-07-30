
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


-- declartion of threshold generator
entity Threshold_function is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           time_setting : in INTEGER range -32767 to 32767;
           threshold_output : out INTEGER range -128 to 128
          );
end Threshold_function;

architecture Behavioral of Threshold_function is

    -- declaration of blank array that can hold integers
    type sin_value_range is array (0 to 499) of INTEGER range -32767 to 32767;
    
    type test_array is array (0 to 3) of INTEGER range -32767 to 32767;
    
    -- inst of previous declaration using Randy's sin values from Sin1
    constant sin_values : sin_value_range := (
        0, 2, 3, 5, 6, 8, 10, 11, 13, 14, 16, 17, 19, 21, 22, 24, 25, 27, 28, 30, 32, 33, 35, 36, 38, 39, 41, 42, 44, 45, 47, 48, 50,
        51, 53, 54, 56, 57, 58, 60, 61, 63, 64, 65, 67, 68, 69, 71, 72, 73, 75, 76, 77, 78, 80, 81, 82, 83, 85, 86, 87, 88, 89, 90, 91,
        93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 105, 106, 107, 108, 109, 110, 111, 111, 112, 113, 114, 114, 115, 116,
        116, 117, 117, 118, 119, 119, 120, 120, 121, 121, 122, 122, 123, 123, 123, 124, 124, 124, 125, 125, 125, 126, 126, 126, 126, 126,
        127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 126, 126, 126, 126, 126, 125, 125, 125, 124, 124, 124,
        123, 123, 123, 122, 122, 121, 121, 120, 120, 119, 119, 118, 117, 117, 116, 116, 115, 114, 114, 113, 112, 111, 111, 110, 109, 108,
        107, 106, 105, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 91, 90, 89, 88, 87, 86, 85, 83, 82, 81, 80, 78, 77, 76,
        75, 73, 72, 71, 69, 68, 67, 65, 64, 63, 61, 60, 58, 57, 56, 54, 53, 51, 50, 48, 47, 45, 44, 42, 41, 39, 38, 36, 35, 33, 32, 30, 28,
        27, 25, 24, 22, 21, 19, 17, 16, 14, 13, 11, 10, 8, 6, 5, 3, 2, 0, -2, -3, -5, -6, -8, -10, -11, -13, -14, -16, -17, -19, -21, -22,
        -24, -25, -27, -28, -30, -32, -33, -35, -36, -38, -39, -41, -42, -44, -45, -47, -48, -50, -51, -53, -54, -56, -57, -58, -60, -61,
        -63, -64, -65, -67, -68, -69, -71, -72, -73, -75, -76, -77, -78, -80, -81, -82, -83, -85, -86, -87, -88, -89, -90, -91, -93, -94,
        -95, -96, -97, -98, -99, -100, -101, -102, -103, -104, -105, -105, -106, -107, -108, -109, -110, -111, -111, -112, -113, -114, -114,
        -115, -116, -116, -117, -117, -118, -119, -119, -120, -120, -121, -121, -122, -122, -123, -123, -123, -124, -124, -124, -125, -125,
        -125, -126, -126, -126, -126, -126, -127, -127, -127, -127, -127, -127, -127, -127, -127, -127, -127, -127, -127,-127, -127, -126,
        -126, -126, -126, -126, -125, -125, -125, -124, -124, -124, -123, -123, -123, -122, -122, -121, -121, -120, -120, -119, -119, -118,
        -117, -117, -116, -116, -115, -114, -114, -113, -112, -111, -111, -110, -109, -108, -107, -106, -105, -105, -104, -103, -102, -101,
        -100, -99, -98, -97, -96, -95, -94, -93, -91, -90, -89, -88, -87, -86, -85, -83, -82, -81, -80, -78, -77, -76, -75, -73, -72, -71,
        -69, -68, -67, -65, -64, -63, -61, -60, -58, -57, -56, -54, -53, -51, -50, -48, -47, -45, -44, -42, -41, -39, -38, -36, -35, -33,
        -32, -30, -28, -27, -25, -24, -22, -21, -19, -17, -16, -14, -13, -11, -10, -8, -6, -5, -3, -2
        );
    
    
    signal memory_value : INTEGER range 0 to 500 := 0; -- keeps track of placement in sin_values array
    signal current_sin_value : INTEGER range -32767 to 32767 := 0; -- current value being sent out on sin_values array
    signal timing_value : INTEGER range -32767 to 32767 := 0; -- used to count before taking next value
    begin
        -- Cycling through timing values and eventually memory values
        process(clk, reset)
        begin
            if reset = '1' then -- reset function
                memory_value <= 0;
                timing_value <= 0;
            elsif rising_edge(clk) then
                timing_value <= timing_value + 1; -- if clk rises then timing_value is incremented
                if timing_value >= time_setting then -- if bigger than predetermined value then memory is incremented and timing_value reset
                    timing_value <= 0;
                    memory_value <= memory_value + 1;
                        if memory_value < 500 then -- if memory value is bigger than 500 reset it, if not assign current value
                            current_sin_value <= sin_values(memory_value);
                        else
                            memory_value <= 0;
                        end if;
                    end if;
                end if;
            end process;
    threshold_output <= current_sin_value; -- send current value out
end Behavioral;