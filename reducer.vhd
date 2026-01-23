library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reducer is
	port( red_in : in std_logic_vector(31 downto 0);
			red_out : out unsigned(7 downto 0));
end reducer;

architecture logic of reducer is
begin
	red_out <= unsigned(red_in(7 downto 0));
end logic;