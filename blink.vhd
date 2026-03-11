library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity blink is
    port (
        CLOCK_50 : in  std_logic;
        LEDR     : out std_logic_vector(9 downto 0)
    );
end blink;

architecture Behavioral of blink is

signal counter : unsigned(25 downto 0) := (others => '0');

begin

process(CLOCK_50)
begin
    if rising_edge(CLOCK_50) then
        counter <= counter + 1;
    end if;
end process;

LEDR(0) <= counter(25);

end Behavioral;