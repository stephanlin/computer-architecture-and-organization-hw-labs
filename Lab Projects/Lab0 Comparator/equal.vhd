Library ieee;
Use ieee.std_logic_1164.all;

Entity equal is
Port (
I0, I1: in std_logic;
Eq    : out std_logic);
End equal; 

Architecture arch of equal is
Signal p0, p1 : std_logic;
begin
Eq <= p0 or p1;
P0 <= (not I0) and (not I1);
P1<= i0 and i1;
End arch;
