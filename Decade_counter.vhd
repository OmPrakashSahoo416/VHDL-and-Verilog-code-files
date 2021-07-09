library ieee;

use ieee.std_logic_1164.all;

use ieee.std_logic_arith.all;

entity counter2 is

port(clk,rst : in std_logic;

count : out unsigned(3 downto 0));

end counter2;

architecture counter2_bhv of counter2 is

signal reg : unsigned(3 downto 0);

begin

process(clk,rst)

begin

if rst='1' or reg="1010" then

reg <= "0000";

elsif (clk'EVENT) and (clk='1') then

reg <= reg + "0001";

end if;

end process;

count <= reg;

end counter2_bhv;
