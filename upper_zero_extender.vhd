library ieee;
use ieee.std_logic_1164.all;

entity upper_zero_extender is
	port( imm_in : in std_logic_vector(31 downto 0);
			imm_out : out std_logic_vector(31 downto 0));
end upper_zero_extender;

architecture logic of upper_zero_extender is
begin
	imm_out <= imm_in(15 downto 0) & x"0000";
end logic;