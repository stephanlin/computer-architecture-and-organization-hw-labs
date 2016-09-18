LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ADDER2 is
  port( a0, a1 : in	STD_LOGIC;
        b0, b1		: in	STD_LOGIC;
        cin : in STD_LOGIC;
	      ans0, ans1		: out	STD_LOGIC;
	      cout : out	STD_LOGIC		);
end ADDER2;

architecture STRUCTURE of ADDER2 is
component BIT_ADDER is
	port( a, b, cin		: in  STD_LOGIC;
	      sum, cout		: out STD_LOGIC );
end component;     

signal c0, c1 : STD_LOGIC;
begin
  
b_adder0: BIT_ADDER port map (a0, b0, cin, ans0, c0);
b_adder1: BIT_ADDER port map (a1, b1, c0, ans1, c1);


cout <= c1;

end STRUCTURE;
