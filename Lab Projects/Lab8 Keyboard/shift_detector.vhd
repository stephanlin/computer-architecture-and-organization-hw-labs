library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity shift_detector is
	port
	(clk, done: in std_logic;
	hex: std_logic_vector(7 downto 0);
	shift: out std_logic
	);
end shift_detector;

architecture arch of shift_detector is

type statetype is (idle, shft, f0, pause);
signal current_state, next_state : statetype;

begin

process(clk)
begin
	if(rising_edge(clk)) then
	current_state <= next_state;
end if;
end process;

process(hex, done)
begin

shift <= '0';
next_state <= current_state;

case current_state is
	when idle =>
	shift <= '0';
	
	if(done = '1' and hex = "00010010") then
	next_state <= shft;
	end if;

	when shft =>
	shift <= '1';

	if(done = '1' and hex = "11110000") then
	next_state <= f0;
	end if;

	when f0 =>
	shift <= '1';
	if(done = '1') then
		if(hex= "00010010") then
			next_state <= idle;
		else
		next_state <= shft;
		end if;
	end if;

	when pause =>
	shift <= '1';
end case;

end process;

end arch;