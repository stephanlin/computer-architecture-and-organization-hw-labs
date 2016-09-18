library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sign_extention is
  port ( a : in std_logic_vector(7 downto 0);
         b : in std_logic_vector(7 downto 0);
         a_out : out std_logic_vector(15 downto 0);
         b_out : out std_logic_vector(15 downto 0));

end sign_extention;

architecture behavioral of sign_extention is
begin
  process (a) is
begin
  a_out <= a(7) & a(7) & a(7) & a(7) & a(7) & a(7) & a(7) & a(7) & a;
end process;

process (b) is
	begin
	b_out <= b(7) & b(7) & b(7) & b(7) & b(7) & b(7) & b(7) & b(7) & b;
end process;
end behavioral;