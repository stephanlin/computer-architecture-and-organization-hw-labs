LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BIT_ADDER is
	port( a, b, cin         : in  STD_LOGIC;
	      sum, cout         : out STD_LOGIC );
end BIT_ADDER;

architecture BHV of BIT_ADDER is
begin
	
	sum <= (a xor b) xor cin;
   cout <= (a and (b or cin)) or (cin and b);
end BHV;
