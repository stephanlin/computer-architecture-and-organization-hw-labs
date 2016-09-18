library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity decode2to4 is
  port(
   sel : in  std_logic_vector(1 downto 0);
   d0, d1, d2, d3 : out std_logic);
end decode2to4;

architecture arch of decode2to4 is

signal dec : std_logic_vector(3 downto 0);

begin

with sel select 
   dec <= "0001" when "00",
		      "0010" when "01",
		      "0100" when "10",
		      "1000" when "11",
		      "0000" when others;

d0<=dec(0);
d1<=dec(1);
d2<=dec(2);
d3<=dec(3);
end arch;