library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity data_memory is 
	port( clk : in std_logic;
			addr : in unsigned(7 downto 0);
			data_in : in std_logic_vector(31 downto 0);
			en : in std_logic;
			wen : in std_logic;
			data_out : out std_logic_vector(31 downto 0));
end data_memory;

architecture logic of data_memory is
	type memory_type is array (0 to 255) of std_logic_vector(31 downto 0);
	signal memory : memory_type := (others => (others => '0'));
begin
	process(clk, en, wen, data_in) 
	begin
		if falling_edge(clk) then
			if en = '1' then 
				if wen = '1' then
					memory(to_integer(addr)) <= data_in;
					data_out <= x"00000000";
				else 
					data_out <= memory(to_integer(addr));
				end if;
			else 
				data_out <= x"00000000";
			end if;
		end if;		
	end process;
end logic;
				
			
			
