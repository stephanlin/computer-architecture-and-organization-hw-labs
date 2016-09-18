LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Dec_7seg_sel is
  port( sum : in std_logic_vector(1 downto 0);
     
        seg_a : out std_logic;
        seg_b : out std_logic;
        seg_c : out std_logic;
        seg_d : out std_logic;
        seg_e : out std_logic;
        seg_f : out std_logic;
        seg_g : out std_logic);
        
end Dec_7seg_sel;

architecture struct of Dec_7seg_sel is
  signal seg_data1 : std_logic_vector(6 downto 0);
 
begin
  process(sum(1 downto 0)) is
    begin
  case sum(1 downto 0) is
  
  when "00"=>seg_data1<="1111110";
  when "01"=>seg_data1<="0110000";
  when "10"=>seg_data1<="1101101";
  when "11"=>seg_data1<="1111001";

  when others=>seg_data1<="0000001";
end case;
end process;


seg_a <= NOT seg_data1(6);
seg_b <= NOT seg_data1(5);
seg_c <= NOT seg_data1(4);
seg_d <= NOT seg_data1(3);
seg_e <= NOT seg_data1(2);
seg_f <= NOT seg_data1(1);
seg_g <= NOT seg_data1(0);

END struct;