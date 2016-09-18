LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Regn IS
	generic (n: integer := 16);
	PORT
	(
		D			: in std_logic_vector (n-1 downto 0) ;
		Clk			: in std_logic ;
		Rin			: in std_logic ;
		Q			: buffer std_logic_vector (n-1 downto 0)
	);
END regn;

Architecture arch of regn is
begin
	process (clk)
	begin
		if (rising_edge(clk) and Rin = '1') then
			Q <= D;
		end if;
	end process;
end arch;
