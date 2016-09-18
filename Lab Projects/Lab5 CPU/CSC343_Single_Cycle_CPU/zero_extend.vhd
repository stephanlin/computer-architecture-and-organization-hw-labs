library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity zero_extend is
  port ( a : in std_logic_vector(1 downto 0);
         a_out : out std_logic_vector(15 downto 0));

end zero_extend;

architecture behavioral of zero_extend is
begin
  process (a) is
begin
  
  a_out <= "00000000000000" & a; 
end process;
end behavioral;