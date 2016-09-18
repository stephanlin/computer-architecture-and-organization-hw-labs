LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SRAM16 is
	port( Din : in STD_LOGIC_VECTOR(15 downto 0); 
	      CS, WE    : in STD_LOGIC;
	      Q : out STD_LOGIC_VECTOR(15 downto 0) );
end SRAM16 ;

architecture behav of SRAM16  is
component SRAM is
	port( Din, CS, WE    : in STD_LOGIC;
	      Q : out STD_LOGIC );
end component;

   signal ans : std_logic_vector(15 downto 0);
  
begin
	

s16_s0: SRAM port map (Din(0), CS, WE, ans(0));
	s16_s1: SRAM port map (Din(1), CS, WE, ans(1));
	s16_s2: SRAM port map (Din(2), CS, WE, ans(2));
	s16_s3: SRAM port map (Din(3), CS, WE, ans(3));
	s16_s4: SRAM port map (Din(4), CS, WE, ans(4));
	s16_s5: SRAM port map (Din(5), CS, WE, ans(5));
	s16_s6: SRAM port map (Din(6), CS, WE, ans(6));
	s16_s7: SRAM port map (Din(7), CS, WE, ans(7));
	s16_s8: SRAM port map (Din(8), CS, WE, ans(8));
	s16_s9: SRAM port map (Din(9), CS, WE, ans(9));
	s16_s10: SRAM port map (Din(10), CS, WE, ans(10));
	s16_s11: SRAM port map (Din(11), CS, WE, ans(11));
	s16_s12: SRAM port map (Din(12), CS, WE, ans(12));
	s16_s13: SRAM port map (Din(13), CS, WE, ans(13));
	s16_s14: SRAM port map (Din(14), CS, WE, ans(14));
	s16_s15: SRAM port map (Din(15), CS, WE, ans(15));
	
	Q(15) <= ans(15) when (CS = '1') else 'Z';
	Q(14) <= ans(14) when (CS = '1') else 'Z';
	Q(13) <= ans(13) when (CS = '1') else 'Z';
	Q(12) <= ans(12) when (CS = '1') else 'Z';
	Q(11) <= ans(11) when (CS = '1') else 'Z';
	Q(10) <= ans(10) when (CS = '1') else 'Z';
	Q(9) <= ans(9) when (CS = '1') else 'Z';
	Q(8) <= ans(8) when (CS = '1') else 'Z';
	Q(7) <= ans(7) when (CS = '1') else 'Z';
	Q(6) <= ans(6) when (CS = '1') else 'Z';
	Q(5) <= ans(5) when (CS = '1') else 'Z';
	Q(4) <= ans(4) when (CS = '1') else 'Z';
	Q(3) <= ans(3) when (CS = '1') else 'Z';
	Q(2) <= ans(2) when (CS = '1') else 'Z';
	Q(1) <= ans(1) when (CS = '1') else 'Z';
	Q(0) <= ans(0) when (CS = '1') else 'Z';
end behav;

