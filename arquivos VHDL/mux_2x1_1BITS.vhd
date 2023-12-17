library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_2x1_1BITS is
   Port ( EA,EB: in std_logic;
			S:  in std_logic;
         O: out std_logic);
end mux_2x1_1BITS;

architecture ckt of mux_2x1_1BITS is



begin
	 

	 O <= ((EA and not S) or (EB and S));
	 
	 
	 
end ckt;