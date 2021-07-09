library ieee;
use ieee.std_logic_1164.all;

entity mag_comp_4b is
  port (
    a, b       : in  std_logic_vector(3 downto 0);       -- inputs
    ag, bg, eq : out std_logic);                         -- ag if a > b, bg if b > a, eq if a=b

end mag_comp_4b;

architecture behav of mag_comp_4b is

begin
 process (a,b)
  begin
   if (a > b) then
    ag <= '1';
    bg <= '0';
    eq <= '0';
   elsif (b > a) then
    ag <= '0';
    bg <= '1';
    eq <= '0';
   else
    ag <= '0';
    bg <= '0';
    eq <= '1';
   end if;
  end process;
end behav;

