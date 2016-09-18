LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_latch is
	port( D, C    : in STD_LOGIC;
	      Q, notQ : buffer STD_LOGIC );
end D_latch;

architecture behav of D_latch is
begin
	process(D,C)
	begin
		if C='1' then
		Q <= D;  
		notQ <= not D;
		end if;
	end process;
end behav;