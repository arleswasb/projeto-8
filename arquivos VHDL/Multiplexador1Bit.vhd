library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexador1Bit is
   Port ( I : in STD_LOGIC(1 downto 0);
          S : in STD_LOGIC;
          O : out STD_LOGIC);
end Multiplexador1Bit;

architecture ckt of Multiplexador1Bit is

begin
   O <= (I(0) AND NOT(S)) OR (I(1) AND S);
end ckt;