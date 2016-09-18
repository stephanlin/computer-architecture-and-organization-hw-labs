LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SR_latch is
	port( S, R    : in STD_LOGIC;
	      Q, notQ : buffer STD_LOGIC );
end SR_latch;

architecture behav of SR_latch is
begin
	Q <= (R NOR notQ);  
	notQ <= (S NOR Q);
end behav;