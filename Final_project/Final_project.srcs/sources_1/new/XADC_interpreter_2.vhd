
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity XADC_interpreter_2 is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           drdy_out : in STD_LOGIC;
           do_out : in STD_LOGIC_VECTOR (15 downto 0);
           daddr_in : out STD_LOGIC_VECTOR (6 downto 0);
           den_in : out STD_LOGIC;
           dwe_in : out STD_LOGIC;
           di_in : out STD_LOGIC_VECTOR (15 downto 0);
           adc_data : out STD_LOGIC_VECTOR (15 downto 0));
end XADC_interpreter_2;

architecture Behavioral of XADC_interpreter_2 is
    signal state       : std_logic_vector(1 downto 0) := "00";
    signal adc_value   : std_logic_vector(15 downto 0) := (others => '0');
    signal addr        : std_logic_vector(6 downto 0) := "0000011"; -- Address of the VP/VN register
begin
    process(clk, reset)
    begin
        if reset = '1' then
            state <= "00";
            daddr_in <= "0000000";
            den_in <= '0';
            dwe_in <= '0';
            di_in <= (others => '0');
            adc_data <= (others => '0');
        elsif rising_edge(clk) then
            case state is
                when "00" =>  -- Idle state
                    daddr_in <= addr; -- Set the address of the register you want to read
                    den_in <= '1'; -- Enable the DRP read operation
                    dwe_in <= '0'; -- Not a write operation
                    state <= "01";
                when "01" =>  -- Wait for DRDY signal
                    if drdy_out = '1' then
                        adc_value <= do_out; -- Capture the data output
                        den_in <= '0'; -- Disable the DRP operation
                        state <= "10";
                    end if;
                when "10" =>  -- Output the ADC value
                    adc_data <= adc_value; -- Output the captured ADC data
                    state <= "00"; -- Go back to idle state
                when others =>
                    state <= "00";
            end case;
        end if;
    end process;
end Behavioral;