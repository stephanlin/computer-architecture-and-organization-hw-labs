LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux is
	port( a : in STD_LOGIC_VECTOR(15 downto 0);
	      b	: in STD_LOGIC_VECTOR(15 downto 0); 
	      sel : in STD_LOGIC;
	      cout : out STD_LOGIC_VECTOR(15 downto 0));
end mux;

architecture BHV of mux is
begin
	 
	cout <= a when (sel='1') else b;
end BHV;
