LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BIT_ADDER is
	port( a, b, cin         : in  STD_LOGIC;
	      sum, cout         : out STD_LOGIC );
end BIT_ADDER;

architecture BHV of BIT_ADDER is
begin
	
	sum <=  (not a and not b and cin) or
			(not a and b and not cin) or
			(a and not b and not cin) or
			(a and b and cin);

	cout <= (not a and b and cin) or
			(a and not b and cin) or
			(a and b and not cin) or
			(a and b and cin);
end BHV;

LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity add2 is
	port( a, b		: in	STD_LOGIC_VECTOR(1 downto 0);
	      cin   : in STD_LOGIC;
	      ans		 : out	STD_LOGIC_VECTOR(1 downto 0);
	      cout		: out	STD_LOGIC		);
end add2;

architecture STRUCTURE of add2 is
component BIT_ADDER
	port( a, b, cin		: in  STD_LOGIC;
	      sum, cout		: out STD_LOGIC );
end component;

signal c1 : STD_LOGIC;
begin
b_adder0: BIT_ADDER port map (a(0), b(0), cin, ans(0), c1);
b_adder1: BIT_ADDER port map (a(1), b(1), c1, ans(1), cout);

END STRUCTURE;