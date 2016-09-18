LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY IR IS
	PORT
	(
		Din			: in std_logic_vector (15 downto 0) ;
		IRin		: in std_logic;
		clk			: in std_logic;
		IRout		: buffer std_logic_vector (8 downto 0)
	);
END IR;

Architecture arch of IR is
begin
	process(clk)
	begin
		if (rising_edge(clk) and IRin = '1') then
			IRout <= Din(15 downto 7);
		end if;
	end process;
end arch;
