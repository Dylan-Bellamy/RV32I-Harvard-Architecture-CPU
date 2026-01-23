library ieee ; 
use ieee.std_logic_1164.all ;
use ieee.std_logic_arith.all ;
use ieee.std_logic_unsigned.all ;

entity pc is 
	port (clk, clr, ld : in std_logic ; -- posedge clock, high async. clear, high load
			inc : in std_logic ; -- increment input
			d : in std_logic_vector(31 downto 0) ;	-- data
			q : inout std_logic_vector(31 downto 0) ); -- output 
end pc ;

architecture logic of pc is
	signal q_reg : std_logic_vector(31 downto 0) := (others => '0') ; -- pc + 4 variable
	signal add : std_logic_vector(31 downto 0) ;
begin
	----------------OUTPUT-----------------
	add <= q_reg + 4;
	----------------REGISTER-----------------
	process ( clk )
	begin
		-------------ASYNC CLEAR--------------
		if clr = '1' then
			q_reg <= (others => '0') ; 
		------------CLOCK AND LOAD------------
		elsif clk'event and clk = '1' then
			if ld = '1' then 
				---------SELECT INPUT-----------
				if inc = '1' then 
					q_reg <= add ;
				else 
					q_reg <= d ;
				end if ;								 
				--------------------------------
			end if ;
		end if;
		--------------------------------------
	end process ;
	
	q <= q_reg ;
end logic ;