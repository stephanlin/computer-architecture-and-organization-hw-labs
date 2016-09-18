LIBRARY ieee;
USE ieee.std_logic_1164.all; 


ENTITY keyboard_interface IS 
	PORT
	(
		Clock :  IN  STD_LOGIC;
		Reset :  IN  STD_LOGIC;
		En :  IN  STD_LOGIC;
		display: out std_logic_vector(55 downto 0);
		ps2D :  INOUT  STD_LOGIC;
		ps2C :  INOUT  STD_LOGIC
	);
END keyboard_interface;

ARCHITECTURE bdf_type OF keyboard_interface IS 

COMPONENT ps2_rec
	PORT(Clk : IN STD_LOGIC;
		 Reset : IN STD_LOGIC;
		 ps2Data : IN STD_LOGIC;
		 ps2Clock : IN STD_LOGIC;
		 rec_en : IN STD_LOGIC;
		 rec_done : OUT STD_LOGIC;
		 Dout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT hex_to_seven	PORT(en : IN STD_LOGIC;
		 input : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 HEX6 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 HEX7 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT shift_detector
	PORT(clk : IN STD_LOGIC;
		 done : IN STD_LOGIC;
		 hex : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 shift : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT scan_code_to_ascii
	PORT(shift : IN STD_LOGIC;
		 scan_code : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 ascii : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;


SIGNAL	NotReset :  STD_LOGIC;
SIGNAL	rec_done :  STD_LOGIC;
SIGNAL	dis_input :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	ScanCode :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	shift_output :  STD_LOGIC;
SIGNAL	asci_output :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 



rec : ps2_rec
PORT MAP(Clk => Clock,
		 Reset => NotReset,
		 ps2Data => ps2D,
		 ps2Clock => ps2C,
		 rec_en => En,
		 rec_done => rec_done,
		 Dout => ScanCode );


sev : hex_to_seven
PORT MAP(en => rec_done,
		 input => dis_input,
		 HEX0 => display(6 downto 0),
		 HEX1 => display(13 downto 7),
		 HEX2 => display(20 downto 14),
		 HEX3 => display(27 downto 21),
		 HEX4 => display(34 downto 28),
		 HEX5 => display(41 downto 35),
		 HEX6 => display(48 downto 42),
		 HEX7 => display(55 downto 49)
);

dis_input <= asci_output & "0000000000000000" & ScanCode;


NotReset <= NOT(Reset);



shft : shift_detector
PORT MAP(clk => Clock,
		 done => rec_done,
		 hex => ScanCode,
		 shift => shift_output);


ascii : scan_code_to_ascii
PORT MAP(shift => shift_output,
		 scan_code => ScanCode,
		 ascii => asci_output);



END bdf_type;
