library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity alu is
	port(	a : in std_logic_vector(31 downto 0);
			b : in std_logic_vector(31 downto 0);
			op : in std_logic_vector(2 downto 0);
			result : out std_logic_vector(31 downto 0);
			cout : out std_logic;
			zero : out std_logic);
end alu;

architecture logic of alu is 
	component fulladder32
	port(	Cin: in std_logic;
			x, y : in std_logic_vector(31 downto 0);
			s : out std_logic_vector(31 downto 0);
			Cout : out std_logic);
	end component;
	
	signal reg_result : std_logic_vector(31 downto 0) := (others => '0');
	signal add_result : std_logic_vector(31 downto 0) := (others => '0');
	signal sub_result : std_logic_vector(31 downto 0) := (others => '0');
	signal add_cout : std_logic := '0';
	signal sub_cout : std_logic := '0';
begin 
	add: fulladder32 port map (op(2), a, b, add_result, add_cout);
	sub: fulladder32 port map (op(2), a, not b, sub_result, sub_cout);
	
	process(a, b, op)
	begin
		case op is
			when "000" => -- AND
				reg_result <= (a and b);
				cout <= '0';
			when "001" => -- OR
				reg_result <= (a or b);
				cout <= '0';
			when "010" => -- ADD
				reg_result <= add_result;
				cout <= add_cout;
			when "011" => -- b
				reg_result <= b;
				cout <= '0';
			when "110" => -- SUB
				reg_result <= sub_result;
				cout <= sub_cout;
			when "100" => -- a SLL 1
				reg_result <= a(30 downto 0) & '0';
				cout <= a(31);
			when "101" => -- a SRL 1
				reg_result <= '0' & a(31 downto 1);
				cout <= '0';
			when others => -- a
				reg_result <= a;
				cout <= '0';
		end case;
		
		if reg_result = x"00000000" then 
			zero <= '1';
		else zero <= '0';
		end if;
	end process; 
	
	result <= reg_result;
end logic;