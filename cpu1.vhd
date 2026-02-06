library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity cpu1 is
	port( clk : in std_logic;
			mem_clk : in std_logic;
			rst : in std_logic;
			dataIn : in std_logic_vector(31 downto 0);
			dataOut : out std_logic_vector(31 downto 0);
			addrOut : out std_logic_vector(31 downto 0);
			dOutA : out std_logic_vector(31 downto 0);
			dOutB : out std_logic_vector(31 downto 0);
			dOutC : out std_logic;
			dOutZ : out std_logic;
			dOutIR : out std_logic_vector(31 downto 0);
			dOutPC : out std_logic_vector(31 downto 0);
			wEn : out std_logic;
			outT : out std_logic_vector(2 downto 0);
			wen_mem : out std_logic;
			en_mem : out std_logic);
end cpu1;

architecture logic of cpu1 is
	component datapath
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
	end component;

	component control is
	port( Clk, mClk : in std_logic;
			enable : in std_logic;
			statusC, statusZ : in std_logic;
			inst : in std_logic_vector(31 downto 0);
			A_Mux, B_Mux : out std_logic;
			Im_Mux1, Reg_Mux : out std_logic;
			Im_Mux2, Data_Mux : out std_logic_vector(1 downto 0);
			ALU_op : out std_logic_vector(2 downto 0);
			Clr_A, Ld_A : out std_logic;
			Clr_B, Ld_B : out std_logic;
			Clr_C, Ld_C : out std_logic;
			Clr_Z, Ld_Z : out std_logic;
			Inc_PC, Ld_PC : out std_logic;
			Clr_IR, Ld_IR : out std_logic;
			T : out std_logic_vector(2 downto 0);
			wen, en : out std_logic);
	end component;

	component reset_circuit 
	port( reset : in std_logic; 
			clk : in std_logic;
			enable_PD : out std_logic := '1';
			clr_PC : out std_logic);
	end component;

	signal dp_mux1, dp_clrA, dp_ldA, dp_clrB, dp_ldB, dp_clrC, dp_ldC, dp_clrZ,
			 dp_ldZ, memWEN, memEN, dp_muxA, dp_muxB : std_logic;
	signal mux_data, reg, enpd, irlc, irld, pInc, pclr, pcld, out0, out1, out7, out6 : std_logic;
	signal outIR, memOut, memIn : std_logic_vector(31 downto 0);
	signal memAddr : std_logic_vector(7 downto 0);
	signal alu : std_logic_vector(2 downto 0);
	signal dp_mux2, dp_muxData : std_logic_vector(1 downto 0);

begin
	dat : datapath port map(
		clk, mem_clk, 
		memWEN, memEN,
		dp_clrA, dp_ldA, 
		dp_clrB, dp_ldB, 
		dp_clrC, dp_ldC, 
		dp_clrZ, dp_ldZ,
		pclr, pcld, 
		irlc, irld,
		dOutA, dOutB, 
		out0, out1, 
		dOutPC, outIR, pInc,
		addrOut, dataIn, dataOut, 
		memOut, memIn, memAddr, 
		dp_muxData, reg, 
		dp_muxA, dp_muxB, 
		dp_mux1, dp_mux2,
		alu
	);

	control_unit : control port map(
		clk, mem_clk, 
		enpd, out0, out1, 
		outIR,
		dp_muxA, dp_muxB, 
		dp_mux1, reg,
		dp_mux2, dp_muxData,
		alu, 
		dp_clrA, dp_ldA, 
		dp_clrB, dp_ldB, 
		dp_clrC, dp_ldC, 
		dp_clrZ, dp_ldZ,
		pInc, pcld, 
		irlc, irld,
		outT, 
		memWEN, memEN
	);

	reset : reset_circuit port map(rst, clk, enpd, pclr);
	
	dOutC <= out0;
	dOutZ <= out1;
	dOutIR <= outIR;
	wen_mem <= out7;
	en_mem <= out6;
end logic;
