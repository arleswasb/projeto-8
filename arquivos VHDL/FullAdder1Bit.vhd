library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder1Bit is
    Port ( A, B, Cin : in STD_LOGIC;
           Sum, Cout : out STD_LOGIC);
end FullAdder1Bit;

architecture Main of FullAdder1Bit is
    signal S1, C1, C2 : STD_LOGIC;
begin
    HalfAdder1: entity work.HalfAdder
        port map (A, B, S1, C1);

    HalfAdder2: entity work.HalfAdder
        port map (S1, Cin, Sum, C2);
		  
    Cout <= C1 OR C2;
end Main;