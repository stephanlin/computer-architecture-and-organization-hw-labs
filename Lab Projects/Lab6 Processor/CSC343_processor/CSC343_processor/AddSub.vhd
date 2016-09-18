LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY AddSub IS
	PORT
	(
		Rx			: in std_logic_vector (15 downto 0) ;
		Ry			: in std_logic_vector (15 downto 0) ;
		as			: in std_logic;
		result		: buffer std_logic_vector (15 downto 0)
	);
END AddSub;

Architecture arch of Addsub is
begin
	result <= std_logic_vector(unsigned(Rx) + unsigned(Ry)) 
		when as = '1' 
			else std_logic_vector(unsigned(Rx) - unsigned(Ry));
end arch;
