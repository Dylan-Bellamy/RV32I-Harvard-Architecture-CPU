library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity datapath is
	port(	Clk, mClk : in std_logic; -- Clocks Signals
			wen, en : in std_logic;   -- Memory Signals
			---------REGISTER CONTROL SIGNALS----------
			Clr_A, Ld_A : in std_logic;
			Clr_B, Ld_B : in std_logic;
			Clr_C, Ld_C : in std_logic;
			Clr_Z, Ld_Z : in std_logic;
			Clr_PC, Ld_PC : in std_logic;
			Clr_IR, Ld_IR : in std_logic;
			-------------REGISTER OUTPUTS--------------
			Out_A : out std_logic_vector(31 downto 0);
			Out_B : out std_logic_vector(31 downto 0);
			Out_C : out std_logic;
			Out_Z : out std_logic;
			Out_PC : out std_logic_vector(31 downto 0);
			Out_IR : out std_logic_vector(31 downto 0);
			
			Inc_PC : in std_logic; -- Increment PC Input
			-------ADDRESS AND DATA BUS SIGNALS--------
			Addr_Out : out std_logic_vector(31 downto 0);
			Data_In : in std_logic_vector(31 downto 0);
			Data_Out : out std_logic_vector(31 downto 0);
			Mem_Out : out std_logic_vector(31 downto 0);
			Mem_In : out std_logic_vector(31 downto 0);
			Mem_Addr : out std_logic_vector(7 downto 0);
			-----------MULTIPLEXER CONTROLS------------
			Data_Mux : in std_logic_vector(1 downto 0);
			Reg_Mux : in std_logic;
			A_Mux, B_Mux : in std_logic;
			Im_Mux1 : in std_logic;
			Im_Mux2 : in std_logic_vector(1 downto 0);
			------------ALU OPERATION SIGNAL-----------
			Alu_Opcode : in std_logic_vector(2 downto 0));
end datapath;

architecture logic of datapath is
	--------------------COMPONENTS-------------------
	component alu 
	port(	a : in std_logic_vector(31 downto 0);
			b : in std_logic_vector(31 downto 0);
			op : in std_logic_vector(2 downto 0);
			result : out std_logic_vector(31 downto 0);
			cout : out std_logic;
			zero : out std_logic);
	end component;
	
	component pc
	port(	clk, clr, ld : in std_logic; -- posedge clock, high async. clear, high load
			inc : in std_logic; -- increment input
			d : in std_logic_vector(31 downto 0);	-- data
			q : inout std_logic_vector(31 downto 0)); -- output 
	end component;
	
	component register1
	port( clk, clr, ld : in std_logic; -- posedge clock, high async. clear, high load
			d : in std_logic;	-- data
			q : out std_logic); -- output
	end component;
	
	component register32 
	port( clk, clr, ld : in std_logic; -- posedge clock, high async. clear, high load
			d : in std_logic_vector(31 downto 0);	-- data
			q : out std_logic_vector(31 downto 0)); -- output
	end component;
	
	component data_memory
	port( clk : in std_logic;
			addr : in unsigned(7 downto 0);
			data_in : in std_logic_vector(31 downto 0);
			en : in std_logic;
			wen : in std_logic;
			data_out : out std_logic_vector(31 downto 0));
	end component;
	
	component mux2to1
	port( s : in std_logic;
			w0 : in std_logic_vector(31 downto 0);
			w1 : in std_logic_vector(31 downto 0);
			f : out std_logic_vector(31 downto 0));
	end component;
	
	component mux4to1
	port( s : in std_logic_vector(1 downto 0);
			w0 : in std_logic_vector(31 downto 0);
			w1 : in std_logic_vector(31 downto 0);
			w2 : in std_logic_vector(31 downto 0);
			w3 : in std_logic_vector(31 downto 0);
			f : out std_logic_vector(31 downto 0));
	end component;
	
	component lower_zero_extender
	port( imm_in : in std_logic_vector(31 downto 0);
			imm_out : out std_logic_vector(31 downto 0));
	end component;
	
	component upper_zero_extender
	port( imm_in : in std_logic_vector(31 downto 0);
			imm_out : out std_logic_vector(31 downto 0));
	end component;
	
	component reducer
	port( red_in : in std_logic_vector(31 downto 0);
			red_out : out unsigned(7 downto 0));
	end component;
	---------------------SIGNALS---------------------
	signal signal_out_A : std_logic_vector(31 downto 0) := (others => '0');
	signal signal_out_B : std_logic_vector(31 downto 0) := (others => '0');
	signal carry_out_flag : std_logic := '0';
	signal zero_flag : std_logic := '0';
	signal signal_out_PC : std_logic_vector(31 downto 0) := (others => '0');
	signal signal_out_IR : std_logic_vector(31 downto 0) := (others => '0');
	
	signal signal_data_bus : std_logic_vector(31 downto 0) := (others => '0');
	
	signal signal_out_MuxA : std_logic_vector(31 downto 0) := (others => '0');
	signal signal_out_MuxB : std_logic_vector(31 downto 0) := (others => '0');
	signal signal_out_MuxReg : std_logic_vector(31 downto 0) := (others => '0');
	signal signal_out_MuxData : std_logic_vector(31 downto 0) := (others => '0');
	signal signal_out_MuxIm1 : std_logic_vector(31 downto 0) := (others => '0');
	signal signal_out_MuxIm2 : std_logic_vector(31 downto 0) := (others => '0');
	
	signal upper_imm : std_logic_vector(31 downto 0) := (others => '0');
	signal lower_imm : std_logic_vector(31 downto 0) := (others => '0');
	
	signal reducer_out : unsigned(7 downto 0) := (others => '0');
	
	signal signal_data_out : std_logic_vector(31 downto 0) := (others => '0');
	
	signal alu_out : std_logic_vector(31 downto 0) := (others => '0');
