LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ADDSUB16 is
  port( a, b		: in	STD_LOGIC_VECTOR(15 downto 0);
        cin : in STD_LOGIC;
	      ans		: out	STD_LOGIC_VECTOR(15 downto 0);
	      
	      cout, overflow		: out	STD_LOGIC		);
end ADDSUB16;

architecture struct of ADDSUB16 is
component ADDER2 is
  port( a0, a1 : in	STD_LOGIC;
        b0, b1		: in	STD_LOGIC;
        cin : in STD_LOGIC;
	      ans0, ans1		: out	STD_LOGIC;
	      cout : out	STD_LOGIC		);
end component;     

signal c0, c1, c2, c3, c4, c5, c6, c7 : STD_LOGIC;
signal MP: std_logic_vector(15 downto 0);
begin

MP(0) <= cin XOR b(0);
MP(1) <= cin XOR b(1);
MP(2) <= cin XOR b(2);
MP(3) <= cin XOR b(3);
MP(4) <= cin XOR b(4);
MP(5) <= cin XOR b(5);
MP(6) <= cin XOR b(6);
MP(7) <= cin XOR b(7);
MP(8) <= cin XOR b(8);
MP(9) <= cin XOR b(9);
MP(10) <= cin XOR b(10);
MP(11) <= cin XOR b(11);
MP(12) <= cin XOR b(12);
MP(13) <= cin XOR b(13);
MP(14) <= cin XOR b(14);
MP(15) <= cin XOR b(15);

  
b_adder0: ADDER2 port map (a(0), a(1), MP(0), MP(1), cin, ans(0), ans(1), c0);
          
b_adder1: ADDER2 port map (a(2), a(3), MP(2), MP(3), c0, ans(2), ans(3), c1);
          
b_adder2: ADDER2 port map (a(4), a(5), MP(4), MP(5), c1, ans(4), ans(5), c2);
         
b_adder3: ADDER2 port map (a(6), a(7), MP(6), MP(7), c2, ans(6), ans(7), c3);
         
b_adder4: ADDER2 port map (a(8), a(9), MP(8), MP(9), c3, ans(8), ans(9), c4);
          
b_adder5: ADDER2 port map (a(10), a(11), MP(10), MP(11), c4, ans(10), ans(11), c5);
          
b_adder6: ADDER2 port map (a(12), a(13), MP(12), MP(13), c5, ans(12), ans(13), c6);
        
b_adder7: ADDER2 port map (a(14), a(15), MP(14), MP(15), c6, ans(14), ans(15), c7);

overflow <= ((a(14) and (MP(14) or c6)) or (c6 and MP(14))) XOR c7;
          
cout <= not cin and c7;
  
end struct;