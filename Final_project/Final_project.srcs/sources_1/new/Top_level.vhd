library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Top_level is
    Port ( 
        clk_42MHz : in STD_LOGIC;
        clk_84MHz : in STD_LOGIC;
        clk_40MHz : in STD_LOGIC;
        reset : in STD_LOGIC;
        LED_1 : out STD_LOGIC;
        LED_2 : out STD_LOGIC;
        LED_3 : out STD_LOGIC;
        LED_4 : out STD_LOGIC;
        test_signal : out STD_LOGIC;
        combined_threshold_output : out STD_LOGIC_VECTOR(31 downto 0)
    );
end Top_level;

architecture Behavioral of Top_level is

    -- each of these are sin values to be generated in threshold function and used to determine if LED should flicker
    signal threshold_1 : INTEGER range -128 to 128 := 0;
    signal threshold_2 : INTEGER range -128 to 128 := 0;
    signal threshold_3 : INTEGER range -128 to 128 := 0;
    signal threshold_4 : INTEGER range -128 to 128 := 0;

    signal threshold_output_1 : STD_LOGIC_VECTOR(7 downto 0);
    signal threshold_output_2 : STD_LOGIC_VECTOR(7 downto 0);
    signal threshold_output_3 : STD_LOGIC_VECTOR(7 downto 0);
    signal threshold_output_4 : STD_LOGIC_VECTOR(7 downto 0);
    

begin
    -- declaration of threshold function to generate sin values
    cycle_1 : entity work.Threshold_function
    port map (
        clk => clk_42MHz,
        reset => reset,
        time_setting => 210,
        threshold_output => threshold_1
    );

    cycle_2 : entity work.Threshold_function
    port map (
        clk => clk_42MHz,
        reset => reset,
        time_setting => 168,
        threshold_output => threshold_2
    );

    cycle_3 : entity work.Threshold_function
    port map (
        clk => clk_42MHz,
        reset => reset,
        time_setting => 140,
        threshold_output => threshold_3
    );

    cycle_4 : entity work.Threshold_function
    port map (
        clk => clk_42MHz,
        reset => reset,
        time_setting => 120,
        threshold_output => threshold_4
    );
    
    LED_Pulse_1 : entity work.Threshold_processing
    port map (
        clk => clk_84MHz,
        reset => reset,
        threshold_input => threshold_1,
        starting_value => 0,
        calibration_value => 1844,
        LED_signal => LED_1
    );
    
    LED_Pulse_2 : entity work.Threshold_processing
    port map (
        clk => clk_84MHz,
        reset => reset,
        threshold_input => threshold_2,
        starting_value => 0,
        calibration_value => 525,
        LED_signal => LED_2
    );
    
    LED_Pulse_3 : entity work.Threshold_processing
    port map (
        clk => clk_84MHz,
        reset => reset,
        threshold_input => threshold_3,
        starting_value => 0,
        calibration_value => 1050,
        LED_signal => LED_3
    );
    
    LED_Pulse_4 : entity work.Threshold_processing
    port map (
        clk => clk_84MHz,
        reset => reset,
        threshold_input => threshold_4,
        starting_value => 1575,
        calibration_value => 1844,
        LED_signal => LED_4
    );
    
    Test_2 : entity work.Threshold_processing
    port map (
        clk => clk_84MHz,
        reset => reset,
        threshold_input => 986, -- 1972/2=986
        starting_value => 0,
        calibration_value => 0,
        LED_signal => test_signal
    );
    
-- this process combines the 8 bit threshold values into 1 32 bit threshold value
    process(clk_40MHz, reset)
    begin
        if rising_edge(clk_40MHz) then
            if reset = '1' then
                threshold_output_1 <= (others => '0');
                threshold_output_2 <= (others => '0');
                threshold_output_3 <= (others => '0');
                threshold_output_4 <= (others => '0');
                combined_threshold_output <= (others => '0');
            else
                threshold_output_1 <= std_logic_vector(to_unsigned(threshold_1, 8));
                threshold_output_2 <= std_logic_vector(to_unsigned(threshold_2, 8));
                threshold_output_3 <= std_logic_vector(to_unsigned(threshold_3, 8));
                threshold_output_4 <= std_logic_vector(to_unsigned(threshold_4, 8));
                combined_threshold_output <= threshold_output_4 & threshold_output_3 & threshold_output_2 & threshold_output_1;
            end if;
        end if;
    end process;

end Behavioral;
