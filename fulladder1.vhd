library ieee;
use ieee.std_logic_1164.all;

entity fulladder1 is
	port(	Cin, x, y : in std_logic;
			s, Cout : out std_logic);
end fulladder1;

architecture logic of fulladder1 is
begin
	s <= x xor y xor Cin;
	Cout <= (x and y) or (x and Cin) or (y and Cin);
end logic;
			