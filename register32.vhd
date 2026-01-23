library ieee ; 
use ieee.std_logic_1164.all ;
use ieee.std_logic_arith.all ;
use ieee.std_logic_unsigned.all ;

entity register32 is 
	port (clk, clr, ld : in std_logic ; -- posedge clock, high async. clear, high load
			d : in std_logic_vector(31 downto 0) ;	-- data
			q : out std_logic_vector(31 downto 0) ); -- output
end register32 ;

architecture logic of register32 is
begin
	process ( clk )
	begin
		-------------ASYNC CLEAR--------------
		if clr = '1' then
			q <= (others => '0') ; 
		------------CLOCK AND LOAD------------
		elsif clk'event and clk = '1' then
			if ld = '1' then 
				q <= d ;
			end if ;
		end if;
		--------------------------------------
	end process ;
end logic ;