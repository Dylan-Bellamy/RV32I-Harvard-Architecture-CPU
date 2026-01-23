library ieee;
use ieee.std_logic_1164.all;

entity fulladder16 is
	port(	Cin: in std_logic;
			x, y : in std_logic_vector(15 downto 0);
			s : out std_logic_vector(15 downto 0);
			Cout : out std_logic);
end fulladder16;

architecture logic of fulladder16 is
	component fulladder4
	port(	Cin: in std_logic;
			x, y : in std_logic_vector(3 downto 0);
			s : out std_logic_vector(3 downto 0);
			Cout : out std_logic);
	end component;
	
	signal C : std_logic_vector(2 downto 0);
begin
	cycle0: fulladder4 port map (Cin, x(3 downto 0), y(3 downto 0), s(3 downto 0), C(0));
	cycle1: fulladder4 port map (C(0), x(7 downto 4), y(7 downto 4), s(7 downto 4), C(1));
	cycle2: fulladder4 port map (C(1), x(11 downto 8), y(11 downto 8), s(11 downto 8), C(2));
	cycle3: fulladder4 port map (C(2), x(15 downto 12), y(15 downto 12), s(15 downto 12), Cout);
end logic;
	