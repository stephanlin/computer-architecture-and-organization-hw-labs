Library ieee;
	Use ieee.std_logic_1164.all;

	Entity two_bit_equal is
	Port (
	a, b: in std_logic_vector(1 downto 0);
	aeqb    : out std_logic);
	End two_bit_equal; 

	Architecture arch of two_bit_equal is
	Signal p0, p1,p2,p3 : std_logic;
	begin
	aeqb <=(p0 or p1) and (p2 or p3); --Enter you code here;
	P0 <=a(0) and b(0); --Enter you code here;
	P1<=(not a(0)) and (not b(0)); --Enter you code here.;
	P2<=a(1) and b(1);--Enter you code here;
	P3 <=(not a(1)) and (not b(1));--Enter you code here;
	End arch;
