library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Demux_1x4 is -- entrada de valor teste para saida por moeda
   Port ( WT: in std_logic;
			SEL:  in std_logic_vector(1 downto 0);
         LD0,LD1,LD2,LD3: out std_logic);
end Demux_1X4;

architecture ckt of Demux_1x4 is


begin
	process (WT,SEL)
			begin
			LD0 <= '0'; 
			LD1 <= '0';
			LD2 <= '0'; 
			LD3 <= '0'; 
			
			
			case SEL is
				when "00" => LD0 <= WT;
				when "01" => LD1 <= WT;
				when "10" => LD2 <= WT;
				when "11" => LD3 <= WT;
				when others => LD0 <= '0';
		end case;
	end process;
end ckt;