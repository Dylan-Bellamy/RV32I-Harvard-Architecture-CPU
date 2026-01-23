library ieee;
use ieee.std_logic_1164.all;

entity fulladder4 is
	port(	Cin: in std_logic;
			x, y : in std_logic_vector(3 downto 0);
			s : out std_logic_vector(3 downto 0);
			Cout : out std_logic);
end fulladder4;

architecture logic of fulladder4 is
	component fulladder1
	port(	Cin, x, y : in std_logic;
			s, Cout : out std_logic);
	end component;
	
	signal C : std_logic_vector(2 downto 0);
begin
	cycle0: fulladder1 port map (Cin, x(0), y(0), s(0), C(0));
	cycle1: fulladder1 port map (C(0), x(1), y(1), s(1), C(1));
	cycle2: fulladder1 port map (C(1), x(2), y(2), s(2), C(2));
	cycle3: fulladder1 port map (C(2), x(3), y(3), s(3), Cout);
end logic;
	
	