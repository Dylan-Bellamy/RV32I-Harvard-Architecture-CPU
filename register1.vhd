library ieee ; 
use ieee.std_logic_1164.all ;

entity register1 is 
	port (clk, clr, ld, d : in std_logic ; -- posedge clock, high async. clear, high load, data
			q : out std_logic) ; -- output
end register1 ;

architecture logic of register1 is
begin
	process ( clk )
	begin
		-------------ASYNC CLEAR--------------
		if clr = '1' then
			q <= '0' ; 
		------------CLOCK AND LOAD------------
		elsif clk'event and clk = '1' then
			if ld = '1' then 
				q <= d ;
			end if ;
		end if;
		--------------------------------------
	end process ;
end logic ;
				