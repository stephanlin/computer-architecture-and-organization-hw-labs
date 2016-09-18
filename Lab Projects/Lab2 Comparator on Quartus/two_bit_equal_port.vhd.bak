	Library ieee;
	Use ieee.std_logic_1164.all;

	Entity two_bit_equal_port is
	Port (
	a, b: in std_logic_vector(1 downto 0);
	aeqb    : out std_logic);
	End two_bit_equal_port; 

	Architecture arch of two_bit_equal_port is
	
	--component declaration...we are telling the compiler which components we want to use from the library. 		

	component equal
	Port (
	I0, I1: in std_logic;
	Eq    : out std_logic);
	End component;

	signal e0,e1: std_logic; 
	
	begin 

	--instantiates two one-bit comparators

	H1: equal 
	port map(i0=>a(0), i1=>b(0), eq=>e0);
	H2: equal
	port map(i0=>a(1), i1=>b(1), eq=>e1);

		aeqb <= e0 and e1; 

	end arch; 
