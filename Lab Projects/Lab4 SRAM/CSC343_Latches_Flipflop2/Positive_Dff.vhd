LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Positive_Dff is
	port( D, C    : in STD_LOGIC;
	      Q, notQ : buffer STD_LOGIC );
end Positive_Dff;

architecture behav of Positive_Dff is
component D_latch is
  port( D, C    : in STD_LOGIC;
	      Q, notQ : buffer STD_LOGIC );
end component;
   signal C1, C2, Q1, Q2, NQ1, NQ2 : std_logic;
     
begin
	C1 <= not C;
	C2 <= C;

	p_dff0: D_latch port map (D, C1, Q1, NQ1);
	p_dff1: D_latch port map (Q1, C2, Q2, NQ2);
	
	Q <= Q2;
	notQ <= NQ2;
	
end behav;

