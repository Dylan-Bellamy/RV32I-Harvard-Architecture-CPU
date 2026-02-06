library ieee;
use ieee.std_logic_1164.all;

entity cpu_test_sim is
	port(
		cpuClk : in std_logic;
		memClk : in std_logic;
		rst : in std_logic;
		-- Debug data.
		outA, outB : out std_logic_vector(31 downto 0);
		outC, outZ : out std_logic;
		outIR : out std_logic_vector(31 downto 0);
		outPC : out std_logic_vector(31 downto 0);
		-- Processor-Inst Memory Interface.
		addrOut : out std_logic_vector(5 downto 0);
		wEn : out std_logic;
		memDataOut : out std_logic_vector(31 downto 0);
		memDataIn : out std_logic_vector(31 downto 0);
		-- Processor State
		T_Info : out std_logic_vector(2 downto 0);
		--data Memory Interface
		wen_mem, en_mem : out std_logic);
end cpu_test_sim;

architecture logic of cpu_test_sim is
	component system_memory
		port(
			address 	: in 	std_logic_vector (5 downto 0);
			clock 	: in 	std_logic ;
			data 		: in 	std_logic_vector (31 downto 0);
			wren 		: in 	std_logic ;
			q 			: out std_logic_vector (31 downto 0)
 );
 end component;
 
	component cpu1
		port(
			clk 		: in std_logic;
			mem_clk 	: in std_logic;
			rst 		: in std_logic;
			dataIn 	: in std_logic_vector(31 downto 0); 
			dataOut 	: out std_logic_vector(31 downto 0);
			addrOut 	: out std_logic_vector(31 downto 0);
			wEn : out std_logic;
			dOutA, dOutB : out std_logic_vector(31 downto 0);
			dOutC, dOutZ : out std_logic;
			dOutIR : out std_logic_vector(31 downto 0);
			dOutPC : out std_logic_vector(31 downto 0);
			outT : out std_logic_vector(2 downto 0);
			wen_mem, en_mem : out std_logic);
	end component;
	
	signal cpu_to_mem: std_logic_vector(31 downto 0);
	signal mem_to_cpu: std_logic_vector(31 downto 0);
	signal add_from_cpu: std_logic_vector(31 downto 0);
	signal wen_from_cpu: std_logic;

begin
 -- Component instantiations.
	main_memory : system_memory
		port map(
			 address => add_from_cpu(5 downto 0),
			 clock => memClk,
			 data => cpu_to_mem,
			 wren => wen_from_cpu,
			 q => mem_to_cpu
		 );
	main_processor : cpu1
		port map(
		 clk => cpuClk,
		 mem_clk => memClk,
		 rst => rst,
		 dataIn => mem_to_cpu,
		 dataOut => cpu_to_mem,
		 addrOut => add_from_cpu,
		 wEn => wen_from_cpu,
		 dOutA => outA,
		 dOutB => outB,
		 dOutC => outC,
		 dOutZ => outZ,
		 dOutIR => outIR,
		 dOutPC => outPC,
		 outT => T_Info,
		 wen_mem => wen_mem,
		 en_mem => en_mem
		 );
	
	addrOut <= add_from_cpu(5 downto 0);
	wEn <= wen_from_cpu;
	memDataOut <= mem_to_cpu;
	memDataIn <= cpu_to_mem;
end logic;