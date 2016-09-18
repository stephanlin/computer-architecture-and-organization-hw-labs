LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Master_Slave_Dff is
	port( D, C    : in STD_LOGIC;
	      Q, notQ : buffer STD_LOGIC );
end Master_Slave_Dff;

architecture behav of Master_Slave_Dff is
component D_latch is
  port( D, C    : in STD_LOGIC;
	      Q, notQ : buffer STD_LOGIC );
end component;
   signal Cm, Cs, Qm, Qs, NQm, NQs : std_logic;
     
begin
	Cm <= C;
	Cs <= not C;

	ms_dff0: D_latch port map (D, Cm, Qm, NQm);
	ms_dff1: D_latch port map (Qm, Cs, Qs, NQs);
	
	Q <= Qs;
	notQ <= NQs;
	
end behav;
