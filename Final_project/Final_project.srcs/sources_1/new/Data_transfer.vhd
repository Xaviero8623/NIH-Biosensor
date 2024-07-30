library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Data_transfer is
    Port (
        clk            : in  STD_LOGIC;
        reset          : in  STD_LOGIC;
        adc_data       : in  STD_LOGIC_VECTOR (15 downto 0);
        s_axis_tdata   : out STD_LOGIC_VECTOR (15 downto 0);
        s_axis_tready  : in  STD_LOGIC;
        s_axis_tvalid  : out STD_LOGIC
    );
end Data_transfer;

architecture Behavioral of Data_transfer is
begin
    process(clk, reset)
    begin
        if reset = '1' then
            s_axis_tdata <= (others => '0');
            s_axis_tvalid <= '0';
        elsif rising_edge(clk) then
            if s_axis_tready = '1' then
                s_axis_tdata <= adc_data;
                s_axis_tvalid <= '1'; -- Data is valid when ready signal is high
            else
                s_axis_tvalid <= '0'; -- Data is not valid if ready signal is low
            end if;
        end if;
    end process;
end Behavioral;
