LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;

entity scan_code_to_ascii is
port(
scan_code: in std_logic_vector(7 downto 0);
shift: in std_logic;
ascii: out std_logic_vector(7 downto 0)
);
end scan_code_to_ascii;

architecture arch of scan_code_to_ascii is

begin

ascii <= "01010111" when shift='1' and scan_code="00011101" --1D W
	else "01100101" when shift='0' and scan_code="00100100" --24 e
	else "01101001" when shift='0' and scan_code="01000011" --43 i
	else "01000110" when shift='1' and scan_code="00101011" --2B F
	else "01100001" when shift='0' and scan_code="01000011" --1C a
	else "01101110" when shift='0' and scan_code="00011100" --31 n

end arch;