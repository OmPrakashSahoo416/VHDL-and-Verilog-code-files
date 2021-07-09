library ieee;
 use ieee.std_logic_1164.all;
use ieee.std_logic_ARITH.ALL;
use ieee.std_logic_UNSIGNED.ALL;

 entity full_adder is
	 port ( a,b,c : in std_logic;
	 sum,carry: out std_logic
	 );
 end full_adder;
 architecture behavioral of full_adder is
  begin
sum <= a xor b xor c;
carry <= (a and b) or (b and c) or (c and a); 
end behavioral;	 
	
