library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
entity jobl is
	Port  ( S, R,CLK : in STD_LOGIC;
		Q,Qnot : out STD_LOGIC);
end jobl;

architecture Behavioral of jobl is

begin
process (CLK)
variable tmp:std_logic;
begin

if(CLK='1' and CLK'EVENT)then
if(S='0' and R='0')then 
tmp:=tmp;
elsif(S='1' and R='1')then
tmp:='Z';
Qnot<='Z';
elsif(S='0' and R='1')then
tmp:='0';
else
tmp:='1';
end if;
end if;
Q <=tmp;
Qnot <= not tmp;
end process;
end Behavioral;
