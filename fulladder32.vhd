library ieee;
use ieee.std_logic_1164.all;

entity fulladder32 is
	port(	Cin : in std_logic;
			x, y : in std_logic_vector(31 downto 0);
			s : out std_logic_vector(31 downto 0);
			Cout : out std_logic);
end fulladder32;

architecture logic of fulladder32 is
	component fulladder16
	port(	Cin: in std_logic;
			x, y : in std_logic_vector(15 downto 0);
			s : out std_logic_vector(15 downto 0);
			Cout : out std_logic);
	end component;
	
	signal C : std_logic;
begin
	cycle0: fulladder16 port map (Cin, x(15 downto 0), y(15 downto 0), s(15 downto 0), C);
	cycle1: fulladder16 port map (C, x(31 downto 16), y(31 downto 16), s(31 downto 16), Cout);
end logic;