library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity REGISTRADOR_10_BITS is
   Port (clk, clr,load: in STD_LOGIC;
			E :  in STD_LOGIC_VECTOR(9 downto 0);
         S : out STD_LOGIC_VECTOR(9 downto 0));
end REGISTRADOR_10_BITS;

architecture ckt of REGISTRADOR_10_BITS is

	component ffd is
		port (ck, clr, set, d : in  std_logic;
								  q : out std_logic);
	end component;
	
	COMPONENT mux_2x1_1BITS is
   Port ( EA,EB: in std_logic;
			S:  in std_logic;
         O: out std_logic);
	end COMPONENT;

	signal mux_00,mux_01,mux_02,mux_03,mux_04,mux_05,mux_06,mux_07,mux_08,mux_09: std_logic;
	signal ffdq0,ffdq1,ffdq2,ffdq3,ffdq4,ffdq5,ffdq6,ffdq7,ffdq8,ffdq9: std_logic;		

	begin

		mux09: mux_2x1_1BITS port map (ffdq2,E(9),load,mux_09);
		mux08: mux_2x1_1BITS port map (ffdq1,E(8),load,mux_08);
		mux07: mux_2x1_1BITS port map (ffdq3,E(7),load,mux_07);
		mux06: mux_2x1_1BITS port map (ffdq2,E(6),load,mux_06);
		mux05: mux_2x1_1BITS port map (ffdq1,E(5),load,mux_05);
		mux04: mux_2x1_1BITS port map (ffdq0,E(4),load,mux_04);
		mux03: mux_2x1_1BITS port map (ffdq3,E(3),load,mux_03);
		mux02: mux_2x1_1BITS port map (ffdq2,E(2),load,mux_02);
		mux01: mux_2x1_1BITS port map (ffdq1,E(1),load,mux_01);
		mux00: mux_2x1_1BITS port map (ffdq0,E(0),load,mux_00);

		FF9:ffd port map (clk,clr,'0',mux_09,ffdq9);
		FF8:ffd port map (clk,clr,'0',mux_08,ffdq8);
		FF7:ffd port map (clk,clr,'0',mux_07,ffdq7);
		FF6:ffd port map (clk,clr,'0',mux_06,ffdq6);
		FF5:ffd port map (clk,clr,'0',mux_05,ffdq5);
		FF4:ffd port map (clk,clr,'0',mux_04,ffdq4);
		FF3:ffd port map (clk,clr,'0',mux_03,ffdq3);
		FF2:ffd port map (clk,clr,'0',mux_02,ffdq2);
		FF1:ffd port map (clk,clr,'0',mux_01,ffdq1);
		FF0:ffd port map (clk,clr,'0',mux_00,ffdq0);
		


	S(9) <= ffdq9;
	S(8) <= ffdq8;
	S(7) <= ffdq7;
	S(6) <= ffdq6;
	S(5) <= ffdq5;
	S(4) <= ffdq4;
	S(3) <= ffdq3;
	S(2) <= ffdq2;
	S(1) <= ffdq1;
	S(0) <= ffdq0;


end ckt;