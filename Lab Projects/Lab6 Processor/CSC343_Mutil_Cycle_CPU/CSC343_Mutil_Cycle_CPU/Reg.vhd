LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Reg IS
	PORT
	(
		D			: in std_logic_vector (15 downto 0) ;
		Clk			: in std_logic ;
		Rin			: in std_logic ;
		Q			: buffer std_logic_vector (15 downto 0)
	);
END reg;

Architecture arch of reg is
begin
	process (clk)
	begin
		if (rising_edge(clk) and Rin = '1') then
			Q <= D;
		end if;
	end process;
end arch;
