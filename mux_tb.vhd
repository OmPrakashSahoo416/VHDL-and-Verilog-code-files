library ieee;
use ieee.std_logic_1164.ALL;
entity tb_mux is
end tb_mux;
 
architechture behavioral of tb_mux is
 
       component mux_4to1
    port(
         A : in std_logic;
         B : in  std_logic;
         C : in  std_logic;
         D : in  std_logic;
         S0 : in  std_logic;
         S1 : in  std_logic;
         Z : out  std_logic
        );
    end component;
 
   ? Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C : std_logic := '0';
   signal D : std_logic := '0';
   signal S0 : std_logic := '0';
   signal S1 : std_logic := '0';
 
   signal Z : std_logic;
 
begin
     
   uut: mux_4to1 PORT MAP (
          A => A,
          B => B,
          C => C,
          D => D,
          S0 => S0,
          S1 => S1,
          Z => Z
        );
 
   stim_proc: process
   begin
      wait for 100 ns; 
 
    A <= '1';
    B <= '0';
    C <= '1';
    D <= '0';       
 
    S0 <= '0'; S1 <= '0';
 
      wait for 100 ns; 
 
    S0 <= '1'; S1 <= '0';
 
      wait for 100 ns; 
 
    S0 <= '0'; S1 <= '1';
 
        wait for 100 ns;   
 
    S0 <= '0'; S1 <= '1';  
 
        wait for 100 ns;   
 
    end process;
 
end;

