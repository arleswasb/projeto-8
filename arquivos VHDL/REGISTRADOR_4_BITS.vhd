library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity REGISTRADOR_4_BITS is
   Port (clk, clr,load: in STD_LOGIC;
		E :  in STD_LOGIC_VECTOR(3 downto 0);
         	S : out STD_LOGIC_VECTOR(3 downto 0));
end REGISTRADOR_4_BITS;

architecture ckt of REGISTRADOR_4_BITS is

	component ffd is
		port (ck, clr, set, d : in  std_logic;
								  q : out std_logic);
	end component;
	
	COMPONENT mux_2x1_1BITS is
   Port ( EA,EB: in std_logic;
			S:  in std_logic;
         O: out std_logic);
	end COMPONENT;

	signal mux_0,mux_1,mux_2,mux_3: std_logic;
	signal ffdq0,ffdq1,ffdq2,ffdq3: std_logic;		

	begin
		mux00: mux_2x1_1BITS port map (ffdq3,E(3),load,mux_3);
		mux01: mux_2x1_1BITS port map (ffdq2,E(2),load,mux_2);
		mux02: mux_2x1_1BITS port map (ffdq1,E(1),load,mux_1);
		mux03: mux_2x1_1BITS port map (ffdq0,E(0),load,mux_0);
		
		FF3:ffd port map (clk,clr,'0',mux_3,ffdq3);
		FF2:ffd port map (clk,clr,'0',mux_2,ffdq2);
		FF1:ffd port map (clk,clr,'0',mux_1,ffdq1);
		FF0:ffd port map (clk,clr,'0',mux_0,ffdq0);
		
	S(3) <= ffdq3;
	S(2) <= ffdq2;
	S(1) <= ffdq1;
	S(0) <= ffdq0;


end ckt;