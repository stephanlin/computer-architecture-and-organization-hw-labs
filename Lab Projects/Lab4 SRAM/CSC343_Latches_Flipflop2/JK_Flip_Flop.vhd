LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JK_Flip_Flop is
	port( J, K, C    : in STD_LOGIC;
	      Q : buffer STD_LOGIC );
end JK_Flip_Flop ;

architecture behav of JK_Flip_Flop  is
component Positive_Dff is
  port( D, C    : in STD_LOGIC;
	      Q, notQ : buffer STD_LOGIC );
end component;

   signal Din, Q1 : std_logic;
     
begin
	Din <= (J and not Q) or (not K and Q);	

	JKff0: Positive_Dff port map (Din, C, Q1);
	
	Q <= Q1;
	
end behav;
