LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Mux IS
	PORT
	(
		Gout	 		  : in std_logic ;
		Dinout	   		  : in std_logic ;
		Ry				  : in std_logic_vector (2 downto 0) ;
		Din, Q0, Q1, Q2, Q3, Q4, 
			Q5, Q6, Q7, G : in std_logic_vector (15 downto 0) ;
		res				  : out std_logic_vector (15 downto 0)
	);
END Mux;

Architecture arch of Mux is
begin
	process(Ry, Gout, Dinout)
	begin
		if Gout = '1'      then res <= G;
		elsif Dinout = '1' then res <= Din;
		elsif Ry = "000"   then res <= Q0;
		elsif Ry = "001"   then res <= Q1;
		elsif Ry = "010"   then res <= Q2;
		elsif Ry = "011"   then	res <= Q3;
		elsif Ry = "100"   then res <= Q4;
		elsif Ry = "101"   then res <= Q5;
		elsif Ry = "110"   then	res <= Q6;
		elsif Ry = "111"   then res <= Q7;
		end if;
	end process;
end arch;
