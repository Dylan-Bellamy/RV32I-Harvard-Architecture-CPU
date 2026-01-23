library ieee;
use ieee.std_logic_1164.all;

entity lower_zero_extender is
	port( imm_in : in std_logic_vector(31 downto 0);
			imm_out : out std_logic_vector(31 downto 0));
end lower_zero_extender;

architecture logic of lower_zero_extender is
begin
	imm_out <= x"0000" & imm_in(15 downto 0);
end logic;