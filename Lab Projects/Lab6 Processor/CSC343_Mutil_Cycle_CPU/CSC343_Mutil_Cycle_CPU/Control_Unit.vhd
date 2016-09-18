LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY Control_Unit IS
	PORT
	(
		Run			: in std_logic ;
		Clk			: in std_logic ;
		Resetn		: in std_logic ;
		IRindata	: in std_logic_vector (8 downto 0) ;
		IRen		: out std_logic;
		R0en		: out std_logic;
		R1en		: out std_logic;
		R2en		: out std_logic;
		R3en		: out std_logic;
		R4en		: out std_logic;
		R5en		: out std_logic;
		R6en		: out std_logic;
		R7en		: out std_logic;
		RAen		: out std_logic;
		RGen		: out std_logic;
		Sign		: out std_logic;
		Dinout		: out std_logic;
		Gout		: out std_logic;
		Ry			: out std_logic_vector(2 downto 0);
		Done 		: buffer std_logic;
		Tstep		: out std_logic_vector(1 downto 0)
	);
END Control_Unit;

Architecture arch of Control_Unit is
	signal instruction, xReg, yReg  : std_logic_vector(2 downto 0);	
	signal step 					: std_logic_vector(1 downto 0);
begin

	instruction <= IRindata (8 downto 6);  
	xReg		<= IRindata (5 downto 3);  
	yReg		<= IRindata (2 downto 0); 

	process (clk, resetn, Done) begin
		if resetn = '0' then
			step <= "00" ;
		elsif rising_edge(clk) then
			if Done = '1' then
				step <= "00";
			else
				step <= step + 1;
			end if;
		end if;
	end process;

	process (step, xReg) begin
		R0en <= '0'; R1en <= '0'; R2en <= '0'; R3en <= '0';  -- all registers 
		R4en <= '0'; R5en <= '0'; R6en <= '0'; R7en <= '0';  -- are first unenabled.
		RAen <= '0'; RGen <= '0'; Gout <= '0'; 
		Dinout <= '1'; Done <= '0'; IRen <= '0';
		case step is
			when "00" => 
				IRen <= '1';
			when "01" =>
				if instruction ="000" or instruction = "001" then
					case xReg is 				
						when "000" => R0en <= '1';
						when "001" => R1en <= '1';
						when "010" => R2en <= '1';
						when "011" => R3en <= '1';
						when "100" => R4en <= '1';
						when "101" => R5en <= '1';
						when "110" => R6en <= '1';
						when "111" => R7en <= '1';	
					end case;
					Done <= '1';
					IRen <= '1';
					if instruction = "001" then
						Dinout <= '1';
					elsif instruction = "000" then
						Ry <= yReg;
						Dinout <= '0';
					end if;
				elsif instruction = "010" or instruction = "011" then
						Ry <= xReg;
						Dinout <= '0';
						RAen <= '1';
				end if;
			when "10" =>
				if instruction = "010" or instruction = "011" then
					Ry <= yReg;
					Dinout <= '0';
					RGen <= '1';
					Sign <= '0';
					if instruction = "010" then
						Sign <= '1';
					end if;
				end if;
			when "11" =>
				if instruction = "010" or instruction = "011" then
					case xReg is 				
						when "000" => R0en <= '1';
						when "001" => R1en <= '1';
						when "010" => R2en <= '1';
						when "011" => R3en <= '1';
						when "100" => R4en <= '1';
						when "101" => R5en <= '1';
						when "110" => R6en <= '1';
						when "111" => R7en <= '1';	
					end case;
					Gout <= '1';
					Done <= '1';
					IRen <= '1';
				end if;
			end case;
	end process;


	Tstep <= step;


end arch;



