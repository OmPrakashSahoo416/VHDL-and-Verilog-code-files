library ieee;
use ieee.std_logic_1164.all;

entity mag_comp_4b_tst is
  
end mag_comp_4b_tst;

architecture beh of mag_comp_4b_tst is

component mag_comp_4b
  port (
    a, b : in  std_logic_vector(3 downto 0);                     -- inputs
    ag,bg,eq    : out std_logic);                    -- output
end component;
signal a_s,b_s : std_logic_vector(3 downto 0);
signal ag_s,bg_s,eq_s : std_logic;
  
begin  -- beh

  u1 : mag_comp_4b port map (
    a => a_s,
    b => b_s,
    ag => ag_s,
    eq => eq_s,
    bg => bg_s);
  tst_p:process
    begin
      a_s<="1111";
      b_s<="0000";
      wait for 100 ns;
       a_s<="1010";
      b_s<="1100";
      wait for 100 ns;
       a_s<="1001";
      b_s<="0011";
      wait for 100 ns;
       a_s<="1000";
      b_s<="1000";
      wait for 100 ns;

    end process;

end beh;

