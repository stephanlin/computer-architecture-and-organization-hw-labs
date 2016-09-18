LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;
-- Hexadecimal to 7 Segment Decoder for LED Display

entity segment is
   port( result : in std_logic_vector(3 downto 0);
		 segment_a, segment_b, segment_c, segment_d, 
		 segment_e, segment_f, segment_g : out std_logic);
end segment;

architecture a of segment is
signal segment_data : std_logic_vector(6 downto 0);
begin
   process (result)
-- HEX to 7 Segment Decoder for LED Display
   begin -- Hex-digit is the four bit binary value to display in hexadecimal
	  case result is
		when "0000" =>  
		  segment_data <= "1111110";
		when "0001" =>  
		  segment_data <= "0110000";
		when "0010" =>  
		  segment_data <= "1101101";	
		when "0011" =>  
		  segment_data <= "1111001";
		when "0100" =>  
		  segment_data <= "0110011";
		when "0101" => 
		  segment_data <= "1011011";
		when "0110" => 
		  segment_data <= "1011111";
		when "0111" =>  
		  segment_data <= "1110000";
		when "1000" => 
		  segment_data <= "1111111";
		when "1001" =>  
		  segment_data <= "1110011";
		when "1010" =>  
		  segment_data <= "1110111";
    when "1011" => 
      segment_data <= "0011111";
	  when "1100" =>  
      segment_data <= "1001110";
    when "1101" => 
		  segment_data <= "0111101";
		when "1110" =>  
		  segment_data <= "1001111";
		when "1111" => 
		  segment_data <= "1000111";
		when others =>
		  segment_data <= "0111110";
end case;
end process;
-- extract segment data bits and invert
-- LED driver circuit is inverted

segment_a <= NOT segment_data(6);
segment_b <= NOT segment_data(5);
segment_c <= NOT segment_data(4);
segment_d <= NOT segment_data(3);
segment_e <= NOT segment_data(2);
segment_f <= NOT segment_data(1);
segment_g <= NOT segment_data(0);

end a;