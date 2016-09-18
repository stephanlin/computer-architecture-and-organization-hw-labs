LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SRAM4 is
	port( Din : in STD_LOGIC_VECTOR(3 downto 0); 
	      CS, WE    : in STD_LOGIC;
	      Q : out STD_LOGIC_VECTOR(3 downto 0) );
end SRAM4 ;

architecture behav of SRAM4  is
component SRAM is
	port( Din, CS, WE    : in STD_LOGIC;
	      Q : out STD_LOGIC );
end component;

   signal ans : std_logic_vector(3 downto 0);
  
begin
	

	s4_s0: SRAM port map (Din(0), CS, WE, ans(0));
	s4_s1: SRAM port map (Din(1), CS, WE, ans(1));
	s4_s2: SRAM port map (Din(2), CS, WE, ans(2));
	s4_s3: SRAM port map (Din(3), CS, WE, ans(3));

	Q(3) <= ans(3) when (CS = '1') else 'Z';
	Q(2) <= ans(2) when (CS = '1') else 'Z';
	Q(1) <= ans(1) when (CS = '1') else 'Z';
	Q(0) <= ans(0) when (CS = '1') else 'Z';
end behav;

