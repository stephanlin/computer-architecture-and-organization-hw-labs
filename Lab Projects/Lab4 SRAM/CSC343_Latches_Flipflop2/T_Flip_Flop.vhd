LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity T_Flip_Flop is
	port( T, C    : in STD_LOGIC;
	      Q : buffer STD_LOGIC );
end T_Flip_Flop ;

architecture behav of T_Flip_Flop  is
component Positive_Dff is
  port( D, C    : in STD_LOGIC;
	      Q, notQ : buffer STD_LOGIC );
end component;

   signal Din, Q1 : std_logic;
     
begin
	Din <= T xor Q;	

	Tff0: Positive_Dff port map (Din, C, Q1);
	
	Q <= Q1;
	
end behav;

