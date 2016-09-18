LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Decare a testbench.  Notice that the testbench does not have any
-- input or output ports.

entity TEST_ADD2 is
end TEST_ADD2;

-- Describes the functionality of the tesbench.

architecture TEST of TEST_ADD2 is 

	component add2
		port( a, b		: in   STD_LOGIC_VECTOR(1 downto 0);
		      cin   : in   STD_LOGIC;
		      ans		 : out		STD_LOGIC_VECTOR(1 downto 0);
		      cout		: out 	STD_LOGIC		);
	end component;

	for U1: add2 use entity WORK.ADD2(STRUCTURE);
	signal a, b		: STD_LOGIC_VECTOR(1 downto 0);
	signal cin   : STD_LOGIC;
	signal ans		 : STD_LOGIC_VECTOR(1 downto 0);
	signal cout		: STD_LOGIC;
	
	begin
	U1: add2 port map (a,b,cin,ans,cout);
	
		process
		begin

			a <= "00";
			b <= "00";
			cin <= '0';
			wait for 10 ns;
			assert ( ans = "00" )	report "Failed Case 1 - ans" severity error;
			assert ( cout = '0' ) report "Failed Case 1 - cout" severity error;
			wait for 40 ns;


			a <= "00";
			b <= "00";
			cin <= '1';
			wait for 10 ns;
			assert ( ans = "01" )	report "Failed Case 2 - ans" severity error;
			assert ( cout = '0' ) report "Failed Case 2 - cout" severity error;
			wait for 40 ns;
  
  
			a <= "00";
			b <= "01";
			cin <= '0';
			wait for 10 ns;
			assert ( ans = "01" )	report "Failed Case 3 - ans" severity error;
			assert ( cout = '0' ) report "Failed Case 3 - cout" severity error;
			wait for 40 ns;
			
			
			a <= "00";
			b <= "01";
			cin <= '1';
			wait for 10 ns;
			assert ( ans = "10" )	report "Failed Case 4 - ans" severity error;
			assert ( cout = '0' ) report "Failed Case 4 - cout" severity error;
			wait for 40 ns;
			
			
			a <= "00";
			b <= "10";
			cin <= '0';
			wait for 10 ns;
			assert ( ans = "10" )	report "Failed Case 5 - ans" severity error;
			assert ( cout = '0' ) report "Failed Case 5 - cout" severity error;
			wait for 40 ns;
			
			a <= "00";
			b <= "10";
			cin <= '1';
			wait for 10 ns;
			assert ( ans = "11" )	report "Failed Case 6 - ans" severity error;
			assert ( cout = '0' ) report "Failed Case 6 - cout" severity error;
			wait for 40 ns;
			
			
			a <= "00";
			b <= "11";
			cin <= '1';
			wait for 10 ns;
			assert ( ans = "00" )	report "Failed Case 7 - ans" severity error;
			assert ( cout = '1' ) report "Failed Case 7 - cout" severity error;
			wait for 40 ns;
			
			
			a <= "01";
			b <= "10";
			cin <= '0';
			wait for 10 ns;
			assert ( ans = "11" )	report "Failed Case 8 - ans" severity error;
			assert ( cout = '0' ) report "Failed Case 8 - cout" severity error;
			wait for 40 ns;
			
			
			a <= "01";
			b <= "10";
			cin <= '1';
			wait for 10 ns;
			assert ( ans = "00" )	report "Failed Case 9 - ans" severity error;
			assert ( cout = '1' ) report "Failed Case 9 - cout" severity error;
			wait for 40 ns;
			
			
			a <= "10";
			b <= "10";
			cin <= '1';
			wait for 10 ns;
			assert ( ans = "01" )	report "Failed Case 10 - ans" severity error;
			assert ( cout = '1' ) report "Failed Case 10 - cout" severity error;
			wait for 40 ns;
			
						
			a <= "11";
			b <= "11";
			cin <= '1';
			wait for 10 ns;
			assert ( ans = "11" )	report "Failed Case 11 - ans" severity error;
			assert ( cout = '1' ) report "Failed Case 11 - cout" severity error;
			wait for 40 ns;
			
			
		end process;
END TEST;