LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SRAM16 is
	port( Din : in STD_LOGIC_VECTOR(15 downto 0); 
	      Rw, Ra, Rb, WE    : in STD_LOGIC;
	      Q : out STD_LOGIC_VECTOR(15 downto 0);
	      Qa : out STD_LOGIC_VECTOR(15 downto 0);
	      Qb : out STD_LOGIC_VECTOR(15 downto 0));
end SRAM16 ;

architecture behav of SRAM16  is
component SRAM is
	port( Din, CS, WE    : in STD_LOGIC;
	      Q : out STD_LOGIC );
end component;

   signal ans : std_logic_vector(15 downto 0);
  
begin
	

s16_s0: SRAM port map (Din(0), Rw, WE, ans(0));
	s16_s1: SRAM port map (Din(1), Rw, WE, ans(1));
	s16_s2: SRAM port map (Din(2), Rw, WE, ans(2));
	s16_s3: SRAM port map (Din(3), Rw, WE, ans(3));
	s16_s4: SRAM port map (Din(4), Rw, WE, ans(4));
	s16_s5: SRAM port map (Din(5), Rw, WE, ans(5));
	s16_s6: SRAM port map (Din(6), Rw, WE, ans(6));
	s16_s7: SRAM port map (Din(7), Rw, WE, ans(7));
	s16_s8: SRAM port map (Din(8), Rw, WE, ans(8));
	s16_s9: SRAM port map (Din(9), Rw, WE, ans(9));
	s16_s10: SRAM port map (Din(10), Rw, WE, ans(10));
	s16_s11: SRAM port map (Din(11), Rw, WE, ans(11));
	s16_s12: SRAM port map (Din(12), Rw, WE, ans(12));
	s16_s13: SRAM port map (Din(13), Rw, WE, ans(13));
	s16_s14: SRAM port map (Din(14), Rw, WE, ans(14));
	s16_s15: SRAM port map (Din(15), Rw, WE, ans(15));
	
	Q(15) <= ans(15) when (Rw = '1') else 'Z';
	Q(14) <= ans(14) when (Rw = '1') else 'Z';
	Q(13) <= ans(13) when (Rw = '1') else 'Z';
	Q(12) <= ans(12) when (Rw = '1') else 'Z';
	Q(11) <= ans(11) when (Rw = '1') else 'Z';
	Q(10) <= ans(10) when (Rw = '1') else 'Z';
	Q(9) <= ans(9) when (Rw = '1') else 'Z';
	Q(8) <= ans(8) when (Rw = '1') else 'Z';
	Q(7) <= ans(7) when (Rw = '1') else 'Z';
	Q(6) <= ans(6) when (Rw = '1') else 'Z';
	Q(5) <= ans(5) when (Rw = '1') else 'Z';
	Q(4) <= ans(4) when (Rw = '1') else 'Z';
	Q(3) <= ans(3) when (Rw = '1') else 'Z';
	Q(2) <= ans(2) when (Rw = '1') else 'Z';
	Q(1) <= ans(1) when (Rw = '1') else 'Z';
	Q(0) <= ans(0) when (Rw = '1') else 'Z';
	
	Qa(15) <= ans(15) when (Ra = '1') else 'Z';
	Qa(14) <= ans(14) when (Ra = '1') else 'Z';
	Qa(13) <= ans(13) when (Ra = '1') else 'Z';
	Qa(12) <= ans(12) when (Ra = '1') else 'Z';
	Qa(11) <= ans(11) when (Ra = '1') else 'Z';
	Qa(10) <= ans(10) when (Ra = '1') else 'Z';
	Qa(9) <= ans(9) when (Ra = '1') else 'Z';
	Qa(8) <= ans(8) when (Ra = '1') else 'Z';
	Qa(7) <= ans(7) when (Ra = '1') else 'Z';
	Qa(6) <= ans(6) when (Ra = '1') else 'Z';
	Qa(5) <= ans(5) when (Ra = '1') else 'Z';
	Qa(4) <= ans(4) when (Ra = '1') else 'Z';
	Qa(3) <= ans(3) when (Ra = '1') else 'Z';
	Qa(2) <= ans(2) when (Ra = '1') else 'Z';
	Qa(1) <= ans(1) when (Ra = '1') else 'Z';
	Qa(0) <= ans(0) when (Ra = '1') else 'Z';
	
	Qb(15) <= ans(15) when (Rb = '1') else 'Z';
	Qb(14) <= ans(14) when (Rb = '1') else 'Z';
	Qb(13) <= ans(13) when (Rb = '1') else 'Z';
	Qb(12) <= ans(12) when (Rb = '1') else 'Z';
	Qb(11) <= ans(11) when (Rb = '1') else 'Z';
	Qb(10) <= ans(10) when (Rb = '1') else 'Z';
	Qb(9) <= ans(9) when (Rb = '1') else 'Z';
	Qb(8) <= ans(8) when (Rb = '1') else 'Z';
	Qb(7) <= ans(7) when (Rb = '1') else 'Z';
	Qb(6) <= ans(6) when (Rb = '1') else 'Z';
	Qb(5) <= ans(5) when (Rb = '1') else 'Z';
	Qb(4) <= ans(4) when (Rb = '1') else 'Z';
	Qb(3) <= ans(3) when (Rb = '1') else 'Z';
	Qb(2) <= ans(2) when (Rb = '1') else 'Z';
	Qb(1) <= ans(1) when (Rb = '1') else 'Z';
	Qb(0) <= ans(0) when (Rb = '1') else 'Z';
end behav;

