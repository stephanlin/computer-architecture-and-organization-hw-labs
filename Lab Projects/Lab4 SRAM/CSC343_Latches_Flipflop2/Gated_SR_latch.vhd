library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  
 
entity Gated_SR_Latch is  
    Port ( S,R : in STD_LOGIC;  
          clock : in STD_LOGIC;  
          Q, notQ : buffer STD_LOGIC );  
end Gated_SR_Latch;  

architecture behav of Gated_SR_Latch is  

begin  
	Q <= (clock AND R) NOR notQ;  
	notQ <= (clock AND S) NOR Q;  
end behav; 