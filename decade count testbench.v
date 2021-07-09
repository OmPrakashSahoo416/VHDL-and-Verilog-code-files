LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY cntr_tb IS
END cntr_tb;
 
ARCHITECTURE behavior OF cntr_tb IS 
 
 
    COMPONENT Counter
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    


   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

   signal q : std_logic_vector(3 downto 0);


   constant clk_period : time := 10 ns;
 
BEGIN

   uut: Counter PORT MAP (
          clk => clk,
          reset => reset,
          q => q
        );

   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;

   stim_proc: process
   begin		
      reset<='1';
      wait for 100 ns;	
		reset<='0';
      wait;
   end process;

END;
