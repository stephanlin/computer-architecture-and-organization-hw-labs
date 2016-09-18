library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity Pos_Controler is
	port
	(
		L, R, U, D, Move, Reset: in std_logic;
		Init_X, Init_Y: out std_logic_vector(9 downto 0)
	);
end Pos_Controler;

architecture arch of Pos_Controler is

signal x, y: unsigned(9 downto 0):= "0011001000";

begin

Init_X <= std_logic_vector(x);
Init_Y <= std_logic_vector(Y);


Process(Move, reset)
begin
if(reset = '1') then
	x <= "0011001000";
	y <="0011001000";
	elsif(Falling_Edge(Move)) then
		if(U = '1' and (y>10)) then
			y <= y - "0000001010";
		end if;
		if(D = '1' and (y < (416 - 10) )) then
			y <= y + "0000001010";
		end if;
		if(L = '1' and (x>10)) then
			x <= x - "0000001010";
		end if;
		if(R = '1' and (x < (432 - 10))) then
			x <= x + "0000001010";
		end if;
	end if;
end process;
end arch;