begin
	A : register32 port map (Clk, Clr_A, Ld_A, signal_out_MuxA, signal_out_A);
	B : register32 port map (Clk, Clr_B, Ld_B, signal_out_MuxB, signal_out_B);
	C : register1 port map (Clk, Clr_C, Ld_C, carry_out_flag, Out_C);
	Z : register1 port map (Clk, Clr_Z, Ld_Z, zero_flag, Out_Z);
	ProgramCounter : pc port map (Clk, Clr_PC, Ld_PC, Inc_PC, lower_imm, signal_out_PC);
	IR : register32 port map (Clk, Clr_IR, Ld_IR, signal_data_bus, signal_out_IR);
	
	MuxA : mux2to1 port map (A_Mux, signal_data_bus, lower_imm, signal_out_MuxA);
	MuxB : mux2to1 port map (B_Mux, signal_data_bus, lower_imm, signal_out_MuxB);
	MuxReg : mux2to1 port map (Reg_Mux, signal_out_A, signal_out_B, signal_out_MuxReg);
	MuxData : mux4to1 port map (Data_Mux, Data_In, signal_data_out, alu_out, x"00000000", signal_data_bus);
	MuxIm1 : mux2to1 port map (Im_Mux1, signal_out_A, upper_imm, signal_out_MuxIm1);
	MuxIm2 : mux4to1 port map (Im_Mux2, signal_out_B, lower_imm, x"00000001", x"00000000", signal_out_MuxIm2);
	
	UpperImm : upper_zero_extender port map (signal_out_IR, upper_imm);
	LowerImm : lower_zero_extender port map (signal_out_IR, lower_imm);
	
	Red : reducer port map (signal_out_IR, reducer_out);
	
	DataMemory : data_memory port map (Clk, reducer_out, signal_out_MuxReg, en, wen, signal_data_out);
	
	ALU0 : alu port map (signal_out_MuxIm1, signal_out_MuxIm2, Alu_Opcode, alu_out, carry_out_flag, zero_flag);
	
	----------CONNECTING SIGNALS TO THEIR OUTPUTS-----------
	Out_A <= signal_out_A;
	Out_B <= signal_out_B;
	Out_IR <= signal_out_IR;
	Out_PC <= signal_out_PC;
	Addr_Out <= signal_out_PC;
	
	Data_Out <= signal_data_bus;
	Mem_In <=  signal_out_MuxReg;
	Mem_Out <= signal_data_out;
	Mem_Addr <= std_logic_vector(reducer_out);
end logic;