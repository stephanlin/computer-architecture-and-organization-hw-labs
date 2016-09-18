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



LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity add16 is
	port( a, b		: in	STD_LOGIC_VECTOR(15 downto 0);
	      cin   : in STD_LOGIC;
	      ans		 : out	STD_LOGIC_VECTOR(15 downto 0);
	      overflow		: out	STD_LOGIC;
	      cout		: out	STD_LOGIC		);
end add16;

architecture arch of add16 is

component add2
	port( a, b		: in	STD_LOGIC_VECTOR(1 downto 0);
	      cin   : in STD_LOGIC;
	      ans		 : out	STD_LOGIC_VECTOR(1 downto 0);
	      cout		: out	STD_LOGIC		);
end component;

signal c1,c2,c3,c4,c5,c6,c7,c8 : STD_LOGIC;
signal mux : STD_LOGIC_VECTOR(15 downto 0);
begin

  mux(0) <= cin xor b(0);
  mux(1) <= cin xor b(1);
  mux(2) <= cin xor b(2);
  mux(3) <= cin xor b(3);
  mux(4) <= cin xor b(4);
  mux(5) <= cin xor b(5);
  mux(6) <= cin xor b(6);
  mux(7) <= cin xor b(7);
  mux(8) <= cin xor b(8);
  mux(9) <= cin xor b(9);
  mux(10) <= cin xor b(10);
  mux(11) <= cin xor b(11);
  mux(12) <= cin xor b(12);
  mux(13) <= cin xor b(13);
  mux(14) <= cin xor b(14);
  mux(15) <= cin xor b(15);
  b_adder0: add2 port map (a(1 downto 0), mux(1 downto 0), cin, ans(1 downto 0), c1);
  b_adder1: add2 port map (a(3 downto 2), mux(3 downto 2), c1, ans(3 downto 2), c2);
  b_adder2: add2 port map (a(5 downto 4), mux(5 downto 4), c2, ans(5 downto 4), c3);
  b_adder3: add2 port map (a(7 downto 6), mux(7 downto 6), c3, ans(7 downto 6), c4);
  b_adder4: add2 port map (a(9 downto 8), mux(9 downto 8), c4, ans(9 downto 8), c5);
  b_adder5: add2 port map (a(11 downto 10), mux(11 downto 10), c5, ans(11 downto 10), c6);
  b_adder6: add2 port map (a(13 downto 12), mux(13 downto 12), c6, ans(13 downto 12), c7);
  b_adder7: add2 port map (a(15 downto 14), mux(15 downto 14), c7, ans(15 downto 14), c8);

  cout <= c8;
  --overflow <= ((a(14)and (b(14) or c6)) or (c6 and b(14)))xor  c7;
  overflow <= c8 xor c7;

END arch;