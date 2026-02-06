library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity reset_circuit is
	port( reset : in std_logic; 
			clk : in std_logic;
			enable_PD : out std_logic := '1';
			clr_PC : out std_logic);
end reset_circuit;

architecture logic of reset_circuit is 
	type clkCycle is (clk0, clk1, clk2, clk3);
	signal current_clk : clkCycle;
begin
	process (reset, clk)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				enable_PD <= '0';
				clr_PC <= '1';
				current_clk <= clk0;
			elsif current_clk = clk0 then
				current_clk <= clk1;
			elsif current_clk = clk1 then
				current_clk <= clk2;
			elsif current_clk = clk2 then
				current_clk <= clk3;
			elsif current_clk = clk3 then
				enable_PD <= '1';
				clr_PC <= '0';
			end if;
		end if;
	end process;
end logic;