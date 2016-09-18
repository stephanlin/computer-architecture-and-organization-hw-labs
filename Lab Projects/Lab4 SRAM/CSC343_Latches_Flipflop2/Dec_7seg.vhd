LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Dec_7seg is
  port( sum : in std_logic_vector(15 downto 0);
     
        seg_a : out std_logic_vector(3 downto 0);
        seg_b : out std_logic_vector(3 downto 0);
        seg_c : out std_logic_vector(3 downto 0);
        seg_d : out std_logic_vector(3 downto 0);
        seg_e : out std_logic_vector(3 downto 0);
        seg_f : out std_logic_vector(3 downto 0);
        seg_g : out std_logic_vector(3 downto 0));
        
end Dec_7seg;

architecture struct of Dec_7seg is
  signal seg_data1 : std_logic_vector(6 downto 0);
  signal seg_data2 : std_logic_vector(6 downto 0);
  signal seg_data3 : std_logic_vector(6 downto 0);
  signal seg_data4 : std_logic_vector(6 downto 0);
  
begin
  process(sum(3 downto 0)) is
    begin
  case sum(3 downto 0) is
  
  when "0000"=>seg_data1<="1111110";
  when "0001"=>seg_data1<="0110000";
  when "0010"=>seg_data1<="1101101";
  when "0011"=>seg_data1<="1111001";
  when "0100"=>seg_data1<="0110011";
  when "0101"=>seg_data1<="1011011";
  when "0110"=>seg_data1<="1011111";
  when "0111"=>seg_data1<="1110000";
  when "1000"=>seg_data1<="1111111";
  when "1001"=>seg_data1<="1111011";
  when "1010"=>seg_data1<="1110111";
  when "1011"=>seg_data1<="0011111";
  when "1100"=>seg_data1<="0001101";
  when "1101"=>seg_data1<="0111101";
  when "1110"=>seg_data1<="1001111";
  when "1111"=>seg_data1<="1000111";
  when others=>seg_data1<="0000001";
end case;
end process;

  process(sum(7 downto 4)) is
    begin
  case sum(7 downto 4) is
  
  when "0000"=>seg_data2<="1111110";
  when "0001"=>seg_data2<="0110000";
  when "0010"=>seg_data2<="1101101";
  when "0011"=>seg_data2<="1111001";
  when "0100"=>seg_data2<="0110011";
  when "0101"=>seg_data2<="1011011";
  when "0110"=>seg_data2<="1011111";
  when "0111"=>seg_data2<="1110000";
  when "1000"=>seg_data2<="1111111";
  when "1001"=>seg_data2<="1111011";
  when "1010"=>seg_data2<="1110111";
  when "1011"=>seg_data2<="0011111";
  when "1100"=>seg_data2<="0001101";
  when "1101"=>seg_data2<="0111101";
  when "1110"=>seg_data2<="1001111";
  when "1111"=>seg_data2<="1000111";
  when others=>seg_data2<="0000001";
end case;
end process;

  process(sum(11 downto 8)) is
    begin
  case sum(11 downto 8) is
  
  when "0000"=>seg_data3<="1111110";
  when "0001"=>seg_data3<="0110000";
  when "0010"=>seg_data3<="1101101";
  when "0011"=>seg_data3<="1111001";
  when "0100"=>seg_data3<="0110011";
  when "0101"=>seg_data3<="1011011";
  when "0110"=>seg_data3<="1011111";
  when "0111"=>seg_data3<="1110000";
  when "1000"=>seg_data3<="1111111";
  when "1001"=>seg_data3<="1111011";
  when "1010"=>seg_data3<="1110111";
  when "1011"=>seg_data3<="0011111";
  when "1100"=>seg_data3<="0001101";
  when "1101"=>seg_data3<="0111101";
  when "1110"=>seg_data3<="1001111";
  when "1111"=>seg_data3<="1000111";
  when others=>seg_data3<="0000001";
end case;
end process;

  process(sum(15 downto 12)) is
    begin
  case sum(15 downto 12) is
  
  when "0000"=>seg_data4<="1111110";
  when "0001"=>seg_data4<="0110000";
  when "0010"=>seg_data4<="1101101";
  when "0011"=>seg_data4<="1111001";
  when "0100"=>seg_data4<="0110011";
  when "0101"=>seg_data4<="1011011";
  when "0110"=>seg_data4<="1011111";
  when "0111"=>seg_data4<="1110000";
  when "1000"=>seg_data4<="1111111";
  when "1001"=>seg_data4<="1111011";
  when "1010"=>seg_data4<="1110111";
  when "1011"=>seg_data4<="0011111";
  when "1100"=>seg_data4<="0001101";
  when "1101"=>seg_data4<="0111101";
  when "1110"=>seg_data4<="1001111";
  when "1111"=>seg_data4<="1000111";
  when others=>seg_data4<="0000001";
end case;
end process;

seg_a(3) <= NOT seg_data4(6);
seg_b(3) <= NOT seg_data4(5);
seg_c(3) <= NOT seg_data4(4);
seg_d(3) <= NOT seg_data4(3);
seg_e(3) <= NOT seg_data4(2);
seg_f(3) <= NOT seg_data4(1);
seg_g(3) <= NOT seg_data4(0);
seg_a(2) <= NOT seg_data3(6);
seg_b(2) <= NOT seg_data3(5);
seg_c(2) <= NOT seg_data3(4);
seg_d(2) <= NOT seg_data3(3);
seg_e(2) <= NOT seg_data3(2);
seg_f(2) <= NOT seg_data3(1);
seg_g(2) <= NOT seg_data3(0);
seg_a(1) <= NOT seg_data2(6);
seg_b(1) <= NOT seg_data2(5);
seg_c(1) <= NOT seg_data2(4);
seg_d(1) <= NOT seg_data2(3);
seg_e(1) <= NOT seg_data2(2);
seg_f(1) <= NOT seg_data2(1);
seg_g(1) <= NOT seg_data2(0);
seg_a(0) <= NOT seg_data1(6);
seg_b(0) <= NOT seg_data1(5);
seg_c(0) <= NOT seg_data1(4);
seg_d(0) <= NOT seg_data1(3);
seg_e(0) <= NOT seg_data1(2);
seg_f(0) <= NOT seg_data1(1);
seg_g(0) <= NOT seg_data1(0);

END struct;