library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SHL8bits1 is
   Port ( A : in STD_LOGIC_VECTOR(7 downto 0);
          B : in STD_LOGIC;
			 S : out STD_LOGIC_VECTOR(7 downto 0));
end SHL8bits1;

architecture ckt of SHL8bits1 is

	signal AUX: std_logic;
	
	component mux_2x1_1BITS is
   Port ( EA,EB: in std_logic;
			S:  in std_logic;
         O: out std_logic);
	end component;

begin
	AUX <= NOT(B);
	M0: mux_2x1_1BITS port map (A(0), AUX,  B, S(0));
	M1: mux_2x1_1BITS port map (A(1), A(0), B, S(1));
	M2: mux_2x1_1BITS port map (A(2), A(1), B, S(2));
	M3: mux_2x1_1BITS port map (A(3), A(2), B, S(3));
	M4: mux_2x1_1BITS port map (A(4), A(3), B, S(4));
	M5: mux_2x1_1BITS port map (A(5), A(4), B, S(5));
	M6: mux_2x1_1BITS port map (A(6), A(5), B, S(6));
	M7: mux_2x1_1BITS port map (A(7), A(6), B, S(7));
end ckt;