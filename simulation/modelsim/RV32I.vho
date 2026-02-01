-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "02/01/2026 11:06:18"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	datapath IS
    PORT (
	Clk : IN std_logic;
	mClk : IN std_logic;
	wen : IN std_logic;
	en : IN std_logic;
	Clr_A : IN std_logic;
	Ld_A : IN std_logic;
	Clr_B : IN std_logic;
	Ld_B : IN std_logic;
	Clr_C : IN std_logic;
	Ld_C : IN std_logic;
	Clr_Z : IN std_logic;
	Ld_Z : IN std_logic;
	Clr_PC : IN std_logic;
	Ld_PC : IN std_logic;
	Clr_IR : IN std_logic;
	Ld_IR : IN std_logic;
	Out_A : OUT std_logic_vector(31 DOWNTO 0);
	Out_B : OUT std_logic_vector(31 DOWNTO 0);
	Out_C : OUT std_logic;
	Out_Z : OUT std_logic;
	Out_PC : OUT std_logic_vector(31 DOWNTO 0);
	Out_IR : OUT std_logic_vector(31 DOWNTO 0);
	Inc_PC : IN std_logic;
	Addr_Out : OUT std_logic_vector(31 DOWNTO 0);
	Data_In : IN std_logic_vector(31 DOWNTO 0);
	Data_Out : OUT std_logic_vector(31 DOWNTO 0);
	Mem_Out : OUT std_logic_vector(31 DOWNTO 0);
	Mem_In : OUT std_logic_vector(31 DOWNTO 0);
	Mem_Addr : OUT std_logic_vector(7 DOWNTO 0);
	Data_Mux : IN std_logic_vector(1 DOWNTO 0);
	Reg_Mux : IN std_logic;
	A_Mux : IN std_logic;
	B_Mux : IN std_logic;
	Im_Mux1 : IN std_logic;
	Im_Mux2 : IN std_logic_vector(1 DOWNTO 0);
	Alu_Opcode : IN std_logic_vector(2 DOWNTO 0)
	);
END datapath;

-- Design Ports Information
-- mClk	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[0]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[1]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[3]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[4]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[5]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[6]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[7]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[8]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[9]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[10]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[11]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[12]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[13]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[14]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[15]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[16]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[17]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[18]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[19]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[20]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[21]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[22]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[23]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[24]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[25]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[26]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[27]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[28]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[29]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[30]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_A[31]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[0]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[1]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[2]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[3]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[4]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[5]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[6]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[7]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[8]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[9]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[10]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[11]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[12]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[13]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[14]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[15]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[16]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[17]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[18]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[19]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[20]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[21]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[22]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[23]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[24]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[25]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[26]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[27]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[28]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[29]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[30]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_B[31]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_C	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_Z	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[0]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[1]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[2]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[3]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[4]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[5]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[6]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[7]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[8]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[9]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[10]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[11]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[12]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[13]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[14]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[15]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[16]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[17]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[18]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[19]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[20]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[21]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[22]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[23]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[24]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[25]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[26]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[27]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[28]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[29]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[30]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_PC[31]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[0]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[1]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[2]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[4]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[5]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[6]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[7]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[8]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[9]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[10]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[11]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[12]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[13]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[14]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[15]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[16]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[17]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[18]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[19]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[20]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[21]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[22]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[23]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[24]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[25]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[26]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[27]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[28]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[29]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[30]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out_IR[31]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[0]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[1]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[2]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[3]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[4]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[5]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[6]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[7]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[8]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[9]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[10]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[11]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[12]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[13]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[14]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[15]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[17]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[18]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[19]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[20]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[21]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[22]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[23]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[24]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[25]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[26]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[27]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[28]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[29]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[30]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_Out[31]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[0]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[1]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[2]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[3]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[5]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[6]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[7]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[8]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[9]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[10]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[11]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[12]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[13]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[14]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[15]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[16]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[17]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[18]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[19]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[20]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[21]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[22]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[23]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[24]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[25]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[26]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[27]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[28]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[29]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[30]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[31]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[0]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[1]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[3]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[4]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[6]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[7]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[8]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[9]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[10]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[11]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[12]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[13]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[14]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[15]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[16]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[17]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[18]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[19]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[20]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[21]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[22]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[23]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[24]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[25]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[26]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[27]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[28]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[29]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[30]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Out[31]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[2]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[4]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[5]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[6]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[7]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[8]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[9]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[10]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[11]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[12]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[13]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[14]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[15]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[16]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[17]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[18]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[19]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[20]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[21]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[22]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[23]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[24]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[25]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[26]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[27]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[28]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[29]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[30]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_In[31]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Addr[0]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Addr[1]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Addr[2]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Addr[3]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Addr[4]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Addr[5]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Addr[6]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mem_Addr[7]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Mux[0]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Mux[1]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Im_Mux2[1]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Im_Mux2[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Alu_Opcode[2]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Im_Mux1	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Alu_Opcode[1]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Alu_Opcode[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[2]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[3]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[4]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[5]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[6]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[7]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[8]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[9]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[10]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[11]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[12]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[13]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[14]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[15]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[16]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[17]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[18]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[19]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[20]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[21]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[22]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[23]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[24]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[25]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[26]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[27]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[28]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[29]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[30]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[31]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg_Mux	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Mux	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clr_A	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ld_A	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Mux	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clr_B	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ld_B	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ld_C	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clr_C	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ld_Z	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clr_Z	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clr_PC	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ld_PC	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inc_PC	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clr_IR	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ld_IR	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wen	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF datapath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_mClk : std_logic;
SIGNAL ww_wen : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_Clr_A : std_logic;
SIGNAL ww_Ld_A : std_logic;
SIGNAL ww_Clr_B : std_logic;
SIGNAL ww_Ld_B : std_logic;
SIGNAL ww_Clr_C : std_logic;
SIGNAL ww_Ld_C : std_logic;
SIGNAL ww_Clr_Z : std_logic;
SIGNAL ww_Ld_Z : std_logic;
SIGNAL ww_Clr_PC : std_logic;
SIGNAL ww_Ld_PC : std_logic;
SIGNAL ww_Clr_IR : std_logic;
SIGNAL ww_Ld_IR : std_logic;
SIGNAL ww_Out_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Out_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Out_C : std_logic;
SIGNAL ww_Out_Z : std_logic;
SIGNAL ww_Out_PC : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Out_IR : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Inc_PC : std_logic;
SIGNAL ww_Addr_Out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Data_In : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Data_Out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Mem_Out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Mem_In : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Mem_Addr : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Data_Mux : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Reg_Mux : std_logic;
SIGNAL ww_A_Mux : std_logic;
SIGNAL ww_B_Mux : std_logic;
SIGNAL ww_Im_Mux1 : std_logic;
SIGNAL ww_Im_Mux2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Alu_Opcode : std_logic_vector(2 DOWNTO 0);
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Clr_IR~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clr_A~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clr_B~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clr_PC~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mClk~input_o\ : std_logic;
SIGNAL \Out_A[0]~output_o\ : std_logic;
SIGNAL \Out_A[1]~output_o\ : std_logic;
SIGNAL \Out_A[2]~output_o\ : std_logic;
SIGNAL \Out_A[3]~output_o\ : std_logic;
SIGNAL \Out_A[4]~output_o\ : std_logic;
SIGNAL \Out_A[5]~output_o\ : std_logic;
SIGNAL \Out_A[6]~output_o\ : std_logic;
SIGNAL \Out_A[7]~output_o\ : std_logic;
SIGNAL \Out_A[8]~output_o\ : std_logic;
SIGNAL \Out_A[9]~output_o\ : std_logic;
SIGNAL \Out_A[10]~output_o\ : std_logic;
SIGNAL \Out_A[11]~output_o\ : std_logic;
SIGNAL \Out_A[12]~output_o\ : std_logic;
SIGNAL \Out_A[13]~output_o\ : std_logic;
SIGNAL \Out_A[14]~output_o\ : std_logic;
SIGNAL \Out_A[15]~output_o\ : std_logic;
SIGNAL \Out_A[16]~output_o\ : std_logic;
SIGNAL \Out_A[17]~output_o\ : std_logic;
SIGNAL \Out_A[18]~output_o\ : std_logic;
SIGNAL \Out_A[19]~output_o\ : std_logic;
SIGNAL \Out_A[20]~output_o\ : std_logic;
SIGNAL \Out_A[21]~output_o\ : std_logic;
SIGNAL \Out_A[22]~output_o\ : std_logic;
SIGNAL \Out_A[23]~output_o\ : std_logic;
SIGNAL \Out_A[24]~output_o\ : std_logic;
SIGNAL \Out_A[25]~output_o\ : std_logic;
SIGNAL \Out_A[26]~output_o\ : std_logic;
SIGNAL \Out_A[27]~output_o\ : std_logic;
SIGNAL \Out_A[28]~output_o\ : std_logic;
SIGNAL \Out_A[29]~output_o\ : std_logic;
SIGNAL \Out_A[30]~output_o\ : std_logic;
SIGNAL \Out_A[31]~output_o\ : std_logic;
SIGNAL \Out_B[0]~output_o\ : std_logic;
SIGNAL \Out_B[1]~output_o\ : std_logic;
SIGNAL \Out_B[2]~output_o\ : std_logic;
SIGNAL \Out_B[3]~output_o\ : std_logic;
SIGNAL \Out_B[4]~output_o\ : std_logic;
SIGNAL \Out_B[5]~output_o\ : std_logic;
SIGNAL \Out_B[6]~output_o\ : std_logic;
SIGNAL \Out_B[7]~output_o\ : std_logic;
SIGNAL \Out_B[8]~output_o\ : std_logic;
SIGNAL \Out_B[9]~output_o\ : std_logic;
SIGNAL \Out_B[10]~output_o\ : std_logic;
SIGNAL \Out_B[11]~output_o\ : std_logic;
SIGNAL \Out_B[12]~output_o\ : std_logic;
SIGNAL \Out_B[13]~output_o\ : std_logic;
SIGNAL \Out_B[14]~output_o\ : std_logic;
SIGNAL \Out_B[15]~output_o\ : std_logic;
SIGNAL \Out_B[16]~output_o\ : std_logic;
SIGNAL \Out_B[17]~output_o\ : std_logic;
SIGNAL \Out_B[18]~output_o\ : std_logic;
SIGNAL \Out_B[19]~output_o\ : std_logic;
SIGNAL \Out_B[20]~output_o\ : std_logic;
SIGNAL \Out_B[21]~output_o\ : std_logic;
SIGNAL \Out_B[22]~output_o\ : std_logic;
SIGNAL \Out_B[23]~output_o\ : std_logic;
SIGNAL \Out_B[24]~output_o\ : std_logic;
SIGNAL \Out_B[25]~output_o\ : std_logic;
SIGNAL \Out_B[26]~output_o\ : std_logic;
SIGNAL \Out_B[27]~output_o\ : std_logic;
SIGNAL \Out_B[28]~output_o\ : std_logic;
SIGNAL \Out_B[29]~output_o\ : std_logic;
SIGNAL \Out_B[30]~output_o\ : std_logic;
SIGNAL \Out_B[31]~output_o\ : std_logic;
SIGNAL \Out_C~output_o\ : std_logic;
SIGNAL \Out_Z~output_o\ : std_logic;
SIGNAL \Out_PC[0]~output_o\ : std_logic;
SIGNAL \Out_PC[1]~output_o\ : std_logic;
SIGNAL \Out_PC[2]~output_o\ : std_logic;
SIGNAL \Out_PC[3]~output_o\ : std_logic;
SIGNAL \Out_PC[4]~output_o\ : std_logic;
SIGNAL \Out_PC[5]~output_o\ : std_logic;
SIGNAL \Out_PC[6]~output_o\ : std_logic;
SIGNAL \Out_PC[7]~output_o\ : std_logic;
SIGNAL \Out_PC[8]~output_o\ : std_logic;
SIGNAL \Out_PC[9]~output_o\ : std_logic;
SIGNAL \Out_PC[10]~output_o\ : std_logic;
SIGNAL \Out_PC[11]~output_o\ : std_logic;
SIGNAL \Out_PC[12]~output_o\ : std_logic;
SIGNAL \Out_PC[13]~output_o\ : std_logic;
SIGNAL \Out_PC[14]~output_o\ : std_logic;
SIGNAL \Out_PC[15]~output_o\ : std_logic;
SIGNAL \Out_PC[16]~output_o\ : std_logic;
SIGNAL \Out_PC[17]~output_o\ : std_logic;
SIGNAL \Out_PC[18]~output_o\ : std_logic;
SIGNAL \Out_PC[19]~output_o\ : std_logic;
SIGNAL \Out_PC[20]~output_o\ : std_logic;
SIGNAL \Out_PC[21]~output_o\ : std_logic;
SIGNAL \Out_PC[22]~output_o\ : std_logic;
SIGNAL \Out_PC[23]~output_o\ : std_logic;
SIGNAL \Out_PC[24]~output_o\ : std_logic;
SIGNAL \Out_PC[25]~output_o\ : std_logic;
SIGNAL \Out_PC[26]~output_o\ : std_logic;
SIGNAL \Out_PC[27]~output_o\ : std_logic;
SIGNAL \Out_PC[28]~output_o\ : std_logic;
SIGNAL \Out_PC[29]~output_o\ : std_logic;
SIGNAL \Out_PC[30]~output_o\ : std_logic;
SIGNAL \Out_PC[31]~output_o\ : std_logic;
SIGNAL \Out_IR[0]~output_o\ : std_logic;
SIGNAL \Out_IR[1]~output_o\ : std_logic;
SIGNAL \Out_IR[2]~output_o\ : std_logic;
SIGNAL \Out_IR[3]~output_o\ : std_logic;
SIGNAL \Out_IR[4]~output_o\ : std_logic;
SIGNAL \Out_IR[5]~output_o\ : std_logic;
SIGNAL \Out_IR[6]~output_o\ : std_logic;
SIGNAL \Out_IR[7]~output_o\ : std_logic;
SIGNAL \Out_IR[8]~output_o\ : std_logic;
SIGNAL \Out_IR[9]~output_o\ : std_logic;
SIGNAL \Out_IR[10]~output_o\ : std_logic;
SIGNAL \Out_IR[11]~output_o\ : std_logic;
SIGNAL \Out_IR[12]~output_o\ : std_logic;
SIGNAL \Out_IR[13]~output_o\ : std_logic;
SIGNAL \Out_IR[14]~output_o\ : std_logic;
SIGNAL \Out_IR[15]~output_o\ : std_logic;
SIGNAL \Out_IR[16]~output_o\ : std_logic;
SIGNAL \Out_IR[17]~output_o\ : std_logic;
SIGNAL \Out_IR[18]~output_o\ : std_logic;
SIGNAL \Out_IR[19]~output_o\ : std_logic;
SIGNAL \Out_IR[20]~output_o\ : std_logic;
SIGNAL \Out_IR[21]~output_o\ : std_logic;
SIGNAL \Out_IR[22]~output_o\ : std_logic;
SIGNAL \Out_IR[23]~output_o\ : std_logic;
SIGNAL \Out_IR[24]~output_o\ : std_logic;
SIGNAL \Out_IR[25]~output_o\ : std_logic;
SIGNAL \Out_IR[26]~output_o\ : std_logic;
SIGNAL \Out_IR[27]~output_o\ : std_logic;
SIGNAL \Out_IR[28]~output_o\ : std_logic;
SIGNAL \Out_IR[29]~output_o\ : std_logic;
SIGNAL \Out_IR[30]~output_o\ : std_logic;
SIGNAL \Out_IR[31]~output_o\ : std_logic;
SIGNAL \Addr_Out[0]~output_o\ : std_logic;
SIGNAL \Addr_Out[1]~output_o\ : std_logic;
SIGNAL \Addr_Out[2]~output_o\ : std_logic;
SIGNAL \Addr_Out[3]~output_o\ : std_logic;
SIGNAL \Addr_Out[4]~output_o\ : std_logic;
SIGNAL \Addr_Out[5]~output_o\ : std_logic;
SIGNAL \Addr_Out[6]~output_o\ : std_logic;
SIGNAL \Addr_Out[7]~output_o\ : std_logic;
SIGNAL \Addr_Out[8]~output_o\ : std_logic;
SIGNAL \Addr_Out[9]~output_o\ : std_logic;
SIGNAL \Addr_Out[10]~output_o\ : std_logic;
SIGNAL \Addr_Out[11]~output_o\ : std_logic;
SIGNAL \Addr_Out[12]~output_o\ : std_logic;
SIGNAL \Addr_Out[13]~output_o\ : std_logic;
SIGNAL \Addr_Out[14]~output_o\ : std_logic;
SIGNAL \Addr_Out[15]~output_o\ : std_logic;
SIGNAL \Addr_Out[16]~output_o\ : std_logic;
SIGNAL \Addr_Out[17]~output_o\ : std_logic;
SIGNAL \Addr_Out[18]~output_o\ : std_logic;
SIGNAL \Addr_Out[19]~output_o\ : std_logic;
SIGNAL \Addr_Out[20]~output_o\ : std_logic;
SIGNAL \Addr_Out[21]~output_o\ : std_logic;
SIGNAL \Addr_Out[22]~output_o\ : std_logic;
SIGNAL \Addr_Out[23]~output_o\ : std_logic;
SIGNAL \Addr_Out[24]~output_o\ : std_logic;
SIGNAL \Addr_Out[25]~output_o\ : std_logic;
SIGNAL \Addr_Out[26]~output_o\ : std_logic;
SIGNAL \Addr_Out[27]~output_o\ : std_logic;
SIGNAL \Addr_Out[28]~output_o\ : std_logic;
SIGNAL \Addr_Out[29]~output_o\ : std_logic;
SIGNAL \Addr_Out[30]~output_o\ : std_logic;
SIGNAL \Addr_Out[31]~output_o\ : std_logic;
SIGNAL \Data_Out[0]~output_o\ : std_logic;
SIGNAL \Data_Out[1]~output_o\ : std_logic;
SIGNAL \Data_Out[2]~output_o\ : std_logic;
SIGNAL \Data_Out[3]~output_o\ : std_logic;
SIGNAL \Data_Out[4]~output_o\ : std_logic;
SIGNAL \Data_Out[5]~output_o\ : std_logic;
SIGNAL \Data_Out[6]~output_o\ : std_logic;
SIGNAL \Data_Out[7]~output_o\ : std_logic;
SIGNAL \Data_Out[8]~output_o\ : std_logic;
SIGNAL \Data_Out[9]~output_o\ : std_logic;
SIGNAL \Data_Out[10]~output_o\ : std_logic;
SIGNAL \Data_Out[11]~output_o\ : std_logic;
SIGNAL \Data_Out[12]~output_o\ : std_logic;
SIGNAL \Data_Out[13]~output_o\ : std_logic;
SIGNAL \Data_Out[14]~output_o\ : std_logic;
SIGNAL \Data_Out[15]~output_o\ : std_logic;
SIGNAL \Data_Out[16]~output_o\ : std_logic;
SIGNAL \Data_Out[17]~output_o\ : std_logic;
SIGNAL \Data_Out[18]~output_o\ : std_logic;
SIGNAL \Data_Out[19]~output_o\ : std_logic;
SIGNAL \Data_Out[20]~output_o\ : std_logic;
SIGNAL \Data_Out[21]~output_o\ : std_logic;
SIGNAL \Data_Out[22]~output_o\ : std_logic;
SIGNAL \Data_Out[23]~output_o\ : std_logic;
SIGNAL \Data_Out[24]~output_o\ : std_logic;
SIGNAL \Data_Out[25]~output_o\ : std_logic;
SIGNAL \Data_Out[26]~output_o\ : std_logic;
SIGNAL \Data_Out[27]~output_o\ : std_logic;
SIGNAL \Data_Out[28]~output_o\ : std_logic;
SIGNAL \Data_Out[29]~output_o\ : std_logic;
SIGNAL \Data_Out[30]~output_o\ : std_logic;
SIGNAL \Data_Out[31]~output_o\ : std_logic;
SIGNAL \Mem_Out[0]~output_o\ : std_logic;
SIGNAL \Mem_Out[1]~output_o\ : std_logic;
SIGNAL \Mem_Out[2]~output_o\ : std_logic;
SIGNAL \Mem_Out[3]~output_o\ : std_logic;
SIGNAL \Mem_Out[4]~output_o\ : std_logic;
SIGNAL \Mem_Out[5]~output_o\ : std_logic;
SIGNAL \Mem_Out[6]~output_o\ : std_logic;
SIGNAL \Mem_Out[7]~output_o\ : std_logic;
SIGNAL \Mem_Out[8]~output_o\ : std_logic;
SIGNAL \Mem_Out[9]~output_o\ : std_logic;
SIGNAL \Mem_Out[10]~output_o\ : std_logic;
SIGNAL \Mem_Out[11]~output_o\ : std_logic;
SIGNAL \Mem_Out[12]~output_o\ : std_logic;
SIGNAL \Mem_Out[13]~output_o\ : std_logic;
SIGNAL \Mem_Out[14]~output_o\ : std_logic;
SIGNAL \Mem_Out[15]~output_o\ : std_logic;
SIGNAL \Mem_Out[16]~output_o\ : std_logic;
SIGNAL \Mem_Out[17]~output_o\ : std_logic;
SIGNAL \Mem_Out[18]~output_o\ : std_logic;
SIGNAL \Mem_Out[19]~output_o\ : std_logic;
SIGNAL \Mem_Out[20]~output_o\ : std_logic;
SIGNAL \Mem_Out[21]~output_o\ : std_logic;
SIGNAL \Mem_Out[22]~output_o\ : std_logic;
SIGNAL \Mem_Out[23]~output_o\ : std_logic;
SIGNAL \Mem_Out[24]~output_o\ : std_logic;
SIGNAL \Mem_Out[25]~output_o\ : std_logic;
SIGNAL \Mem_Out[26]~output_o\ : std_logic;
SIGNAL \Mem_Out[27]~output_o\ : std_logic;
SIGNAL \Mem_Out[28]~output_o\ : std_logic;
SIGNAL \Mem_Out[29]~output_o\ : std_logic;
SIGNAL \Mem_Out[30]~output_o\ : std_logic;
SIGNAL \Mem_Out[31]~output_o\ : std_logic;
SIGNAL \Mem_In[0]~output_o\ : std_logic;
SIGNAL \Mem_In[1]~output_o\ : std_logic;
SIGNAL \Mem_In[2]~output_o\ : std_logic;
SIGNAL \Mem_In[3]~output_o\ : std_logic;
SIGNAL \Mem_In[4]~output_o\ : std_logic;
SIGNAL \Mem_In[5]~output_o\ : std_logic;
SIGNAL \Mem_In[6]~output_o\ : std_logic;
SIGNAL \Mem_In[7]~output_o\ : std_logic;
SIGNAL \Mem_In[8]~output_o\ : std_logic;
SIGNAL \Mem_In[9]~output_o\ : std_logic;
SIGNAL \Mem_In[10]~output_o\ : std_logic;
SIGNAL \Mem_In[11]~output_o\ : std_logic;
SIGNAL \Mem_In[12]~output_o\ : std_logic;
SIGNAL \Mem_In[13]~output_o\ : std_logic;
SIGNAL \Mem_In[14]~output_o\ : std_logic;
SIGNAL \Mem_In[15]~output_o\ : std_logic;
SIGNAL \Mem_In[16]~output_o\ : std_logic;
SIGNAL \Mem_In[17]~output_o\ : std_logic;
SIGNAL \Mem_In[18]~output_o\ : std_logic;
SIGNAL \Mem_In[19]~output_o\ : std_logic;
SIGNAL \Mem_In[20]~output_o\ : std_logic;
SIGNAL \Mem_In[21]~output_o\ : std_logic;
SIGNAL \Mem_In[22]~output_o\ : std_logic;
SIGNAL \Mem_In[23]~output_o\ : std_logic;
SIGNAL \Mem_In[24]~output_o\ : std_logic;
SIGNAL \Mem_In[25]~output_o\ : std_logic;
SIGNAL \Mem_In[26]~output_o\ : std_logic;
SIGNAL \Mem_In[27]~output_o\ : std_logic;
SIGNAL \Mem_In[28]~output_o\ : std_logic;
SIGNAL \Mem_In[29]~output_o\ : std_logic;
SIGNAL \Mem_In[30]~output_o\ : std_logic;
SIGNAL \Mem_In[31]~output_o\ : std_logic;
SIGNAL \Mem_Addr[0]~output_o\ : std_logic;
SIGNAL \Mem_Addr[1]~output_o\ : std_logic;
SIGNAL \Mem_Addr[2]~output_o\ : std_logic;
SIGNAL \Mem_Addr[3]~output_o\ : std_logic;
SIGNAL \Mem_Addr[4]~output_o\ : std_logic;
SIGNAL \Mem_Addr[5]~output_o\ : std_logic;
SIGNAL \Mem_Addr[6]~output_o\ : std_logic;
SIGNAL \Mem_Addr[7]~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \A_Mux~input_o\ : std_logic;
SIGNAL \Data_Mux[0]~input_o\ : std_logic;
SIGNAL \wen~input_o\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \DataMemory|data_out[14]~0_combout\ : std_logic;
SIGNAL \B_Mux~input_o\ : std_logic;
SIGNAL \MuxB|f[0]~0_combout\ : std_logic;
SIGNAL \Clr_B~input_o\ : std_logic;
SIGNAL \Clr_B~inputclkctrl_outclk\ : std_logic;
SIGNAL \Ld_B~input_o\ : std_logic;
SIGNAL \Reg_Mux~input_o\ : std_logic;
SIGNAL \MuxReg|f[0]~0_combout\ : std_logic;
SIGNAL \Data_Mux[1]~input_o\ : std_logic;
SIGNAL \Alu_Opcode[2]~input_o\ : std_logic;
SIGNAL \Alu_Opcode[1]~input_o\ : std_logic;
SIGNAL \Im_Mux2[0]~input_o\ : std_logic;
SIGNAL \Im_Mux2[1]~input_o\ : std_logic;
SIGNAL \MuxB|f[2]~2_combout\ : std_logic;
SIGNAL \MuxIm2|Mux29~0_combout\ : std_logic;
SIGNAL \MuxA|f[2]~2_combout\ : std_logic;
SIGNAL \Clr_A~input_o\ : std_logic;
SIGNAL \Clr_A~inputclkctrl_outclk\ : std_logic;
SIGNAL \Ld_A~input_o\ : std_logic;
SIGNAL \Im_Mux1~input_o\ : std_logic;
SIGNAL \ALU0|Mux29~4_combout\ : std_logic;
SIGNAL \Alu_Opcode[0]~input_o\ : std_logic;
SIGNAL \MuxIm1|f[1]~2_combout\ : std_logic;
SIGNAL \MuxIm2|Mux31~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle0|cycle0|Cout~0_combout\ : std_logic;
SIGNAL \MuxB|f[1]~1_combout\ : std_logic;
SIGNAL \MuxIm2|Mux30~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle0|cycle1|s~combout\ : std_logic;
SIGNAL \MuxIm1|f[0]~0_combout\ : std_logic;
SIGNAL \ALU0|Mux30~0_combout\ : std_logic;
SIGNAL \MuxIm1|f[2]~1_combout\ : std_logic;
SIGNAL \ALU0|Mux30~1_combout\ : std_logic;
SIGNAL \ALU0|add|cycle0|cycle0|cycle0|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|Mux30~4_combout\ : std_logic;
SIGNAL \ALU0|Mux30~5_combout\ : std_logic;
SIGNAL \ALU0|Mux30~2_combout\ : std_logic;
SIGNAL \ALU0|Mux30~3_combout\ : std_logic;
SIGNAL \Data_In[1]~input_o\ : std_logic;
SIGNAL \DataMemory|memory~41feeder_combout\ : std_logic;
SIGNAL \Clr_IR~input_o\ : std_logic;
SIGNAL \Clr_IR~inputclkctrl_outclk\ : std_logic;
SIGNAL \Ld_IR~input_o\ : std_logic;
SIGNAL \DataMemory|memory~41_q\ : std_logic;
SIGNAL \DataMemory|memory~74_combout\ : std_logic;
SIGNAL \MuxA|f[3]~3_combout\ : std_logic;
SIGNAL \MuxB|f[3]~3_combout\ : std_logic;
SIGNAL \MuxIm2|Mux28~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle0|cycle1|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle0|cycle2|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle0|cycle3|s~combout\ : std_logic;
SIGNAL \ALU0|Mux28~0_combout\ : std_logic;
SIGNAL \MuxIm1|f[3]~3_combout\ : std_logic;
SIGNAL \ALU0|add|cycle0|cycle0|cycle2|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|add|cycle0|cycle0|cycle3|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|Mux27~6_combout\ : std_logic;
SIGNAL \MuxB|f[4]~4_combout\ : std_logic;
SIGNAL \MuxIm2|Mux27~0_combout\ : std_logic;
SIGNAL \ALU0|Mux27~4_combout\ : std_logic;
SIGNAL \Data_In[5]~input_o\ : std_logic;
SIGNAL \MuxB|f[5]~5_combout\ : std_logic;
SIGNAL \MuxReg|f[5]~5_combout\ : std_logic;
SIGNAL \DataMemory|memory~47feeder_combout\ : std_logic;
SIGNAL \DataMemory|memory~47_q\ : std_logic;
SIGNAL \MuxB|f[6]~6_combout\ : std_logic;
SIGNAL \MuxIm2|Mux25~0_combout\ : std_logic;
SIGNAL \MuxA|f[6]~6_combout\ : std_logic;
SIGNAL \MuxIm2|Mux26~0_combout\ : std_logic;
SIGNAL \ALU0|add|cycle0|cycle1|cycle0|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|add|cycle0|cycle1|cycle1|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|Mux25~6_combout\ : std_logic;
SIGNAL \ALU0|Mux25~4_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle1|cycle0|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle1|cycle0|Cout~1_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle1|cycle0|Cout~2_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle1|cycle1|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle1|cycle2|s~combout\ : std_logic;
SIGNAL \ALU0|Mux25~2_combout\ : std_logic;
SIGNAL \MuxB|f[7]~7_combout\ : std_logic;
SIGNAL \MuxIm2|Mux24~0_combout\ : std_logic;
SIGNAL \ALU0|add|cycle0|cycle1|cycle2|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|Mux24~6_combout\ : std_logic;
SIGNAL \ALU0|Mux24~4_combout\ : std_logic;
SIGNAL \Data_In[8]~input_o\ : std_logic;
SIGNAL \MuxReg|f[1]~1_combout\ : std_logic;
SIGNAL \MuxReg|f[2]~2_combout\ : std_logic;
SIGNAL \MuxReg|f[3]~3_combout\ : std_logic;
SIGNAL \MuxReg|f[4]~4_combout\ : std_logic;
SIGNAL \MuxReg|f[6]~6_combout\ : std_logic;
SIGNAL \MuxReg|f[7]~7_combout\ : std_logic;
SIGNAL \MuxB|f[8]~8_combout\ : std_logic;
SIGNAL \MuxReg|f[8]~8_combout\ : std_logic;
SIGNAL \DataMemory|memory~51_q\ : std_logic;
SIGNAL \Data_In[10]~input_o\ : std_logic;
SIGNAL \DataMemory|memory~52_q\ : std_logic;
SIGNAL \Data_In[11]~input_o\ : std_logic;
SIGNAL \DataMemory|memory~53_q\ : std_logic;
SIGNAL \Data_In[12]~input_o\ : std_logic;
SIGNAL \DataMemory|memory~54feeder_combout\ : std_logic;
SIGNAL \DataMemory|memory~54_q\ : std_logic;
SIGNAL \Data_In[13]~input_o\ : std_logic;
SIGNAL \DataMemory|memory~55_q\ : std_logic;
SIGNAL \Data_In[15]~input_o\ : std_logic;
SIGNAL \MuxB|f[15]~15_combout\ : std_logic;
SIGNAL \MuxReg|f[15]~15_combout\ : std_logic;
SIGNAL \DataMemory|memory~57feeder_combout\ : std_logic;
SIGNAL \DataMemory|memory~57_q\ : std_logic;
SIGNAL \MuxData|Mux31~3_combout\ : std_logic;
SIGNAL \Data_In[16]~input_o\ : std_logic;
SIGNAL \DataMemory|memory~58_q\ : std_logic;
SIGNAL \Data_In[17]~input_o\ : std_logic;
SIGNAL \MuxIm1|f[18]~18_combout\ : std_logic;
SIGNAL \Data_In[19]~input_o\ : std_logic;
SIGNAL \MuxIm2|Mux12~0_combout\ : std_logic;
SIGNAL \ALU0|Mux12~3_combout\ : std_logic;
SIGNAL \DataMemory|memory~60_q\ : std_logic;
SIGNAL \DataMemory|memory~62_q\ : std_logic;
SIGNAL \DataMemory|memory~63feeder_combout\ : std_logic;
SIGNAL \DataMemory|memory~63_q\ : std_logic;
SIGNAL \Data_In[22]~input_o\ : std_logic;
SIGNAL \DataMemory|memory~64_q\ : std_logic;
SIGNAL \Data_In[23]~input_o\ : std_logic;
SIGNAL \DataMemory|memory~65_q\ : std_logic;
SIGNAL \Data_In[24]~input_o\ : std_logic;
SIGNAL \Data_In[25]~input_o\ : std_logic;
SIGNAL \DataMemory|memory~67feeder_combout\ : std_logic;
SIGNAL \DataMemory|memory~67_q\ : std_logic;
SIGNAL \Data_In[26]~input_o\ : std_logic;
SIGNAL \DataMemory|memory~68_q\ : std_logic;
SIGNAL \DataMemory|memory~69_q\ : std_logic;
SIGNAL \Data_In[28]~input_o\ : std_logic;
SIGNAL \DataMemory|memory~71_q\ : std_logic;
SIGNAL \Data_In[30]~input_o\ : std_logic;
SIGNAL \DataMemory|memory~72_q\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \DataMemory|memory~73_q\ : std_logic;
SIGNAL \DataMemory|data_out~32_combout\ : std_logic;
SIGNAL \Data_In[31]~input_o\ : std_logic;
SIGNAL \MuxData|Mux0~2_combout\ : std_logic;
SIGNAL \MuxA|f[31]~31_combout\ : std_logic;
SIGNAL \ALU0|Mux31~7_combout\ : std_logic;
SIGNAL \MuxIm1|f[28]~28_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle3|cycle1|s~0_combout\ : std_logic;
SIGNAL \ALU0|Mux3~3_combout\ : std_logic;
SIGNAL \MuxIm1|f[26]~26_combout\ : std_logic;
SIGNAL \MuxIm1|f[25]~25_combout\ : std_logic;
SIGNAL \MuxIm2|Mux15~0_combout\ : std_logic;
SIGNAL \MuxIm1|f[24]~24_combout\ : std_logic;
SIGNAL \ALU0|Mux8~2_combout\ : std_logic;
SIGNAL \MuxIm1|f[22]~22_combout\ : std_logic;
SIGNAL \MuxIm1|f[21]~21_combout\ : std_logic;
SIGNAL \ALU0|Mux10~2_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle1|cycle1|s~0_combout\ : std_logic;
SIGNAL \MuxIm2|Mux11~0_combout\ : std_logic;
SIGNAL \ALU0|Mux11~3_combout\ : std_logic;
SIGNAL \ALU0|add|cycle1|cycle0|cycle3|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|Mux11~4_combout\ : std_logic;
SIGNAL \MuxIm1|f[17]~17_combout\ : std_logic;
SIGNAL \ALU0|Mux14~3_combout\ : std_logic;
SIGNAL \MuxIm2|Mux15~1_combout\ : std_logic;
SIGNAL \MuxIm2|Mux16~0_combout\ : std_logic;
SIGNAL \MuxB|f[12]~12_combout\ : std_logic;
SIGNAL \MuxIm2|Mux19~0_combout\ : std_logic;
SIGNAL \MuxA|f[11]~11_combout\ : std_logic;
SIGNAL \MuxA|f[10]~10_combout\ : std_logic;
SIGNAL \MuxIm2|Mux21~0_combout\ : std_logic;
SIGNAL \MuxA|f[9]~9_combout\ : std_logic;
SIGNAL \MuxIm2|Mux22~0_combout\ : std_logic;
SIGNAL \MuxIm2|Mux23~0_combout\ : std_logic;
SIGNAL \ALU0|add|cycle0|cycle1|cycle3|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|add|cycle0|cycle2|cycle0|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|add|cycle0|cycle2|cycle1|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|add|cycle0|cycle2|cycle2|Cout~0_combout\ : std_logic;
SIGNAL \MuxIm2|Mux20~0_combout\ : std_logic;
SIGNAL \ALU0|add|cycle0|cycle2|cycle3|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|add|cycle0|cycle3|cycle0|Cout~0_combout\ : std_logic;
SIGNAL \MuxB|f[13]~13_combout\ : std_logic;
SIGNAL \MuxIm2|Mux18~0_combout\ : std_logic;
SIGNAL \ALU0|add|cycle0|cycle3|cycle1|Cout~0_combout\ : std_logic;
SIGNAL \MuxB|f[14]~14_combout\ : std_logic;
SIGNAL \MuxIm2|Mux17~0_combout\ : std_logic;
SIGNAL \ALU0|add|cycle0|cycle3|cycle2|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|add|cycle0|cycle3|cycle3|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|Mux15~2_combout\ : std_logic;
SIGNAL \ALU0|Mux15~3_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle0|cycle0|s~2_combout\ : std_logic;
SIGNAL \MuxIm1|f[11]~11_combout\ : std_logic;
SIGNAL \MuxIm1|f[9]~9_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle2|cycle2|Cout~1_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle1|cycle2|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle1|cycle3|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle2|cycle0|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle2|cycle2|Cout~2_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle2|cycle2|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle2|cycle3|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle3|cycle0|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle3|cycle1|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle3|cycle2|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle0|cycle0|s~combout\ : std_logic;
SIGNAL \ALU0|Mux15~0_combout\ : std_logic;
SIGNAL \ALU0|Mux15~1_combout\ : std_logic;
SIGNAL \ALU0|Mux15~4_combout\ : std_logic;
SIGNAL \MuxA|f[16]~16_combout\ : std_logic;
SIGNAL \MuxIm1|f[16]~16_combout\ : std_logic;
SIGNAL \ALU0|add|cycle1|cycle0|cycle0|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|Mux14~4_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle0|cycle0|Cout~9_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle0|cycle0|Cout~10_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle0|cycle0|Cout~8_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle0|cycle1|s~combout\ : std_logic;
SIGNAL \ALU0|Mux14~0_combout\ : std_logic;
SIGNAL \ALU0|Mux14~1_combout\ : std_logic;
SIGNAL \ALU0|Mux14~2_combout\ : std_logic;
SIGNAL \MuxB|f[17]~17_combout\ : std_logic;
SIGNAL \MuxIm2|Mux14~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle0|cycle1|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle0|cycle2|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle0|cycle3|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle1|cycle0|s~combout\ : std_logic;
SIGNAL \ALU0|Mux11~0_combout\ : std_logic;
SIGNAL \ALU0|Mux11~1_combout\ : std_logic;
SIGNAL \ALU0|Mux11~2_combout\ : std_logic;
SIGNAL \MuxA|f[20]~20_combout\ : std_logic;
SIGNAL \MuxIm1|f[20]~20_combout\ : std_logic;
SIGNAL \ALU0|add|cycle1|cycle1|cycle1|s~combout\ : std_logic;
SIGNAL \ALU0|Mux10~3_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle1|cycle1|s~combout\ : std_logic;
SIGNAL \ALU0|Mux10~0_combout\ : std_logic;
SIGNAL \ALU0|Mux10~1_combout\ : std_logic;
SIGNAL \ALU0|Mux10~4_combout\ : std_logic;
SIGNAL \MuxB|f[21]~21_combout\ : std_logic;
SIGNAL \MuxIm2|Mux10~0_combout\ : std_logic;
SIGNAL \ALU0|add|cycle1|cycle1|cycle1|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|add|cycle1|cycle1|cycle1|Cout~1_combout\ : std_logic;
SIGNAL \ALU0|add|cycle1|cycle1|cycle1|Cout~2_combout\ : std_logic;
SIGNAL \ALU0|Mux9~2_combout\ : std_logic;
SIGNAL \ALU0|Mux9~3_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle1|cycle1|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle1|cycle1|Cout~1_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle1|cycle1|Cout~2_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle1|cycle2|s~combout\ : std_logic;
SIGNAL \ALU0|Mux9~0_combout\ : std_logic;
SIGNAL \ALU0|Mux9~1_combout\ : std_logic;
SIGNAL \MuxData|Mux9~0_combout\ : std_logic;
SIGNAL \MuxB|f[22]~22_combout\ : std_logic;
SIGNAL \MuxIm2|Mux9~0_combout\ : std_logic;
SIGNAL \ALU0|add|cycle1|cycle1|cycle2|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|Mux8~3_combout\ : std_logic;
SIGNAL \ALU0|Mux8~4_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle1|cycle2|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle1|cycle3|s~combout\ : std_logic;
SIGNAL \ALU0|Mux8~0_combout\ : std_logic;
SIGNAL \ALU0|Mux8~1_combout\ : std_logic;
SIGNAL \ALU0|Mux8~5_combout\ : std_logic;
SIGNAL \MuxA|f[23]~23_combout\ : std_logic;
SIGNAL \MuxIm1|f[23]~23_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle1|cycle3|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle2|cycle0|s~combout\ : std_logic;
SIGNAL \ALU0|Mux7~0_combout\ : std_logic;
SIGNAL \ALU0|Mux7~1_combout\ : std_logic;
SIGNAL \ALU0|add|cycle1|cycle1|cycle3|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|Mux7~3_combout\ : std_logic;
SIGNAL \ALU0|Mux7~2_combout\ : std_logic;
SIGNAL \ALU0|Mux7~4_combout\ : std_logic;
SIGNAL \ALU0|Mux7~5_combout\ : std_logic;
SIGNAL \MuxB|f[24]~24_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle2|cycle0|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle2|cycle1|s~combout\ : std_logic;
SIGNAL \ALU0|Mux6~0_combout\ : std_logic;
SIGNAL \ALU0|Mux6~1_combout\ : std_logic;
SIGNAL \ALU0|Mux6~3_combout\ : std_logic;
SIGNAL \ALU0|add|cycle1|cycle2|cycle0|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|Mux6~4_combout\ : std_logic;
SIGNAL \ALU0|Mux6~2_combout\ : std_logic;
SIGNAL \MuxB|f[25]~25_combout\ : std_logic;
SIGNAL \MuxIm2|Mux6~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle2|cycle2|s~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle2|cycle2|s~combout\ : std_logic;
SIGNAL \ALU0|Mux5~0_combout\ : std_logic;
SIGNAL \MuxIm1|f[27]~27_combout\ : std_logic;
SIGNAL \ALU0|Mux5~1_combout\ : std_logic;
SIGNAL \ALU0|Mux5~2_combout\ : std_logic;
SIGNAL \ALU0|add|cycle1|cycle2|cycle2|s~combout\ : std_logic;
SIGNAL \ALU0|Mux5~3_combout\ : std_logic;
SIGNAL \ALU0|Mux5~4_combout\ : std_logic;
SIGNAL \MuxB|f[26]~26_combout\ : std_logic;
SIGNAL \MuxIm2|Mux5~0_combout\ : std_logic;
SIGNAL \ALU0|add|cycle1|cycle2|cycle2|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|add|cycle1|cycle2|cycle2|Cout~1_combout\ : std_logic;
SIGNAL \ALU0|add|cycle1|cycle2|cycle2|Cout~2_combout\ : std_logic;
SIGNAL \ALU0|add|cycle1|cycle2|cycle2|Cout~3_combout\ : std_logic;
SIGNAL \ALU0|Mux4~2_combout\ : std_logic;
SIGNAL \ALU0|Mux4~3_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle2|cycle2|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle2|cycle2|Cout~1_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle2|cycle2|Cout~2_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle2|cycle3|s~combout\ : std_logic;
SIGNAL \ALU0|Mux4~0_combout\ : std_logic;
SIGNAL \ALU0|Mux4~1_combout\ : std_logic;
SIGNAL \ALU0|Mux4~4_combout\ : std_logic;
SIGNAL \MuxB|f[27]~27_combout\ : std_logic;
SIGNAL \MuxIm2|Mux4~0_combout\ : std_logic;
SIGNAL \ALU0|add|cycle1|cycle2|cycle3|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|Mux3~4_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle2|cycle3|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle3|cycle0|s~combout\ : std_logic;
SIGNAL \ALU0|Mux3~0_combout\ : std_logic;
SIGNAL \ALU0|Mux3~1_combout\ : std_logic;
SIGNAL \ALU0|Mux3~2_combout\ : std_logic;
SIGNAL \MuxB|f[28]~28_combout\ : std_logic;
SIGNAL \MuxIm2|Mux3~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle3|cycle1|s~combout\ : std_logic;
SIGNAL \ALU0|Mux2~0_combout\ : std_logic;
SIGNAL \ALU0|Mux2~1_combout\ : std_logic;
SIGNAL \MuxIm2|Mux2~0_combout\ : std_logic;
SIGNAL \ALU0|Mux2~2_combout\ : std_logic;
SIGNAL \ALU0|add|cycle1|cycle3|cycle1|s~combout\ : std_logic;
SIGNAL \ALU0|Mux2~3_combout\ : std_logic;
SIGNAL \ALU0|Mux2~4_combout\ : std_logic;
SIGNAL \MuxA|f[29]~29_combout\ : std_logic;
SIGNAL \MuxIm1|f[29]~29_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle3|cycle1|Cout~9_combout\ : std_logic;
SIGNAL \MuxIm2|Mux1~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle3|cycle1|Cout~10_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle3|cycle1|Cout~8_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle3|cycle2|s~combout\ : std_logic;
SIGNAL \ALU0|Mux1~0_combout\ : std_logic;
SIGNAL \MuxIm1|f[31]~31_combout\ : std_logic;
SIGNAL \ALU0|Mux1~1_combout\ : std_logic;
SIGNAL \ALU0|add|cycle1|cycle3|cycle0|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|Mux1~2_combout\ : std_logic;
SIGNAL \ALU0|Mux1~3_combout\ : std_logic;
SIGNAL \ALU0|Mux1~4_combout\ : std_logic;
SIGNAL \ALU0|Mux1~5_combout\ : std_logic;
SIGNAL \MuxA|f[30]~30_combout\ : std_logic;
SIGNAL \MuxIm1|f[30]~30_combout\ : std_logic;
SIGNAL \ALU0|Mux0~0_combout\ : std_logic;
SIGNAL \MuxIm2|Mux0~0_combout\ : std_logic;
SIGNAL \ALU0|Mux0~1_combout\ : std_logic;
SIGNAL \ALU0|Mux0~2_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle3|cycle2|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|add|cycle1|cycle3|cycle2|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|add|cycle1|cycle3|cycle2|Cout~1_combout\ : std_logic;
SIGNAL \ALU0|add|cycle1|cycle3|cycle2|Cout~2_combout\ : std_logic;
SIGNAL \ALU0|Mux0~3_combout\ : std_logic;
SIGNAL \ALU0|Mux0~4_combout\ : std_logic;
SIGNAL \MuxB|f[31]~31_combout\ : std_logic;
SIGNAL \MuxReg|f[31]~31_combout\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \DataMemory|data_out~31_combout\ : std_logic;
SIGNAL \MuxData|Mux1~2_combout\ : std_logic;
SIGNAL \MuxB|f[30]~30_combout\ : std_logic;
SIGNAL \MuxReg|f[30]~30_combout\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \DataMemory|data_out~30_combout\ : std_logic;
SIGNAL \Data_In[29]~input_o\ : std_logic;
SIGNAL \MuxData|Mux2~2_combout\ : std_logic;
SIGNAL \MuxB|f[29]~29_combout\ : std_logic;
SIGNAL \MuxReg|f[29]~29_combout\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \DataMemory|memory~70_q\ : std_logic;
SIGNAL \DataMemory|data_out~29_combout\ : std_logic;
SIGNAL \MuxData|Mux3~2_combout\ : std_logic;
SIGNAL \MuxA|f[28]~28_combout\ : std_logic;
SIGNAL \MuxReg|f[28]~28_combout\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \DataMemory|data_out~28_combout\ : std_logic;
SIGNAL \Data_In[27]~input_o\ : std_logic;
SIGNAL \MuxData|Mux4~2_combout\ : std_logic;
SIGNAL \MuxA|f[27]~27_combout\ : std_logic;
SIGNAL \MuxReg|f[27]~27_combout\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \DataMemory|data_out~27_combout\ : std_logic;
SIGNAL \MuxData|Mux5~2_combout\ : std_logic;
SIGNAL \MuxA|f[26]~26_combout\ : std_logic;
SIGNAL \MuxReg|f[26]~26_combout\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \DataMemory|data_out~26_combout\ : std_logic;
SIGNAL \MuxData|Mux6~2_combout\ : std_logic;
SIGNAL \MuxA|f[25]~25_combout\ : std_logic;
SIGNAL \MuxReg|f[25]~25_combout\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \DataMemory|memory~66feeder_combout\ : std_logic;
SIGNAL \DataMemory|memory~66_q\ : std_logic;
SIGNAL \DataMemory|data_out~25_combout\ : std_logic;
SIGNAL \MuxData|Mux7~2_combout\ : std_logic;
SIGNAL \MuxA|f[24]~24_combout\ : std_logic;
SIGNAL \MuxReg|f[24]~24_combout\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \DataMemory|data_out~24_combout\ : std_logic;
SIGNAL \MuxData|Mux8~2_combout\ : std_logic;
SIGNAL \MuxB|f[23]~23_combout\ : std_logic;
SIGNAL \MuxReg|f[23]~23_combout\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \DataMemory|data_out~23_combout\ : std_logic;
SIGNAL \MuxData|Mux9~1_combout\ : std_logic;
SIGNAL \MuxA|f[22]~22_combout\ : std_logic;
SIGNAL \MuxReg|f[22]~22_combout\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \DataMemory|data_out~22_combout\ : std_logic;
SIGNAL \Data_In[21]~input_o\ : std_logic;
SIGNAL \MuxData|Mux10~2_combout\ : std_logic;
SIGNAL \MuxA|f[21]~21_combout\ : std_logic;
SIGNAL \MuxReg|f[21]~21_combout\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \DataMemory|data_out~21_combout\ : std_logic;
SIGNAL \Data_In[20]~input_o\ : std_logic;
SIGNAL \MuxData|Mux11~2_combout\ : std_logic;
SIGNAL \MuxB|f[20]~20_combout\ : std_logic;
SIGNAL \MuxReg|f[20]~20_combout\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \DataMemory|data_out~19_combout\ : std_logic;
SIGNAL \Data_In[18]~input_o\ : std_logic;
SIGNAL \MuxData|Mux13~2_combout\ : std_logic;
SIGNAL \MuxB|f[18]~18_combout\ : std_logic;
SIGNAL \MuxIm2|Mux13~0_combout\ : std_logic;
SIGNAL \ALU0|add|cycle1|cycle0|cycle1|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|add|cycle1|cycle0|cycle2|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|Mux12~4_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle0|cycle3|s~combout\ : std_logic;
SIGNAL \ALU0|Mux12~0_combout\ : std_logic;
SIGNAL \ALU0|Mux12~1_combout\ : std_logic;
SIGNAL \ALU0|Mux12~2_combout\ : std_logic;
SIGNAL \MuxB|f[19]~19_combout\ : std_logic;
SIGNAL \MuxReg|f[19]~19_combout\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \DataMemory|memory~61_q\ : std_logic;
SIGNAL \DataMemory|data_out~20_combout\ : std_logic;
SIGNAL \MuxData|Mux12~2_combout\ : std_logic;
SIGNAL \MuxA|f[19]~19_combout\ : std_logic;
SIGNAL \MuxIm1|f[19]~19_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle1|cycle0|cycle2|s~combout\ : std_logic;
SIGNAL \ALU0|Mux13~0_combout\ : std_logic;
SIGNAL \ALU0|Mux13~1_combout\ : std_logic;
SIGNAL \ALU0|Mux13~3_combout\ : std_logic;
SIGNAL \ALU0|Mux13~4_combout\ : std_logic;
SIGNAL \ALU0|Mux13~2_combout\ : std_logic;
SIGNAL \MuxA|f[18]~18_combout\ : std_logic;
SIGNAL \MuxReg|f[18]~18_combout\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \DataMemory|memory~59feeder_combout\ : std_logic;
SIGNAL \DataMemory|memory~59_q\ : std_logic;
SIGNAL \DataMemory|data_out~18_combout\ : std_logic;
SIGNAL \MuxData|Mux14~2_combout\ : std_logic;
SIGNAL \MuxA|f[17]~17_combout\ : std_logic;
SIGNAL \MuxReg|f[17]~17_combout\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \DataMemory|data_out~17_combout\ : std_logic;
SIGNAL \MuxData|Mux15~2_combout\ : std_logic;
SIGNAL \MuxB|f[16]~16_combout\ : std_logic;
SIGNAL \MuxReg|f[16]~16_combout\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \DataMemory|data_out~16_combout\ : std_logic;
SIGNAL \MuxData|Mux16~2_combout\ : std_logic;
SIGNAL \ALU0|Mux16~2_combout\ : std_logic;
SIGNAL \ALU0|add|cycle0|cycle3|cycle3|s~combout\ : std_logic;
SIGNAL \ALU0|Mux16~3_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle3|cycle3|s~combout\ : std_logic;
SIGNAL \MuxIm1|f[14]~14_combout\ : std_logic;
SIGNAL \ALU0|Mux16~0_combout\ : std_logic;
SIGNAL \ALU0|Mux16~1_combout\ : std_logic;
SIGNAL \ALU0|Mux16~4_combout\ : std_logic;
SIGNAL \MuxData|Mux16~3_combout\ : std_logic;
SIGNAL \IR|q[15]~feeder_combout\ : std_logic;
SIGNAL \MuxA|f[15]~15_combout\ : std_logic;
SIGNAL \A|q[15]~feeder_combout\ : std_logic;
SIGNAL \MuxIm1|f[15]~15_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle3|cycle2|s~combout\ : std_logic;
SIGNAL \MuxIm1|f[13]~13_combout\ : std_logic;
SIGNAL \ALU0|Mux17~2_combout\ : std_logic;
SIGNAL \ALU0|Mux17~3_combout\ : std_logic;
SIGNAL \ALU0|Mux17~6_combout\ : std_logic;
SIGNAL \ALU0|Mux17~4_combout\ : std_logic;
SIGNAL \ALU0|Mux17~5_combout\ : std_logic;
SIGNAL \DataMemory|memory~56_q\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \DataMemory|data_out~15_combout\ : std_logic;
SIGNAL \Data_In[14]~input_o\ : std_logic;
SIGNAL \MuxData|Mux17~2_combout\ : std_logic;
SIGNAL \MuxData|Mux17~3_combout\ : std_logic;
SIGNAL \MuxA|f[14]~14_combout\ : std_logic;
SIGNAL \MuxReg|f[14]~14_combout\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \DataMemory|data_out~14_combout\ : std_logic;
SIGNAL \MuxData|Mux18~2_combout\ : std_logic;
SIGNAL \MuxIm1|f[12]~12_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle3|cycle1|s~combout\ : std_logic;
SIGNAL \ALU0|Mux18~2_combout\ : std_logic;
SIGNAL \ALU0|Mux18~3_combout\ : std_logic;
SIGNAL \ALU0|Mux18~6_combout\ : std_logic;
SIGNAL \ALU0|Mux18~4_combout\ : std_logic;
SIGNAL \ALU0|Mux18~5_combout\ : std_logic;
SIGNAL \MuxData|Mux18~3_combout\ : std_logic;
SIGNAL \MuxA|f[13]~13_combout\ : std_logic;
SIGNAL \MuxReg|f[13]~13_combout\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \DataMemory|data_out~13_combout\ : std_logic;
SIGNAL \MuxData|Mux19~2_combout\ : std_logic;
SIGNAL \ALU0|Mux19~6_combout\ : std_logic;
SIGNAL \ALU0|Mux19~4_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle3|cycle0|s~combout\ : std_logic;
SIGNAL \ALU0|Mux19~2_combout\ : std_logic;
SIGNAL \ALU0|Mux19~3_combout\ : std_logic;
SIGNAL \ALU0|Mux19~5_combout\ : std_logic;
SIGNAL \MuxData|Mux19~3_combout\ : std_logic;
SIGNAL \MuxA|f[12]~12_combout\ : std_logic;
SIGNAL \MuxReg|f[12]~12_combout\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \DataMemory|data_out~12_combout\ : std_logic;
SIGNAL \MuxData|Mux20~2_combout\ : std_logic;
SIGNAL \MuxIm1|f[10]~10_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle2|cycle3|s~combout\ : std_logic;
SIGNAL \ALU0|Mux20~0_combout\ : std_logic;
SIGNAL \ALU0|Mux20~1_combout\ : std_logic;
SIGNAL \ALU0|add|cycle0|cycle2|cycle3|s~combout\ : std_logic;
SIGNAL \ALU0|Mux20~2_combout\ : std_logic;
SIGNAL \ALU0|Mux20~3_combout\ : std_logic;
SIGNAL \ALU0|Mux20~4_combout\ : std_logic;
SIGNAL \MuxData|Mux20~3_combout\ : std_logic;
SIGNAL \MuxB|f[11]~11_combout\ : std_logic;
SIGNAL \MuxReg|f[11]~11_combout\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \DataMemory|data_out~11_combout\ : std_logic;
SIGNAL \MuxData|Mux21~2_combout\ : std_logic;
SIGNAL \ALU0|Mux21~6_combout\ : std_logic;
SIGNAL \ALU0|Mux21~4_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle2|cycle2|s~0_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle2|cycle2|s~combout\ : std_logic;
SIGNAL \ALU0|Mux21~2_combout\ : std_logic;
SIGNAL \ALU0|Mux21~3_combout\ : std_logic;
SIGNAL \ALU0|Mux21~5_combout\ : std_logic;
SIGNAL \MuxData|Mux21~3_combout\ : std_logic;
SIGNAL \MuxB|f[10]~10_combout\ : std_logic;
SIGNAL \MuxReg|f[10]~10_combout\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \DataMemory|data_out~10_combout\ : std_logic;
SIGNAL \Data_In[9]~input_o\ : std_logic;
SIGNAL \MuxData|Mux22~2_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle2|cycle1|s~combout\ : std_logic;
SIGNAL \ALU0|Mux22~0_combout\ : std_logic;
SIGNAL \ALU0|Mux22~1_combout\ : std_logic;
SIGNAL \ALU0|Mux22~2_combout\ : std_logic;
SIGNAL \ALU0|add|cycle0|cycle2|cycle1|s~combout\ : std_logic;
SIGNAL \ALU0|Mux22~3_combout\ : std_logic;
SIGNAL \ALU0|Mux22~4_combout\ : std_logic;
SIGNAL \MuxData|Mux22~3_combout\ : std_logic;
SIGNAL \MuxB|f[9]~9_combout\ : std_logic;
SIGNAL \MuxReg|f[9]~9_combout\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \DataMemory|memory~50_q\ : std_logic;
SIGNAL \DataMemory|data_out~9_combout\ : std_logic;
SIGNAL \MuxData|Mux23~2_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle2|cycle0|s~combout\ : std_logic;
SIGNAL \ALU0|Mux23~2_combout\ : std_logic;
SIGNAL \ALU0|Mux23~3_combout\ : std_logic;
SIGNAL \ALU0|Mux23~6_combout\ : std_logic;
SIGNAL \ALU0|Mux23~4_combout\ : std_logic;
SIGNAL \ALU0|Mux23~5_combout\ : std_logic;
SIGNAL \MuxData|Mux23~3_combout\ : std_logic;
SIGNAL \MuxA|f[8]~8_combout\ : std_logic;
SIGNAL \MuxIm1|f[8]~8_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle1|cycle3|s~combout\ : std_logic;
SIGNAL \MuxIm1|f[6]~6_combout\ : std_logic;
SIGNAL \ALU0|Mux24~2_combout\ : std_logic;
SIGNAL \ALU0|Mux24~3_combout\ : std_logic;
SIGNAL \ALU0|Mux24~5_combout\ : std_logic;
SIGNAL \Data_In[7]~input_o\ : std_logic;
SIGNAL \DataMemory|memory~49_q\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \DataMemory|data_out~8_combout\ : std_logic;
SIGNAL \MuxData|Mux24~2_combout\ : std_logic;
SIGNAL \MuxData|Mux24~3_combout\ : std_logic;
SIGNAL \MuxA|f[7]~7_combout\ : std_logic;
SIGNAL \MuxIm1|f[7]~7_combout\ : std_logic;
SIGNAL \ALU0|Mux25~3_combout\ : std_logic;
SIGNAL \ALU0|Mux25~5_combout\ : std_logic;
SIGNAL \Data_In[6]~input_o\ : std_logic;
SIGNAL \DataMemory|memory~48_q\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \DataMemory|data_out~7_combout\ : std_logic;
SIGNAL \MuxData|Mux25~2_combout\ : std_logic;
SIGNAL \MuxData|Mux25~3_combout\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \DataMemory|data_out~6_combout\ : std_logic;
SIGNAL \MuxData|Mux26~2_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle1|cycle1|s~combout\ : std_logic;
SIGNAL \ALU0|Mux26~0_combout\ : std_logic;
SIGNAL \ALU0|Mux26~1_combout\ : std_logic;
SIGNAL \ALU0|Mux26~2_combout\ : std_logic;
SIGNAL \ALU0|add|cycle0|cycle1|cycle1|s~combout\ : std_logic;
SIGNAL \ALU0|Mux26~3_combout\ : std_logic;
SIGNAL \ALU0|Mux26~4_combout\ : std_logic;
SIGNAL \MuxData|Mux26~3_combout\ : std_logic;
SIGNAL \MuxA|f[5]~5_combout\ : std_logic;
SIGNAL \MuxIm1|f[5]~5_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle0|cycle3|Cout~2_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle1|cycle0|s~combout\ : std_logic;
SIGNAL \ALU0|Mux27~2_combout\ : std_logic;
SIGNAL \ALU0|Mux27~3_combout\ : std_logic;
SIGNAL \ALU0|Mux27~5_combout\ : std_logic;
SIGNAL \DataMemory|memory~46_q\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \DataMemory|data_out~5_combout\ : std_logic;
SIGNAL \Data_In[4]~input_o\ : std_logic;
SIGNAL \MuxData|Mux27~2_combout\ : std_logic;
SIGNAL \MuxData|Mux27~3_combout\ : std_logic;
SIGNAL \MuxA|f[4]~4_combout\ : std_logic;
SIGNAL \MuxIm1|f[4]~4_combout\ : std_logic;
SIGNAL \ALU0|Mux28~1_combout\ : std_logic;
SIGNAL \ALU0|Mux28~4_combout\ : std_logic;
SIGNAL \ALU0|Mux28~5_combout\ : std_logic;
SIGNAL \ALU0|Mux28~2_combout\ : std_logic;
SIGNAL \ALU0|Mux28~3_combout\ : std_logic;
SIGNAL \Data_In[3]~input_o\ : std_logic;
SIGNAL \DataMemory|memory~45_q\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \DataMemory|data_out~4_combout\ : std_logic;
SIGNAL \MuxData|Mux28~2_combout\ : std_logic;
SIGNAL \MuxData|Mux28~3_combout\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \DataMemory|memory~43_q\ : std_logic;
SIGNAL \DataMemory|data_out~2_combout\ : std_logic;
SIGNAL \MuxData|Mux30~2_combout\ : std_logic;
SIGNAL \MuxData|Mux30~3_combout\ : std_logic;
SIGNAL \MuxA|f[1]~1_combout\ : std_logic;
SIGNAL \ALU0|add|cycle0|cycle0|cycle1|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|Mux29~5_combout\ : std_logic;
SIGNAL \ALU0|Mux29~2_combout\ : std_logic;
SIGNAL \ALU0|sub|cycle0|cycle0|cycle2|s~combout\ : std_logic;
SIGNAL \ALU0|Mux29~0_combout\ : std_logic;
SIGNAL \ALU0|Mux29~1_combout\ : std_logic;
SIGNAL \ALU0|Mux29~3_combout\ : std_logic;
SIGNAL \Data_In[2]~input_o\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \DataMemory|memory~44_q\ : std_logic;
SIGNAL \DataMemory|data_out~3_combout\ : std_logic;
SIGNAL \MuxData|Mux29~2_combout\ : std_logic;
SIGNAL \MuxData|Mux29~3_combout\ : std_logic;
SIGNAL \DataMemory|memory~76_combout\ : std_logic;
SIGNAL \DataMemory|memory~75_combout\ : std_logic;
SIGNAL \DataMemory|memory~77_combout\ : std_logic;
SIGNAL \DataMemory|memory~42_q\ : std_logic;
SIGNAL \DataMemory|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \DataMemory|data_out~1_combout\ : std_logic;
SIGNAL \Data_In[0]~input_o\ : std_logic;
SIGNAL \MuxData|Mux31~2_combout\ : std_logic;
SIGNAL \ALU0|Mux31~3_combout\ : std_logic;
SIGNAL \ALU0|Mux31~8_combout\ : std_logic;
SIGNAL \ALU0|Mux31~4_combout\ : std_logic;
SIGNAL \ALU0|Mux31~5_combout\ : std_logic;
SIGNAL \ALU0|Mux31~2_combout\ : std_logic;
SIGNAL \ALU0|Mux31~6_combout\ : std_logic;
SIGNAL \MuxData|Mux31~4_combout\ : std_logic;
SIGNAL \MuxA|f[0]~0_combout\ : std_logic;
SIGNAL \Ld_C~input_o\ : std_logic;
SIGNAL \ALU0|Mux32~0_combout\ : std_logic;
SIGNAL \ALU0|Mux32~1_combout\ : std_logic;
SIGNAL \ALU0|Mux32~4_combout\ : std_logic;
SIGNAL \ALU0|Mux32~2_combout\ : std_logic;
SIGNAL \ALU0|Mux32~3_combout\ : std_logic;
SIGNAL \ALU0|Mux32~5_combout\ : std_logic;
SIGNAL \C|q~0_combout\ : std_logic;
SIGNAL \Clr_C~input_o\ : std_logic;
SIGNAL \C|q~q\ : std_logic;
SIGNAL \Ld_Z~input_o\ : std_logic;
SIGNAL \Z|q~4_combout\ : std_logic;
SIGNAL \Z|q~2_combout\ : std_logic;
SIGNAL \Z|q~3_combout\ : std_logic;
SIGNAL \Z|q~0_combout\ : std_logic;
SIGNAL \Z|q~1_combout\ : std_logic;
SIGNAL \Z|q~5_combout\ : std_logic;
SIGNAL \Z|q~7_combout\ : std_logic;
SIGNAL \Z|q~6_combout\ : std_logic;
SIGNAL \Z|q~8_combout\ : std_logic;
SIGNAL \Z|q~9_combout\ : std_logic;
SIGNAL \Z|q~10_combout\ : std_logic;
SIGNAL \Z|q~11_combout\ : std_logic;
SIGNAL \Clr_Z~input_o\ : std_logic;
SIGNAL \Z|q~q\ : std_logic;
SIGNAL \Clr_PC~input_o\ : std_logic;
SIGNAL \Clr_PC~inputclkctrl_outclk\ : std_logic;
SIGNAL \Ld_PC~input_o\ : std_logic;
SIGNAL \Inc_PC~input_o\ : std_logic;
SIGNAL \ProgramCounter|q_reg[0]~30_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[1]~feeder_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[2]~31_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[2]~32\ : std_logic;
SIGNAL \ProgramCounter|q_reg[3]~33_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[3]~34\ : std_logic;
SIGNAL \ProgramCounter|q_reg[4]~35_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[4]~36\ : std_logic;
SIGNAL \ProgramCounter|q_reg[5]~37_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[5]~38\ : std_logic;
SIGNAL \ProgramCounter|q_reg[6]~39_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[6]~40\ : std_logic;
SIGNAL \ProgramCounter|q_reg[7]~41_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[7]~42\ : std_logic;
SIGNAL \ProgramCounter|q_reg[8]~43_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[8]~44\ : std_logic;
SIGNAL \ProgramCounter|q_reg[9]~45_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[9]~46\ : std_logic;
SIGNAL \ProgramCounter|q_reg[10]~47_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[10]~48\ : std_logic;
SIGNAL \ProgramCounter|q_reg[11]~49_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[11]~50\ : std_logic;
SIGNAL \ProgramCounter|q_reg[12]~51_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[12]~52\ : std_logic;
SIGNAL \ProgramCounter|q_reg[13]~53_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[13]~54\ : std_logic;
SIGNAL \ProgramCounter|q_reg[14]~55_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[14]~56\ : std_logic;
SIGNAL \ProgramCounter|q_reg[15]~57_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[15]~58\ : std_logic;
SIGNAL \ProgramCounter|q_reg[16]~59_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[16]~60\ : std_logic;
SIGNAL \ProgramCounter|q_reg[17]~61_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[17]~62\ : std_logic;
SIGNAL \ProgramCounter|q_reg[18]~63_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[18]~64\ : std_logic;
SIGNAL \ProgramCounter|q_reg[19]~65_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[19]~66\ : std_logic;
SIGNAL \ProgramCounter|q_reg[20]~67_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[20]~68\ : std_logic;
SIGNAL \ProgramCounter|q_reg[21]~69_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[21]~70\ : std_logic;
SIGNAL \ProgramCounter|q_reg[22]~71_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[22]~72\ : std_logic;
SIGNAL \ProgramCounter|q_reg[23]~73_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[23]~74\ : std_logic;
SIGNAL \ProgramCounter|q_reg[24]~75_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[24]~76\ : std_logic;
SIGNAL \ProgramCounter|q_reg[25]~77_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[25]~78\ : std_logic;
SIGNAL \ProgramCounter|q_reg[26]~79_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[26]~80\ : std_logic;
SIGNAL \ProgramCounter|q_reg[27]~81_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[27]~82\ : std_logic;
SIGNAL \ProgramCounter|q_reg[28]~83_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[28]~84\ : std_logic;
SIGNAL \ProgramCounter|q_reg[29]~85_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[29]~86\ : std_logic;
SIGNAL \ProgramCounter|q_reg[30]~87_combout\ : std_logic;
SIGNAL \ProgramCounter|q_reg[30]~88\ : std_logic;
SIGNAL \ProgramCounter|q_reg[31]~89_combout\ : std_logic;
SIGNAL \MuxData|Mux15~3_combout\ : std_logic;
SIGNAL \MuxData|Mux14~3_combout\ : std_logic;
SIGNAL \MuxData|Mux13~3_combout\ : std_logic;
SIGNAL \MuxData|Mux12~3_combout\ : std_logic;
SIGNAL \MuxData|Mux11~3_combout\ : std_logic;
SIGNAL \MuxData|Mux10~3_combout\ : std_logic;
SIGNAL \MuxData|Mux9~2_combout\ : std_logic;
SIGNAL \MuxData|Mux8~3_combout\ : std_logic;
SIGNAL \MuxData|Mux7~3_combout\ : std_logic;
SIGNAL \MuxData|Mux6~3_combout\ : std_logic;
SIGNAL \MuxData|Mux5~3_combout\ : std_logic;
SIGNAL \MuxData|Mux4~3_combout\ : std_logic;
SIGNAL \MuxData|Mux3~3_combout\ : std_logic;
SIGNAL \MuxData|Mux2~3_combout\ : std_logic;
SIGNAL \MuxData|Mux1~3_combout\ : std_logic;
SIGNAL \MuxData|Mux0~3_combout\ : std_logic;
SIGNAL \B|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \IR|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \A|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ProgramCounter|q_reg\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \DataMemory|data_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Clr_PC~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Clr_B~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Clr_A~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Clr_IR~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Ld_IR~input_o\ : std_logic;
SIGNAL \ALT_INV_Inc_PC~input_o\ : std_logic;
SIGNAL \ALT_INV_Clr_Z~input_o\ : std_logic;
SIGNAL \ALT_INV_Clr_C~input_o\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_mClk <= mClk;
ww_wen <= wen;
ww_en <= en;
ww_Clr_A <= Clr_A;
ww_Ld_A <= Ld_A;
ww_Clr_B <= Clr_B;
ww_Ld_B <= Ld_B;
ww_Clr_C <= Clr_C;
ww_Ld_C <= Ld_C;
ww_Clr_Z <= Clr_Z;
ww_Ld_Z <= Ld_Z;
ww_Clr_PC <= Clr_PC;
ww_Ld_PC <= Ld_PC;
ww_Clr_IR <= Clr_IR;
ww_Ld_IR <= Ld_IR;
Out_A <= ww_Out_A;
Out_B <= ww_Out_B;
Out_C <= ww_Out_C;
Out_Z <= ww_Out_Z;
Out_PC <= ww_Out_PC;
Out_IR <= ww_Out_IR;
ww_Inc_PC <= Inc_PC;
Addr_Out <= ww_Addr_Out;
ww_Data_In <= Data_In;
Data_Out <= ww_Data_Out;
Mem_Out <= ww_Mem_Out;
Mem_In <= ww_Mem_In;
Mem_Addr <= ww_Mem_Addr;
ww_Data_Mux <= Data_Mux;
ww_Reg_Mux <= Reg_Mux;
ww_A_Mux <= A_Mux;
ww_B_Mux <= B_Mux;
ww_Im_Mux1 <= Im_Mux1;
ww_Im_Mux2 <= Im_Mux2;
ww_Alu_Opcode <= Alu_Opcode;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \MuxReg|f[31]~31_combout\ & \MuxReg|f[30]~30_combout\ & \MuxReg|f[29]~29_combout\ & \MuxReg|f[28]~28_combout\ & \MuxReg|f[27]~27_combout\ & 
\MuxReg|f[26]~26_combout\ & \MuxReg|f[25]~25_combout\ & \MuxReg|f[24]~24_combout\ & \MuxReg|f[23]~23_combout\ & \MuxReg|f[22]~22_combout\ & \MuxReg|f[21]~21_combout\ & \MuxReg|f[20]~20_combout\ & \MuxReg|f[19]~19_combout\ & \MuxReg|f[18]~18_combout\ & 
\MuxReg|f[17]~17_combout\ & \MuxReg|f[16]~16_combout\ & \MuxReg|f[15]~15_combout\ & \MuxReg|f[14]~14_combout\ & \MuxReg|f[13]~13_combout\ & \MuxReg|f[12]~12_combout\ & \MuxReg|f[11]~11_combout\ & \MuxReg|f[10]~10_combout\ & \MuxReg|f[9]~9_combout\ & 
\MuxReg|f[8]~8_combout\ & \MuxReg|f[7]~7_combout\ & \MuxReg|f[6]~6_combout\ & \MuxReg|f[5]~5_combout\ & \MuxReg|f[4]~4_combout\ & \MuxReg|f[3]~3_combout\ & \MuxReg|f[2]~2_combout\ & \MuxReg|f[1]~1_combout\ & \MuxReg|f[0]~0_combout\);

\DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\IR|q\(7) & \IR|q\(6) & \IR|q\(5) & \IR|q\(4) & \IR|q\(3) & \IR|q\(2) & \IR|q\(1) & \IR|q\(0));

\DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\MuxData|Mux24~3_combout\ & \MuxData|Mux25~3_combout\ & \MuxData|Mux26~3_combout\ & \MuxData|Mux27~3_combout\ & \MuxData|Mux28~3_combout\ & \MuxData|Mux29~3_combout\ & 
\MuxData|Mux30~3_combout\ & \MuxData|Mux31~4_combout\);

\DataMemory|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a1\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a2\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a3\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a4\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a5\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a6\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a7\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a8\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a9\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a10\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a11\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a12\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a13\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a14\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a15\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a16\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a17\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a18\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a19\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a20\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a21\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a22\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a23\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a24\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a25\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a26\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a27\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a28\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a29\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a30\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\DataMemory|memory_rtl_0|auto_generated|ram_block1a31\ <= \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\Clr_IR~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clr_IR~input_o\);

\Clr_A~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clr_A~input_o\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);

\Clr_B~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clr_B~input_o\);

\Clr_PC~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clr_PC~input_o\);
\ALT_INV_Clr_PC~inputclkctrl_outclk\ <= NOT \Clr_PC~inputclkctrl_outclk\;
\ALT_INV_Clr_B~inputclkctrl_outclk\ <= NOT \Clr_B~inputclkctrl_outclk\;
\ALT_INV_Clk~inputclkctrl_outclk\ <= NOT \Clk~inputclkctrl_outclk\;
\ALT_INV_Clr_A~inputclkctrl_outclk\ <= NOT \Clr_A~inputclkctrl_outclk\;
\ALT_INV_Clr_IR~inputclkctrl_outclk\ <= NOT \Clr_IR~inputclkctrl_outclk\;
\ALT_INV_Ld_IR~input_o\ <= NOT \Ld_IR~input_o\;
\ALT_INV_Inc_PC~input_o\ <= NOT \Inc_PC~input_o\;
\ALT_INV_Clr_Z~input_o\ <= NOT \Clr_Z~input_o\;
\ALT_INV_Clr_C~input_o\ <= NOT \Clr_C~input_o\;

-- Location: IOOBUF_X115_Y58_N23
\Out_A[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(0),
	devoe => ww_devoe,
	o => \Out_A[0]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\Out_A[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(1),
	devoe => ww_devoe,
	o => \Out_A[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\Out_A[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(2),
	devoe => ww_devoe,
	o => \Out_A[2]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\Out_A[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(3),
	devoe => ww_devoe,
	o => \Out_A[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\Out_A[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(4),
	devoe => ww_devoe,
	o => \Out_A[4]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\Out_A[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(5),
	devoe => ww_devoe,
	o => \Out_A[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\Out_A[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(6),
	devoe => ww_devoe,
	o => \Out_A[6]~output_o\);

-- Location: IOOBUF_X115_Y57_N16
\Out_A[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(7),
	devoe => ww_devoe,
	o => \Out_A[7]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\Out_A[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(8),
	devoe => ww_devoe,
	o => \Out_A[8]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\Out_A[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(9),
	devoe => ww_devoe,
	o => \Out_A[9]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\Out_A[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(10),
	devoe => ww_devoe,
	o => \Out_A[10]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\Out_A[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(11),
	devoe => ww_devoe,
	o => \Out_A[11]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\Out_A[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(12),
	devoe => ww_devoe,
	o => \Out_A[12]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\Out_A[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(13),
	devoe => ww_devoe,
	o => \Out_A[13]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\Out_A[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(14),
	devoe => ww_devoe,
	o => \Out_A[14]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\Out_A[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(15),
	devoe => ww_devoe,
	o => \Out_A[15]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\Out_A[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(16),
	devoe => ww_devoe,
	o => \Out_A[16]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\Out_A[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(17),
	devoe => ww_devoe,
	o => \Out_A[17]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\Out_A[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(18),
	devoe => ww_devoe,
	o => \Out_A[18]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\Out_A[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(19),
	devoe => ww_devoe,
	o => \Out_A[19]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\Out_A[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(20),
	devoe => ww_devoe,
	o => \Out_A[20]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\Out_A[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(21),
	devoe => ww_devoe,
	o => \Out_A[21]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\Out_A[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(22),
	devoe => ww_devoe,
	o => \Out_A[22]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\Out_A[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(23),
	devoe => ww_devoe,
	o => \Out_A[23]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\Out_A[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(24),
	devoe => ww_devoe,
	o => \Out_A[24]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\Out_A[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(25),
	devoe => ww_devoe,
	o => \Out_A[25]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\Out_A[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(26),
	devoe => ww_devoe,
	o => \Out_A[26]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\Out_A[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(27),
	devoe => ww_devoe,
	o => \Out_A[27]~output_o\);

-- Location: IOOBUF_X115_Y65_N23
\Out_A[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(28),
	devoe => ww_devoe,
	o => \Out_A[28]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\Out_A[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(29),
	devoe => ww_devoe,
	o => \Out_A[29]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\Out_A[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(30),
	devoe => ww_devoe,
	o => \Out_A[30]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\Out_A[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|q\(31),
	devoe => ww_devoe,
	o => \Out_A[31]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\Out_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(0),
	devoe => ww_devoe,
	o => \Out_B[0]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\Out_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(1),
	devoe => ww_devoe,
	o => \Out_B[1]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\Out_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(2),
	devoe => ww_devoe,
	o => \Out_B[2]~output_o\);

-- Location: IOOBUF_X115_Y63_N2
\Out_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(3),
	devoe => ww_devoe,
	o => \Out_B[3]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\Out_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(4),
	devoe => ww_devoe,
	o => \Out_B[4]~output_o\);

-- Location: IOOBUF_X115_Y65_N16
\Out_B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(5),
	devoe => ww_devoe,
	o => \Out_B[5]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\Out_B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(6),
	devoe => ww_devoe,
	o => \Out_B[6]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\Out_B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(7),
	devoe => ww_devoe,
	o => \Out_B[7]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\Out_B[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(8),
	devoe => ww_devoe,
	o => \Out_B[8]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\Out_B[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(9),
	devoe => ww_devoe,
	o => \Out_B[9]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\Out_B[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(10),
	devoe => ww_devoe,
	o => \Out_B[10]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\Out_B[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(11),
	devoe => ww_devoe,
	o => \Out_B[11]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\Out_B[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(12),
	devoe => ww_devoe,
	o => \Out_B[12]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\Out_B[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(13),
	devoe => ww_devoe,
	o => \Out_B[13]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\Out_B[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(14),
	devoe => ww_devoe,
	o => \Out_B[14]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\Out_B[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(15),
	devoe => ww_devoe,
	o => \Out_B[15]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\Out_B[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(16),
	devoe => ww_devoe,
	o => \Out_B[16]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\Out_B[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(17),
	devoe => ww_devoe,
	o => \Out_B[17]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\Out_B[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(18),
	devoe => ww_devoe,
	o => \Out_B[18]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\Out_B[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(19),
	devoe => ww_devoe,
	o => \Out_B[19]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\Out_B[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(20),
	devoe => ww_devoe,
	o => \Out_B[20]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\Out_B[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(21),
	devoe => ww_devoe,
	o => \Out_B[21]~output_o\);

-- Location: IOOBUF_X115_Y63_N9
\Out_B[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(22),
	devoe => ww_devoe,
	o => \Out_B[22]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\Out_B[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(23),
	devoe => ww_devoe,
	o => \Out_B[23]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\Out_B[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(24),
	devoe => ww_devoe,
	o => \Out_B[24]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\Out_B[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(25),
	devoe => ww_devoe,
	o => \Out_B[25]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\Out_B[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(26),
	devoe => ww_devoe,
	o => \Out_B[26]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\Out_B[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(27),
	devoe => ww_devoe,
	o => \Out_B[27]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\Out_B[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(28),
	devoe => ww_devoe,
	o => \Out_B[28]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\Out_B[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(29),
	devoe => ww_devoe,
	o => \Out_B[29]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\Out_B[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(30),
	devoe => ww_devoe,
	o => \Out_B[30]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\Out_B[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B|q\(31),
	devoe => ww_devoe,
	o => \Out_B[31]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\Out_C~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C|q~q\,
	devoe => ww_devoe,
	o => \Out_C~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\Out_Z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Z|q~q\,
	devoe => ww_devoe,
	o => \Out_Z~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\Out_PC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(0),
	devoe => ww_devoe,
	o => \Out_PC[0]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\Out_PC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(1),
	devoe => ww_devoe,
	o => \Out_PC[1]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\Out_PC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(2),
	devoe => ww_devoe,
	o => \Out_PC[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N9
\Out_PC[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(3),
	devoe => ww_devoe,
	o => \Out_PC[3]~output_o\);

-- Location: IOOBUF_X115_Y24_N2
\Out_PC[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(4),
	devoe => ww_devoe,
	o => \Out_PC[4]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\Out_PC[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(5),
	devoe => ww_devoe,
	o => \Out_PC[5]~output_o\);

-- Location: IOOBUF_X100_Y0_N23
\Out_PC[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(6),
	devoe => ww_devoe,
	o => \Out_PC[6]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\Out_PC[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(7),
	devoe => ww_devoe,
	o => \Out_PC[7]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\Out_PC[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(8),
	devoe => ww_devoe,
	o => \Out_PC[8]~output_o\);

-- Location: IOOBUF_X111_Y0_N9
\Out_PC[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(9),
	devoe => ww_devoe,
	o => \Out_PC[9]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\Out_PC[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(10),
	devoe => ww_devoe,
	o => \Out_PC[10]~output_o\);

-- Location: IOOBUF_X115_Y17_N2
\Out_PC[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(11),
	devoe => ww_devoe,
	o => \Out_PC[11]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\Out_PC[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(12),
	devoe => ww_devoe,
	o => \Out_PC[12]~output_o\);

-- Location: IOOBUF_X102_Y0_N23
\Out_PC[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(13),
	devoe => ww_devoe,
	o => \Out_PC[13]~output_o\);

-- Location: IOOBUF_X115_Y5_N16
\Out_PC[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(14),
	devoe => ww_devoe,
	o => \Out_PC[14]~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\Out_PC[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(15),
	devoe => ww_devoe,
	o => \Out_PC[15]~output_o\);

-- Location: IOOBUF_X115_Y13_N9
\Out_PC[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(16),
	devoe => ww_devoe,
	o => \Out_PC[16]~output_o\);

-- Location: IOOBUF_X115_Y10_N9
\Out_PC[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(17),
	devoe => ww_devoe,
	o => \Out_PC[17]~output_o\);

-- Location: IOOBUF_X115_Y18_N9
\Out_PC[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(18),
	devoe => ww_devoe,
	o => \Out_PC[18]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\Out_PC[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(19),
	devoe => ww_devoe,
	o => \Out_PC[19]~output_o\);

-- Location: IOOBUF_X107_Y0_N2
\Out_PC[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(20),
	devoe => ww_devoe,
	o => \Out_PC[20]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\Out_PC[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(21),
	devoe => ww_devoe,
	o => \Out_PC[21]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\Out_PC[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(22),
	devoe => ww_devoe,
	o => \Out_PC[22]~output_o\);

-- Location: IOOBUF_X115_Y9_N23
\Out_PC[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(23),
	devoe => ww_devoe,
	o => \Out_PC[23]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
\Out_PC[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(24),
	devoe => ww_devoe,
	o => \Out_PC[24]~output_o\);

-- Location: IOOBUF_X115_Y15_N9
\Out_PC[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(25),
	devoe => ww_devoe,
	o => \Out_PC[25]~output_o\);

-- Location: IOOBUF_X115_Y14_N9
\Out_PC[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(26),
	devoe => ww_devoe,
	o => \Out_PC[26]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\Out_PC[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(27),
	devoe => ww_devoe,
	o => \Out_PC[27]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\Out_PC[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(28),
	devoe => ww_devoe,
	o => \Out_PC[28]~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\Out_PC[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(29),
	devoe => ww_devoe,
	o => \Out_PC[29]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\Out_PC[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(30),
	devoe => ww_devoe,
	o => \Out_PC[30]~output_o\);

-- Location: IOOBUF_X115_Y6_N16
\Out_PC[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(31),
	devoe => ww_devoe,
	o => \Out_PC[31]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\Out_IR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(0),
	devoe => ww_devoe,
	o => \Out_IR[0]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\Out_IR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(1),
	devoe => ww_devoe,
	o => \Out_IR[1]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\Out_IR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(2),
	devoe => ww_devoe,
	o => \Out_IR[2]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\Out_IR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(3),
	devoe => ww_devoe,
	o => \Out_IR[3]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\Out_IR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(4),
	devoe => ww_devoe,
	o => \Out_IR[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\Out_IR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(5),
	devoe => ww_devoe,
	o => \Out_IR[5]~output_o\);

-- Location: IOOBUF_X115_Y31_N9
\Out_IR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(6),
	devoe => ww_devoe,
	o => \Out_IR[6]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\Out_IR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(7),
	devoe => ww_devoe,
	o => \Out_IR[7]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\Out_IR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(8),
	devoe => ww_devoe,
	o => \Out_IR[8]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\Out_IR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(9),
	devoe => ww_devoe,
	o => \Out_IR[9]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\Out_IR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(10),
	devoe => ww_devoe,
	o => \Out_IR[10]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\Out_IR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(11),
	devoe => ww_devoe,
	o => \Out_IR[11]~output_o\);

-- Location: IOOBUF_X115_Y27_N9
\Out_IR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(12),
	devoe => ww_devoe,
	o => \Out_IR[12]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\Out_IR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(13),
	devoe => ww_devoe,
	o => \Out_IR[13]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\Out_IR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(14),
	devoe => ww_devoe,
	o => \Out_IR[14]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\Out_IR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(15),
	devoe => ww_devoe,
	o => \Out_IR[15]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\Out_IR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(16),
	devoe => ww_devoe,
	o => \Out_IR[16]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\Out_IR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(17),
	devoe => ww_devoe,
	o => \Out_IR[17]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\Out_IR[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(18),
	devoe => ww_devoe,
	o => \Out_IR[18]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\Out_IR[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(19),
	devoe => ww_devoe,
	o => \Out_IR[19]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\Out_IR[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(20),
	devoe => ww_devoe,
	o => \Out_IR[20]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\Out_IR[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(21),
	devoe => ww_devoe,
	o => \Out_IR[21]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\Out_IR[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(22),
	devoe => ww_devoe,
	o => \Out_IR[22]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\Out_IR[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(23),
	devoe => ww_devoe,
	o => \Out_IR[23]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\Out_IR[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(24),
	devoe => ww_devoe,
	o => \Out_IR[24]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\Out_IR[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(25),
	devoe => ww_devoe,
	o => \Out_IR[25]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\Out_IR[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(26),
	devoe => ww_devoe,
	o => \Out_IR[26]~output_o\);

-- Location: IOOBUF_X115_Y50_N9
\Out_IR[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(27),
	devoe => ww_devoe,
	o => \Out_IR[27]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\Out_IR[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(28),
	devoe => ww_devoe,
	o => \Out_IR[28]~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\Out_IR[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(29),
	devoe => ww_devoe,
	o => \Out_IR[29]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\Out_IR[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(30),
	devoe => ww_devoe,
	o => \Out_IR[30]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\Out_IR[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(31),
	devoe => ww_devoe,
	o => \Out_IR[31]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\Addr_Out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(0),
	devoe => ww_devoe,
	o => \Addr_Out[0]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\Addr_Out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(1),
	devoe => ww_devoe,
	o => \Addr_Out[1]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\Addr_Out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(2),
	devoe => ww_devoe,
	o => \Addr_Out[2]~output_o\);

-- Location: IOOBUF_X115_Y11_N2
\Addr_Out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(3),
	devoe => ww_devoe,
	o => \Addr_Out[3]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\Addr_Out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(4),
	devoe => ww_devoe,
	o => \Addr_Out[4]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\Addr_Out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(5),
	devoe => ww_devoe,
	o => \Addr_Out[5]~output_o\);

-- Location: IOOBUF_X100_Y0_N16
\Addr_Out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(6),
	devoe => ww_devoe,
	o => \Addr_Out[6]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\Addr_Out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(7),
	devoe => ww_devoe,
	o => \Addr_Out[7]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\Addr_Out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(8),
	devoe => ww_devoe,
	o => \Addr_Out[8]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\Addr_Out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(9),
	devoe => ww_devoe,
	o => \Addr_Out[9]~output_o\);

-- Location: IOOBUF_X105_Y0_N16
\Addr_Out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(10),
	devoe => ww_devoe,
	o => \Addr_Out[10]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\Addr_Out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(11),
	devoe => ww_devoe,
	o => \Addr_Out[11]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\Addr_Out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(12),
	devoe => ww_devoe,
	o => \Addr_Out[12]~output_o\);

-- Location: IOOBUF_X115_Y4_N23
\Addr_Out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(13),
	devoe => ww_devoe,
	o => \Addr_Out[13]~output_o\);

-- Location: IOOBUF_X115_Y4_N16
\Addr_Out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(14),
	devoe => ww_devoe,
	o => \Addr_Out[14]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\Addr_Out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(15),
	devoe => ww_devoe,
	o => \Addr_Out[15]~output_o\);

-- Location: IOOBUF_X115_Y13_N2
\Addr_Out[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(16),
	devoe => ww_devoe,
	o => \Addr_Out[16]~output_o\);

-- Location: IOOBUF_X115_Y10_N2
\Addr_Out[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(17),
	devoe => ww_devoe,
	o => \Addr_Out[17]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\Addr_Out[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(18),
	devoe => ww_devoe,
	o => \Addr_Out[18]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\Addr_Out[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(19),
	devoe => ww_devoe,
	o => \Addr_Out[19]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\Addr_Out[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(20),
	devoe => ww_devoe,
	o => \Addr_Out[20]~output_o\);

-- Location: IOOBUF_X102_Y0_N16
\Addr_Out[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(21),
	devoe => ww_devoe,
	o => \Addr_Out[21]~output_o\);

-- Location: IOOBUF_X115_Y8_N16
\Addr_Out[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(22),
	devoe => ww_devoe,
	o => \Addr_Out[22]~output_o\);

-- Location: IOOBUF_X115_Y11_N9
\Addr_Out[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(23),
	devoe => ww_devoe,
	o => \Addr_Out[23]~output_o\);

-- Location: IOOBUF_X109_Y0_N2
\Addr_Out[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(24),
	devoe => ww_devoe,
	o => \Addr_Out[24]~output_o\);

-- Location: IOOBUF_X115_Y15_N2
\Addr_Out[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(25),
	devoe => ww_devoe,
	o => \Addr_Out[25]~output_o\);

-- Location: IOOBUF_X115_Y14_N2
\Addr_Out[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(26),
	devoe => ww_devoe,
	o => \Addr_Out[26]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\Addr_Out[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(27),
	devoe => ww_devoe,
	o => \Addr_Out[27]~output_o\);

-- Location: IOOBUF_X115_Y12_N2
\Addr_Out[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(28),
	devoe => ww_devoe,
	o => \Addr_Out[28]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\Addr_Out[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(29),
	devoe => ww_devoe,
	o => \Addr_Out[29]~output_o\);

-- Location: IOOBUF_X113_Y0_N2
\Addr_Out[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(30),
	devoe => ww_devoe,
	o => \Addr_Out[30]~output_o\);

-- Location: IOOBUF_X115_Y7_N16
\Addr_Out[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|q_reg\(31),
	devoe => ww_devoe,
	o => \Addr_Out[31]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\Data_Out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux31~4_combout\,
	devoe => ww_devoe,
	o => \Data_Out[0]~output_o\);

-- Location: IOOBUF_X115_Y62_N9
\Data_Out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux30~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[1]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\Data_Out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux29~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[2]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\Data_Out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux28~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[3]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\Data_Out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux27~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[4]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\Data_Out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux26~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[5]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\Data_Out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux25~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[6]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\Data_Out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux24~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[7]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\Data_Out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux23~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[8]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\Data_Out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux22~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[9]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\Data_Out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux21~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[10]~output_o\);

-- Location: IOOBUF_X115_Y64_N2
\Data_Out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux20~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[11]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\Data_Out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux19~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[12]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\Data_Out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux18~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[13]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\Data_Out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux17~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[14]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\Data_Out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux16~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[15]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\Data_Out[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux15~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[16]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\Data_Out[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux14~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[17]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\Data_Out[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux13~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[18]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\Data_Out[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux12~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[19]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\Data_Out[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux11~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[20]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\Data_Out[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux10~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[21]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\Data_Out[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux9~2_combout\,
	devoe => ww_devoe,
	o => \Data_Out[22]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\Data_Out[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux8~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[23]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\Data_Out[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux7~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[24]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\Data_Out[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux6~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[25]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\Data_Out[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux5~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[26]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\Data_Out[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux4~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[27]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\Data_Out[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux3~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[28]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\Data_Out[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux2~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[29]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\Data_Out[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux1~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[30]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\Data_Out[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxData|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \Data_Out[31]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\Mem_Out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(0),
	devoe => ww_devoe,
	o => \Mem_Out[0]~output_o\);

-- Location: IOOBUF_X115_Y64_N9
\Mem_Out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(1),
	devoe => ww_devoe,
	o => \Mem_Out[1]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\Mem_Out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(2),
	devoe => ww_devoe,
	o => \Mem_Out[2]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\Mem_Out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(3),
	devoe => ww_devoe,
	o => \Mem_Out[3]~output_o\);

-- Location: IOOBUF_X109_Y73_N2
\Mem_Out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(4),
	devoe => ww_devoe,
	o => \Mem_Out[4]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\Mem_Out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(5),
	devoe => ww_devoe,
	o => \Mem_Out[5]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\Mem_Out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(6),
	devoe => ww_devoe,
	o => \Mem_Out[6]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\Mem_Out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(7),
	devoe => ww_devoe,
	o => \Mem_Out[7]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\Mem_Out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(8),
	devoe => ww_devoe,
	o => \Mem_Out[8]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\Mem_Out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(9),
	devoe => ww_devoe,
	o => \Mem_Out[9]~output_o\);

-- Location: IOOBUF_X102_Y73_N9
\Mem_Out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(10),
	devoe => ww_devoe,
	o => \Mem_Out[10]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\Mem_Out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(11),
	devoe => ww_devoe,
	o => \Mem_Out[11]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\Mem_Out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(12),
	devoe => ww_devoe,
	o => \Mem_Out[12]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\Mem_Out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(13),
	devoe => ww_devoe,
	o => \Mem_Out[13]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\Mem_Out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(14),
	devoe => ww_devoe,
	o => \Mem_Out[14]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\Mem_Out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(15),
	devoe => ww_devoe,
	o => \Mem_Out[15]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\Mem_Out[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(16),
	devoe => ww_devoe,
	o => \Mem_Out[16]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\Mem_Out[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(17),
	devoe => ww_devoe,
	o => \Mem_Out[17]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\Mem_Out[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(18),
	devoe => ww_devoe,
	o => \Mem_Out[18]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\Mem_Out[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(19),
	devoe => ww_devoe,
	o => \Mem_Out[19]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\Mem_Out[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(20),
	devoe => ww_devoe,
	o => \Mem_Out[20]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\Mem_Out[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(21),
	devoe => ww_devoe,
	o => \Mem_Out[21]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\Mem_Out[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(22),
	devoe => ww_devoe,
	o => \Mem_Out[22]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\Mem_Out[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(23),
	devoe => ww_devoe,
	o => \Mem_Out[23]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\Mem_Out[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(24),
	devoe => ww_devoe,
	o => \Mem_Out[24]~output_o\);

-- Location: IOOBUF_X115_Y62_N16
\Mem_Out[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(25),
	devoe => ww_devoe,
	o => \Mem_Out[25]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\Mem_Out[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(26),
	devoe => ww_devoe,
	o => \Mem_Out[26]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\Mem_Out[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(27),
	devoe => ww_devoe,
	o => \Mem_Out[27]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\Mem_Out[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(28),
	devoe => ww_devoe,
	o => \Mem_Out[28]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\Mem_Out[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(29),
	devoe => ww_devoe,
	o => \Mem_Out[29]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\Mem_Out[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(30),
	devoe => ww_devoe,
	o => \Mem_Out[30]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\Mem_Out[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataMemory|data_out\(31),
	devoe => ww_devoe,
	o => \Mem_Out[31]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\Mem_In[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[0]~0_combout\,
	devoe => ww_devoe,
	o => \Mem_In[0]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\Mem_In[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[1]~1_combout\,
	devoe => ww_devoe,
	o => \Mem_In[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\Mem_In[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[2]~2_combout\,
	devoe => ww_devoe,
	o => \Mem_In[2]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\Mem_In[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[3]~3_combout\,
	devoe => ww_devoe,
	o => \Mem_In[3]~output_o\);

-- Location: IOOBUF_X115_Y66_N16
\Mem_In[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[4]~4_combout\,
	devoe => ww_devoe,
	o => \Mem_In[4]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\Mem_In[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[5]~5_combout\,
	devoe => ww_devoe,
	o => \Mem_In[5]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\Mem_In[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[6]~6_combout\,
	devoe => ww_devoe,
	o => \Mem_In[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\Mem_In[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[7]~7_combout\,
	devoe => ww_devoe,
	o => \Mem_In[7]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\Mem_In[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[8]~8_combout\,
	devoe => ww_devoe,
	o => \Mem_In[8]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\Mem_In[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[9]~9_combout\,
	devoe => ww_devoe,
	o => \Mem_In[9]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\Mem_In[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[10]~10_combout\,
	devoe => ww_devoe,
	o => \Mem_In[10]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\Mem_In[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[11]~11_combout\,
	devoe => ww_devoe,
	o => \Mem_In[11]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\Mem_In[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[12]~12_combout\,
	devoe => ww_devoe,
	o => \Mem_In[12]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\Mem_In[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[13]~13_combout\,
	devoe => ww_devoe,
	o => \Mem_In[13]~output_o\);

-- Location: IOOBUF_X115_Y66_N23
\Mem_In[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[14]~14_combout\,
	devoe => ww_devoe,
	o => \Mem_In[14]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\Mem_In[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[15]~15_combout\,
	devoe => ww_devoe,
	o => \Mem_In[15]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\Mem_In[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[16]~16_combout\,
	devoe => ww_devoe,
	o => \Mem_In[16]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\Mem_In[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[17]~17_combout\,
	devoe => ww_devoe,
	o => \Mem_In[17]~output_o\);

-- Location: IOOBUF_X115_Y68_N23
\Mem_In[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[18]~18_combout\,
	devoe => ww_devoe,
	o => \Mem_In[18]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\Mem_In[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[19]~19_combout\,
	devoe => ww_devoe,
	o => \Mem_In[19]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\Mem_In[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[20]~20_combout\,
	devoe => ww_devoe,
	o => \Mem_In[20]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\Mem_In[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[21]~21_combout\,
	devoe => ww_devoe,
	o => \Mem_In[21]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\Mem_In[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[22]~22_combout\,
	devoe => ww_devoe,
	o => \Mem_In[22]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\Mem_In[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[23]~23_combout\,
	devoe => ww_devoe,
	o => \Mem_In[23]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\Mem_In[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[24]~24_combout\,
	devoe => ww_devoe,
	o => \Mem_In[24]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\Mem_In[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[25]~25_combout\,
	devoe => ww_devoe,
	o => \Mem_In[25]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\Mem_In[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[26]~26_combout\,
	devoe => ww_devoe,
	o => \Mem_In[26]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\Mem_In[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[27]~27_combout\,
	devoe => ww_devoe,
	o => \Mem_In[27]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\Mem_In[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[28]~28_combout\,
	devoe => ww_devoe,
	o => \Mem_In[28]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\Mem_In[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[29]~29_combout\,
	devoe => ww_devoe,
	o => \Mem_In[29]~output_o\);

-- Location: IOOBUF_X115_Y44_N2
\Mem_In[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[30]~30_combout\,
	devoe => ww_devoe,
	o => \Mem_In[30]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\Mem_In[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxReg|f[31]~31_combout\,
	devoe => ww_devoe,
	o => \Mem_In[31]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\Mem_Addr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(0),
	devoe => ww_devoe,
	o => \Mem_Addr[0]~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\Mem_Addr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(1),
	devoe => ww_devoe,
	o => \Mem_Addr[1]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\Mem_Addr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(2),
	devoe => ww_devoe,
	o => \Mem_Addr[2]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
\Mem_Addr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(3),
	devoe => ww_devoe,
	o => \Mem_Addr[3]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\Mem_Addr[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(4),
	devoe => ww_devoe,
	o => \Mem_Addr[4]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\Mem_Addr[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(5),
	devoe => ww_devoe,
	o => \Mem_Addr[5]~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\Mem_Addr[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(6),
	devoe => ww_devoe,
	o => \Mem_Addr[6]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\Mem_Addr[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|q\(7),
	devoe => ww_devoe,
	o => \Mem_Addr[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\Clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G2
\Clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y56_N22
\A_Mux~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_Mux,
	o => \A_Mux~input_o\);

-- Location: IOIBUF_X115_Y56_N15
\Data_Mux[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_Mux(0),
	o => \Data_Mux[0]~input_o\);

-- Location: IOIBUF_X7_Y73_N15
\wen~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wen,
	o => \wen~input_o\);

-- Location: IOIBUF_X115_Y59_N22
\en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: LCCOMB_X83_Y59_N8
\DataMemory|data_out[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out[14]~0_combout\ = (\wen~input_o\) # (!\en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wen~input_o\,
	datad => \en~input_o\,
	combout => \DataMemory|data_out[14]~0_combout\);

-- Location: IOIBUF_X85_Y73_N15
\B_Mux~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_Mux,
	o => \B_Mux~input_o\);

-- Location: LCCOMB_X83_Y58_N20
\MuxB|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[0]~0_combout\ = (\B_Mux~input_o\ & (\IR|q\(0))) # (!\B_Mux~input_o\ & ((\MuxData|Mux31~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|q\(0),
	datab => \B_Mux~input_o\,
	datac => \MuxData|Mux31~4_combout\,
	combout => \MuxB|f[0]~0_combout\);

-- Location: IOIBUF_X58_Y0_N15
\Clr_B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clr_B,
	o => \Clr_B~input_o\);

-- Location: CLKCTRL_G19
\Clr_B~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clr_B~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clr_B~inputclkctrl_outclk\);

-- Location: IOIBUF_X85_Y73_N22
\Ld_B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ld_B,
	o => \Ld_B~input_o\);

-- Location: FF_X83_Y58_N21
\B|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[0]~0_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(0));

-- Location: IOIBUF_X79_Y73_N1
\Reg_Mux~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reg_Mux,
	o => \Reg_Mux~input_o\);

-- Location: LCCOMB_X82_Y60_N14
\MuxReg|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[0]~0_combout\ = (\Reg_Mux~input_o\ & ((\B|q\(0)))) # (!\Reg_Mux~input_o\ & (\A|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|q\(0),
	datac => \B|q\(0),
	datad => \Reg_Mux~input_o\,
	combout => \MuxReg|f[0]~0_combout\);

-- Location: IOIBUF_X115_Y55_N15
\Data_Mux[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_Mux(1),
	o => \Data_Mux[1]~input_o\);

-- Location: IOIBUF_X85_Y73_N8
\Alu_Opcode[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Alu_Opcode(2),
	o => \Alu_Opcode[2]~input_o\);

-- Location: IOIBUF_X115_Y61_N15
\Alu_Opcode[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Alu_Opcode(1),
	o => \Alu_Opcode[1]~input_o\);

-- Location: IOIBUF_X87_Y73_N15
\Im_Mux2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Im_Mux2(0),
	o => \Im_Mux2[0]~input_o\);

-- Location: IOIBUF_X115_Y55_N22
\Im_Mux2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Im_Mux2(1),
	o => \Im_Mux2[1]~input_o\);

-- Location: LCCOMB_X83_Y59_N22
\MuxB|f[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[2]~2_combout\ = (\B_Mux~input_o\ & (\IR|q\(2))) # (!\B_Mux~input_o\ & ((\MuxData|Mux29~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|q\(2),
	datac => \MuxData|Mux29~3_combout\,
	datad => \B_Mux~input_o\,
	combout => \MuxB|f[2]~2_combout\);

-- Location: FF_X83_Y59_N23
\B|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[2]~2_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(2));

-- Location: LCCOMB_X83_Y59_N16
\MuxIm2|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux29~0_combout\ = (!\Im_Mux2[1]~input_o\ & ((\Im_Mux2[0]~input_o\ & ((\IR|q\(2)))) # (!\Im_Mux2[0]~input_o\ & (\B|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux2[0]~input_o\,
	datab => \Im_Mux2[1]~input_o\,
	datac => \B|q\(2),
	datad => \IR|q\(2),
	combout => \MuxIm2|Mux29~0_combout\);

-- Location: LCCOMB_X84_Y58_N6
\MuxA|f[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[2]~2_combout\ = (\A_Mux~input_o\ & (\IR|q\(2))) # (!\A_Mux~input_o\ & ((\MuxData|Mux29~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|q\(2),
	datac => \A_Mux~input_o\,
	datad => \MuxData|Mux29~3_combout\,
	combout => \MuxA|f[2]~2_combout\);

-- Location: IOIBUF_X0_Y36_N22
\Clr_A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clr_A,
	o => \Clr_A~input_o\);

-- Location: CLKCTRL_G3
\Clr_A~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clr_A~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clr_A~inputclkctrl_outclk\);

-- Location: IOIBUF_X87_Y73_N1
\Ld_A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ld_A,
	o => \Ld_A~input_o\);

-- Location: FF_X84_Y58_N7
\A|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[2]~2_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(2));

-- Location: IOIBUF_X85_Y73_N1
\Im_Mux1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Im_Mux1,
	o => \Im_Mux1~input_o\);

-- Location: LCCOMB_X82_Y60_N22
\ALU0|Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux29~4_combout\ = (\Alu_Opcode[1]~input_o\ & (\MuxIm2|Mux29~0_combout\ $ (((\A|q\(2) & !\Im_Mux1~input_o\))))) # (!\Alu_Opcode[1]~input_o\ & (\MuxIm2|Mux29~0_combout\ & (\A|q\(2) & !\Im_Mux1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[1]~input_o\,
	datab => \MuxIm2|Mux29~0_combout\,
	datac => \A|q\(2),
	datad => \Im_Mux1~input_o\,
	combout => \ALU0|Mux29~4_combout\);

-- Location: IOIBUF_X87_Y73_N22
\Alu_Opcode[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Alu_Opcode(0),
	o => \Alu_Opcode[0]~input_o\);

-- Location: LCCOMB_X82_Y61_N18
\MuxIm1|f[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[1]~2_combout\ = (\A|q\(1) & !\Im_Mux1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|q\(1),
	datac => \Im_Mux1~input_o\,
	combout => \MuxIm1|f[1]~2_combout\);

-- Location: LCCOMB_X83_Y58_N18
\MuxIm2|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux31~0_combout\ = (\Im_Mux2[0]~input_o\ & (!\Im_Mux2[1]~input_o\ & (\IR|q\(0)))) # (!\Im_Mux2[0]~input_o\ & ((\Im_Mux2[1]~input_o\) # ((\B|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux2[0]~input_o\,
	datab => \Im_Mux2[1]~input_o\,
	datac => \IR|q\(0),
	datad => \B|q\(0),
	combout => \MuxIm2|Mux31~0_combout\);

-- Location: LCCOMB_X83_Y58_N0
\ALU0|sub|cycle0|cycle0|cycle0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle0|cycle0|Cout~0_combout\ = (\Alu_Opcode[2]~input_o\ & (((!\Im_Mux1~input_o\ & \A|q\(0))) # (!\MuxIm2|Mux31~0_combout\))) # (!\Alu_Opcode[2]~input_o\ & (!\Im_Mux1~input_o\ & (\A|q\(0) & !\MuxIm2|Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \Alu_Opcode[2]~input_o\,
	datac => \A|q\(0),
	datad => \MuxIm2|Mux31~0_combout\,
	combout => \ALU0|sub|cycle0|cycle0|cycle0|Cout~0_combout\);

-- Location: LCCOMB_X83_Y59_N12
\MuxB|f[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[1]~1_combout\ = (\B_Mux~input_o\ & (\IR|q\(1))) # (!\B_Mux~input_o\ & ((\MuxData|Mux30~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|q\(1),
	datac => \MuxData|Mux30~3_combout\,
	datad => \B_Mux~input_o\,
	combout => \MuxB|f[1]~1_combout\);

-- Location: FF_X83_Y59_N13
\B|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[1]~1_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(1));

-- Location: LCCOMB_X83_Y59_N30
\MuxIm2|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux30~0_combout\ = (!\Im_Mux2[1]~input_o\ & ((\Im_Mux2[0]~input_o\ & (\IR|q\(1))) # (!\Im_Mux2[0]~input_o\ & ((\B|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux2[0]~input_o\,
	datab => \Im_Mux2[1]~input_o\,
	datac => \IR|q\(1),
	datad => \B|q\(1),
	combout => \MuxIm2|Mux30~0_combout\);

-- Location: LCCOMB_X83_Y58_N12
\ALU0|sub|cycle0|cycle0|cycle1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle0|cycle1|s~combout\ = \ALU0|sub|cycle0|cycle0|cycle0|Cout~0_combout\ $ (\MuxIm2|Mux30~0_combout\ $ (((\A|q\(1) & !\Im_Mux1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(1),
	datab => \ALU0|sub|cycle0|cycle0|cycle0|Cout~0_combout\,
	datac => \MuxIm2|Mux30~0_combout\,
	datad => \Im_Mux1~input_o\,
	combout => \ALU0|sub|cycle0|cycle0|cycle1|s~combout\);

-- Location: LCCOMB_X82_Y61_N4
\MuxIm1|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[0]~0_combout\ = (!\Im_Mux1~input_o\ & \A|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Im_Mux1~input_o\,
	datad => \A|q\(0),
	combout => \MuxIm1|f[0]~0_combout\);

-- Location: LCCOMB_X82_Y61_N8
\ALU0|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux30~0_combout\ = (\Alu_Opcode[0]~input_o\ & (((\Alu_Opcode[1]~input_o\)))) # (!\Alu_Opcode[0]~input_o\ & ((\Alu_Opcode[1]~input_o\ & (!\ALU0|sub|cycle0|cycle0|cycle1|s~combout\)) # (!\Alu_Opcode[1]~input_o\ & ((\MuxIm1|f[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub|cycle0|cycle0|cycle1|s~combout\,
	datab => \MuxIm1|f[0]~0_combout\,
	datac => \Alu_Opcode[0]~input_o\,
	datad => \Alu_Opcode[1]~input_o\,
	combout => \ALU0|Mux30~0_combout\);

-- Location: LCCOMB_X82_Y61_N16
\MuxIm1|f[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[2]~1_combout\ = (!\Im_Mux1~input_o\ & \A|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Im_Mux1~input_o\,
	datad => \A|q\(2),
	combout => \MuxIm1|f[2]~1_combout\);

-- Location: LCCOMB_X82_Y61_N10
\ALU0|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux30~1_combout\ = (\Alu_Opcode[0]~input_o\ & ((\ALU0|Mux30~0_combout\ & (\MuxIm1|f[1]~2_combout\)) # (!\ALU0|Mux30~0_combout\ & ((\MuxIm1|f[2]~1_combout\))))) # (!\Alu_Opcode[0]~input_o\ & (((\ALU0|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \MuxIm1|f[1]~2_combout\,
	datac => \ALU0|Mux30~0_combout\,
	datad => \MuxIm1|f[2]~1_combout\,
	combout => \ALU0|Mux30~1_combout\);

-- Location: LCCOMB_X83_Y58_N22
\ALU0|add|cycle0|cycle0|cycle0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle0|cycle0|cycle0|Cout~0_combout\ = (\Alu_Opcode[2]~input_o\ & ((\MuxIm2|Mux31~0_combout\) # ((!\Im_Mux1~input_o\ & \A|q\(0))))) # (!\Alu_Opcode[2]~input_o\ & (!\Im_Mux1~input_o\ & (\A|q\(0) & \MuxIm2|Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \Alu_Opcode[2]~input_o\,
	datac => \A|q\(0),
	datad => \MuxIm2|Mux31~0_combout\,
	combout => \ALU0|add|cycle0|cycle0|cycle0|Cout~0_combout\);

-- Location: LCCOMB_X82_Y60_N16
\ALU0|Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux30~4_combout\ = (\Alu_Opcode[1]~input_o\ & (\MuxIm2|Mux30~0_combout\ $ (((!\Im_Mux1~input_o\ & \A|q\(1)))))) # (!\Alu_Opcode[1]~input_o\ & (!\Im_Mux1~input_o\ & (\A|q\(1) & \MuxIm2|Mux30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[1]~input_o\,
	datab => \Im_Mux1~input_o\,
	datac => \A|q\(1),
	datad => \MuxIm2|Mux30~0_combout\,
	combout => \ALU0|Mux30~4_combout\);

-- Location: LCCOMB_X82_Y60_N2
\ALU0|Mux30~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux30~5_combout\ = (\Alu_Opcode[0]~input_o\ & (((\Alu_Opcode[1]~input_o\)))) # (!\Alu_Opcode[0]~input_o\ & (\ALU0|Mux30~4_combout\ $ (((\ALU0|add|cycle0|cycle0|cycle0|Cout~0_combout\ & \Alu_Opcode[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|add|cycle0|cycle0|cycle0|Cout~0_combout\,
	datab => \Alu_Opcode[0]~input_o\,
	datac => \Alu_Opcode[1]~input_o\,
	datad => \ALU0|Mux30~4_combout\,
	combout => \ALU0|Mux30~5_combout\);

-- Location: LCCOMB_X82_Y61_N0
\ALU0|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux30~2_combout\ = (\Alu_Opcode[0]~input_o\ & ((\MuxIm2|Mux30~0_combout\) # ((!\ALU0|Mux30~5_combout\ & \MuxIm1|f[1]~2_combout\)))) # (!\Alu_Opcode[0]~input_o\ & (\ALU0|Mux30~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux30~5_combout\,
	datab => \MuxIm2|Mux30~0_combout\,
	datac => \Alu_Opcode[0]~input_o\,
	datad => \MuxIm1|f[1]~2_combout\,
	combout => \ALU0|Mux30~2_combout\);

-- Location: LCCOMB_X81_Y61_N8
\ALU0|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux30~3_combout\ = (\Alu_Opcode[2]~input_o\ & (\ALU0|Mux30~1_combout\)) # (!\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux30~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU0|Mux30~1_combout\,
	datac => \ALU0|Mux30~2_combout\,
	datad => \Alu_Opcode[2]~input_o\,
	combout => \ALU0|Mux30~3_combout\);

-- Location: IOIBUF_X23_Y73_N1
\Data_In[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(1),
	o => \Data_In[1]~input_o\);

-- Location: LCCOMB_X79_Y60_N26
\DataMemory|memory~41feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|memory~41feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \DataMemory|memory~41feeder_combout\);

-- Location: IOIBUF_X0_Y36_N15
\Clr_IR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clr_IR,
	o => \Clr_IR~input_o\);

-- Location: CLKCTRL_G4
\Clr_IR~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clr_IR~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clr_IR~inputclkctrl_outclk\);

-- Location: IOIBUF_X87_Y73_N8
\Ld_IR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ld_IR,
	o => \Ld_IR~input_o\);

-- Location: FF_X79_Y60_N27
\DataMemory|memory~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DataMemory|memory~41feeder_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~41_q\);

-- Location: LCCOMB_X83_Y59_N4
\DataMemory|memory~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|memory~74_combout\ = (\wen~input_o\ & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wen~input_o\,
	datad => \en~input_o\,
	combout => \DataMemory|memory~74_combout\);

-- Location: LCCOMB_X82_Y61_N24
\MuxA|f[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[3]~3_combout\ = (\A_Mux~input_o\ & (\IR|q\(3))) # (!\A_Mux~input_o\ & ((\MuxData|Mux28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|q\(3),
	datac => \MuxData|Mux28~3_combout\,
	datad => \A_Mux~input_o\,
	combout => \MuxA|f[3]~3_combout\);

-- Location: FF_X82_Y61_N25
\A|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[3]~3_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(3));

-- Location: LCCOMB_X83_Y59_N20
\MuxB|f[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[3]~3_combout\ = (\B_Mux~input_o\ & (\IR|q\(3))) # (!\B_Mux~input_o\ & ((\MuxData|Mux28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|q\(3),
	datac => \MuxData|Mux28~3_combout\,
	datad => \B_Mux~input_o\,
	combout => \MuxB|f[3]~3_combout\);

-- Location: FF_X83_Y59_N21
\B|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[3]~3_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(3));

-- Location: LCCOMB_X83_Y59_N26
\MuxIm2|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux28~0_combout\ = (!\Im_Mux2[1]~input_o\ & ((\Im_Mux2[0]~input_o\ & (\IR|q\(3))) # (!\Im_Mux2[0]~input_o\ & ((\B|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux2[0]~input_o\,
	datab => \Im_Mux2[1]~input_o\,
	datac => \IR|q\(3),
	datad => \B|q\(3),
	combout => \MuxIm2|Mux28~0_combout\);

-- Location: LCCOMB_X83_Y58_N4
\ALU0|sub|cycle0|cycle0|cycle1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle0|cycle1|Cout~0_combout\ = (\MuxIm2|Mux30~0_combout\ & (\A|q\(1) & (!\Im_Mux1~input_o\ & \ALU0|sub|cycle0|cycle0|cycle0|Cout~0_combout\))) # (!\MuxIm2|Mux30~0_combout\ & ((\ALU0|sub|cycle0|cycle0|cycle0|Cout~0_combout\) # ((\A|q\(1) 
-- & !\Im_Mux1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(1),
	datab => \Im_Mux1~input_o\,
	datac => \MuxIm2|Mux30~0_combout\,
	datad => \ALU0|sub|cycle0|cycle0|cycle0|Cout~0_combout\,
	combout => \ALU0|sub|cycle0|cycle0|cycle1|Cout~0_combout\);

-- Location: LCCOMB_X83_Y58_N10
\ALU0|sub|cycle0|cycle0|cycle2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle0|cycle2|Cout~0_combout\ = (\MuxIm2|Mux29~0_combout\ & (!\Im_Mux1~input_o\ & (\ALU0|sub|cycle0|cycle0|cycle1|Cout~0_combout\ & \A|q\(2)))) # (!\MuxIm2|Mux29~0_combout\ & ((\ALU0|sub|cycle0|cycle0|cycle1|Cout~0_combout\) # 
-- ((!\Im_Mux1~input_o\ & \A|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \MuxIm2|Mux29~0_combout\,
	datac => \ALU0|sub|cycle0|cycle0|cycle1|Cout~0_combout\,
	datad => \A|q\(2),
	combout => \ALU0|sub|cycle0|cycle0|cycle2|Cout~0_combout\);

-- Location: LCCOMB_X83_Y61_N10
\ALU0|sub|cycle0|cycle0|cycle3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle0|cycle3|s~combout\ = \MuxIm2|Mux28~0_combout\ $ (\ALU0|sub|cycle0|cycle0|cycle2|Cout~0_combout\ $ (((!\Im_Mux1~input_o\ & \A|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \A|q\(3),
	datac => \MuxIm2|Mux28~0_combout\,
	datad => \ALU0|sub|cycle0|cycle0|cycle2|Cout~0_combout\,
	combout => \ALU0|sub|cycle0|cycle0|cycle3|s~combout\);

-- Location: LCCOMB_X83_Y61_N16
\ALU0|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux28~0_combout\ = (\Alu_Opcode[0]~input_o\ & (((\Alu_Opcode[1]~input_o\)))) # (!\Alu_Opcode[0]~input_o\ & ((\Alu_Opcode[1]~input_o\ & ((!\ALU0|sub|cycle0|cycle0|cycle3|s~combout\))) # (!\Alu_Opcode[1]~input_o\ & (\MuxIm1|f[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \MuxIm1|f[2]~1_combout\,
	datac => \Alu_Opcode[1]~input_o\,
	datad => \ALU0|sub|cycle0|cycle0|cycle3|s~combout\,
	combout => \ALU0|Mux28~0_combout\);

-- Location: LCCOMB_X82_Y61_N14
\MuxIm1|f[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[3]~3_combout\ = (!\Im_Mux1~input_o\ & \A|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Im_Mux1~input_o\,
	datad => \A|q\(3),
	combout => \MuxIm1|f[3]~3_combout\);

-- Location: LCCOMB_X82_Y58_N10
\ALU0|add|cycle0|cycle0|cycle2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle0|cycle0|cycle2|Cout~0_combout\ = (\MuxIm2|Mux29~0_combout\ & ((\ALU0|add|cycle0|cycle0|cycle1|Cout~0_combout\) # ((\A|q\(2) & !\Im_Mux1~input_o\)))) # (!\MuxIm2|Mux29~0_combout\ & (\A|q\(2) & (!\Im_Mux1~input_o\ & 
-- \ALU0|add|cycle0|cycle0|cycle1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(2),
	datab => \Im_Mux1~input_o\,
	datac => \MuxIm2|Mux29~0_combout\,
	datad => \ALU0|add|cycle0|cycle0|cycle1|Cout~0_combout\,
	combout => \ALU0|add|cycle0|cycle0|cycle2|Cout~0_combout\);

-- Location: LCCOMB_X82_Y58_N0
\ALU0|add|cycle0|cycle0|cycle3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle0|cycle0|cycle3|Cout~0_combout\ = (\MuxIm2|Mux28~0_combout\ & ((\ALU0|add|cycle0|cycle0|cycle2|Cout~0_combout\) # ((\A|q\(3) & !\Im_Mux1~input_o\)))) # (!\MuxIm2|Mux28~0_combout\ & (\A|q\(3) & (!\Im_Mux1~input_o\ & 
-- \ALU0|add|cycle0|cycle0|cycle2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(3),
	datab => \Im_Mux1~input_o\,
	datac => \MuxIm2|Mux28~0_combout\,
	datad => \ALU0|add|cycle0|cycle0|cycle2|Cout~0_combout\,
	combout => \ALU0|add|cycle0|cycle0|cycle3|Cout~0_combout\);

-- Location: LCCOMB_X82_Y61_N20
\ALU0|Mux27~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux27~6_combout\ = (\Im_Mux1~input_o\ & (\Alu_Opcode[1]~input_o\ & (\ALU0|add|cycle0|cycle0|cycle3|Cout~0_combout\))) # (!\Im_Mux1~input_o\ & (\A|q\(4) $ (((\Alu_Opcode[1]~input_o\ & \ALU0|add|cycle0|cycle0|cycle3|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \ALU0|add|cycle0|cycle0|cycle3|Cout~0_combout\,
	datad => \A|q\(4),
	combout => \ALU0|Mux27~6_combout\);

-- Location: LCCOMB_X83_Y61_N12
\MuxB|f[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[4]~4_combout\ = (\B_Mux~input_o\ & (\IR|q\(4))) # (!\B_Mux~input_o\ & ((\MuxData|Mux27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|q\(4),
	datac => \MuxData|Mux27~3_combout\,
	datad => \B_Mux~input_o\,
	combout => \MuxB|f[4]~4_combout\);

-- Location: FF_X83_Y61_N13
\B|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[4]~4_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(4));

-- Location: LCCOMB_X83_Y61_N6
\MuxIm2|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux27~0_combout\ = (!\Im_Mux2[1]~input_o\ & ((\Im_Mux2[0]~input_o\ & (\IR|q\(4))) # (!\Im_Mux2[0]~input_o\ & ((\B|q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux2[1]~input_o\,
	datab => \Im_Mux2[0]~input_o\,
	datac => \IR|q\(4),
	datad => \B|q\(4),
	combout => \MuxIm2|Mux27~0_combout\);

-- Location: LCCOMB_X83_Y61_N14
\ALU0|Mux27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux27~4_combout\ = (\MuxIm2|Mux27~0_combout\ & ((\Alu_Opcode[0]~input_o\) # (\ALU0|Mux27~6_combout\ $ (\Alu_Opcode[1]~input_o\)))) # (!\MuxIm2|Mux27~0_combout\ & (\ALU0|Mux27~6_combout\ & (\Alu_Opcode[0]~input_o\ $ (\Alu_Opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \ALU0|Mux27~6_combout\,
	datac => \Alu_Opcode[1]~input_o\,
	datad => \MuxIm2|Mux27~0_combout\,
	combout => \ALU0|Mux27~4_combout\);

-- Location: IOIBUF_X89_Y0_N8
\Data_In[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(5),
	o => \Data_In[5]~input_o\);

-- Location: LCCOMB_X82_Y57_N20
\MuxB|f[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[5]~5_combout\ = (\B_Mux~input_o\ & (\IR|q\(5))) # (!\B_Mux~input_o\ & ((\MuxData|Mux26~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Mux~input_o\,
	datac => \IR|q\(5),
	datad => \MuxData|Mux26~3_combout\,
	combout => \MuxB|f[5]~5_combout\);

-- Location: FF_X82_Y57_N21
\B|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[5]~5_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(5));

-- Location: LCCOMB_X82_Y59_N26
\MuxReg|f[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[5]~5_combout\ = (\Reg_Mux~input_o\ & ((\B|q\(5)))) # (!\Reg_Mux~input_o\ & (\A|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(5),
	datab => \B|q\(5),
	datac => \Reg_Mux~input_o\,
	combout => \MuxReg|f[5]~5_combout\);

-- Location: LCCOMB_X80_Y60_N20
\DataMemory|memory~47feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|memory~47feeder_combout\ = \MuxReg|f[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxReg|f[5]~5_combout\,
	combout => \DataMemory|memory~47feeder_combout\);

-- Location: FF_X80_Y60_N21
\DataMemory|memory~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|memory~47feeder_combout\,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~47_q\);

-- Location: LCCOMB_X82_Y57_N30
\MuxB|f[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[6]~6_combout\ = (\B_Mux~input_o\ & (\IR|q\(6))) # (!\B_Mux~input_o\ & ((\MuxData|Mux25~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|q\(6),
	datab => \MuxData|Mux25~3_combout\,
	datac => \B_Mux~input_o\,
	combout => \MuxB|f[6]~6_combout\);

-- Location: FF_X82_Y57_N31
\B|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[6]~6_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(6));

-- Location: LCCOMB_X82_Y57_N6
\MuxIm2|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux25~0_combout\ = (!\Im_Mux2[1]~input_o\ & ((\Im_Mux2[0]~input_o\ & ((\IR|q\(6)))) # (!\Im_Mux2[0]~input_o\ & (\B|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux2[0]~input_o\,
	datab => \Im_Mux2[1]~input_o\,
	datac => \B|q\(6),
	datad => \IR|q\(6),
	combout => \MuxIm2|Mux25~0_combout\);

-- Location: LCCOMB_X83_Y59_N14
\MuxA|f[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[6]~6_combout\ = (\A_Mux~input_o\ & (\IR|q\(6))) # (!\A_Mux~input_o\ & ((\MuxData|Mux25~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|q\(6),
	datac => \A_Mux~input_o\,
	datad => \MuxData|Mux25~3_combout\,
	combout => \MuxA|f[6]~6_combout\);

-- Location: FF_X82_Y59_N21
\A|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \MuxA|f[6]~6_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(6));

-- Location: LCCOMB_X82_Y57_N2
\MuxIm2|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux26~0_combout\ = (!\Im_Mux2[1]~input_o\ & ((\Im_Mux2[0]~input_o\ & (\IR|q\(5))) # (!\Im_Mux2[0]~input_o\ & ((\B|q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux2[0]~input_o\,
	datab => \Im_Mux2[1]~input_o\,
	datac => \IR|q\(5),
	datad => \B|q\(5),
	combout => \MuxIm2|Mux26~0_combout\);

-- Location: LCCOMB_X82_Y58_N2
\ALU0|add|cycle0|cycle1|cycle0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle0|cycle1|cycle0|Cout~0_combout\ = (\MuxIm2|Mux27~0_combout\ & ((\ALU0|add|cycle0|cycle0|cycle3|Cout~0_combout\) # ((!\Im_Mux1~input_o\ & \A|q\(4))))) # (!\MuxIm2|Mux27~0_combout\ & (!\Im_Mux1~input_o\ & (\A|q\(4) & 
-- \ALU0|add|cycle0|cycle0|cycle3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux27~0_combout\,
	datab => \Im_Mux1~input_o\,
	datac => \A|q\(4),
	datad => \ALU0|add|cycle0|cycle0|cycle3|Cout~0_combout\,
	combout => \ALU0|add|cycle0|cycle1|cycle0|Cout~0_combout\);

-- Location: LCCOMB_X82_Y58_N12
\ALU0|add|cycle0|cycle1|cycle1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle0|cycle1|cycle1|Cout~0_combout\ = (\MuxIm2|Mux26~0_combout\ & ((\ALU0|add|cycle0|cycle1|cycle0|Cout~0_combout\) # ((!\Im_Mux1~input_o\ & \A|q\(5))))) # (!\MuxIm2|Mux26~0_combout\ & (!\Im_Mux1~input_o\ & (\A|q\(5) & 
-- \ALU0|add|cycle0|cycle1|cycle0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux26~0_combout\,
	datab => \Im_Mux1~input_o\,
	datac => \A|q\(5),
	datad => \ALU0|add|cycle0|cycle1|cycle0|Cout~0_combout\,
	combout => \ALU0|add|cycle0|cycle1|cycle1|Cout~0_combout\);

-- Location: LCCOMB_X83_Y57_N24
\ALU0|Mux25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux25~6_combout\ = (\A|q\(6) & (\Im_Mux1~input_o\ $ (((!\ALU0|add|cycle0|cycle1|cycle1|Cout~0_combout\) # (!\Alu_Opcode[1]~input_o\))))) # (!\A|q\(6) & (\Alu_Opcode[1]~input_o\ & ((\ALU0|add|cycle0|cycle1|cycle1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(6),
	datab => \Alu_Opcode[1]~input_o\,
	datac => \Im_Mux1~input_o\,
	datad => \ALU0|add|cycle0|cycle1|cycle1|Cout~0_combout\,
	combout => \ALU0|Mux25~6_combout\);

-- Location: LCCOMB_X83_Y57_N26
\ALU0|Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux25~4_combout\ = (\MuxIm2|Mux25~0_combout\ & ((\Alu_Opcode[0]~input_o\) # (\Alu_Opcode[1]~input_o\ $ (\ALU0|Mux25~6_combout\)))) # (!\MuxIm2|Mux25~0_combout\ & (\ALU0|Mux25~6_combout\ & (\Alu_Opcode[0]~input_o\ $ (\Alu_Opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \MuxIm2|Mux25~0_combout\,
	datad => \ALU0|Mux25~6_combout\,
	combout => \ALU0|Mux25~4_combout\);

-- Location: LCCOMB_X83_Y61_N18
\ALU0|sub|cycle0|cycle1|cycle0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle1|cycle0|Cout~0_combout\ = (\A|q\(4) & (!\Im_Mux1~input_o\ & !\MuxIm2|Mux27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(4),
	datac => \Im_Mux1~input_o\,
	datad => \MuxIm2|Mux27~0_combout\,
	combout => \ALU0|sub|cycle0|cycle1|cycle0|Cout~0_combout\);

-- Location: LCCOMB_X83_Y61_N4
\ALU0|sub|cycle0|cycle1|cycle0|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle1|cycle0|Cout~1_combout\ = ((\A|q\(4) & !\Im_Mux1~input_o\)) # (!\MuxIm2|Mux27~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(4),
	datac => \Im_Mux1~input_o\,
	datad => \MuxIm2|Mux27~0_combout\,
	combout => \ALU0|sub|cycle0|cycle1|cycle0|Cout~1_combout\);

-- Location: LCCOMB_X83_Y58_N28
\ALU0|sub|cycle0|cycle1|cycle0|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle1|cycle0|Cout~2_combout\ = (\ALU0|sub|cycle0|cycle1|cycle0|Cout~1_combout\ & ((\MuxIm2|Mux28~0_combout\ & (\MuxIm1|f[3]~3_combout\ & \ALU0|sub|cycle0|cycle0|cycle2|Cout~0_combout\)) # (!\MuxIm2|Mux28~0_combout\ & 
-- ((\MuxIm1|f[3]~3_combout\) # (\ALU0|sub|cycle0|cycle0|cycle2|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux28~0_combout\,
	datab => \MuxIm1|f[3]~3_combout\,
	datac => \ALU0|sub|cycle0|cycle1|cycle0|Cout~1_combout\,
	datad => \ALU0|sub|cycle0|cycle0|cycle2|Cout~0_combout\,
	combout => \ALU0|sub|cycle0|cycle1|cycle0|Cout~2_combout\);

-- Location: LCCOMB_X83_Y58_N16
\ALU0|sub|cycle0|cycle1|cycle1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle1|cycle1|Cout~0_combout\ = (\MuxIm2|Mux26~0_combout\ & (\MuxIm1|f[5]~5_combout\ & ((\ALU0|sub|cycle0|cycle1|cycle0|Cout~0_combout\) # (\ALU0|sub|cycle0|cycle1|cycle0|Cout~2_combout\)))) # (!\MuxIm2|Mux26~0_combout\ & 
-- ((\ALU0|sub|cycle0|cycle1|cycle0|Cout~0_combout\) # ((\MuxIm1|f[5]~5_combout\) # (\ALU0|sub|cycle0|cycle1|cycle0|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub|cycle0|cycle1|cycle0|Cout~0_combout\,
	datab => \MuxIm2|Mux26~0_combout\,
	datac => \MuxIm1|f[5]~5_combout\,
	datad => \ALU0|sub|cycle0|cycle1|cycle0|Cout~2_combout\,
	combout => \ALU0|sub|cycle0|cycle1|cycle1|Cout~0_combout\);

-- Location: LCCOMB_X83_Y57_N22
\ALU0|sub|cycle0|cycle1|cycle2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle1|cycle2|s~combout\ = \MuxIm2|Mux25~0_combout\ $ (\ALU0|sub|cycle0|cycle1|cycle1|Cout~0_combout\ $ (((\A|q\(6) & !\Im_Mux1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(6),
	datab => \MuxIm2|Mux25~0_combout\,
	datac => \Im_Mux1~input_o\,
	datad => \ALU0|sub|cycle0|cycle1|cycle1|Cout~0_combout\,
	combout => \ALU0|sub|cycle0|cycle1|cycle2|s~combout\);

-- Location: LCCOMB_X82_Y57_N16
\ALU0|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux25~2_combout\ = (\Alu_Opcode[1]~input_o\ & ((\Alu_Opcode[0]~input_o\) # ((!\ALU0|sub|cycle0|cycle1|cycle2|s~combout\)))) # (!\Alu_Opcode[1]~input_o\ & (!\Alu_Opcode[0]~input_o\ & (\MuxIm1|f[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[1]~input_o\,
	datab => \Alu_Opcode[0]~input_o\,
	datac => \MuxIm1|f[5]~5_combout\,
	datad => \ALU0|sub|cycle0|cycle1|cycle2|s~combout\,
	combout => \ALU0|Mux25~2_combout\);

-- Location: LCCOMB_X82_Y57_N8
\MuxB|f[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[7]~7_combout\ = (\B_Mux~input_o\ & (\IR|q\(7))) # (!\B_Mux~input_o\ & ((\MuxData|Mux24~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|q\(7),
	datac => \B_Mux~input_o\,
	datad => \MuxData|Mux24~3_combout\,
	combout => \MuxB|f[7]~7_combout\);

-- Location: FF_X82_Y57_N9
\B|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[7]~7_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(7));

-- Location: LCCOMB_X82_Y57_N0
\MuxIm2|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux24~0_combout\ = (!\Im_Mux2[1]~input_o\ & ((\Im_Mux2[0]~input_o\ & ((\IR|q\(7)))) # (!\Im_Mux2[0]~input_o\ & (\B|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux2[0]~input_o\,
	datab => \Im_Mux2[1]~input_o\,
	datac => \B|q\(7),
	datad => \IR|q\(7),
	combout => \MuxIm2|Mux24~0_combout\);

-- Location: LCCOMB_X82_Y58_N18
\ALU0|add|cycle0|cycle1|cycle2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle0|cycle1|cycle2|Cout~0_combout\ = (\MuxIm2|Mux25~0_combout\ & ((\ALU0|add|cycle0|cycle1|cycle1|Cout~0_combout\) # ((\A|q\(6) & !\Im_Mux1~input_o\)))) # (!\MuxIm2|Mux25~0_combout\ & (\A|q\(6) & (!\Im_Mux1~input_o\ & 
-- \ALU0|add|cycle0|cycle1|cycle1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(6),
	datab => \Im_Mux1~input_o\,
	datac => \MuxIm2|Mux25~0_combout\,
	datad => \ALU0|add|cycle0|cycle1|cycle1|Cout~0_combout\,
	combout => \ALU0|add|cycle0|cycle1|cycle2|Cout~0_combout\);

-- Location: LCCOMB_X83_Y57_N18
\ALU0|Mux24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux24~6_combout\ = (\A|q\(7) & (\Im_Mux1~input_o\ $ (((!\ALU0|add|cycle0|cycle1|cycle2|Cout~0_combout\) # (!\Alu_Opcode[1]~input_o\))))) # (!\A|q\(7) & (\Alu_Opcode[1]~input_o\ & ((\ALU0|add|cycle0|cycle1|cycle2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(7),
	datab => \Alu_Opcode[1]~input_o\,
	datac => \Im_Mux1~input_o\,
	datad => \ALU0|add|cycle0|cycle1|cycle2|Cout~0_combout\,
	combout => \ALU0|Mux24~6_combout\);

-- Location: LCCOMB_X83_Y57_N30
\ALU0|Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux24~4_combout\ = (\MuxIm2|Mux24~0_combout\ & ((\Alu_Opcode[0]~input_o\) # (\Alu_Opcode[1]~input_o\ $ (\ALU0|Mux24~6_combout\)))) # (!\MuxIm2|Mux24~0_combout\ & (\ALU0|Mux24~6_combout\ & (\Alu_Opcode[0]~input_o\ $ (\Alu_Opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \MuxIm2|Mux24~0_combout\,
	datad => \ALU0|Mux24~6_combout\,
	combout => \ALU0|Mux24~4_combout\);

-- Location: IOIBUF_X105_Y73_N8
\Data_In[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(8),
	o => \Data_In[8]~input_o\);

-- Location: LCCOMB_X82_Y60_N20
\MuxReg|f[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[1]~1_combout\ = (\Reg_Mux~input_o\ & (\B|q\(1))) # (!\Reg_Mux~input_o\ & ((\A|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|q\(1),
	datab => \Reg_Mux~input_o\,
	datac => \A|q\(1),
	combout => \MuxReg|f[1]~1_combout\);

-- Location: LCCOMB_X82_Y60_N26
\MuxReg|f[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[2]~2_combout\ = (\Reg_Mux~input_o\ & (\B|q\(2))) # (!\Reg_Mux~input_o\ & ((\A|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|q\(2),
	datac => \A|q\(2),
	datad => \Reg_Mux~input_o\,
	combout => \MuxReg|f[2]~2_combout\);

-- Location: LCCOMB_X80_Y60_N8
\MuxReg|f[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[3]~3_combout\ = (\Reg_Mux~input_o\ & (\B|q\(3))) # (!\Reg_Mux~input_o\ & ((\A|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Mux~input_o\,
	datab => \B|q\(3),
	datad => \A|q\(3),
	combout => \MuxReg|f[3]~3_combout\);

-- Location: LCCOMB_X82_Y60_N24
\MuxReg|f[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[4]~4_combout\ = (\Reg_Mux~input_o\ & (\B|q\(4))) # (!\Reg_Mux~input_o\ & ((\A|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reg_Mux~input_o\,
	datac => \B|q\(4),
	datad => \A|q\(4),
	combout => \MuxReg|f[4]~4_combout\);

-- Location: LCCOMB_X83_Y57_N14
\MuxReg|f[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[6]~6_combout\ = (\Reg_Mux~input_o\ & ((\B|q\(6)))) # (!\Reg_Mux~input_o\ & (\A|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(6),
	datab => \B|q\(6),
	datad => \Reg_Mux~input_o\,
	combout => \MuxReg|f[6]~6_combout\);

-- Location: LCCOMB_X82_Y60_N18
\MuxReg|f[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[7]~7_combout\ = (\Reg_Mux~input_o\ & ((\B|q\(7)))) # (!\Reg_Mux~input_o\ & (\A|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|q\(7),
	datac => \B|q\(7),
	datad => \Reg_Mux~input_o\,
	combout => \MuxReg|f[7]~7_combout\);

-- Location: LCCOMB_X85_Y58_N4
\MuxB|f[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[8]~8_combout\ = (\B_Mux~input_o\ & (\IR|q\(8))) # (!\B_Mux~input_o\ & ((\MuxData|Mux23~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|q\(8),
	datac => \B_Mux~input_o\,
	datad => \MuxData|Mux23~3_combout\,
	combout => \MuxB|f[8]~8_combout\);

-- Location: FF_X85_Y58_N5
\B|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[8]~8_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(8));

-- Location: LCCOMB_X85_Y58_N20
\MuxReg|f[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[8]~8_combout\ = (\Reg_Mux~input_o\ & (\B|q\(8))) # (!\Reg_Mux~input_o\ & ((\A|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Mux~input_o\,
	datac => \B|q\(8),
	datad => \A|q\(8),
	combout => \MuxReg|f[8]~8_combout\);

-- Location: FF_X80_Y60_N13
\DataMemory|memory~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	asdata => \MuxReg|f[9]~9_combout\,
	sload => VCC,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~51_q\);

-- Location: IOIBUF_X111_Y73_N8
\Data_In[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(10),
	o => \Data_In[10]~input_o\);

-- Location: FF_X82_Y60_N29
\DataMemory|memory~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \MuxReg|f[10]~10_combout\,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~52_q\);

-- Location: IOIBUF_X109_Y73_N8
\Data_In[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(11),
	o => \Data_In[11]~input_o\);

-- Location: FF_X80_Y60_N23
\DataMemory|memory~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	asdata => \MuxReg|f[11]~11_combout\,
	sload => VCC,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~53_q\);

-- Location: IOIBUF_X115_Y68_N15
\Data_In[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(12),
	o => \Data_In[12]~input_o\);

-- Location: LCCOMB_X84_Y59_N6
\DataMemory|memory~54feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|memory~54feeder_combout\ = \MuxReg|f[12]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxReg|f[12]~12_combout\,
	combout => \DataMemory|memory~54feeder_combout\);

-- Location: FF_X84_Y59_N7
\DataMemory|memory~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|memory~54feeder_combout\,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~54_q\);

-- Location: IOIBUF_X7_Y73_N22
\Data_In[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(13),
	o => \Data_In[13]~input_o\);

-- Location: FF_X80_Y60_N9
\DataMemory|memory~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	asdata => \MuxReg|f[13]~13_combout\,
	sload => VCC,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~55_q\);

-- Location: IOIBUF_X0_Y55_N22
\Data_In[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(15),
	o => \Data_In[15]~input_o\);

-- Location: LCCOMB_X77_Y59_N0
\MuxB|f[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[15]~15_combout\ = (\B_Mux~input_o\ & (\IR|q\(15))) # (!\B_Mux~input_o\ & ((\MuxData|Mux16~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_Mux~input_o\,
	datac => \IR|q\(15),
	datad => \MuxData|Mux16~3_combout\,
	combout => \MuxB|f[15]~15_combout\);

-- Location: FF_X77_Y59_N1
\B|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[15]~15_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(15));

-- Location: LCCOMB_X76_Y60_N24
\MuxReg|f[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[15]~15_combout\ = (\Reg_Mux~input_o\ & ((\B|q\(15)))) # (!\Reg_Mux~input_o\ & (\A|q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reg_Mux~input_o\,
	datac => \A|q\(15),
	datad => \B|q\(15),
	combout => \MuxReg|f[15]~15_combout\);

-- Location: LCCOMB_X76_Y60_N30
\DataMemory|memory~57feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|memory~57feeder_combout\ = \MuxReg|f[15]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxReg|f[15]~15_combout\,
	combout => \DataMemory|memory~57feeder_combout\);

-- Location: FF_X76_Y60_N31
\DataMemory|memory~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|memory~57feeder_combout\,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~57_q\);

-- Location: LCCOMB_X81_Y56_N10
\MuxData|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux31~3_combout\ = (\Data_Mux[1]~input_o\ & !\Data_Mux[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Data_Mux[1]~input_o\,
	datad => \Data_Mux[0]~input_o\,
	combout => \MuxData|Mux31~3_combout\);

-- Location: IOIBUF_X115_Y69_N22
\Data_In[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(16),
	o => \Data_In[16]~input_o\);

-- Location: FF_X77_Y60_N23
\DataMemory|memory~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \MuxReg|f[16]~16_combout\,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~58_q\);

-- Location: IOIBUF_X49_Y73_N22
\Data_In[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(17),
	o => \Data_In[17]~input_o\);

-- Location: LCCOMB_X83_Y59_N18
\MuxIm1|f[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[18]~18_combout\ = (\Im_Mux1~input_o\ & ((\IR|q\(2)))) # (!\Im_Mux1~input_o\ & (\A|q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Im_Mux1~input_o\,
	datac => \A|q\(18),
	datad => \IR|q\(2),
	combout => \MuxIm1|f[18]~18_combout\);

-- Location: IOIBUF_X18_Y73_N22
\Data_In[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(19),
	o => \Data_In[19]~input_o\);

-- Location: LCCOMB_X81_Y57_N16
\MuxIm2|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux12~0_combout\ = (!\Im_Mux2[0]~input_o\ & (!\Im_Mux2[1]~input_o\ & \B|q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Im_Mux2[0]~input_o\,
	datac => \Im_Mux2[1]~input_o\,
	datad => \B|q\(19),
	combout => \MuxIm2|Mux12~0_combout\);

-- Location: LCCOMB_X81_Y57_N8
\ALU0|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux12~3_combout\ = (\MuxIm2|Mux12~0_combout\ & ((\Alu_Opcode[0]~input_o\) # (\Alu_Opcode[1]~input_o\ $ (\MuxIm1|f[19]~19_combout\)))) # (!\MuxIm2|Mux12~0_combout\ & (\MuxIm1|f[19]~19_combout\ & (\Alu_Opcode[1]~input_o\ $ (\Alu_Opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[1]~input_o\,
	datab => \MuxIm2|Mux12~0_combout\,
	datac => \MuxIm1|f[19]~19_combout\,
	datad => \Alu_Opcode[0]~input_o\,
	combout => \ALU0|Mux12~3_combout\);

-- Location: FF_X77_Y60_N17
\DataMemory|memory~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \MuxReg|f[18]~18_combout\,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~60_q\);

-- Location: FF_X80_Y60_N1
\DataMemory|memory~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \MuxReg|f[20]~20_combout\,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~62_q\);

-- Location: LCCOMB_X80_Y60_N10
\DataMemory|memory~63feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|memory~63feeder_combout\ = \MuxReg|f[21]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxReg|f[21]~21_combout\,
	combout => \DataMemory|memory~63feeder_combout\);

-- Location: FF_X80_Y60_N11
\DataMemory|memory~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|memory~63feeder_combout\,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~63_q\);

-- Location: IOIBUF_X5_Y73_N22
\Data_In[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(22),
	o => \Data_In[22]~input_o\);

-- Location: FF_X82_Y60_N7
\DataMemory|memory~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \MuxReg|f[22]~22_combout\,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~64_q\);

-- Location: IOIBUF_X115_Y45_N15
\Data_In[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(23),
	o => \Data_In[23]~input_o\);

-- Location: FF_X77_Y60_N1
\DataMemory|memory~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \MuxReg|f[23]~23_combout\,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~65_q\);

-- Location: IOIBUF_X25_Y73_N22
\Data_In[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(24),
	o => \Data_In[24]~input_o\);

-- Location: IOIBUF_X115_Y69_N15
\Data_In[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(25),
	o => \Data_In[25]~input_o\);

-- Location: LCCOMB_X76_Y60_N6
\DataMemory|memory~67feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|memory~67feeder_combout\ = \MuxReg|f[25]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxReg|f[25]~25_combout\,
	combout => \DataMemory|memory~67feeder_combout\);

-- Location: FF_X76_Y60_N7
\DataMemory|memory~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|memory~67feeder_combout\,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~67_q\);

-- Location: IOIBUF_X0_Y63_N15
\Data_In[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(26),
	o => \Data_In[26]~input_o\);

-- Location: FF_X77_Y60_N19
\DataMemory|memory~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \MuxReg|f[26]~26_combout\,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~68_q\);

-- Location: FF_X80_Y60_N27
\DataMemory|memory~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \MuxReg|f[27]~27_combout\,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~69_q\);

-- Location: IOIBUF_X16_Y73_N22
\Data_In[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(28),
	o => \Data_In[28]~input_o\);

-- Location: FF_X79_Y59_N7
\DataMemory|memory~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \MuxReg|f[29]~29_combout\,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~71_q\);

-- Location: IOIBUF_X85_Y0_N1
\Data_In[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(30),
	o => \Data_In[30]~input_o\);

-- Location: FF_X79_Y59_N17
\DataMemory|memory~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \MuxReg|f[30]~30_combout\,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~72_q\);

-- Location: M9K_X78_Y60_N0
\DataMemory|memory_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RV32I.ram0_data_memory_8ae84398.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "data_memory:DataMemory|altsyncram:memory_rtl_0|altsyncram_s8j1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \DataMemory|memory~74_combout\,
	portbre => VCC,
	portbaddrstall => \ALT_INV_Ld_IR~input_o\,
	clk0 => \ALT_INV_Clk~inputclkctrl_outclk\,
	clk1 => \Clk~inputclkctrl_outclk\,
	ena0 => \DataMemory|memory~74_combout\,
	portadatain => \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X80_Y60_N7
\DataMemory|memory~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \MuxReg|f[31]~31_combout\,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~73_q\);

-- Location: LCCOMB_X79_Y60_N16
\DataMemory|data_out~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~32_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & (\DataMemory|memory_rtl_0|auto_generated|ram_block1a31\)) # (!\DataMemory|memory~41_q\ & ((\DataMemory|memory~73_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|memory~41_q\,
	datab => \DataMemory|data_out[14]~0_combout\,
	datac => \DataMemory|memory_rtl_0|auto_generated|ram_block1a31\,
	datad => \DataMemory|memory~73_q\,
	combout => \DataMemory|data_out~32_combout\);

-- Location: FF_X79_Y60_N17
\DataMemory|data_out[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(31));

-- Location: IOIBUF_X115_Y61_N22
\Data_In[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(31),
	o => \Data_In[31]~input_o\);

-- Location: LCCOMB_X81_Y61_N30
\MuxData|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux0~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & (\DataMemory|data_out\(31))) # (!\Data_Mux[0]~input_o\ & ((\Data_In[31]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \Data_Mux[1]~input_o\,
	datac => \DataMemory|data_out\(31),
	datad => \Data_In[31]~input_o\,
	combout => \MuxData|Mux0~2_combout\);

-- Location: LCCOMB_X80_Y61_N22
\MuxA|f[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[31]~31_combout\ = (!\A_Mux~input_o\ & ((\MuxData|Mux0~2_combout\) # ((\MuxData|Mux31~3_combout\ & \ALU0|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxData|Mux31~3_combout\,
	datab => \A_Mux~input_o\,
	datac => \MuxData|Mux0~2_combout\,
	datad => \ALU0|Mux0~4_combout\,
	combout => \MuxA|f[31]~31_combout\);

-- Location: FF_X80_Y61_N23
\A|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[31]~31_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(31));

-- Location: LCCOMB_X79_Y61_N28
\ALU0|Mux31~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux31~7_combout\ = (\Alu_Opcode[1]~input_o\ & ((\Im_Mux1~input_o\ & (\IR|q\(15))) # (!\Im_Mux1~input_o\ & ((\A|q\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \IR|q\(15),
	datad => \A|q\(31),
	combout => \ALU0|Mux31~7_combout\);

-- Location: FF_X79_Y57_N17
\IR|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \MuxData|Mux18~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(13));

-- Location: FF_X83_Y60_N23
\IR|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \MuxData|Mux19~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(12));

-- Location: LCCOMB_X84_Y59_N24
\MuxIm1|f[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[28]~28_combout\ = (\Im_Mux1~input_o\ & ((\IR|q\(12)))) # (!\Im_Mux1~input_o\ & (\A|q\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(28),
	datab => \IR|q\(12),
	datad => \Im_Mux1~input_o\,
	combout => \MuxIm1|f[28]~28_combout\);

-- Location: LCCOMB_X79_Y59_N8
\ALU0|sub|cycle1|cycle3|cycle1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle3|cycle1|s~0_combout\ = \MuxIm1|f[29]~29_combout\ $ (((!\Im_Mux2[0]~input_o\ & (!\Im_Mux2[1]~input_o\ & \B|q\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux2[0]~input_o\,
	datab => \Im_Mux2[1]~input_o\,
	datac => \B|q\(29),
	datad => \MuxIm1|f[29]~29_combout\,
	combout => \ALU0|sub|cycle1|cycle3|cycle1|s~0_combout\);

-- Location: LCCOMB_X80_Y59_N8
\ALU0|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux3~3_combout\ = (\MuxIm2|Mux3~0_combout\ & ((\Alu_Opcode[0]~input_o\) # (\Alu_Opcode[1]~input_o\ $ (\MuxIm1|f[28]~28_combout\)))) # (!\MuxIm2|Mux3~0_combout\ & (\MuxIm1|f[28]~28_combout\ & (\Alu_Opcode[1]~input_o\ $ (\Alu_Opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[1]~input_o\,
	datab => \Alu_Opcode[0]~input_o\,
	datac => \MuxIm2|Mux3~0_combout\,
	datad => \MuxIm1|f[28]~28_combout\,
	combout => \ALU0|Mux3~3_combout\);

-- Location: LCCOMB_X81_Y60_N28
\MuxIm1|f[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[26]~26_combout\ = (\Im_Mux1~input_o\ & ((\IR|q\(10)))) # (!\Im_Mux1~input_o\ & (\A|q\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \A|q\(26),
	datac => \IR|q\(10),
	combout => \MuxIm1|f[26]~26_combout\);

-- Location: LCCOMB_X76_Y58_N10
\MuxIm1|f[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[25]~25_combout\ = (\Im_Mux1~input_o\ & ((\IR|q\(9)))) # (!\Im_Mux1~input_o\ & (\A|q\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|q\(25),
	datac => \Im_Mux1~input_o\,
	datad => \IR|q\(9),
	combout => \MuxIm1|f[25]~25_combout\);

-- Location: LCCOMB_X81_Y57_N22
\MuxIm2|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux15~0_combout\ = (\Im_Mux2[1]~input_o\) # (\Im_Mux2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Im_Mux2[1]~input_o\,
	datad => \Im_Mux2[0]~input_o\,
	combout => \MuxIm2|Mux15~0_combout\);

-- Location: LCCOMB_X85_Y58_N30
\MuxIm1|f[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[24]~24_combout\ = (\Im_Mux1~input_o\ & (\IR|q\(8))) # (!\Im_Mux1~input_o\ & ((\A|q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \IR|q\(8),
	datad => \A|q\(24),
	combout => \MuxIm1|f[24]~24_combout\);

-- Location: LCCOMB_X81_Y57_N10
\ALU0|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux8~2_combout\ = (\B|q\(23) & (!\Im_Mux2[1]~input_o\ & !\Im_Mux2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B|q\(23),
	datac => \Im_Mux2[1]~input_o\,
	datad => \Im_Mux2[0]~input_o\,
	combout => \ALU0|Mux8~2_combout\);

-- Location: LCCOMB_X83_Y59_N6
\MuxIm1|f[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[22]~22_combout\ = (\Im_Mux1~input_o\ & (\IR|q\(6))) # (!\Im_Mux1~input_o\ & ((\A|q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|q\(6),
	datab => \Im_Mux1~input_o\,
	datad => \A|q\(22),
	combout => \MuxIm1|f[22]~22_combout\);

-- Location: LCCOMB_X82_Y59_N20
\MuxIm1|f[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[21]~21_combout\ = (\Im_Mux1~input_o\ & ((\IR|q\(5)))) # (!\Im_Mux1~input_o\ & (\A|q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \A|q\(21),
	datad => \IR|q\(5),
	combout => \MuxIm1|f[21]~21_combout\);

-- Location: LCCOMB_X81_Y59_N14
\ALU0|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux10~2_combout\ = (\Alu_Opcode[0]~input_o\ & ((\MuxIm2|Mux10~0_combout\) # ((\MuxIm1|f[21]~21_combout\) # (\Alu_Opcode[1]~input_o\)))) # (!\Alu_Opcode[0]~input_o\ & (\MuxIm2|Mux10~0_combout\ & (\MuxIm1|f[21]~21_combout\ & 
-- !\Alu_Opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \MuxIm2|Mux10~0_combout\,
	datac => \MuxIm1|f[21]~21_combout\,
	datad => \Alu_Opcode[1]~input_o\,
	combout => \ALU0|Mux10~2_combout\);

-- Location: LCCOMB_X82_Y59_N4
\ALU0|sub|cycle1|cycle1|cycle1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle1|cycle1|s~0_combout\ = \MuxIm2|Mux10~0_combout\ $ (((\Im_Mux1~input_o\ & (\IR|q\(5))) # (!\Im_Mux1~input_o\ & ((\A|q\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux10~0_combout\,
	datab => \IR|q\(5),
	datac => \A|q\(21),
	datad => \Im_Mux1~input_o\,
	combout => \ALU0|sub|cycle1|cycle1|cycle1|s~0_combout\);

-- Location: LCCOMB_X80_Y56_N10
\MuxIm2|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux11~0_combout\ = (!\Im_Mux2[0]~input_o\ & (!\Im_Mux2[1]~input_o\ & \B|q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Im_Mux2[0]~input_o\,
	datac => \Im_Mux2[1]~input_o\,
	datad => \B|q\(20),
	combout => \MuxIm2|Mux11~0_combout\);

-- Location: LCCOMB_X80_Y56_N28
\ALU0|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux11~3_combout\ = (\MuxIm2|Mux11~0_combout\ & ((\Alu_Opcode[0]~input_o\) # (\Alu_Opcode[1]~input_o\ $ (\MuxIm1|f[20]~20_combout\)))) # (!\MuxIm2|Mux11~0_combout\ & (\MuxIm1|f[20]~20_combout\ & (\Alu_Opcode[0]~input_o\ $ (\Alu_Opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \MuxIm1|f[20]~20_combout\,
	datad => \MuxIm2|Mux11~0_combout\,
	combout => \ALU0|Mux11~3_combout\);

-- Location: LCCOMB_X81_Y58_N18
\ALU0|add|cycle1|cycle0|cycle3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle1|cycle0|cycle3|Cout~0_combout\ = (\MuxIm1|f[19]~19_combout\ & ((\MuxIm2|Mux12~0_combout\) # (\ALU0|add|cycle1|cycle0|cycle2|Cout~0_combout\))) # (!\MuxIm1|f[19]~19_combout\ & (\MuxIm2|Mux12~0_combout\ & 
-- \ALU0|add|cycle1|cycle0|cycle2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxIm1|f[19]~19_combout\,
	datac => \MuxIm2|Mux12~0_combout\,
	datad => \ALU0|add|cycle1|cycle0|cycle2|Cout~0_combout\,
	combout => \ALU0|add|cycle1|cycle0|cycle3|Cout~0_combout\);

-- Location: LCCOMB_X80_Y56_N26
\ALU0|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux11~4_combout\ = \ALU0|Mux11~3_combout\ $ (((!\Alu_Opcode[0]~input_o\ & (\Alu_Opcode[1]~input_o\ & \ALU0|add|cycle1|cycle0|cycle3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \ALU0|Mux11~3_combout\,
	datac => \Alu_Opcode[1]~input_o\,
	datad => \ALU0|add|cycle1|cycle0|cycle3|Cout~0_combout\,
	combout => \ALU0|Mux11~4_combout\);

-- Location: LCCOMB_X84_Y59_N30
\MuxIm1|f[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[17]~17_combout\ = (\Im_Mux1~input_o\ & (\IR|q\(1))) # (!\Im_Mux1~input_o\ & ((\A|q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \IR|q\(1),
	datac => \A|q\(17),
	combout => \MuxIm1|f[17]~17_combout\);

-- Location: LCCOMB_X81_Y56_N8
\ALU0|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux14~3_combout\ = (\MuxIm2|Mux14~0_combout\ & ((\Alu_Opcode[0]~input_o\) # (\MuxIm1|f[17]~17_combout\ $ (\Alu_Opcode[1]~input_o\)))) # (!\MuxIm2|Mux14~0_combout\ & (\MuxIm1|f[17]~17_combout\ & (\Alu_Opcode[0]~input_o\ $ (\Alu_Opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux14~0_combout\,
	datab => \MuxIm1|f[17]~17_combout\,
	datac => \Alu_Opcode[0]~input_o\,
	datad => \Alu_Opcode[1]~input_o\,
	combout => \ALU0|Mux14~3_combout\);

-- Location: LCCOMB_X80_Y61_N8
\MuxIm2|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux15~1_combout\ = (!\Im_Mux2[0]~input_o\ & (!\Im_Mux2[1]~input_o\ & \B|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Im_Mux2[0]~input_o\,
	datac => \Im_Mux2[1]~input_o\,
	datad => \B|q\(16),
	combout => \MuxIm2|Mux15~1_combout\);

-- Location: LCCOMB_X77_Y59_N12
\MuxIm2|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux16~0_combout\ = (!\Im_Mux2[1]~input_o\ & ((\Im_Mux2[0]~input_o\ & (\IR|q\(15))) # (!\Im_Mux2[0]~input_o\ & ((\B|q\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux2[1]~input_o\,
	datab => \Im_Mux2[0]~input_o\,
	datac => \IR|q\(15),
	datad => \B|q\(15),
	combout => \MuxIm2|Mux16~0_combout\);

-- Location: LCCOMB_X84_Y59_N4
\MuxB|f[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[12]~12_combout\ = (\B_Mux~input_o\ & ((\IR|q\(12)))) # (!\B_Mux~input_o\ & (\MuxData|Mux19~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_Mux~input_o\,
	datac => \MuxData|Mux19~3_combout\,
	datad => \IR|q\(12),
	combout => \MuxB|f[12]~12_combout\);

-- Location: FF_X84_Y59_N5
\B|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[12]~12_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(12));

-- Location: LCCOMB_X83_Y60_N26
\MuxIm2|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux19~0_combout\ = (!\Im_Mux2[1]~input_o\ & ((\Im_Mux2[0]~input_o\ & (\IR|q\(12))) # (!\Im_Mux2[0]~input_o\ & ((\B|q\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux2[0]~input_o\,
	datab => \Im_Mux2[1]~input_o\,
	datac => \IR|q\(12),
	datad => \B|q\(12),
	combout => \MuxIm2|Mux19~0_combout\);

-- Location: LCCOMB_X84_Y60_N2
\MuxA|f[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[11]~11_combout\ = (\A_Mux~input_o\ & (\IR|q\(11))) # (!\A_Mux~input_o\ & ((\MuxData|Mux20~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|q\(11),
	datac => \A_Mux~input_o\,
	datad => \MuxData|Mux20~3_combout\,
	combout => \MuxA|f[11]~11_combout\);

-- Location: FF_X84_Y60_N3
\A|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[11]~11_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(11));

-- Location: LCCOMB_X84_Y60_N0
\MuxA|f[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[10]~10_combout\ = (\A_Mux~input_o\ & (\IR|q\(10))) # (!\A_Mux~input_o\ & ((\MuxData|Mux21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|q\(10),
	datab => \A_Mux~input_o\,
	datad => \MuxData|Mux21~3_combout\,
	combout => \MuxA|f[10]~10_combout\);

-- Location: FF_X84_Y60_N1
\A|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[10]~10_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(10));

-- Location: LCCOMB_X81_Y60_N26
\MuxIm2|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux21~0_combout\ = (!\Im_Mux2[1]~input_o\ & ((\Im_Mux2[0]~input_o\ & (\IR|q\(10))) # (!\Im_Mux2[0]~input_o\ & ((\B|q\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux2[0]~input_o\,
	datab => \Im_Mux2[1]~input_o\,
	datac => \IR|q\(10),
	datad => \B|q\(10),
	combout => \MuxIm2|Mux21~0_combout\);

-- Location: LCCOMB_X86_Y58_N20
\MuxA|f[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[9]~9_combout\ = (\A_Mux~input_o\ & ((\IR|q\(9)))) # (!\A_Mux~input_o\ & (\MuxData|Mux22~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxData|Mux22~3_combout\,
	datab => \IR|q\(9),
	datad => \A_Mux~input_o\,
	combout => \MuxA|f[9]~9_combout\);

-- Location: FF_X86_Y58_N21
\A|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[9]~9_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(9));

-- Location: LCCOMB_X86_Y58_N8
\MuxIm2|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux22~0_combout\ = (!\Im_Mux2[1]~input_o\ & ((\Im_Mux2[0]~input_o\ & ((\IR|q\(9)))) # (!\Im_Mux2[0]~input_o\ & (\B|q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux2[0]~input_o\,
	datab => \B|q\(9),
	datac => \Im_Mux2[1]~input_o\,
	datad => \IR|q\(9),
	combout => \MuxIm2|Mux22~0_combout\);

-- Location: LCCOMB_X85_Y58_N16
\MuxIm2|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux23~0_combout\ = (!\Im_Mux2[1]~input_o\ & ((\Im_Mux2[0]~input_o\ & ((\IR|q\(8)))) # (!\Im_Mux2[0]~input_o\ & (\B|q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux2[0]~input_o\,
	datab => \Im_Mux2[1]~input_o\,
	datac => \B|q\(8),
	datad => \IR|q\(8),
	combout => \MuxIm2|Mux23~0_combout\);

-- Location: LCCOMB_X82_Y58_N28
\ALU0|add|cycle0|cycle1|cycle3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle0|cycle1|cycle3|Cout~0_combout\ = (\MuxIm2|Mux24~0_combout\ & ((\ALU0|add|cycle0|cycle1|cycle2|Cout~0_combout\) # ((!\Im_Mux1~input_o\ & \A|q\(7))))) # (!\MuxIm2|Mux24~0_combout\ & (!\Im_Mux1~input_o\ & (\A|q\(7) & 
-- \ALU0|add|cycle0|cycle1|cycle2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \MuxIm2|Mux24~0_combout\,
	datac => \A|q\(7),
	datad => \ALU0|add|cycle0|cycle1|cycle2|Cout~0_combout\,
	combout => \ALU0|add|cycle0|cycle1|cycle3|Cout~0_combout\);

-- Location: LCCOMB_X82_Y58_N6
\ALU0|add|cycle0|cycle2|cycle0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle0|cycle2|cycle0|Cout~0_combout\ = (\MuxIm2|Mux23~0_combout\ & ((\ALU0|add|cycle0|cycle1|cycle3|Cout~0_combout\) # ((!\Im_Mux1~input_o\ & \A|q\(8))))) # (!\MuxIm2|Mux23~0_combout\ & (!\Im_Mux1~input_o\ & (\A|q\(8) & 
-- \ALU0|add|cycle0|cycle1|cycle3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \MuxIm2|Mux23~0_combout\,
	datac => \A|q\(8),
	datad => \ALU0|add|cycle0|cycle1|cycle3|Cout~0_combout\,
	combout => \ALU0|add|cycle0|cycle2|cycle0|Cout~0_combout\);

-- Location: LCCOMB_X82_Y58_N16
\ALU0|add|cycle0|cycle2|cycle1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle0|cycle2|cycle1|Cout~0_combout\ = (\MuxIm2|Mux22~0_combout\ & ((\ALU0|add|cycle0|cycle2|cycle0|Cout~0_combout\) # ((!\Im_Mux1~input_o\ & \A|q\(9))))) # (!\MuxIm2|Mux22~0_combout\ & (!\Im_Mux1~input_o\ & (\A|q\(9) & 
-- \ALU0|add|cycle0|cycle2|cycle0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \A|q\(9),
	datac => \MuxIm2|Mux22~0_combout\,
	datad => \ALU0|add|cycle0|cycle2|cycle0|Cout~0_combout\,
	combout => \ALU0|add|cycle0|cycle2|cycle1|Cout~0_combout\);

-- Location: LCCOMB_X82_Y58_N26
\ALU0|add|cycle0|cycle2|cycle2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle0|cycle2|cycle2|Cout~0_combout\ = (\MuxIm2|Mux21~0_combout\ & ((\ALU0|add|cycle0|cycle2|cycle1|Cout~0_combout\) # ((!\Im_Mux1~input_o\ & \A|q\(10))))) # (!\MuxIm2|Mux21~0_combout\ & (!\Im_Mux1~input_o\ & (\A|q\(10) & 
-- \ALU0|add|cycle0|cycle2|cycle1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \A|q\(10),
	datac => \MuxIm2|Mux21~0_combout\,
	datad => \ALU0|add|cycle0|cycle2|cycle1|Cout~0_combout\,
	combout => \ALU0|add|cycle0|cycle2|cycle2|Cout~0_combout\);

-- Location: LCCOMB_X83_Y60_N14
\MuxIm2|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux20~0_combout\ = (!\Im_Mux2[1]~input_o\ & ((\Im_Mux2[0]~input_o\ & (\IR|q\(11))) # (!\Im_Mux2[0]~input_o\ & ((\B|q\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|q\(11),
	datab => \Im_Mux2[1]~input_o\,
	datac => \Im_Mux2[0]~input_o\,
	datad => \B|q\(11),
	combout => \MuxIm2|Mux20~0_combout\);

-- Location: LCCOMB_X82_Y58_N20
\ALU0|add|cycle0|cycle2|cycle3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle0|cycle2|cycle3|Cout~0_combout\ = (\ALU0|add|cycle0|cycle2|cycle2|Cout~0_combout\ & ((\MuxIm2|Mux20~0_combout\) # ((\A|q\(11) & !\Im_Mux1~input_o\)))) # (!\ALU0|add|cycle0|cycle2|cycle2|Cout~0_combout\ & (\A|q\(11) & (!\Im_Mux1~input_o\ & 
-- \MuxIm2|Mux20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(11),
	datab => \Im_Mux1~input_o\,
	datac => \ALU0|add|cycle0|cycle2|cycle2|Cout~0_combout\,
	datad => \MuxIm2|Mux20~0_combout\,
	combout => \ALU0|add|cycle0|cycle2|cycle3|Cout~0_combout\);

-- Location: LCCOMB_X82_Y58_N22
\ALU0|add|cycle0|cycle3|cycle0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle0|cycle3|cycle0|Cout~0_combout\ = (\MuxIm2|Mux19~0_combout\ & ((\ALU0|add|cycle0|cycle2|cycle3|Cout~0_combout\) # ((!\Im_Mux1~input_o\ & \A|q\(12))))) # (!\MuxIm2|Mux19~0_combout\ & (!\Im_Mux1~input_o\ & (\A|q\(12) & 
-- \ALU0|add|cycle0|cycle2|cycle3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \A|q\(12),
	datac => \MuxIm2|Mux19~0_combout\,
	datad => \ALU0|add|cycle0|cycle2|cycle3|Cout~0_combout\,
	combout => \ALU0|add|cycle0|cycle3|cycle0|Cout~0_combout\);

-- Location: LCCOMB_X83_Y59_N10
\MuxB|f[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[13]~13_combout\ = (\B_Mux~input_o\ & (\IR|q\(13))) # (!\B_Mux~input_o\ & ((\MuxData|Mux18~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Mux~input_o\,
	datac => \IR|q\(13),
	datad => \MuxData|Mux18~3_combout\,
	combout => \MuxB|f[13]~13_combout\);

-- Location: FF_X83_Y59_N11
\B|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[13]~13_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(13));

-- Location: LCCOMB_X83_Y59_N28
\MuxIm2|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux18~0_combout\ = (!\Im_Mux2[1]~input_o\ & ((\Im_Mux2[0]~input_o\ & (\IR|q\(13))) # (!\Im_Mux2[0]~input_o\ & ((\B|q\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux2[0]~input_o\,
	datab => \Im_Mux2[1]~input_o\,
	datac => \IR|q\(13),
	datad => \B|q\(13),
	combout => \MuxIm2|Mux18~0_combout\);

-- Location: LCCOMB_X82_Y58_N8
\ALU0|add|cycle0|cycle3|cycle1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle0|cycle3|cycle1|Cout~0_combout\ = (\ALU0|add|cycle0|cycle3|cycle0|Cout~0_combout\ & ((\MuxIm2|Mux18~0_combout\) # ((!\Im_Mux1~input_o\ & \A|q\(13))))) # (!\ALU0|add|cycle0|cycle3|cycle0|Cout~0_combout\ & (!\Im_Mux1~input_o\ & (\A|q\(13) & 
-- \MuxIm2|Mux18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \A|q\(13),
	datac => \ALU0|add|cycle0|cycle3|cycle0|Cout~0_combout\,
	datad => \MuxIm2|Mux18~0_combout\,
	combout => \ALU0|add|cycle0|cycle3|cycle1|Cout~0_combout\);

-- Location: FF_X79_Y57_N27
\IR|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \MuxData|Mux17~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(14));

-- Location: LCCOMB_X79_Y59_N20
\MuxB|f[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[14]~14_combout\ = (\B_Mux~input_o\ & (\IR|q\(14))) # (!\B_Mux~input_o\ & ((\MuxData|Mux17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Mux~input_o\,
	datab => \IR|q\(14),
	datad => \MuxData|Mux17~3_combout\,
	combout => \MuxB|f[14]~14_combout\);

-- Location: FF_X79_Y59_N21
\B|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[14]~14_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(14));

-- Location: LCCOMB_X79_Y59_N30
\MuxIm2|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux17~0_combout\ = (!\Im_Mux2[1]~input_o\ & ((\Im_Mux2[0]~input_o\ & (\IR|q\(14))) # (!\Im_Mux2[0]~input_o\ & ((\B|q\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux2[0]~input_o\,
	datab => \IR|q\(14),
	datac => \Im_Mux2[1]~input_o\,
	datad => \B|q\(14),
	combout => \MuxIm2|Mux17~0_combout\);

-- Location: LCCOMB_X82_Y58_N14
\ALU0|add|cycle0|cycle3|cycle2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle0|cycle3|cycle2|Cout~0_combout\ = (\ALU0|add|cycle0|cycle3|cycle1|Cout~0_combout\ & ((\MuxIm2|Mux17~0_combout\) # ((!\Im_Mux1~input_o\ & \A|q\(14))))) # (!\ALU0|add|cycle0|cycle3|cycle1|Cout~0_combout\ & (!\Im_Mux1~input_o\ & (\A|q\(14) & 
-- \MuxIm2|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \A|q\(14),
	datac => \ALU0|add|cycle0|cycle3|cycle1|Cout~0_combout\,
	datad => \MuxIm2|Mux17~0_combout\,
	combout => \ALU0|add|cycle0|cycle3|cycle2|Cout~0_combout\);

-- Location: LCCOMB_X82_Y58_N4
\ALU0|add|cycle0|cycle3|cycle3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle0|cycle3|cycle3|Cout~0_combout\ = (\MuxIm2|Mux16~0_combout\ & ((\ALU0|add|cycle0|cycle3|cycle2|Cout~0_combout\) # ((!\Im_Mux1~input_o\ & \A|q\(15))))) # (!\MuxIm2|Mux16~0_combout\ & (!\Im_Mux1~input_o\ & 
-- (\ALU0|add|cycle0|cycle3|cycle2|Cout~0_combout\ & \A|q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux16~0_combout\,
	datab => \Im_Mux1~input_o\,
	datac => \ALU0|add|cycle0|cycle3|cycle2|Cout~0_combout\,
	datad => \A|q\(15),
	combout => \ALU0|add|cycle0|cycle3|cycle3|Cout~0_combout\);

-- Location: LCCOMB_X81_Y61_N16
\ALU0|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux15~2_combout\ = \MuxIm1|f[16]~16_combout\ $ (((\Alu_Opcode[1]~input_o\ & \ALU0|add|cycle0|cycle3|cycle3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[16]~16_combout\,
	datac => \Alu_Opcode[1]~input_o\,
	datad => \ALU0|add|cycle0|cycle3|cycle3|Cout~0_combout\,
	combout => \ALU0|Mux15~2_combout\);

-- Location: LCCOMB_X80_Y61_N14
\ALU0|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux15~3_combout\ = (\MuxIm2|Mux15~1_combout\ & ((\Alu_Opcode[0]~input_o\) # (\Alu_Opcode[1]~input_o\ $ (\ALU0|Mux15~2_combout\)))) # (!\MuxIm2|Mux15~1_combout\ & (\ALU0|Mux15~2_combout\ & (\Alu_Opcode[1]~input_o\ $ (\Alu_Opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux15~1_combout\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \Alu_Opcode[0]~input_o\,
	datad => \ALU0|Mux15~2_combout\,
	combout => \ALU0|Mux15~3_combout\);

-- Location: LCCOMB_X80_Y61_N26
\ALU0|sub|cycle1|cycle0|cycle0|s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle0|cycle0|s~2_combout\ = \MuxIm1|f[16]~16_combout\ $ (((\B|q\(16) & (!\Im_Mux2[1]~input_o\ & !\Im_Mux2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[16]~16_combout\,
	datab => \B|q\(16),
	datac => \Im_Mux2[1]~input_o\,
	datad => \Im_Mux2[0]~input_o\,
	combout => \ALU0|sub|cycle1|cycle0|cycle0|s~2_combout\);

-- Location: LCCOMB_X84_Y60_N18
\MuxIm1|f[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[11]~11_combout\ = (!\Im_Mux1~input_o\ & \A|q\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Im_Mux1~input_o\,
	datad => \A|q\(11),
	combout => \MuxIm1|f[11]~11_combout\);

-- Location: LCCOMB_X86_Y58_N4
\MuxIm1|f[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[9]~9_combout\ = (!\Im_Mux1~input_o\ & \A|q\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Im_Mux1~input_o\,
	datad => \A|q\(9),
	combout => \MuxIm1|f[9]~9_combout\);

-- Location: LCCOMB_X84_Y60_N30
\ALU0|sub|cycle0|cycle2|cycle2|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle2|cycle2|Cout~1_combout\ = ((!\Im_Mux1~input_o\ & \A|q\(10))) # (!\MuxIm2|Mux21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datac => \MuxIm2|Mux21~0_combout\,
	datad => \A|q\(10),
	combout => \ALU0|sub|cycle0|cycle2|cycle2|Cout~1_combout\);

-- Location: LCCOMB_X83_Y58_N6
\ALU0|sub|cycle0|cycle1|cycle2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle1|cycle2|Cout~0_combout\ = (\MuxIm2|Mux25~0_combout\ & (!\Im_Mux1~input_o\ & (\A|q\(6) & \ALU0|sub|cycle0|cycle1|cycle1|Cout~0_combout\))) # (!\MuxIm2|Mux25~0_combout\ & ((\ALU0|sub|cycle0|cycle1|cycle1|Cout~0_combout\) # 
-- ((!\Im_Mux1~input_o\ & \A|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \MuxIm2|Mux25~0_combout\,
	datac => \A|q\(6),
	datad => \ALU0|sub|cycle0|cycle1|cycle1|Cout~0_combout\,
	combout => \ALU0|sub|cycle0|cycle1|cycle2|Cout~0_combout\);

-- Location: LCCOMB_X83_Y58_N24
\ALU0|sub|cycle0|cycle1|cycle3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle1|cycle3|Cout~0_combout\ = (\MuxIm2|Mux24~0_combout\ & (!\Im_Mux1~input_o\ & (\A|q\(7) & \ALU0|sub|cycle0|cycle1|cycle2|Cout~0_combout\))) # (!\MuxIm2|Mux24~0_combout\ & ((\ALU0|sub|cycle0|cycle1|cycle2|Cout~0_combout\) # 
-- ((!\Im_Mux1~input_o\ & \A|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \A|q\(7),
	datac => \MuxIm2|Mux24~0_combout\,
	datad => \ALU0|sub|cycle0|cycle1|cycle2|Cout~0_combout\,
	combout => \ALU0|sub|cycle0|cycle1|cycle3|Cout~0_combout\);

-- Location: LCCOMB_X83_Y58_N26
\ALU0|sub|cycle0|cycle2|cycle0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle2|cycle0|Cout~0_combout\ = (\MuxIm2|Mux23~0_combout\ & (!\Im_Mux1~input_o\ & (\A|q\(8) & \ALU0|sub|cycle0|cycle1|cycle3|Cout~0_combout\))) # (!\MuxIm2|Mux23~0_combout\ & ((\ALU0|sub|cycle0|cycle1|cycle3|Cout~0_combout\) # 
-- ((!\Im_Mux1~input_o\ & \A|q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \MuxIm2|Mux23~0_combout\,
	datac => \A|q\(8),
	datad => \ALU0|sub|cycle0|cycle1|cycle3|Cout~0_combout\,
	combout => \ALU0|sub|cycle0|cycle2|cycle0|Cout~0_combout\);

-- Location: LCCOMB_X83_Y58_N8
\ALU0|sub|cycle0|cycle2|cycle2|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle2|cycle2|Cout~2_combout\ = (\ALU0|sub|cycle0|cycle2|cycle2|Cout~1_combout\ & ((\MuxIm1|f[9]~9_combout\ & ((\ALU0|sub|cycle0|cycle2|cycle0|Cout~0_combout\) # (!\MuxIm2|Mux22~0_combout\))) # (!\MuxIm1|f[9]~9_combout\ & 
-- (\ALU0|sub|cycle0|cycle2|cycle0|Cout~0_combout\ & !\MuxIm2|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[9]~9_combout\,
	datab => \ALU0|sub|cycle0|cycle2|cycle2|Cout~1_combout\,
	datac => \ALU0|sub|cycle0|cycle2|cycle0|Cout~0_combout\,
	datad => \MuxIm2|Mux22~0_combout\,
	combout => \ALU0|sub|cycle0|cycle2|cycle2|Cout~2_combout\);

-- Location: LCCOMB_X84_Y60_N12
\ALU0|sub|cycle0|cycle2|cycle2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle2|cycle2|Cout~0_combout\ = (!\Im_Mux1~input_o\ & (!\MuxIm2|Mux21~0_combout\ & \A|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datac => \MuxIm2|Mux21~0_combout\,
	datad => \A|q\(10),
	combout => \ALU0|sub|cycle0|cycle2|cycle2|Cout~0_combout\);

-- Location: LCCOMB_X83_Y58_N14
\ALU0|sub|cycle0|cycle2|cycle3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle2|cycle3|Cout~0_combout\ = (\MuxIm1|f[11]~11_combout\ & (((\ALU0|sub|cycle0|cycle2|cycle2|Cout~2_combout\) # (\ALU0|sub|cycle0|cycle2|cycle2|Cout~0_combout\)) # (!\MuxIm2|Mux20~0_combout\))) # (!\MuxIm1|f[11]~11_combout\ & 
-- (!\MuxIm2|Mux20~0_combout\ & ((\ALU0|sub|cycle0|cycle2|cycle2|Cout~2_combout\) # (\ALU0|sub|cycle0|cycle2|cycle2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[11]~11_combout\,
	datab => \MuxIm2|Mux20~0_combout\,
	datac => \ALU0|sub|cycle0|cycle2|cycle2|Cout~2_combout\,
	datad => \ALU0|sub|cycle0|cycle2|cycle2|Cout~0_combout\,
	combout => \ALU0|sub|cycle0|cycle2|cycle3|Cout~0_combout\);

-- Location: LCCOMB_X84_Y58_N18
\ALU0|sub|cycle0|cycle3|cycle0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle3|cycle0|Cout~0_combout\ = (\MuxIm2|Mux19~0_combout\ & (!\Im_Mux1~input_o\ & (\A|q\(12) & \ALU0|sub|cycle0|cycle2|cycle3|Cout~0_combout\))) # (!\MuxIm2|Mux19~0_combout\ & ((\ALU0|sub|cycle0|cycle2|cycle3|Cout~0_combout\) # 
-- ((!\Im_Mux1~input_o\ & \A|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \A|q\(12),
	datac => \MuxIm2|Mux19~0_combout\,
	datad => \ALU0|sub|cycle0|cycle2|cycle3|Cout~0_combout\,
	combout => \ALU0|sub|cycle0|cycle3|cycle0|Cout~0_combout\);

-- Location: LCCOMB_X84_Y58_N16
\ALU0|sub|cycle0|cycle3|cycle1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle3|cycle1|Cout~0_combout\ = (\MuxIm2|Mux18~0_combout\ & (\A|q\(13) & (!\Im_Mux1~input_o\ & \ALU0|sub|cycle0|cycle3|cycle0|Cout~0_combout\))) # (!\MuxIm2|Mux18~0_combout\ & ((\ALU0|sub|cycle0|cycle3|cycle0|Cout~0_combout\) # 
-- ((\A|q\(13) & !\Im_Mux1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(13),
	datab => \Im_Mux1~input_o\,
	datac => \MuxIm2|Mux18~0_combout\,
	datad => \ALU0|sub|cycle0|cycle3|cycle0|Cout~0_combout\,
	combout => \ALU0|sub|cycle0|cycle3|cycle1|Cout~0_combout\);

-- Location: LCCOMB_X84_Y58_N0
\ALU0|sub|cycle0|cycle3|cycle2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle3|cycle2|Cout~0_combout\ = (\MuxIm2|Mux17~0_combout\ & (\A|q\(14) & (!\Im_Mux1~input_o\ & \ALU0|sub|cycle0|cycle3|cycle1|Cout~0_combout\))) # (!\MuxIm2|Mux17~0_combout\ & ((\ALU0|sub|cycle0|cycle3|cycle1|Cout~0_combout\) # 
-- ((\A|q\(14) & !\Im_Mux1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux17~0_combout\,
	datab => \A|q\(14),
	datac => \Im_Mux1~input_o\,
	datad => \ALU0|sub|cycle0|cycle3|cycle1|Cout~0_combout\,
	combout => \ALU0|sub|cycle0|cycle3|cycle2|Cout~0_combout\);

-- Location: LCCOMB_X84_Y58_N14
\ALU0|sub|cycle1|cycle0|cycle0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle0|cycle0|s~combout\ = \ALU0|sub|cycle1|cycle0|cycle0|s~2_combout\ $ (((\MuxIm2|Mux16~0_combout\ & (\MuxIm1|f[15]~15_combout\ & \ALU0|sub|cycle0|cycle3|cycle2|Cout~0_combout\)) # (!\MuxIm2|Mux16~0_combout\ & 
-- ((\MuxIm1|f[15]~15_combout\) # (\ALU0|sub|cycle0|cycle3|cycle2|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux16~0_combout\,
	datab => \MuxIm1|f[15]~15_combout\,
	datac => \ALU0|sub|cycle1|cycle0|cycle0|s~2_combout\,
	datad => \ALU0|sub|cycle0|cycle3|cycle2|Cout~0_combout\,
	combout => \ALU0|sub|cycle1|cycle0|cycle0|s~combout\);

-- Location: LCCOMB_X80_Y61_N0
\ALU0|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux15~0_combout\ = (\Alu_Opcode[1]~input_o\ & (((\Alu_Opcode[0]~input_o\) # (!\ALU0|sub|cycle1|cycle0|cycle0|s~combout\)))) # (!\Alu_Opcode[1]~input_o\ & (\MuxIm1|f[15]~15_combout\ & (!\Alu_Opcode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[15]~15_combout\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \Alu_Opcode[0]~input_o\,
	datad => \ALU0|sub|cycle1|cycle0|cycle0|s~combout\,
	combout => \ALU0|Mux15~0_combout\);

-- Location: LCCOMB_X80_Y61_N2
\ALU0|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux15~1_combout\ = (\Alu_Opcode[0]~input_o\ & ((\ALU0|Mux15~0_combout\ & (\MuxIm1|f[16]~16_combout\)) # (!\ALU0|Mux15~0_combout\ & ((\MuxIm1|f[17]~17_combout\))))) # (!\Alu_Opcode[0]~input_o\ & (((\ALU0|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[16]~16_combout\,
	datab => \MuxIm1|f[17]~17_combout\,
	datac => \Alu_Opcode[0]~input_o\,
	datad => \ALU0|Mux15~0_combout\,
	combout => \ALU0|Mux15~1_combout\);

-- Location: LCCOMB_X80_Y61_N16
\ALU0|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux15~4_combout\ = (\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux15~1_combout\))) # (!\Alu_Opcode[2]~input_o\ & (\ALU0|Mux15~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alu_Opcode[2]~input_o\,
	datac => \ALU0|Mux15~3_combout\,
	datad => \ALU0|Mux15~1_combout\,
	combout => \ALU0|Mux15~4_combout\);

-- Location: LCCOMB_X80_Y61_N20
\MuxA|f[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[16]~16_combout\ = (!\A_Mux~input_o\ & ((\MuxData|Mux15~2_combout\) # ((\MuxData|Mux31~3_combout\ & \ALU0|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxData|Mux15~2_combout\,
	datab => \A_Mux~input_o\,
	datac => \MuxData|Mux31~3_combout\,
	datad => \ALU0|Mux15~4_combout\,
	combout => \MuxA|f[16]~16_combout\);

-- Location: FF_X80_Y61_N21
\A|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[16]~16_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(16));

-- Location: LCCOMB_X80_Y61_N12
\MuxIm1|f[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[16]~16_combout\ = (\Im_Mux1~input_o\ & (\IR|q\(0))) # (!\Im_Mux1~input_o\ & ((\A|q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datac => \IR|q\(0),
	datad => \A|q\(16),
	combout => \MuxIm1|f[16]~16_combout\);

-- Location: LCCOMB_X81_Y58_N12
\ALU0|add|cycle1|cycle0|cycle0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle1|cycle0|cycle0|Cout~0_combout\ = (\MuxIm1|f[16]~16_combout\ & ((\MuxIm2|Mux15~1_combout\) # (\ALU0|add|cycle0|cycle3|cycle3|Cout~0_combout\))) # (!\MuxIm1|f[16]~16_combout\ & (\MuxIm2|Mux15~1_combout\ & 
-- \ALU0|add|cycle0|cycle3|cycle3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[16]~16_combout\,
	datac => \MuxIm2|Mux15~1_combout\,
	datad => \ALU0|add|cycle0|cycle3|cycle3|Cout~0_combout\,
	combout => \ALU0|add|cycle1|cycle0|cycle0|Cout~0_combout\);

-- Location: LCCOMB_X81_Y56_N30
\ALU0|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux14~4_combout\ = \ALU0|Mux14~3_combout\ $ (((\Alu_Opcode[1]~input_o\ & (!\Alu_Opcode[0]~input_o\ & \ALU0|add|cycle1|cycle0|cycle0|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux14~3_combout\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \Alu_Opcode[0]~input_o\,
	datad => \ALU0|add|cycle1|cycle0|cycle0|Cout~0_combout\,
	combout => \ALU0|Mux14~4_combout\);

-- Location: LCCOMB_X80_Y61_N28
\ALU0|sub|cycle1|cycle0|cycle0|Cout~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle0|cycle0|Cout~9_combout\ = (!\MuxIm2|Mux15~1_combout\ & ((\Im_Mux1~input_o\ & (\IR|q\(0))) # (!\Im_Mux1~input_o\ & ((\A|q\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \MuxIm2|Mux15~1_combout\,
	datac => \IR|q\(0),
	datad => \A|q\(16),
	combout => \ALU0|sub|cycle1|cycle0|cycle0|Cout~9_combout\);

-- Location: LCCOMB_X80_Y61_N10
\ALU0|sub|cycle1|cycle0|cycle0|Cout~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle0|cycle0|Cout~10_combout\ = ((\Im_Mux1~input_o\ & (\IR|q\(0))) # (!\Im_Mux1~input_o\ & ((\A|q\(16))))) # (!\MuxIm2|Mux15~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \MuxIm2|Mux15~1_combout\,
	datac => \IR|q\(0),
	datad => \A|q\(16),
	combout => \ALU0|sub|cycle1|cycle0|cycle0|Cout~10_combout\);

-- Location: LCCOMB_X84_Y58_N24
\ALU0|sub|cycle1|cycle0|cycle0|Cout~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle0|cycle0|Cout~8_combout\ = (\ALU0|sub|cycle1|cycle0|cycle0|Cout~10_combout\ & ((\MuxIm2|Mux16~0_combout\ & (\MuxIm1|f[15]~15_combout\ & \ALU0|sub|cycle0|cycle3|cycle2|Cout~0_combout\)) # (!\MuxIm2|Mux16~0_combout\ & 
-- ((\MuxIm1|f[15]~15_combout\) # (\ALU0|sub|cycle0|cycle3|cycle2|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux16~0_combout\,
	datab => \MuxIm1|f[15]~15_combout\,
	datac => \ALU0|sub|cycle1|cycle0|cycle0|Cout~10_combout\,
	datad => \ALU0|sub|cycle0|cycle3|cycle2|Cout~0_combout\,
	combout => \ALU0|sub|cycle1|cycle0|cycle0|Cout~8_combout\);

-- Location: LCCOMB_X84_Y58_N2
\ALU0|sub|cycle1|cycle0|cycle1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle0|cycle1|s~combout\ = \MuxIm2|Mux14~0_combout\ $ (\MuxIm1|f[17]~17_combout\ $ (((\ALU0|sub|cycle1|cycle0|cycle0|Cout~9_combout\) # (\ALU0|sub|cycle1|cycle0|cycle0|Cout~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux14~0_combout\,
	datab => \ALU0|sub|cycle1|cycle0|cycle0|Cout~9_combout\,
	datac => \MuxIm1|f[17]~17_combout\,
	datad => \ALU0|sub|cycle1|cycle0|cycle0|Cout~8_combout\,
	combout => \ALU0|sub|cycle1|cycle0|cycle1|s~combout\);

-- Location: LCCOMB_X84_Y58_N4
\ALU0|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux14~0_combout\ = (\Alu_Opcode[0]~input_o\ & (((\Alu_Opcode[1]~input_o\)))) # (!\Alu_Opcode[0]~input_o\ & ((\Alu_Opcode[1]~input_o\ & ((!\ALU0|sub|cycle1|cycle0|cycle1|s~combout\))) # (!\Alu_Opcode[1]~input_o\ & (\MuxIm1|f[16]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[16]~16_combout\,
	datab => \Alu_Opcode[0]~input_o\,
	datac => \Alu_Opcode[1]~input_o\,
	datad => \ALU0|sub|cycle1|cycle0|cycle1|s~combout\,
	combout => \ALU0|Mux14~0_combout\);

-- Location: LCCOMB_X81_Y56_N16
\ALU0|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux14~1_combout\ = (\ALU0|Mux14~0_combout\ & (((\MuxIm1|f[17]~17_combout\) # (!\Alu_Opcode[0]~input_o\)))) # (!\ALU0|Mux14~0_combout\ & (\MuxIm1|f[18]~18_combout\ & (\Alu_Opcode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[18]~18_combout\,
	datab => \ALU0|Mux14~0_combout\,
	datac => \Alu_Opcode[0]~input_o\,
	datad => \MuxIm1|f[17]~17_combout\,
	combout => \ALU0|Mux14~1_combout\);

-- Location: LCCOMB_X81_Y56_N18
\ALU0|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux14~2_combout\ = (\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux14~1_combout\))) # (!\Alu_Opcode[2]~input_o\ & (\ALU0|Mux14~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[2]~input_o\,
	datac => \ALU0|Mux14~4_combout\,
	datad => \ALU0|Mux14~1_combout\,
	combout => \ALU0|Mux14~2_combout\);

-- Location: LCCOMB_X80_Y56_N14
\MuxB|f[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[17]~17_combout\ = (!\B_Mux~input_o\ & ((\MuxData|Mux14~2_combout\) # ((\MuxData|Mux31~3_combout\ & \ALU0|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Mux~input_o\,
	datab => \MuxData|Mux14~2_combout\,
	datac => \MuxData|Mux31~3_combout\,
	datad => \ALU0|Mux14~2_combout\,
	combout => \MuxB|f[17]~17_combout\);

-- Location: FF_X80_Y56_N15
\B|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[17]~17_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(17));

-- Location: LCCOMB_X80_Y56_N16
\MuxIm2|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux14~0_combout\ = (!\Im_Mux2[1]~input_o\ & (!\Im_Mux2[0]~input_o\ & \B|q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux2[1]~input_o\,
	datab => \Im_Mux2[0]~input_o\,
	datac => \B|q\(17),
	combout => \MuxIm2|Mux14~0_combout\);

-- Location: LCCOMB_X84_Y58_N10
\ALU0|sub|cycle1|cycle0|cycle1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle0|cycle1|Cout~0_combout\ = (\MuxIm2|Mux14~0_combout\ & (\MuxIm1|f[17]~17_combout\ & ((\ALU0|sub|cycle1|cycle0|cycle0|Cout~9_combout\) # (\ALU0|sub|cycle1|cycle0|cycle0|Cout~8_combout\)))) # (!\MuxIm2|Mux14~0_combout\ & 
-- ((\ALU0|sub|cycle1|cycle0|cycle0|Cout~9_combout\) # ((\MuxIm1|f[17]~17_combout\) # (\ALU0|sub|cycle1|cycle0|cycle0|Cout~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux14~0_combout\,
	datab => \ALU0|sub|cycle1|cycle0|cycle0|Cout~9_combout\,
	datac => \MuxIm1|f[17]~17_combout\,
	datad => \ALU0|sub|cycle1|cycle0|cycle0|Cout~8_combout\,
	combout => \ALU0|sub|cycle1|cycle0|cycle1|Cout~0_combout\);

-- Location: LCCOMB_X84_Y58_N28
\ALU0|sub|cycle1|cycle0|cycle2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle0|cycle2|Cout~0_combout\ = (\MuxIm2|Mux13~0_combout\ & (\MuxIm1|f[18]~18_combout\ & \ALU0|sub|cycle1|cycle0|cycle1|Cout~0_combout\)) # (!\MuxIm2|Mux13~0_combout\ & ((\MuxIm1|f[18]~18_combout\) # 
-- (\ALU0|sub|cycle1|cycle0|cycle1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxIm2|Mux13~0_combout\,
	datac => \MuxIm1|f[18]~18_combout\,
	datad => \ALU0|sub|cycle1|cycle0|cycle1|Cout~0_combout\,
	combout => \ALU0|sub|cycle1|cycle0|cycle2|Cout~0_combout\);

-- Location: LCCOMB_X79_Y58_N28
\ALU0|sub|cycle1|cycle0|cycle3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle0|cycle3|Cout~0_combout\ = (\MuxIm1|f[19]~19_combout\ & ((\ALU0|sub|cycle1|cycle0|cycle2|Cout~0_combout\) # (!\MuxIm2|Mux12~0_combout\))) # (!\MuxIm1|f[19]~19_combout\ & (!\MuxIm2|Mux12~0_combout\ & 
-- \ALU0|sub|cycle1|cycle0|cycle2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[19]~19_combout\,
	datac => \MuxIm2|Mux12~0_combout\,
	datad => \ALU0|sub|cycle1|cycle0|cycle2|Cout~0_combout\,
	combout => \ALU0|sub|cycle1|cycle0|cycle3|Cout~0_combout\);

-- Location: LCCOMB_X80_Y56_N24
\ALU0|sub|cycle1|cycle1|cycle0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle1|cycle0|s~combout\ = \MuxIm2|Mux11~0_combout\ $ (\MuxIm1|f[20]~20_combout\ $ (\ALU0|sub|cycle1|cycle0|cycle3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux11~0_combout\,
	datac => \MuxIm1|f[20]~20_combout\,
	datad => \ALU0|sub|cycle1|cycle0|cycle3|Cout~0_combout\,
	combout => \ALU0|sub|cycle1|cycle1|cycle0|s~combout\);

-- Location: LCCOMB_X80_Y56_N2
\ALU0|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux11~0_combout\ = (\Alu_Opcode[0]~input_o\ & (\Alu_Opcode[1]~input_o\)) # (!\Alu_Opcode[0]~input_o\ & ((\Alu_Opcode[1]~input_o\ & ((!\ALU0|sub|cycle1|cycle1|cycle0|s~combout\))) # (!\Alu_Opcode[1]~input_o\ & (\MuxIm1|f[19]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \MuxIm1|f[19]~19_combout\,
	datad => \ALU0|sub|cycle1|cycle1|cycle0|s~combout\,
	combout => \ALU0|Mux11~0_combout\);

-- Location: LCCOMB_X80_Y56_N12
\ALU0|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux11~1_combout\ = (\Alu_Opcode[0]~input_o\ & ((\ALU0|Mux11~0_combout\ & ((\MuxIm1|f[20]~20_combout\))) # (!\ALU0|Mux11~0_combout\ & (\MuxIm1|f[21]~21_combout\)))) # (!\Alu_Opcode[0]~input_o\ & (((\ALU0|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \MuxIm1|f[21]~21_combout\,
	datac => \MuxIm1|f[20]~20_combout\,
	datad => \ALU0|Mux11~0_combout\,
	combout => \ALU0|Mux11~1_combout\);

-- Location: LCCOMB_X80_Y56_N6
\ALU0|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux11~2_combout\ = (\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux11~1_combout\))) # (!\Alu_Opcode[2]~input_o\ & (\ALU0|Mux11~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[2]~input_o\,
	datac => \ALU0|Mux11~4_combout\,
	datad => \ALU0|Mux11~1_combout\,
	combout => \ALU0|Mux11~2_combout\);

-- Location: LCCOMB_X80_Y56_N4
\MuxA|f[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[20]~20_combout\ = (!\A_Mux~input_o\ & ((\MuxData|Mux11~2_combout\) # ((\MuxData|Mux31~3_combout\ & \ALU0|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxData|Mux11~2_combout\,
	datab => \MuxData|Mux31~3_combout\,
	datac => \A_Mux~input_o\,
	datad => \ALU0|Mux11~2_combout\,
	combout => \MuxA|f[20]~20_combout\);

-- Location: FF_X80_Y56_N5
\A|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[20]~20_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(20));

-- Location: LCCOMB_X80_Y60_N2
\MuxIm1|f[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[20]~20_combout\ = (\Im_Mux1~input_o\ & (\IR|q\(4))) # (!\Im_Mux1~input_o\ & ((\A|q\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \IR|q\(4),
	datad => \A|q\(20),
	combout => \MuxIm1|f[20]~20_combout\);

-- Location: LCCOMB_X81_Y59_N16
\ALU0|add|cycle1|cycle1|cycle1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle1|cycle1|cycle1|s~combout\ = \ALU0|sub|cycle1|cycle1|cycle1|s~0_combout\ $ (((\MuxIm2|Mux11~0_combout\ & ((\MuxIm1|f[20]~20_combout\) # (\ALU0|add|cycle1|cycle0|cycle3|Cout~0_combout\))) # (!\MuxIm2|Mux11~0_combout\ & 
-- (\MuxIm1|f[20]~20_combout\ & \ALU0|add|cycle1|cycle0|cycle3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub|cycle1|cycle1|cycle1|s~0_combout\,
	datab => \MuxIm2|Mux11~0_combout\,
	datac => \MuxIm1|f[20]~20_combout\,
	datad => \ALU0|add|cycle1|cycle0|cycle3|Cout~0_combout\,
	combout => \ALU0|add|cycle1|cycle1|cycle1|s~combout\);

-- Location: LCCOMB_X81_Y59_N8
\ALU0|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux10~3_combout\ = (\Alu_Opcode[1]~input_o\ & ((\ALU0|Mux10~2_combout\ & (\MuxIm2|Mux10~0_combout\)) # (!\ALU0|Mux10~2_combout\ & ((\ALU0|add|cycle1|cycle1|cycle1|s~combout\))))) # (!\Alu_Opcode[1]~input_o\ & (((\ALU0|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[1]~input_o\,
	datab => \MuxIm2|Mux10~0_combout\,
	datac => \ALU0|Mux10~2_combout\,
	datad => \ALU0|add|cycle1|cycle1|cycle1|s~combout\,
	combout => \ALU0|Mux10~3_combout\);

-- Location: LCCOMB_X81_Y59_N10
\ALU0|sub|cycle1|cycle1|cycle1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle1|cycle1|s~combout\ = \ALU0|sub|cycle1|cycle1|cycle1|s~0_combout\ $ (((\MuxIm2|Mux11~0_combout\ & (\MuxIm1|f[20]~20_combout\ & \ALU0|sub|cycle1|cycle0|cycle3|Cout~0_combout\)) # (!\MuxIm2|Mux11~0_combout\ & 
-- ((\MuxIm1|f[20]~20_combout\) # (\ALU0|sub|cycle1|cycle0|cycle3|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub|cycle1|cycle1|cycle1|s~0_combout\,
	datab => \MuxIm2|Mux11~0_combout\,
	datac => \MuxIm1|f[20]~20_combout\,
	datad => \ALU0|sub|cycle1|cycle0|cycle3|Cout~0_combout\,
	combout => \ALU0|sub|cycle1|cycle1|cycle1|s~combout\);

-- Location: LCCOMB_X81_Y59_N0
\ALU0|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux10~0_combout\ = (\Alu_Opcode[0]~input_o\ & (\Alu_Opcode[1]~input_o\)) # (!\Alu_Opcode[0]~input_o\ & ((\Alu_Opcode[1]~input_o\ & ((!\ALU0|sub|cycle1|cycle1|cycle1|s~combout\))) # (!\Alu_Opcode[1]~input_o\ & (\MuxIm1|f[20]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \MuxIm1|f[20]~20_combout\,
	datad => \ALU0|sub|cycle1|cycle1|cycle1|s~combout\,
	combout => \ALU0|Mux10~0_combout\);

-- Location: LCCOMB_X81_Y59_N2
\ALU0|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux10~1_combout\ = (\Alu_Opcode[0]~input_o\ & ((\ALU0|Mux10~0_combout\ & ((\MuxIm1|f[21]~21_combout\))) # (!\ALU0|Mux10~0_combout\ & (\MuxIm1|f[22]~22_combout\)))) # (!\Alu_Opcode[0]~input_o\ & (((\ALU0|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[22]~22_combout\,
	datab => \Alu_Opcode[0]~input_o\,
	datac => \MuxIm1|f[21]~21_combout\,
	datad => \ALU0|Mux10~0_combout\,
	combout => \ALU0|Mux10~1_combout\);

-- Location: LCCOMB_X81_Y59_N18
\ALU0|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux10~4_combout\ = (\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux10~1_combout\))) # (!\Alu_Opcode[2]~input_o\ & (\ALU0|Mux10~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alu_Opcode[2]~input_o\,
	datac => \ALU0|Mux10~3_combout\,
	datad => \ALU0|Mux10~1_combout\,
	combout => \ALU0|Mux10~4_combout\);

-- Location: LCCOMB_X81_Y59_N20
\MuxB|f[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[21]~21_combout\ = (!\B_Mux~input_o\ & ((\MuxData|Mux10~2_combout\) # ((\MuxData|Mux31~3_combout\ & \ALU0|Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxData|Mux10~2_combout\,
	datab => \MuxData|Mux31~3_combout\,
	datac => \B_Mux~input_o\,
	datad => \ALU0|Mux10~4_combout\,
	combout => \MuxB|f[21]~21_combout\);

-- Location: FF_X81_Y59_N21
\B|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[21]~21_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(21));

-- Location: LCCOMB_X82_Y59_N10
\MuxIm2|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux10~0_combout\ = (!\Im_Mux2[1]~input_o\ & (!\Im_Mux2[0]~input_o\ & \B|q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux2[1]~input_o\,
	datab => \Im_Mux2[0]~input_o\,
	datad => \B|q\(21),
	combout => \MuxIm2|Mux10~0_combout\);

-- Location: LCCOMB_X82_Y59_N6
\ALU0|add|cycle1|cycle1|cycle1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle1|cycle1|cycle1|Cout~0_combout\ = (\MuxIm2|Mux10~0_combout\ & ((\Im_Mux1~input_o\ & (\IR|q\(5))) # (!\Im_Mux1~input_o\ & ((\A|q\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \IR|q\(5),
	datac => \A|q\(21),
	datad => \MuxIm2|Mux10~0_combout\,
	combout => \ALU0|add|cycle1|cycle1|cycle1|Cout~0_combout\);

-- Location: LCCOMB_X82_Y59_N12
\ALU0|add|cycle1|cycle1|cycle1|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle1|cycle1|cycle1|Cout~1_combout\ = (\MuxIm2|Mux10~0_combout\) # ((\Im_Mux1~input_o\ & (\IR|q\(5))) # (!\Im_Mux1~input_o\ & ((\A|q\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \IR|q\(5),
	datac => \A|q\(21),
	datad => \MuxIm2|Mux10~0_combout\,
	combout => \ALU0|add|cycle1|cycle1|cycle1|Cout~1_combout\);

-- Location: LCCOMB_X81_Y58_N0
\ALU0|add|cycle1|cycle1|cycle1|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle1|cycle1|cycle1|Cout~2_combout\ = (\ALU0|add|cycle1|cycle1|cycle1|Cout~1_combout\ & ((\MuxIm2|Mux11~0_combout\ & ((\MuxIm1|f[20]~20_combout\) # (\ALU0|add|cycle1|cycle0|cycle3|Cout~0_combout\))) # (!\MuxIm2|Mux11~0_combout\ & 
-- (\MuxIm1|f[20]~20_combout\ & \ALU0|add|cycle1|cycle0|cycle3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux11~0_combout\,
	datab => \ALU0|add|cycle1|cycle1|cycle1|Cout~1_combout\,
	datac => \MuxIm1|f[20]~20_combout\,
	datad => \ALU0|add|cycle1|cycle0|cycle3|Cout~0_combout\,
	combout => \ALU0|add|cycle1|cycle1|cycle1|Cout~2_combout\);

-- Location: LCCOMB_X81_Y59_N28
\ALU0|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux9~2_combout\ = \MuxIm1|f[22]~22_combout\ $ (((\Alu_Opcode[1]~input_o\ & ((\ALU0|add|cycle1|cycle1|cycle1|Cout~0_combout\) # (\ALU0|add|cycle1|cycle1|cycle1|Cout~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[22]~22_combout\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \ALU0|add|cycle1|cycle1|cycle1|Cout~0_combout\,
	datad => \ALU0|add|cycle1|cycle1|cycle1|Cout~2_combout\,
	combout => \ALU0|Mux9~2_combout\);

-- Location: LCCOMB_X81_Y59_N26
\ALU0|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux9~3_combout\ = (\MuxIm2|Mux9~0_combout\ & ((\Alu_Opcode[0]~input_o\) # (\Alu_Opcode[1]~input_o\ $ (\ALU0|Mux9~2_combout\)))) # (!\MuxIm2|Mux9~0_combout\ & (\ALU0|Mux9~2_combout\ & (\Alu_Opcode[0]~input_o\ $ (\Alu_Opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \MuxIm2|Mux9~0_combout\,
	datad => \ALU0|Mux9~2_combout\,
	combout => \ALU0|Mux9~3_combout\);

-- Location: LCCOMB_X82_Y59_N22
\ALU0|sub|cycle1|cycle1|cycle1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle1|cycle1|Cout~0_combout\ = (!\MuxIm2|Mux10~0_combout\ & ((\Im_Mux1~input_o\ & (\IR|q\(5))) # (!\Im_Mux1~input_o\ & ((\A|q\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \IR|q\(5),
	datac => \A|q\(21),
	datad => \MuxIm2|Mux10~0_combout\,
	combout => \ALU0|sub|cycle1|cycle1|cycle1|Cout~0_combout\);

-- Location: LCCOMB_X82_Y59_N16
\ALU0|sub|cycle1|cycle1|cycle1|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle1|cycle1|Cout~1_combout\ = ((\Im_Mux1~input_o\ & (\IR|q\(5))) # (!\Im_Mux1~input_o\ & ((\A|q\(21))))) # (!\MuxIm2|Mux10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \IR|q\(5),
	datac => \A|q\(21),
	datad => \MuxIm2|Mux10~0_combout\,
	combout => \ALU0|sub|cycle1|cycle1|cycle1|Cout~1_combout\);

-- Location: LCCOMB_X79_Y58_N10
\ALU0|sub|cycle1|cycle1|cycle1|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle1|cycle1|Cout~2_combout\ = (\ALU0|sub|cycle1|cycle1|cycle1|Cout~1_combout\ & ((\MuxIm1|f[20]~20_combout\ & ((\ALU0|sub|cycle1|cycle0|cycle3|Cout~0_combout\) # (!\MuxIm2|Mux11~0_combout\))) # (!\MuxIm1|f[20]~20_combout\ & 
-- (!\MuxIm2|Mux11~0_combout\ & \ALU0|sub|cycle1|cycle0|cycle3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[20]~20_combout\,
	datab => \ALU0|sub|cycle1|cycle1|cycle1|Cout~1_combout\,
	datac => \MuxIm2|Mux11~0_combout\,
	datad => \ALU0|sub|cycle1|cycle0|cycle3|Cout~0_combout\,
	combout => \ALU0|sub|cycle1|cycle1|cycle1|Cout~2_combout\);

-- Location: LCCOMB_X80_Y59_N24
\ALU0|sub|cycle1|cycle1|cycle2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle1|cycle2|s~combout\ = \MuxIm2|Mux9~0_combout\ $ (\MuxIm1|f[22]~22_combout\ $ (((\ALU0|sub|cycle1|cycle1|cycle1|Cout~0_combout\) # (\ALU0|sub|cycle1|cycle1|cycle1|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux9~0_combout\,
	datab => \ALU0|sub|cycle1|cycle1|cycle1|Cout~0_combout\,
	datac => \MuxIm1|f[22]~22_combout\,
	datad => \ALU0|sub|cycle1|cycle1|cycle1|Cout~2_combout\,
	combout => \ALU0|sub|cycle1|cycle1|cycle2|s~combout\);

-- Location: LCCOMB_X81_Y59_N12
\ALU0|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux9~0_combout\ = (\Alu_Opcode[0]~input_o\ & (\Alu_Opcode[1]~input_o\)) # (!\Alu_Opcode[0]~input_o\ & ((\Alu_Opcode[1]~input_o\ & ((!\ALU0|sub|cycle1|cycle1|cycle2|s~combout\))) # (!\Alu_Opcode[1]~input_o\ & (\MuxIm1|f[21]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \MuxIm1|f[21]~21_combout\,
	datad => \ALU0|sub|cycle1|cycle1|cycle2|s~combout\,
	combout => \ALU0|Mux9~0_combout\);

-- Location: LCCOMB_X81_Y59_N30
\ALU0|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux9~1_combout\ = (\Alu_Opcode[0]~input_o\ & ((\ALU0|Mux9~0_combout\ & (\MuxIm1|f[22]~22_combout\)) # (!\ALU0|Mux9~0_combout\ & ((\MuxIm1|f[23]~23_combout\))))) # (!\Alu_Opcode[0]~input_o\ & (((\ALU0|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[22]~22_combout\,
	datab => \MuxIm1|f[23]~23_combout\,
	datac => \Alu_Opcode[0]~input_o\,
	datad => \ALU0|Mux9~0_combout\,
	combout => \ALU0|Mux9~1_combout\);

-- Location: LCCOMB_X81_Y59_N24
\MuxData|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux9~0_combout\ = (\MuxData|Mux31~3_combout\ & ((\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux9~1_combout\))) # (!\Alu_Opcode[2]~input_o\ & (\ALU0|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux9~3_combout\,
	datab => \Alu_Opcode[2]~input_o\,
	datac => \ALU0|Mux9~1_combout\,
	datad => \MuxData|Mux31~3_combout\,
	combout => \MuxData|Mux9~0_combout\);

-- Location: LCCOMB_X77_Y59_N14
\MuxB|f[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[22]~22_combout\ = (!\B_Mux~input_o\ & ((\MuxData|Mux9~1_combout\) # (\MuxData|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxData|Mux9~1_combout\,
	datac => \B_Mux~input_o\,
	datad => \MuxData|Mux9~0_combout\,
	combout => \MuxB|f[22]~22_combout\);

-- Location: FF_X77_Y59_N15
\B|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[22]~22_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(22));

-- Location: LCCOMB_X77_Y59_N30
\MuxIm2|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux9~0_combout\ = (!\Im_Mux2[0]~input_o\ & (\B|q\(22) & !\Im_Mux2[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Im_Mux2[0]~input_o\,
	datac => \B|q\(22),
	datad => \Im_Mux2[1]~input_o\,
	combout => \MuxIm2|Mux9~0_combout\);

-- Location: LCCOMB_X81_Y58_N6
\ALU0|add|cycle1|cycle1|cycle2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle1|cycle1|cycle2|Cout~0_combout\ = (\MuxIm2|Mux9~0_combout\ & ((\ALU0|add|cycle1|cycle1|cycle1|Cout~0_combout\) # ((\MuxIm1|f[22]~22_combout\) # (\ALU0|add|cycle1|cycle1|cycle1|Cout~2_combout\)))) # (!\MuxIm2|Mux9~0_combout\ & 
-- (\MuxIm1|f[22]~22_combout\ & ((\ALU0|add|cycle1|cycle1|cycle1|Cout~0_combout\) # (\ALU0|add|cycle1|cycle1|cycle1|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux9~0_combout\,
	datab => \ALU0|add|cycle1|cycle1|cycle1|Cout~0_combout\,
	datac => \MuxIm1|f[22]~22_combout\,
	datad => \ALU0|add|cycle1|cycle1|cycle1|Cout~2_combout\,
	combout => \ALU0|add|cycle1|cycle1|cycle2|Cout~0_combout\);

-- Location: LCCOMB_X80_Y57_N12
\ALU0|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux8~3_combout\ = \MuxIm1|f[23]~23_combout\ $ (((\Alu_Opcode[1]~input_o\ & \ALU0|add|cycle1|cycle1|cycle2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[23]~23_combout\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \ALU0|add|cycle1|cycle1|cycle2|Cout~0_combout\,
	combout => \ALU0|Mux8~3_combout\);

-- Location: LCCOMB_X80_Y57_N30
\ALU0|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux8~4_combout\ = (\ALU0|Mux8~2_combout\ & ((\Alu_Opcode[0]~input_o\) # (\Alu_Opcode[1]~input_o\ $ (\ALU0|Mux8~3_combout\)))) # (!\ALU0|Mux8~2_combout\ & (\ALU0|Mux8~3_combout\ & (\Alu_Opcode[0]~input_o\ $ (\Alu_Opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \ALU0|Mux8~2_combout\,
	datad => \ALU0|Mux8~3_combout\,
	combout => \ALU0|Mux8~4_combout\);

-- Location: LCCOMB_X79_Y58_N24
\ALU0|sub|cycle1|cycle1|cycle2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle1|cycle2|Cout~0_combout\ = (\MuxIm2|Mux9~0_combout\ & (\MuxIm1|f[22]~22_combout\ & ((\ALU0|sub|cycle1|cycle1|cycle1|Cout~0_combout\) # (\ALU0|sub|cycle1|cycle1|cycle1|Cout~2_combout\)))) # (!\MuxIm2|Mux9~0_combout\ & 
-- ((\MuxIm1|f[22]~22_combout\) # ((\ALU0|sub|cycle1|cycle1|cycle1|Cout~0_combout\) # (\ALU0|sub|cycle1|cycle1|cycle1|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux9~0_combout\,
	datab => \MuxIm1|f[22]~22_combout\,
	datac => \ALU0|sub|cycle1|cycle1|cycle1|Cout~0_combout\,
	datad => \ALU0|sub|cycle1|cycle1|cycle1|Cout~2_combout\,
	combout => \ALU0|sub|cycle1|cycle1|cycle2|Cout~0_combout\);

-- Location: LCCOMB_X80_Y57_N6
\ALU0|sub|cycle1|cycle1|cycle3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle1|cycle3|s~combout\ = \ALU0|sub|cycle1|cycle1|cycle2|Cout~0_combout\ $ (\MuxIm1|f[23]~23_combout\ $ (((!\MuxIm2|Mux15~0_combout\ & \B|q\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux15~0_combout\,
	datab => \B|q\(23),
	datac => \ALU0|sub|cycle1|cycle1|cycle2|Cout~0_combout\,
	datad => \MuxIm1|f[23]~23_combout\,
	combout => \ALU0|sub|cycle1|cycle1|cycle3|s~combout\);

-- Location: LCCOMB_X80_Y57_N28
\ALU0|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux8~0_combout\ = (\Alu_Opcode[0]~input_o\ & (\Alu_Opcode[1]~input_o\)) # (!\Alu_Opcode[0]~input_o\ & ((\Alu_Opcode[1]~input_o\ & ((!\ALU0|sub|cycle1|cycle1|cycle3|s~combout\))) # (!\Alu_Opcode[1]~input_o\ & (\MuxIm1|f[22]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \MuxIm1|f[22]~22_combout\,
	datad => \ALU0|sub|cycle1|cycle1|cycle3|s~combout\,
	combout => \ALU0|Mux8~0_combout\);

-- Location: LCCOMB_X80_Y57_N2
\ALU0|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux8~1_combout\ = (\Alu_Opcode[0]~input_o\ & ((\ALU0|Mux8~0_combout\ & (\MuxIm1|f[23]~23_combout\)) # (!\ALU0|Mux8~0_combout\ & ((\MuxIm1|f[24]~24_combout\))))) # (!\Alu_Opcode[0]~input_o\ & (((\ALU0|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \MuxIm1|f[23]~23_combout\,
	datac => \MuxIm1|f[24]~24_combout\,
	datad => \ALU0|Mux8~0_combout\,
	combout => \ALU0|Mux8~1_combout\);

-- Location: LCCOMB_X80_Y57_N0
\ALU0|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux8~5_combout\ = (\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux8~1_combout\))) # (!\Alu_Opcode[2]~input_o\ & (\ALU0|Mux8~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[2]~input_o\,
	datac => \ALU0|Mux8~4_combout\,
	datad => \ALU0|Mux8~1_combout\,
	combout => \ALU0|Mux8~5_combout\);

-- Location: LCCOMB_X80_Y57_N8
\MuxA|f[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[23]~23_combout\ = (!\A_Mux~input_o\ & ((\MuxData|Mux8~2_combout\) # ((\MuxData|Mux31~3_combout\ & \ALU0|Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Mux~input_o\,
	datab => \MuxData|Mux8~2_combout\,
	datac => \MuxData|Mux31~3_combout\,
	datad => \ALU0|Mux8~5_combout\,
	combout => \MuxA|f[23]~23_combout\);

-- Location: FF_X80_Y57_N9
\A|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[23]~23_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(23));

-- Location: LCCOMB_X80_Y57_N4
\MuxIm1|f[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[23]~23_combout\ = (\Im_Mux1~input_o\ & ((\IR|q\(7)))) # (!\Im_Mux1~input_o\ & (\A|q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Im_Mux1~input_o\,
	datac => \A|q\(23),
	datad => \IR|q\(7),
	combout => \MuxIm1|f[23]~23_combout\);

-- Location: LCCOMB_X79_Y58_N6
\ALU0|sub|cycle1|cycle1|cycle3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle1|cycle3|Cout~0_combout\ = (\MuxIm1|f[23]~23_combout\ & ((\MuxIm2|Mux15~0_combout\) # ((\ALU0|sub|cycle1|cycle1|cycle2|Cout~0_combout\) # (!\B|q\(23))))) # (!\MuxIm1|f[23]~23_combout\ & (\ALU0|sub|cycle1|cycle1|cycle2|Cout~0_combout\ 
-- & ((\MuxIm2|Mux15~0_combout\) # (!\B|q\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux15~0_combout\,
	datab => \MuxIm1|f[23]~23_combout\,
	datac => \B|q\(23),
	datad => \ALU0|sub|cycle1|cycle1|cycle2|Cout~0_combout\,
	combout => \ALU0|sub|cycle1|cycle1|cycle3|Cout~0_combout\);

-- Location: LCCOMB_X80_Y57_N10
\ALU0|sub|cycle1|cycle2|cycle0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle2|cycle0|s~combout\ = \MuxIm1|f[24]~24_combout\ $ (\ALU0|sub|cycle1|cycle1|cycle3|Cout~0_combout\ $ (((!\MuxIm2|Mux15~0_combout\ & \B|q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux15~0_combout\,
	datab => \B|q\(24),
	datac => \MuxIm1|f[24]~24_combout\,
	datad => \ALU0|sub|cycle1|cycle1|cycle3|Cout~0_combout\,
	combout => \ALU0|sub|cycle1|cycle2|cycle0|s~combout\);

-- Location: LCCOMB_X80_Y57_N24
\ALU0|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux7~0_combout\ = (\Alu_Opcode[0]~input_o\ & (((\Alu_Opcode[1]~input_o\)))) # (!\Alu_Opcode[0]~input_o\ & ((\Alu_Opcode[1]~input_o\ & ((!\ALU0|sub|cycle1|cycle2|cycle0|s~combout\))) # (!\Alu_Opcode[1]~input_o\ & (\MuxIm1|f[23]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \MuxIm1|f[23]~23_combout\,
	datac => \Alu_Opcode[1]~input_o\,
	datad => \ALU0|sub|cycle1|cycle2|cycle0|s~combout\,
	combout => \ALU0|Mux7~0_combout\);

-- Location: LCCOMB_X80_Y57_N14
\ALU0|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux7~1_combout\ = (\Alu_Opcode[0]~input_o\ & ((\ALU0|Mux7~0_combout\ & ((\MuxIm1|f[24]~24_combout\))) # (!\ALU0|Mux7~0_combout\ & (\MuxIm1|f[25]~25_combout\)))) # (!\Alu_Opcode[0]~input_o\ & (((\ALU0|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \MuxIm1|f[25]~25_combout\,
	datac => \MuxIm1|f[24]~24_combout\,
	datad => \ALU0|Mux7~0_combout\,
	combout => \ALU0|Mux7~1_combout\);

-- Location: LCCOMB_X81_Y58_N20
\ALU0|add|cycle1|cycle1|cycle3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle1|cycle1|cycle3|Cout~0_combout\ = (\MuxIm1|f[23]~23_combout\ & ((\ALU0|add|cycle1|cycle1|cycle2|Cout~0_combout\) # ((!\MuxIm2|Mux15~0_combout\ & \B|q\(23))))) # (!\MuxIm1|f[23]~23_combout\ & (!\MuxIm2|Mux15~0_combout\ & (\B|q\(23) & 
-- \ALU0|add|cycle1|cycle1|cycle2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[23]~23_combout\,
	datab => \MuxIm2|Mux15~0_combout\,
	datac => \B|q\(23),
	datad => \ALU0|add|cycle1|cycle1|cycle2|Cout~0_combout\,
	combout => \ALU0|add|cycle1|cycle1|cycle3|Cout~0_combout\);

-- Location: LCCOMB_X81_Y58_N30
\ALU0|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux7~3_combout\ = \MuxIm1|f[24]~24_combout\ $ (((\Alu_Opcode[1]~input_o\ & \ALU0|add|cycle1|cycle1|cycle3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxIm1|f[24]~24_combout\,
	datac => \Alu_Opcode[1]~input_o\,
	datad => \ALU0|add|cycle1|cycle1|cycle3|Cout~0_combout\,
	combout => \ALU0|Mux7~3_combout\);

-- Location: LCCOMB_X81_Y57_N24
\ALU0|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux7~2_combout\ = (\B|q\(24) & (!\Im_Mux2[1]~input_o\ & !\Im_Mux2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B|q\(24),
	datac => \Im_Mux2[1]~input_o\,
	datad => \Im_Mux2[0]~input_o\,
	combout => \ALU0|Mux7~2_combout\);

-- Location: LCCOMB_X80_Y57_N16
\ALU0|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux7~4_combout\ = (\ALU0|Mux7~2_combout\ & ((\Alu_Opcode[0]~input_o\) # (\Alu_Opcode[1]~input_o\ $ (\ALU0|Mux7~3_combout\)))) # (!\ALU0|Mux7~2_combout\ & (\ALU0|Mux7~3_combout\ & (\Alu_Opcode[0]~input_o\ $ (\Alu_Opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \ALU0|Mux7~3_combout\,
	datad => \ALU0|Mux7~2_combout\,
	combout => \ALU0|Mux7~4_combout\);

-- Location: LCCOMB_X80_Y57_N26
\ALU0|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux7~5_combout\ = (\Alu_Opcode[2]~input_o\ & (\ALU0|Mux7~1_combout\)) # (!\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[2]~input_o\,
	datac => \ALU0|Mux7~1_combout\,
	datad => \ALU0|Mux7~4_combout\,
	combout => \ALU0|Mux7~5_combout\);

-- Location: LCCOMB_X80_Y57_N18
\MuxB|f[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[24]~24_combout\ = (!\B_Mux~input_o\ & ((\MuxData|Mux7~2_combout\) # ((\ALU0|Mux7~5_combout\ & \MuxData|Mux31~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Mux~input_o\,
	datab => \MuxData|Mux7~2_combout\,
	datac => \ALU0|Mux7~5_combout\,
	datad => \MuxData|Mux31~3_combout\,
	combout => \MuxB|f[24]~24_combout\);

-- Location: FF_X80_Y57_N19
\B|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[24]~24_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(24));

-- Location: LCCOMB_X79_Y58_N12
\ALU0|sub|cycle1|cycle2|cycle0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle2|cycle0|Cout~0_combout\ = (\MuxIm1|f[24]~24_combout\ & ((\MuxIm2|Mux15~0_combout\) # ((\ALU0|sub|cycle1|cycle1|cycle3|Cout~0_combout\) # (!\B|q\(24))))) # (!\MuxIm1|f[24]~24_combout\ & (\ALU0|sub|cycle1|cycle1|cycle3|Cout~0_combout\ 
-- & ((\MuxIm2|Mux15~0_combout\) # (!\B|q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux15~0_combout\,
	datab => \MuxIm1|f[24]~24_combout\,
	datac => \B|q\(24),
	datad => \ALU0|sub|cycle1|cycle1|cycle3|Cout~0_combout\,
	combout => \ALU0|sub|cycle1|cycle2|cycle0|Cout~0_combout\);

-- Location: LCCOMB_X77_Y58_N30
\ALU0|sub|cycle1|cycle2|cycle1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle2|cycle1|s~combout\ = \MuxIm1|f[25]~25_combout\ $ (\MuxIm2|Mux6~0_combout\ $ (\ALU0|sub|cycle1|cycle2|cycle0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[25]~25_combout\,
	datac => \MuxIm2|Mux6~0_combout\,
	datad => \ALU0|sub|cycle1|cycle2|cycle0|Cout~0_combout\,
	combout => \ALU0|sub|cycle1|cycle2|cycle1|s~combout\);

-- Location: LCCOMB_X77_Y58_N12
\ALU0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux6~0_combout\ = (\Alu_Opcode[1]~input_o\ & ((\Alu_Opcode[0]~input_o\) # ((!\ALU0|sub|cycle1|cycle2|cycle1|s~combout\)))) # (!\Alu_Opcode[1]~input_o\ & (!\Alu_Opcode[0]~input_o\ & ((\MuxIm1|f[24]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[1]~input_o\,
	datab => \Alu_Opcode[0]~input_o\,
	datac => \ALU0|sub|cycle1|cycle2|cycle1|s~combout\,
	datad => \MuxIm1|f[24]~24_combout\,
	combout => \ALU0|Mux6~0_combout\);

-- Location: LCCOMB_X77_Y58_N22
\ALU0|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux6~1_combout\ = (\Alu_Opcode[0]~input_o\ & ((\ALU0|Mux6~0_combout\ & ((\MuxIm1|f[25]~25_combout\))) # (!\ALU0|Mux6~0_combout\ & (\MuxIm1|f[26]~26_combout\)))) # (!\Alu_Opcode[0]~input_o\ & (((\ALU0|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[26]~26_combout\,
	datab => \Alu_Opcode[0]~input_o\,
	datac => \MuxIm1|f[25]~25_combout\,
	datad => \ALU0|Mux6~0_combout\,
	combout => \ALU0|Mux6~1_combout\);

-- Location: LCCOMB_X81_Y58_N14
\ALU0|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux6~3_combout\ = (\MuxIm2|Mux6~0_combout\ & ((\Alu_Opcode[0]~input_o\) # (\Alu_Opcode[1]~input_o\ $ (\MuxIm1|f[25]~25_combout\)))) # (!\MuxIm2|Mux6~0_combout\ & (\MuxIm1|f[25]~25_combout\ & (\Alu_Opcode[1]~input_o\ $ (\Alu_Opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux6~0_combout\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \MuxIm1|f[25]~25_combout\,
	datad => \Alu_Opcode[0]~input_o\,
	combout => \ALU0|Mux6~3_combout\);

-- Location: LCCOMB_X81_Y58_N8
\ALU0|add|cycle1|cycle2|cycle0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle1|cycle2|cycle0|Cout~0_combout\ = (\MuxIm1|f[24]~24_combout\ & ((\ALU0|add|cycle1|cycle1|cycle3|Cout~0_combout\) # ((\B|q\(24) & !\MuxIm2|Mux15~0_combout\)))) # (!\MuxIm1|f[24]~24_combout\ & (\B|q\(24) & (!\MuxIm2|Mux15~0_combout\ & 
-- \ALU0|add|cycle1|cycle1|cycle3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|q\(24),
	datab => \MuxIm1|f[24]~24_combout\,
	datac => \MuxIm2|Mux15~0_combout\,
	datad => \ALU0|add|cycle1|cycle1|cycle3|Cout~0_combout\,
	combout => \ALU0|add|cycle1|cycle2|cycle0|Cout~0_combout\);

-- Location: LCCOMB_X77_Y58_N10
\ALU0|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux6~4_combout\ = \ALU0|Mux6~3_combout\ $ (((!\Alu_Opcode[0]~input_o\ & (\Alu_Opcode[1]~input_o\ & \ALU0|add|cycle1|cycle2|cycle0|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux6~3_combout\,
	datab => \Alu_Opcode[0]~input_o\,
	datac => \Alu_Opcode[1]~input_o\,
	datad => \ALU0|add|cycle1|cycle2|cycle0|Cout~0_combout\,
	combout => \ALU0|Mux6~4_combout\);

-- Location: LCCOMB_X77_Y58_N24
\ALU0|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux6~2_combout\ = (\Alu_Opcode[2]~input_o\ & (\ALU0|Mux6~1_combout\)) # (!\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alu_Opcode[2]~input_o\,
	datac => \ALU0|Mux6~1_combout\,
	datad => \ALU0|Mux6~4_combout\,
	combout => \ALU0|Mux6~2_combout\);

-- Location: LCCOMB_X76_Y58_N0
\MuxB|f[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[25]~25_combout\ = (!\B_Mux~input_o\ & ((\MuxData|Mux6~2_combout\) # ((\MuxData|Mux31~3_combout\ & \ALU0|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Mux~input_o\,
	datab => \MuxData|Mux31~3_combout\,
	datac => \MuxData|Mux6~2_combout\,
	datad => \ALU0|Mux6~2_combout\,
	combout => \MuxB|f[25]~25_combout\);

-- Location: FF_X76_Y58_N1
\B|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[25]~25_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(25));

-- Location: LCCOMB_X77_Y59_N2
\MuxIm2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux6~0_combout\ = (!\Im_Mux2[1]~input_o\ & (!\Im_Mux2[0]~input_o\ & \B|q\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux2[1]~input_o\,
	datac => \Im_Mux2[0]~input_o\,
	datad => \B|q\(25),
	combout => \MuxIm2|Mux6~0_combout\);

-- Location: LCCOMB_X81_Y60_N20
\ALU0|sub|cycle1|cycle2|cycle2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle2|cycle2|s~0_combout\ = \MuxIm2|Mux5~0_combout\ $ (((\Im_Mux1~input_o\ & (\IR|q\(10))) # (!\Im_Mux1~input_o\ & ((\A|q\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \IR|q\(10),
	datac => \MuxIm2|Mux5~0_combout\,
	datad => \A|q\(26),
	combout => \ALU0|sub|cycle1|cycle2|cycle2|s~0_combout\);

-- Location: LCCOMB_X77_Y58_N6
\ALU0|sub|cycle1|cycle2|cycle2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle2|cycle2|s~combout\ = \ALU0|sub|cycle1|cycle2|cycle2|s~0_combout\ $ (((\MuxIm2|Mux6~0_combout\ & (\MuxIm1|f[25]~25_combout\ & \ALU0|sub|cycle1|cycle2|cycle0|Cout~0_combout\)) # (!\MuxIm2|Mux6~0_combout\ & ((\MuxIm1|f[25]~25_combout\) 
-- # (\ALU0|sub|cycle1|cycle2|cycle0|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux6~0_combout\,
	datab => \ALU0|sub|cycle1|cycle2|cycle2|s~0_combout\,
	datac => \MuxIm1|f[25]~25_combout\,
	datad => \ALU0|sub|cycle1|cycle2|cycle0|Cout~0_combout\,
	combout => \ALU0|sub|cycle1|cycle2|cycle2|s~combout\);

-- Location: LCCOMB_X77_Y58_N8
\ALU0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux5~0_combout\ = (\Alu_Opcode[0]~input_o\ & (((\Alu_Opcode[1]~input_o\)))) # (!\Alu_Opcode[0]~input_o\ & ((\Alu_Opcode[1]~input_o\ & ((!\ALU0|sub|cycle1|cycle2|cycle2|s~combout\))) # (!\Alu_Opcode[1]~input_o\ & (\MuxIm1|f[25]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[25]~25_combout\,
	datab => \Alu_Opcode[0]~input_o\,
	datac => \Alu_Opcode[1]~input_o\,
	datad => \ALU0|sub|cycle1|cycle2|cycle2|s~combout\,
	combout => \ALU0|Mux5~0_combout\);

-- Location: LCCOMB_X80_Y60_N12
\MuxIm1|f[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[27]~27_combout\ = (\Im_Mux1~input_o\ & (\IR|q\(11))) # (!\Im_Mux1~input_o\ & ((\A|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|q\(11),
	datab => \Im_Mux1~input_o\,
	datad => \A|q\(27),
	combout => \MuxIm1|f[27]~27_combout\);

-- Location: LCCOMB_X77_Y58_N26
\ALU0|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux5~1_combout\ = (\Alu_Opcode[0]~input_o\ & ((\ALU0|Mux5~0_combout\ & (\MuxIm1|f[26]~26_combout\)) # (!\ALU0|Mux5~0_combout\ & ((\MuxIm1|f[27]~27_combout\))))) # (!\Alu_Opcode[0]~input_o\ & (((\ALU0|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[26]~26_combout\,
	datab => \Alu_Opcode[0]~input_o\,
	datac => \ALU0|Mux5~0_combout\,
	datad => \MuxIm1|f[27]~27_combout\,
	combout => \ALU0|Mux5~1_combout\);

-- Location: LCCOMB_X81_Y60_N22
\ALU0|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux5~2_combout\ = (\MuxIm2|Mux5~0_combout\ & ((\Alu_Opcode[0]~input_o\) # ((!\Alu_Opcode[1]~input_o\ & \MuxIm1|f[26]~26_combout\)))) # (!\MuxIm2|Mux5~0_combout\ & (\Alu_Opcode[0]~input_o\ & ((\Alu_Opcode[1]~input_o\) # (\MuxIm1|f[26]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux5~0_combout\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \Alu_Opcode[0]~input_o\,
	datad => \MuxIm1|f[26]~26_combout\,
	combout => \ALU0|Mux5~2_combout\);

-- Location: LCCOMB_X77_Y58_N16
\ALU0|add|cycle1|cycle2|cycle2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle1|cycle2|cycle2|s~combout\ = \ALU0|sub|cycle1|cycle2|cycle2|s~0_combout\ $ (((\MuxIm2|Mux6~0_combout\ & ((\MuxIm1|f[25]~25_combout\) # (\ALU0|add|cycle1|cycle2|cycle0|Cout~0_combout\))) # (!\MuxIm2|Mux6~0_combout\ & 
-- (\MuxIm1|f[25]~25_combout\ & \ALU0|add|cycle1|cycle2|cycle0|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux6~0_combout\,
	datab => \ALU0|sub|cycle1|cycle2|cycle2|s~0_combout\,
	datac => \MuxIm1|f[25]~25_combout\,
	datad => \ALU0|add|cycle1|cycle2|cycle0|Cout~0_combout\,
	combout => \ALU0|add|cycle1|cycle2|cycle2|s~combout\);

-- Location: LCCOMB_X77_Y58_N18
\ALU0|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux5~3_combout\ = (\ALU0|Mux5~2_combout\ & ((\MuxIm2|Mux5~0_combout\) # ((!\Alu_Opcode[1]~input_o\)))) # (!\ALU0|Mux5~2_combout\ & (((\Alu_Opcode[1]~input_o\ & \ALU0|add|cycle1|cycle2|cycle2|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux5~0_combout\,
	datab => \ALU0|Mux5~2_combout\,
	datac => \Alu_Opcode[1]~input_o\,
	datad => \ALU0|add|cycle1|cycle2|cycle2|s~combout\,
	combout => \ALU0|Mux5~3_combout\);

-- Location: LCCOMB_X77_Y58_N28
\ALU0|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux5~4_combout\ = (\Alu_Opcode[2]~input_o\ & (\ALU0|Mux5~1_combout\)) # (!\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alu_Opcode[2]~input_o\,
	datac => \ALU0|Mux5~1_combout\,
	datad => \ALU0|Mux5~3_combout\,
	combout => \ALU0|Mux5~4_combout\);

-- Location: LCCOMB_X81_Y60_N14
\MuxB|f[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[26]~26_combout\ = (!\B_Mux~input_o\ & ((\MuxData|Mux5~2_combout\) # ((\MuxData|Mux31~3_combout\ & \ALU0|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxData|Mux5~2_combout\,
	datab => \B_Mux~input_o\,
	datac => \MuxData|Mux31~3_combout\,
	datad => \ALU0|Mux5~4_combout\,
	combout => \MuxB|f[26]~26_combout\);

-- Location: FF_X81_Y60_N15
\B|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[26]~26_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(26));

-- Location: LCCOMB_X81_Y60_N30
\MuxIm2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux5~0_combout\ = (!\Im_Mux2[0]~input_o\ & (!\Im_Mux2[1]~input_o\ & \B|q\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Im_Mux2[0]~input_o\,
	datac => \Im_Mux2[1]~input_o\,
	datad => \B|q\(26),
	combout => \MuxIm2|Mux5~0_combout\);

-- Location: LCCOMB_X81_Y60_N4
\ALU0|add|cycle1|cycle2|cycle2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle1|cycle2|cycle2|Cout~0_combout\ = (\MuxIm2|Mux5~0_combout\ & ((\Im_Mux1~input_o\ & (\IR|q\(10))) # (!\Im_Mux1~input_o\ & ((\A|q\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \IR|q\(10),
	datac => \MuxIm2|Mux5~0_combout\,
	datad => \A|q\(26),
	combout => \ALU0|add|cycle1|cycle2|cycle2|Cout~0_combout\);

-- Location: LCCOMB_X81_Y60_N6
\ALU0|add|cycle1|cycle2|cycle2|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle1|cycle2|cycle2|Cout~1_combout\ = (\MuxIm2|Mux5~0_combout\) # ((\Im_Mux1~input_o\ & (\IR|q\(10))) # (!\Im_Mux1~input_o\ & ((\A|q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \IR|q\(10),
	datac => \MuxIm2|Mux5~0_combout\,
	datad => \A|q\(26),
	combout => \ALU0|add|cycle1|cycle2|cycle2|Cout~1_combout\);

-- Location: LCCOMB_X81_Y58_N2
\ALU0|add|cycle1|cycle2|cycle2|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle1|cycle2|cycle2|Cout~2_combout\ = (\MuxIm1|f[24]~24_combout\ & ((\ALU0|add|cycle1|cycle1|cycle3|Cout~0_combout\) # ((\B|q\(24) & !\MuxIm2|Mux15~0_combout\)))) # (!\MuxIm1|f[24]~24_combout\ & (\B|q\(24) & (!\MuxIm2|Mux15~0_combout\ & 
-- \ALU0|add|cycle1|cycle1|cycle3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|q\(24),
	datab => \MuxIm1|f[24]~24_combout\,
	datac => \MuxIm2|Mux15~0_combout\,
	datad => \ALU0|add|cycle1|cycle1|cycle3|Cout~0_combout\,
	combout => \ALU0|add|cycle1|cycle2|cycle2|Cout~2_combout\);

-- Location: LCCOMB_X81_Y58_N16
\ALU0|add|cycle1|cycle2|cycle2|Cout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle1|cycle2|cycle2|Cout~3_combout\ = (\ALU0|add|cycle1|cycle2|cycle2|Cout~1_combout\ & ((\MuxIm2|Mux6~0_combout\ & ((\MuxIm1|f[25]~25_combout\) # (\ALU0|add|cycle1|cycle2|cycle2|Cout~2_combout\))) # (!\MuxIm2|Mux6~0_combout\ & 
-- (\MuxIm1|f[25]~25_combout\ & \ALU0|add|cycle1|cycle2|cycle2|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux6~0_combout\,
	datab => \ALU0|add|cycle1|cycle2|cycle2|Cout~1_combout\,
	datac => \MuxIm1|f[25]~25_combout\,
	datad => \ALU0|add|cycle1|cycle2|cycle2|Cout~2_combout\,
	combout => \ALU0|add|cycle1|cycle2|cycle2|Cout~3_combout\);

-- Location: LCCOMB_X81_Y58_N26
\ALU0|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux4~2_combout\ = \MuxIm1|f[27]~27_combout\ $ (((\Alu_Opcode[1]~input_o\ & ((\ALU0|add|cycle1|cycle2|cycle2|Cout~0_combout\) # (\ALU0|add|cycle1|cycle2|cycle2|Cout~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|add|cycle1|cycle2|cycle2|Cout~0_combout\,
	datab => \MuxIm1|f[27]~27_combout\,
	datac => \Alu_Opcode[1]~input_o\,
	datad => \ALU0|add|cycle1|cycle2|cycle2|Cout~3_combout\,
	combout => \ALU0|Mux4~2_combout\);

-- Location: LCCOMB_X81_Y58_N4
\ALU0|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux4~3_combout\ = (\MuxIm2|Mux4~0_combout\ & ((\Alu_Opcode[0]~input_o\) # (\Alu_Opcode[1]~input_o\ $ (\ALU0|Mux4~2_combout\)))) # (!\MuxIm2|Mux4~0_combout\ & (\ALU0|Mux4~2_combout\ & (\Alu_Opcode[1]~input_o\ $ (\Alu_Opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux4~0_combout\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \ALU0|Mux4~2_combout\,
	datad => \Alu_Opcode[0]~input_o\,
	combout => \ALU0|Mux4~3_combout\);

-- Location: LCCOMB_X81_Y60_N12
\ALU0|sub|cycle1|cycle2|cycle2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle2|cycle2|Cout~0_combout\ = (!\MuxIm2|Mux5~0_combout\ & ((\Im_Mux1~input_o\ & (\IR|q\(10))) # (!\Im_Mux1~input_o\ & ((\A|q\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \IR|q\(10),
	datac => \MuxIm2|Mux5~0_combout\,
	datad => \A|q\(26),
	combout => \ALU0|sub|cycle1|cycle2|cycle2|Cout~0_combout\);

-- Location: LCCOMB_X81_Y60_N2
\ALU0|sub|cycle1|cycle2|cycle2|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle2|cycle2|Cout~1_combout\ = ((\Im_Mux1~input_o\ & (\IR|q\(10))) # (!\Im_Mux1~input_o\ & ((\A|q\(26))))) # (!\MuxIm2|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \IR|q\(10),
	datac => \MuxIm2|Mux5~0_combout\,
	datad => \A|q\(26),
	combout => \ALU0|sub|cycle1|cycle2|cycle2|Cout~1_combout\);

-- Location: LCCOMB_X79_Y58_N2
\ALU0|sub|cycle1|cycle2|cycle2|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle2|cycle2|Cout~2_combout\ = (\ALU0|sub|cycle1|cycle2|cycle2|Cout~1_combout\ & ((\MuxIm2|Mux6~0_combout\ & (\MuxIm1|f[25]~25_combout\ & \ALU0|sub|cycle1|cycle2|cycle0|Cout~0_combout\)) # (!\MuxIm2|Mux6~0_combout\ & 
-- ((\MuxIm1|f[25]~25_combout\) # (\ALU0|sub|cycle1|cycle2|cycle0|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux6~0_combout\,
	datab => \ALU0|sub|cycle1|cycle2|cycle2|Cout~1_combout\,
	datac => \MuxIm1|f[25]~25_combout\,
	datad => \ALU0|sub|cycle1|cycle2|cycle0|Cout~0_combout\,
	combout => \ALU0|sub|cycle1|cycle2|cycle2|Cout~2_combout\);

-- Location: LCCOMB_X79_Y58_N4
\ALU0|sub|cycle1|cycle2|cycle3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle2|cycle3|s~combout\ = \MuxIm2|Mux4~0_combout\ $ (\MuxIm1|f[27]~27_combout\ $ (((\ALU0|sub|cycle1|cycle2|cycle2|Cout~0_combout\) # (\ALU0|sub|cycle1|cycle2|cycle2|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux4~0_combout\,
	datab => \ALU0|sub|cycle1|cycle2|cycle2|Cout~0_combout\,
	datac => \MuxIm1|f[27]~27_combout\,
	datad => \ALU0|sub|cycle1|cycle2|cycle2|Cout~2_combout\,
	combout => \ALU0|sub|cycle1|cycle2|cycle3|s~combout\);

-- Location: LCCOMB_X77_Y58_N2
\ALU0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux4~0_combout\ = (\Alu_Opcode[1]~input_o\ & ((\Alu_Opcode[0]~input_o\) # ((!\ALU0|sub|cycle1|cycle2|cycle3|s~combout\)))) # (!\Alu_Opcode[1]~input_o\ & (!\Alu_Opcode[0]~input_o\ & (\MuxIm1|f[26]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[1]~input_o\,
	datab => \Alu_Opcode[0]~input_o\,
	datac => \MuxIm1|f[26]~26_combout\,
	datad => \ALU0|sub|cycle1|cycle2|cycle3|s~combout\,
	combout => \ALU0|Mux4~0_combout\);

-- Location: LCCOMB_X77_Y58_N20
\ALU0|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux4~1_combout\ = (\Alu_Opcode[0]~input_o\ & ((\ALU0|Mux4~0_combout\ & (\MuxIm1|f[27]~27_combout\)) # (!\ALU0|Mux4~0_combout\ & ((\MuxIm1|f[28]~28_combout\))))) # (!\Alu_Opcode[0]~input_o\ & (((\ALU0|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[27]~27_combout\,
	datab => \Alu_Opcode[0]~input_o\,
	datac => \MuxIm1|f[28]~28_combout\,
	datad => \ALU0|Mux4~0_combout\,
	combout => \ALU0|Mux4~1_combout\);

-- Location: LCCOMB_X81_Y58_N22
\ALU0|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux4~4_combout\ = (\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux4~1_combout\))) # (!\Alu_Opcode[2]~input_o\ & (\ALU0|Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alu_Opcode[2]~input_o\,
	datac => \ALU0|Mux4~3_combout\,
	datad => \ALU0|Mux4~1_combout\,
	combout => \ALU0|Mux4~4_combout\);

-- Location: LCCOMB_X85_Y58_N12
\MuxB|f[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[27]~27_combout\ = (!\B_Mux~input_o\ & ((\MuxData|Mux4~2_combout\) # ((\MuxData|Mux31~3_combout\ & \ALU0|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Mux~input_o\,
	datab => \MuxData|Mux4~2_combout\,
	datac => \MuxData|Mux31~3_combout\,
	datad => \ALU0|Mux4~4_combout\,
	combout => \MuxB|f[27]~27_combout\);

-- Location: FF_X85_Y58_N13
\B|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[27]~27_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(27));

-- Location: LCCOMB_X85_Y58_N22
\MuxIm2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux4~0_combout\ = (!\Im_Mux2[0]~input_o\ & (!\Im_Mux2[1]~input_o\ & \B|q\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux2[0]~input_o\,
	datab => \Im_Mux2[1]~input_o\,
	datad => \B|q\(27),
	combout => \MuxIm2|Mux4~0_combout\);

-- Location: LCCOMB_X81_Y58_N28
\ALU0|add|cycle1|cycle2|cycle3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle1|cycle2|cycle3|Cout~0_combout\ = (\MuxIm2|Mux4~0_combout\ & ((\MuxIm1|f[27]~27_combout\) # ((\ALU0|add|cycle1|cycle2|cycle2|Cout~0_combout\) # (\ALU0|add|cycle1|cycle2|cycle2|Cout~3_combout\)))) # (!\MuxIm2|Mux4~0_combout\ & 
-- (\MuxIm1|f[27]~27_combout\ & ((\ALU0|add|cycle1|cycle2|cycle2|Cout~0_combout\) # (\ALU0|add|cycle1|cycle2|cycle2|Cout~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux4~0_combout\,
	datab => \MuxIm1|f[27]~27_combout\,
	datac => \ALU0|add|cycle1|cycle2|cycle2|Cout~0_combout\,
	datad => \ALU0|add|cycle1|cycle2|cycle2|Cout~3_combout\,
	combout => \ALU0|add|cycle1|cycle2|cycle3|Cout~0_combout\);

-- Location: LCCOMB_X80_Y59_N22
\ALU0|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux3~4_combout\ = \ALU0|Mux3~3_combout\ $ (((\Alu_Opcode[1]~input_o\ & (\ALU0|add|cycle1|cycle2|cycle3|Cout~0_combout\ & !\Alu_Opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[1]~input_o\,
	datab => \ALU0|Mux3~3_combout\,
	datac => \ALU0|add|cycle1|cycle2|cycle3|Cout~0_combout\,
	datad => \Alu_Opcode[0]~input_o\,
	combout => \ALU0|Mux3~4_combout\);

-- Location: LCCOMB_X79_Y58_N14
\ALU0|sub|cycle1|cycle2|cycle3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle2|cycle3|Cout~0_combout\ = (\MuxIm2|Mux4~0_combout\ & (\MuxIm1|f[27]~27_combout\ & ((\ALU0|sub|cycle1|cycle2|cycle2|Cout~0_combout\) # (\ALU0|sub|cycle1|cycle2|cycle2|Cout~2_combout\)))) # (!\MuxIm2|Mux4~0_combout\ & 
-- ((\ALU0|sub|cycle1|cycle2|cycle2|Cout~0_combout\) # ((\MuxIm1|f[27]~27_combout\) # (\ALU0|sub|cycle1|cycle2|cycle2|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux4~0_combout\,
	datab => \ALU0|sub|cycle1|cycle2|cycle2|Cout~0_combout\,
	datac => \MuxIm1|f[27]~27_combout\,
	datad => \ALU0|sub|cycle1|cycle2|cycle2|Cout~2_combout\,
	combout => \ALU0|sub|cycle1|cycle2|cycle3|Cout~0_combout\);

-- Location: LCCOMB_X79_Y58_N0
\ALU0|sub|cycle1|cycle3|cycle0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle3|cycle0|s~combout\ = \MuxIm2|Mux3~0_combout\ $ (\ALU0|sub|cycle1|cycle2|cycle3|Cout~0_combout\ $ (\MuxIm1|f[28]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux3~0_combout\,
	datac => \ALU0|sub|cycle1|cycle2|cycle3|Cout~0_combout\,
	datad => \MuxIm1|f[28]~28_combout\,
	combout => \ALU0|sub|cycle1|cycle3|cycle0|s~combout\);

-- Location: LCCOMB_X80_Y59_N10
\ALU0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux3~0_combout\ = (\Alu_Opcode[0]~input_o\ & (((\Alu_Opcode[1]~input_o\)))) # (!\Alu_Opcode[0]~input_o\ & ((\Alu_Opcode[1]~input_o\ & ((!\ALU0|sub|cycle1|cycle3|cycle0|s~combout\))) # (!\Alu_Opcode[1]~input_o\ & (\MuxIm1|f[27]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[27]~27_combout\,
	datab => \Alu_Opcode[0]~input_o\,
	datac => \Alu_Opcode[1]~input_o\,
	datad => \ALU0|sub|cycle1|cycle3|cycle0|s~combout\,
	combout => \ALU0|Mux3~0_combout\);

-- Location: LCCOMB_X80_Y59_N0
\ALU0|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux3~1_combout\ = (\Alu_Opcode[0]~input_o\ & ((\ALU0|Mux3~0_combout\ & (\MuxIm1|f[28]~28_combout\)) # (!\ALU0|Mux3~0_combout\ & ((\MuxIm1|f[29]~29_combout\))))) # (!\Alu_Opcode[0]~input_o\ & (((\ALU0|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \MuxIm1|f[28]~28_combout\,
	datac => \MuxIm1|f[29]~29_combout\,
	datad => \ALU0|Mux3~0_combout\,
	combout => \ALU0|Mux3~1_combout\);

-- Location: LCCOMB_X80_Y59_N30
\ALU0|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux3~2_combout\ = (\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux3~1_combout\))) # (!\Alu_Opcode[2]~input_o\ & (\ALU0|Mux3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alu_Opcode[2]~input_o\,
	datac => \ALU0|Mux3~4_combout\,
	datad => \ALU0|Mux3~1_combout\,
	combout => \ALU0|Mux3~2_combout\);

-- Location: LCCOMB_X79_Y59_N22
\MuxB|f[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[28]~28_combout\ = (!\B_Mux~input_o\ & ((\MuxData|Mux3~2_combout\) # ((\ALU0|Mux3~2_combout\ & \MuxData|Mux31~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Mux~input_o\,
	datab => \MuxData|Mux3~2_combout\,
	datac => \ALU0|Mux3~2_combout\,
	datad => \MuxData|Mux31~3_combout\,
	combout => \MuxB|f[28]~28_combout\);

-- Location: FF_X79_Y59_N23
\B|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[28]~28_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(28));

-- Location: LCCOMB_X79_Y59_N12
\MuxIm2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux3~0_combout\ = (!\Im_Mux2[0]~input_o\ & (!\Im_Mux2[1]~input_o\ & \B|q\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux2[0]~input_o\,
	datab => \Im_Mux2[1]~input_o\,
	datac => \B|q\(28),
	combout => \MuxIm2|Mux3~0_combout\);

-- Location: LCCOMB_X80_Y59_N20
\ALU0|sub|cycle1|cycle3|cycle1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle3|cycle1|s~combout\ = \ALU0|sub|cycle1|cycle3|cycle1|s~0_combout\ $ (((\MuxIm1|f[28]~28_combout\ & ((\ALU0|sub|cycle1|cycle2|cycle3|Cout~0_combout\) # (!\MuxIm2|Mux3~0_combout\))) # (!\MuxIm1|f[28]~28_combout\ & 
-- (!\MuxIm2|Mux3~0_combout\ & \ALU0|sub|cycle1|cycle2|cycle3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub|cycle1|cycle3|cycle1|s~0_combout\,
	datab => \MuxIm1|f[28]~28_combout\,
	datac => \MuxIm2|Mux3~0_combout\,
	datad => \ALU0|sub|cycle1|cycle2|cycle3|Cout~0_combout\,
	combout => \ALU0|sub|cycle1|cycle3|cycle1|s~combout\);

-- Location: LCCOMB_X80_Y59_N2
\ALU0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux2~0_combout\ = (\Alu_Opcode[1]~input_o\ & (((\Alu_Opcode[0]~input_o\) # (!\ALU0|sub|cycle1|cycle3|cycle1|s~combout\)))) # (!\Alu_Opcode[1]~input_o\ & (\MuxIm1|f[28]~28_combout\ & (!\Alu_Opcode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[1]~input_o\,
	datab => \MuxIm1|f[28]~28_combout\,
	datac => \Alu_Opcode[0]~input_o\,
	datad => \ALU0|sub|cycle1|cycle3|cycle1|s~combout\,
	combout => \ALU0|Mux2~0_combout\);

-- Location: LCCOMB_X80_Y59_N4
\ALU0|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux2~1_combout\ = (\Alu_Opcode[0]~input_o\ & ((\ALU0|Mux2~0_combout\ & ((\MuxIm1|f[29]~29_combout\))) # (!\ALU0|Mux2~0_combout\ & (\MuxIm1|f[30]~30_combout\)))) # (!\Alu_Opcode[0]~input_o\ & (((\ALU0|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[30]~30_combout\,
	datab => \Alu_Opcode[0]~input_o\,
	datac => \MuxIm1|f[29]~29_combout\,
	datad => \ALU0|Mux2~0_combout\,
	combout => \ALU0|Mux2~1_combout\);

-- Location: LCCOMB_X79_Y59_N18
\MuxIm2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux2~0_combout\ = (!\Im_Mux2[0]~input_o\ & (\B|q\(29) & !\Im_Mux2[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux2[0]~input_o\,
	datac => \B|q\(29),
	datad => \Im_Mux2[1]~input_o\,
	combout => \MuxIm2|Mux2~0_combout\);

-- Location: LCCOMB_X81_Y57_N26
\ALU0|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux2~2_combout\ = (\MuxIm2|Mux2~0_combout\ & ((\Alu_Opcode[0]~input_o\) # ((\MuxIm1|f[29]~29_combout\ & !\Alu_Opcode[1]~input_o\)))) # (!\MuxIm2|Mux2~0_combout\ & (\Alu_Opcode[0]~input_o\ & ((\MuxIm1|f[29]~29_combout\) # (\Alu_Opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux2~0_combout\,
	datab => \Alu_Opcode[0]~input_o\,
	datac => \MuxIm1|f[29]~29_combout\,
	datad => \Alu_Opcode[1]~input_o\,
	combout => \ALU0|Mux2~2_combout\);

-- Location: LCCOMB_X80_Y59_N18
\ALU0|add|cycle1|cycle3|cycle1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle1|cycle3|cycle1|s~combout\ = \ALU0|sub|cycle1|cycle3|cycle1|s~0_combout\ $ (((\MuxIm1|f[28]~28_combout\ & ((\ALU0|add|cycle1|cycle2|cycle3|Cout~0_combout\) # (\MuxIm2|Mux3~0_combout\))) # (!\MuxIm1|f[28]~28_combout\ & 
-- (\ALU0|add|cycle1|cycle2|cycle3|Cout~0_combout\ & \MuxIm2|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub|cycle1|cycle3|cycle1|s~0_combout\,
	datab => \MuxIm1|f[28]~28_combout\,
	datac => \ALU0|add|cycle1|cycle2|cycle3|Cout~0_combout\,
	datad => \MuxIm2|Mux3~0_combout\,
	combout => \ALU0|add|cycle1|cycle3|cycle1|s~combout\);

-- Location: LCCOMB_X80_Y59_N12
\ALU0|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux2~3_combout\ = (\ALU0|Mux2~2_combout\ & ((\MuxIm2|Mux2~0_combout\) # ((!\Alu_Opcode[1]~input_o\)))) # (!\ALU0|Mux2~2_combout\ & (((\Alu_Opcode[1]~input_o\ & \ALU0|add|cycle1|cycle3|cycle1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux2~0_combout\,
	datab => \ALU0|Mux2~2_combout\,
	datac => \Alu_Opcode[1]~input_o\,
	datad => \ALU0|add|cycle1|cycle3|cycle1|s~combout\,
	combout => \ALU0|Mux2~3_combout\);

-- Location: LCCOMB_X80_Y59_N14
\ALU0|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux2~4_combout\ = (\Alu_Opcode[2]~input_o\ & (\ALU0|Mux2~1_combout\)) # (!\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alu_Opcode[2]~input_o\,
	datac => \ALU0|Mux2~1_combout\,
	datad => \ALU0|Mux2~3_combout\,
	combout => \ALU0|Mux2~4_combout\);

-- Location: LCCOMB_X80_Y59_N6
\MuxA|f[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[29]~29_combout\ = (!\A_Mux~input_o\ & ((\MuxData|Mux2~2_combout\) # ((\ALU0|Mux2~4_combout\ & \MuxData|Mux31~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Mux~input_o\,
	datab => \ALU0|Mux2~4_combout\,
	datac => \MuxData|Mux2~2_combout\,
	datad => \MuxData|Mux31~3_combout\,
	combout => \MuxA|f[29]~29_combout\);

-- Location: FF_X80_Y59_N7
\A|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[29]~29_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(29));

-- Location: LCCOMB_X83_Y59_N0
\MuxIm1|f[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[29]~29_combout\ = (\Im_Mux1~input_o\ & (\IR|q\(13))) # (!\Im_Mux1~input_o\ & ((\A|q\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Im_Mux1~input_o\,
	datac => \IR|q\(13),
	datad => \A|q\(29),
	combout => \MuxIm1|f[29]~29_combout\);

-- Location: LCCOMB_X79_Y57_N28
\ALU0|sub|cycle1|cycle3|cycle1|Cout~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle3|cycle1|Cout~9_combout\ = (!\MuxIm2|Mux2~0_combout\ & ((\Im_Mux1~input_o\ & ((\IR|q\(13)))) # (!\Im_Mux1~input_o\ & (\A|q\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(29),
	datab => \IR|q\(13),
	datac => \MuxIm2|Mux2~0_combout\,
	datad => \Im_Mux1~input_o\,
	combout => \ALU0|sub|cycle1|cycle3|cycle1|Cout~9_combout\);

-- Location: LCCOMB_X80_Y56_N0
\MuxIm2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux1~0_combout\ = (!\Im_Mux2[0]~input_o\ & (!\Im_Mux2[1]~input_o\ & \B|q\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Im_Mux2[0]~input_o\,
	datac => \Im_Mux2[1]~input_o\,
	datad => \B|q\(30),
	combout => \MuxIm2|Mux1~0_combout\);

-- Location: LCCOMB_X79_Y57_N14
\ALU0|sub|cycle1|cycle3|cycle1|Cout~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle3|cycle1|Cout~10_combout\ = ((\Im_Mux1~input_o\ & ((\IR|q\(13)))) # (!\Im_Mux1~input_o\ & (\A|q\(29)))) # (!\MuxIm2|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(29),
	datab => \IR|q\(13),
	datac => \MuxIm2|Mux2~0_combout\,
	datad => \Im_Mux1~input_o\,
	combout => \ALU0|sub|cycle1|cycle3|cycle1|Cout~10_combout\);

-- Location: LCCOMB_X79_Y58_N30
\ALU0|sub|cycle1|cycle3|cycle1|Cout~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle3|cycle1|Cout~8_combout\ = (\ALU0|sub|cycle1|cycle3|cycle1|Cout~10_combout\ & ((\MuxIm2|Mux3~0_combout\ & (\ALU0|sub|cycle1|cycle2|cycle3|Cout~0_combout\ & \MuxIm1|f[28]~28_combout\)) # (!\MuxIm2|Mux3~0_combout\ & 
-- ((\ALU0|sub|cycle1|cycle2|cycle3|Cout~0_combout\) # (\MuxIm1|f[28]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux3~0_combout\,
	datab => \ALU0|sub|cycle1|cycle3|cycle1|Cout~10_combout\,
	datac => \ALU0|sub|cycle1|cycle2|cycle3|Cout~0_combout\,
	datad => \MuxIm1|f[28]~28_combout\,
	combout => \ALU0|sub|cycle1|cycle3|cycle1|Cout~8_combout\);

-- Location: LCCOMB_X79_Y58_N20
\ALU0|sub|cycle1|cycle3|cycle2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle3|cycle2|s~combout\ = \MuxIm2|Mux1~0_combout\ $ (\MuxIm1|f[30]~30_combout\ $ (((\ALU0|sub|cycle1|cycle3|cycle1|Cout~9_combout\) # (\ALU0|sub|cycle1|cycle3|cycle1|Cout~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub|cycle1|cycle3|cycle1|Cout~9_combout\,
	datab => \MuxIm2|Mux1~0_combout\,
	datac => \ALU0|sub|cycle1|cycle3|cycle1|Cout~8_combout\,
	datad => \MuxIm1|f[30]~30_combout\,
	combout => \ALU0|sub|cycle1|cycle3|cycle2|s~combout\);

-- Location: LCCOMB_X79_Y58_N22
\ALU0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux1~0_combout\ = (\Alu_Opcode[1]~input_o\ & (((\Alu_Opcode[0]~input_o\) # (!\ALU0|sub|cycle1|cycle3|cycle2|s~combout\)))) # (!\Alu_Opcode[1]~input_o\ & (\MuxIm1|f[29]~29_combout\ & (!\Alu_Opcode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[29]~29_combout\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \Alu_Opcode[0]~input_o\,
	datad => \ALU0|sub|cycle1|cycle3|cycle2|s~combout\,
	combout => \ALU0|Mux1~0_combout\);

-- Location: LCCOMB_X79_Y61_N26
\MuxIm1|f[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[31]~31_combout\ = (\Im_Mux1~input_o\ & (\IR|q\(15))) # (!\Im_Mux1~input_o\ & ((\A|q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datac => \IR|q\(15),
	datad => \A|q\(31),
	combout => \MuxIm1|f[31]~31_combout\);

-- Location: LCCOMB_X79_Y58_N16
\ALU0|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux1~1_combout\ = (\Alu_Opcode[0]~input_o\ & ((\ALU0|Mux1~0_combout\ & (\MuxIm1|f[30]~30_combout\)) # (!\ALU0|Mux1~0_combout\ & ((\MuxIm1|f[31]~31_combout\))))) # (!\Alu_Opcode[0]~input_o\ & (((\ALU0|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \MuxIm1|f[30]~30_combout\,
	datac => \ALU0|Mux1~0_combout\,
	datad => \MuxIm1|f[31]~31_combout\,
	combout => \ALU0|Mux1~1_combout\);

-- Location: LCCOMB_X80_Y58_N18
\ALU0|add|cycle1|cycle3|cycle0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle1|cycle3|cycle0|Cout~0_combout\ = (\MuxIm1|f[28]~28_combout\ & ((\ALU0|add|cycle1|cycle2|cycle3|Cout~0_combout\) # ((!\MuxIm2|Mux15~0_combout\ & \B|q\(28))))) # (!\MuxIm1|f[28]~28_combout\ & (!\MuxIm2|Mux15~0_combout\ & (\B|q\(28) & 
-- \ALU0|add|cycle1|cycle2|cycle3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux15~0_combout\,
	datab => \MuxIm1|f[28]~28_combout\,
	datac => \B|q\(28),
	datad => \ALU0|add|cycle1|cycle2|cycle3|Cout~0_combout\,
	combout => \ALU0|add|cycle1|cycle3|cycle0|Cout~0_combout\);

-- Location: LCCOMB_X80_Y58_N4
\ALU0|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux1~2_combout\ = (\MuxIm2|Mux2~0_combout\ & ((\MuxIm1|f[29]~29_combout\) # (\ALU0|add|cycle1|cycle3|cycle0|Cout~0_combout\))) # (!\MuxIm2|Mux2~0_combout\ & (\MuxIm1|f[29]~29_combout\ & \ALU0|add|cycle1|cycle3|cycle0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux2~0_combout\,
	datac => \MuxIm1|f[29]~29_combout\,
	datad => \ALU0|add|cycle1|cycle3|cycle0|Cout~0_combout\,
	combout => \ALU0|Mux1~2_combout\);

-- Location: LCCOMB_X79_Y58_N18
\ALU0|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux1~3_combout\ = \MuxIm1|f[30]~30_combout\ $ (((\Alu_Opcode[1]~input_o\ & \ALU0|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[30]~30_combout\,
	datab => \Alu_Opcode[1]~input_o\,
	datad => \ALU0|Mux1~2_combout\,
	combout => \ALU0|Mux1~3_combout\);

-- Location: LCCOMB_X79_Y58_N8
\ALU0|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux1~4_combout\ = (\MuxIm2|Mux1~0_combout\ & ((\Alu_Opcode[0]~input_o\) # (\Alu_Opcode[1]~input_o\ $ (\ALU0|Mux1~3_combout\)))) # (!\MuxIm2|Mux1~0_combout\ & (\ALU0|Mux1~3_combout\ & (\Alu_Opcode[0]~input_o\ $ (\Alu_Opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \MuxIm2|Mux1~0_combout\,
	datad => \ALU0|Mux1~3_combout\,
	combout => \ALU0|Mux1~4_combout\);

-- Location: LCCOMB_X80_Y58_N30
\ALU0|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux1~5_combout\ = (\Alu_Opcode[2]~input_o\ & (\ALU0|Mux1~1_combout\)) # (!\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alu_Opcode[2]~input_o\,
	datac => \ALU0|Mux1~1_combout\,
	datad => \ALU0|Mux1~4_combout\,
	combout => \ALU0|Mux1~5_combout\);

-- Location: LCCOMB_X76_Y58_N18
\MuxA|f[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[30]~30_combout\ = (!\A_Mux~input_o\ & ((\MuxData|Mux1~2_combout\) # ((\MuxData|Mux31~3_combout\ & \ALU0|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Mux~input_o\,
	datab => \MuxData|Mux1~2_combout\,
	datac => \MuxData|Mux31~3_combout\,
	datad => \ALU0|Mux1~5_combout\,
	combout => \MuxA|f[30]~30_combout\);

-- Location: FF_X76_Y58_N19
\A|q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[30]~30_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(30));

-- Location: LCCOMB_X79_Y59_N14
\MuxIm1|f[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[30]~30_combout\ = (\Im_Mux1~input_o\ & ((\IR|q\(14)))) # (!\Im_Mux1~input_o\ & (\A|q\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|q\(30),
	datac => \Im_Mux1~input_o\,
	datad => \IR|q\(14),
	combout => \MuxIm1|f[30]~30_combout\);

-- Location: LCCOMB_X79_Y61_N14
\ALU0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux0~0_combout\ = (\Alu_Opcode[0]~input_o\ & (\ALU0|Mux31~7_combout\)) # (!\Alu_Opcode[0]~input_o\ & ((\MuxIm1|f[30]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \ALU0|Mux31~7_combout\,
	datac => \MuxIm1|f[30]~30_combout\,
	combout => \ALU0|Mux0~0_combout\);

-- Location: LCCOMB_X80_Y61_N18
\MuxIm2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux0~0_combout\ = (\B|q\(31) & (!\Im_Mux2[0]~input_o\ & !\Im_Mux2[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|q\(31),
	datab => \Im_Mux2[0]~input_o\,
	datac => \Im_Mux2[1]~input_o\,
	combout => \MuxIm2|Mux0~0_combout\);

-- Location: LCCOMB_X79_Y61_N12
\ALU0|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux0~1_combout\ = (\MuxIm2|Mux0~0_combout\ & ((\Alu_Opcode[0]~input_o\) # (\Alu_Opcode[1]~input_o\ $ (\MuxIm1|f[31]~31_combout\)))) # (!\MuxIm2|Mux0~0_combout\ & (\MuxIm1|f[31]~31_combout\ & (\Alu_Opcode[0]~input_o\ $ (\Alu_Opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \MuxIm1|f[31]~31_combout\,
	datad => \MuxIm2|Mux0~0_combout\,
	combout => \ALU0|Mux0~1_combout\);

-- Location: LCCOMB_X87_Y58_N20
\ALU0|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux0~2_combout\ = (!\Alu_Opcode[0]~input_o\ & \Alu_Opcode[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alu_Opcode[0]~input_o\,
	datac => \Alu_Opcode[1]~input_o\,
	combout => \ALU0|Mux0~2_combout\);

-- Location: LCCOMB_X79_Y58_N26
\ALU0|sub|cycle1|cycle3|cycle2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle3|cycle2|Cout~0_combout\ = (\MuxIm2|Mux1~0_combout\ & (\MuxIm1|f[30]~30_combout\ & ((\ALU0|sub|cycle1|cycle3|cycle1|Cout~9_combout\) # (\ALU0|sub|cycle1|cycle3|cycle1|Cout~8_combout\)))) # (!\MuxIm2|Mux1~0_combout\ & 
-- ((\ALU0|sub|cycle1|cycle3|cycle1|Cout~9_combout\) # ((\ALU0|sub|cycle1|cycle3|cycle1|Cout~8_combout\) # (\MuxIm1|f[30]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub|cycle1|cycle3|cycle1|Cout~9_combout\,
	datab => \MuxIm2|Mux1~0_combout\,
	datac => \ALU0|sub|cycle1|cycle3|cycle1|Cout~8_combout\,
	datad => \MuxIm1|f[30]~30_combout\,
	combout => \ALU0|sub|cycle1|cycle3|cycle2|Cout~0_combout\);

-- Location: LCCOMB_X80_Y58_N28
\ALU0|add|cycle1|cycle3|cycle2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle1|cycle3|cycle2|Cout~0_combout\ = (\MuxIm1|f[28]~28_combout\ & ((\ALU0|add|cycle1|cycle2|cycle3|Cout~0_combout\) # ((!\MuxIm2|Mux15~0_combout\ & \B|q\(28))))) # (!\MuxIm1|f[28]~28_combout\ & (!\MuxIm2|Mux15~0_combout\ & (\B|q\(28) & 
-- \ALU0|add|cycle1|cycle2|cycle3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux15~0_combout\,
	datab => \MuxIm1|f[28]~28_combout\,
	datac => \B|q\(28),
	datad => \ALU0|add|cycle1|cycle2|cycle3|Cout~0_combout\,
	combout => \ALU0|add|cycle1|cycle3|cycle2|Cout~0_combout\);

-- Location: LCCOMB_X80_Y58_N26
\ALU0|add|cycle1|cycle3|cycle2|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle1|cycle3|cycle2|Cout~1_combout\ = (\MuxIm2|Mux2~0_combout\ & ((\MuxIm1|f[29]~29_combout\) # (\ALU0|add|cycle1|cycle3|cycle2|Cout~0_combout\))) # (!\MuxIm2|Mux2~0_combout\ & (\MuxIm1|f[29]~29_combout\ & 
-- \ALU0|add|cycle1|cycle3|cycle2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux2~0_combout\,
	datac => \MuxIm1|f[29]~29_combout\,
	datad => \ALU0|add|cycle1|cycle3|cycle2|Cout~0_combout\,
	combout => \ALU0|add|cycle1|cycle3|cycle2|Cout~1_combout\);

-- Location: LCCOMB_X80_Y58_N16
\ALU0|add|cycle1|cycle3|cycle2|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle1|cycle3|cycle2|Cout~2_combout\ = (\ALU0|add|cycle1|cycle3|cycle2|Cout~1_combout\ & ((\MuxIm1|f[30]~30_combout\) # ((!\MuxIm2|Mux15~0_combout\ & \B|q\(30))))) # (!\ALU0|add|cycle1|cycle3|cycle2|Cout~1_combout\ & (!\MuxIm2|Mux15~0_combout\ & 
-- (\B|q\(30) & \MuxIm1|f[30]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux15~0_combout\,
	datab => \B|q\(30),
	datac => \ALU0|add|cycle1|cycle3|cycle2|Cout~1_combout\,
	datad => \MuxIm1|f[30]~30_combout\,
	combout => \ALU0|add|cycle1|cycle3|cycle2|Cout~2_combout\);

-- Location: LCCOMB_X80_Y58_N6
\ALU0|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux0~3_combout\ = (\ALU0|Mux0~2_combout\ & ((\Alu_Opcode[2]~input_o\ & (!\ALU0|sub|cycle1|cycle3|cycle2|Cout~0_combout\)) # (!\Alu_Opcode[2]~input_o\ & ((\ALU0|add|cycle1|cycle3|cycle2|Cout~2_combout\))))) # (!\ALU0|Mux0~2_combout\ & 
-- (\Alu_Opcode[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux0~2_combout\,
	datab => \Alu_Opcode[2]~input_o\,
	datac => \ALU0|sub|cycle1|cycle3|cycle2|Cout~0_combout\,
	datad => \ALU0|add|cycle1|cycle3|cycle2|Cout~2_combout\,
	combout => \ALU0|Mux0~3_combout\);

-- Location: LCCOMB_X80_Y58_N20
\ALU0|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux0~4_combout\ = (\ALU0|Mux0~3_combout\ & ((\ALU0|Mux0~2_combout\ & ((!\ALU0|Mux0~1_combout\))) # (!\ALU0|Mux0~2_combout\ & (\ALU0|Mux0~0_combout\)))) # (!\ALU0|Mux0~3_combout\ & (((\ALU0|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux0~0_combout\,
	datab => \ALU0|Mux0~1_combout\,
	datac => \ALU0|Mux0~2_combout\,
	datad => \ALU0|Mux0~3_combout\,
	combout => \ALU0|Mux0~4_combout\);

-- Location: LCCOMB_X80_Y61_N30
\MuxB|f[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[31]~31_combout\ = (!\B_Mux~input_o\ & ((\MuxData|Mux0~2_combout\) # ((\MuxData|Mux31~3_combout\ & \ALU0|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Mux~input_o\,
	datab => \MuxData|Mux31~3_combout\,
	datac => \MuxData|Mux0~2_combout\,
	datad => \ALU0|Mux0~4_combout\,
	combout => \MuxB|f[31]~31_combout\);

-- Location: FF_X80_Y61_N31
\B|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[31]~31_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(31));

-- Location: LCCOMB_X80_Y60_N6
\MuxReg|f[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[31]~31_combout\ = (\Reg_Mux~input_o\ & (\B|q\(31))) # (!\Reg_Mux~input_o\ & ((\A|q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|q\(31),
	datac => \Reg_Mux~input_o\,
	datad => \A|q\(31),
	combout => \MuxReg|f[31]~31_combout\);

-- Location: LCCOMB_X79_Y60_N14
\DataMemory|data_out~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~31_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & ((\DataMemory|memory_rtl_0|auto_generated|ram_block1a30\))) # (!\DataMemory|memory~41_q\ & (\DataMemory|memory~72_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|memory~41_q\,
	datab => \DataMemory|memory~72_q\,
	datac => \DataMemory|data_out[14]~0_combout\,
	datad => \DataMemory|memory_rtl_0|auto_generated|ram_block1a30\,
	combout => \DataMemory|data_out~31_combout\);

-- Location: FF_X79_Y60_N15
\DataMemory|data_out[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(30));

-- Location: LCCOMB_X81_Y56_N22
\MuxData|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux1~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & ((\DataMemory|data_out\(30)))) # (!\Data_Mux[0]~input_o\ & (\Data_In[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[1]~input_o\,
	datab => \Data_In[30]~input_o\,
	datac => \DataMemory|data_out\(30),
	datad => \Data_Mux[0]~input_o\,
	combout => \MuxData|Mux1~2_combout\);

-- Location: LCCOMB_X80_Y56_N18
\MuxB|f[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[30]~30_combout\ = (!\B_Mux~input_o\ & ((\MuxData|Mux1~2_combout\) # ((\MuxData|Mux31~3_combout\ & \ALU0|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Mux~input_o\,
	datab => \MuxData|Mux1~2_combout\,
	datac => \MuxData|Mux31~3_combout\,
	datad => \ALU0|Mux1~5_combout\,
	combout => \MuxB|f[30]~30_combout\);

-- Location: FF_X80_Y56_N19
\B|q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[30]~30_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(30));

-- Location: LCCOMB_X79_Y59_N16
\MuxReg|f[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[30]~30_combout\ = (\Reg_Mux~input_o\ & (\B|q\(30))) # (!\Reg_Mux~input_o\ & ((\A|q\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|q\(30),
	datac => \Reg_Mux~input_o\,
	datad => \A|q\(30),
	combout => \MuxReg|f[30]~30_combout\);

-- Location: LCCOMB_X79_Y60_N30
\DataMemory|data_out~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~30_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & ((\DataMemory|memory_rtl_0|auto_generated|ram_block1a29\))) # (!\DataMemory|memory~41_q\ & (\DataMemory|memory~71_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|memory~41_q\,
	datab => \DataMemory|memory~71_q\,
	datac => \DataMemory|data_out[14]~0_combout\,
	datad => \DataMemory|memory_rtl_0|auto_generated|ram_block1a29\,
	combout => \DataMemory|data_out~30_combout\);

-- Location: FF_X79_Y60_N31
\DataMemory|data_out[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(29));

-- Location: IOIBUF_X27_Y73_N8
\Data_In[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(29),
	o => \Data_In[29]~input_o\);

-- Location: LCCOMB_X79_Y60_N4
\MuxData|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux2~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & (\DataMemory|data_out\(29))) # (!\Data_Mux[0]~input_o\ & ((\Data_In[29]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|data_out\(29),
	datab => \Data_In[29]~input_o\,
	datac => \Data_Mux[1]~input_o\,
	datad => \Data_Mux[0]~input_o\,
	combout => \MuxData|Mux2~2_combout\);

-- Location: LCCOMB_X79_Y59_N4
\MuxB|f[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[29]~29_combout\ = (!\B_Mux~input_o\ & ((\MuxData|Mux2~2_combout\) # ((\MuxData|Mux31~3_combout\ & \ALU0|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxData|Mux31~3_combout\,
	datab => \MuxData|Mux2~2_combout\,
	datac => \B_Mux~input_o\,
	datad => \ALU0|Mux2~4_combout\,
	combout => \MuxB|f[29]~29_combout\);

-- Location: FF_X79_Y59_N5
\B|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[29]~29_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(29));

-- Location: LCCOMB_X79_Y59_N6
\MuxReg|f[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[29]~29_combout\ = (\Reg_Mux~input_o\ & (\B|q\(29))) # (!\Reg_Mux~input_o\ & ((\A|q\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B|q\(29),
	datac => \Reg_Mux~input_o\,
	datad => \A|q\(29),
	combout => \MuxReg|f[29]~29_combout\);

-- Location: FF_X80_Y60_N17
\DataMemory|memory~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \MuxReg|f[28]~28_combout\,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~70_q\);

-- Location: LCCOMB_X79_Y60_N18
\DataMemory|data_out~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~29_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & (\DataMemory|memory_rtl_0|auto_generated|ram_block1a28\)) # (!\DataMemory|memory~41_q\ & ((\DataMemory|memory~70_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|memory~41_q\,
	datab => \DataMemory|memory_rtl_0|auto_generated|ram_block1a28\,
	datac => \DataMemory|data_out[14]~0_combout\,
	datad => \DataMemory|memory~70_q\,
	combout => \DataMemory|data_out~29_combout\);

-- Location: FF_X79_Y60_N19
\DataMemory|data_out[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(28));

-- Location: LCCOMB_X79_Y60_N8
\MuxData|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux3~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & ((\DataMemory|data_out\(28)))) # (!\Data_Mux[0]~input_o\ & (\Data_In[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \Data_In[28]~input_o\,
	datac => \Data_Mux[1]~input_o\,
	datad => \DataMemory|data_out\(28),
	combout => \MuxData|Mux3~2_combout\);

-- Location: LCCOMB_X80_Y59_N16
\MuxA|f[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[28]~28_combout\ = (!\A_Mux~input_o\ & ((\MuxData|Mux3~2_combout\) # ((\ALU0|Mux3~2_combout\ & \MuxData|Mux31~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxData|Mux3~2_combout\,
	datab => \A_Mux~input_o\,
	datac => \ALU0|Mux3~2_combout\,
	datad => \MuxData|Mux31~3_combout\,
	combout => \MuxA|f[28]~28_combout\);

-- Location: FF_X80_Y59_N17
\A|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[28]~28_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(28));

-- Location: LCCOMB_X80_Y60_N16
\MuxReg|f[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[28]~28_combout\ = (\Reg_Mux~input_o\ & ((\B|q\(28)))) # (!\Reg_Mux~input_o\ & (\A|q\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Mux~input_o\,
	datab => \A|q\(28),
	datac => \B|q\(28),
	combout => \MuxReg|f[28]~28_combout\);

-- Location: LCCOMB_X80_Y60_N14
\DataMemory|data_out~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~28_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & ((\DataMemory|memory_rtl_0|auto_generated|ram_block1a27\))) # (!\DataMemory|memory~41_q\ & (\DataMemory|memory~69_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|memory~41_q\,
	datab => \DataMemory|data_out[14]~0_combout\,
	datac => \DataMemory|memory~69_q\,
	datad => \DataMemory|memory_rtl_0|auto_generated|ram_block1a27\,
	combout => \DataMemory|data_out~28_combout\);

-- Location: FF_X80_Y60_N15
\DataMemory|data_out[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(27));

-- Location: IOIBUF_X94_Y0_N8
\Data_In[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(27),
	o => \Data_In[27]~input_o\);

-- Location: LCCOMB_X86_Y58_N30
\MuxData|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux4~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & (\DataMemory|data_out\(27))) # (!\Data_Mux[0]~input_o\ & ((\Data_In[27]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \Data_Mux[1]~input_o\,
	datac => \DataMemory|data_out\(27),
	datad => \Data_In[27]~input_o\,
	combout => \MuxData|Mux4~2_combout\);

-- Location: LCCOMB_X85_Y58_N6
\MuxA|f[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[27]~27_combout\ = (!\A_Mux~input_o\ & ((\MuxData|Mux4~2_combout\) # ((\MuxData|Mux31~3_combout\ & \ALU0|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Mux~input_o\,
	datab => \MuxData|Mux4~2_combout\,
	datac => \MuxData|Mux31~3_combout\,
	datad => \ALU0|Mux4~4_combout\,
	combout => \MuxA|f[27]~27_combout\);

-- Location: FF_X85_Y58_N7
\A|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[27]~27_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(27));

-- Location: LCCOMB_X80_Y60_N26
\MuxReg|f[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[27]~27_combout\ = (\Reg_Mux~input_o\ & ((\B|q\(27)))) # (!\Reg_Mux~input_o\ & (\A|q\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|q\(27),
	datac => \Reg_Mux~input_o\,
	datad => \B|q\(27),
	combout => \MuxReg|f[27]~27_combout\);

-- Location: LCCOMB_X77_Y60_N4
\DataMemory|data_out~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~27_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & ((\DataMemory|memory_rtl_0|auto_generated|ram_block1a26\))) # (!\DataMemory|memory~41_q\ & (\DataMemory|memory~68_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|data_out[14]~0_combout\,
	datab => \DataMemory|memory~68_q\,
	datac => \DataMemory|memory~41_q\,
	datad => \DataMemory|memory_rtl_0|auto_generated|ram_block1a26\,
	combout => \DataMemory|data_out~27_combout\);

-- Location: FF_X77_Y60_N5
\DataMemory|data_out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(26));

-- Location: LCCOMB_X77_Y59_N28
\MuxData|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux5~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & ((\DataMemory|data_out\(26)))) # (!\Data_Mux[0]~input_o\ & (\Data_In[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_In[26]~input_o\,
	datab => \Data_Mux[1]~input_o\,
	datac => \Data_Mux[0]~input_o\,
	datad => \DataMemory|data_out\(26),
	combout => \MuxData|Mux5~2_combout\);

-- Location: LCCOMB_X77_Y58_N0
\MuxA|f[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[26]~26_combout\ = (!\A_Mux~input_o\ & ((\MuxData|Mux5~2_combout\) # ((\MuxData|Mux31~3_combout\ & \ALU0|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxData|Mux31~3_combout\,
	datab => \A_Mux~input_o\,
	datac => \MuxData|Mux5~2_combout\,
	datad => \ALU0|Mux5~4_combout\,
	combout => \MuxA|f[26]~26_combout\);

-- Location: FF_X77_Y58_N1
\A|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[26]~26_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(26));

-- Location: LCCOMB_X77_Y60_N18
\MuxReg|f[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[26]~26_combout\ = (\Reg_Mux~input_o\ & ((\B|q\(26)))) # (!\Reg_Mux~input_o\ & (\A|q\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Mux~input_o\,
	datac => \A|q\(26),
	datad => \B|q\(26),
	combout => \MuxReg|f[26]~26_combout\);

-- Location: LCCOMB_X77_Y60_N26
\DataMemory|data_out~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~26_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & ((\DataMemory|memory_rtl_0|auto_generated|ram_block1a25\))) # (!\DataMemory|memory~41_q\ & (\DataMemory|memory~67_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|data_out[14]~0_combout\,
	datab => \DataMemory|memory~67_q\,
	datac => \DataMemory|memory_rtl_0|auto_generated|ram_block1a25\,
	datad => \DataMemory|memory~41_q\,
	combout => \DataMemory|data_out~26_combout\);

-- Location: FF_X77_Y60_N27
\DataMemory|data_out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(25));

-- Location: LCCOMB_X84_Y61_N14
\MuxData|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux6~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & ((\DataMemory|data_out\(25)))) # (!\Data_Mux[0]~input_o\ & (\Data_In[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_In[25]~input_o\,
	datab => \Data_Mux[1]~input_o\,
	datac => \DataMemory|data_out\(25),
	datad => \Data_Mux[0]~input_o\,
	combout => \MuxData|Mux6~2_combout\);

-- Location: LCCOMB_X76_Y58_N16
\MuxA|f[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[25]~25_combout\ = (!\A_Mux~input_o\ & ((\MuxData|Mux6~2_combout\) # ((\MuxData|Mux31~3_combout\ & \ALU0|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Mux~input_o\,
	datab => \MuxData|Mux31~3_combout\,
	datac => \MuxData|Mux6~2_combout\,
	datad => \ALU0|Mux6~2_combout\,
	combout => \MuxA|f[25]~25_combout\);

-- Location: FF_X76_Y58_N17
\A|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[25]~25_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(25));

-- Location: LCCOMB_X76_Y60_N0
\MuxReg|f[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[25]~25_combout\ = (\Reg_Mux~input_o\ & ((\B|q\(25)))) # (!\Reg_Mux~input_o\ & (\A|q\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(25),
	datab => \B|q\(25),
	datac => \Reg_Mux~input_o\,
	combout => \MuxReg|f[25]~25_combout\);

-- Location: LCCOMB_X76_Y60_N28
\DataMemory|memory~66feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|memory~66feeder_combout\ = \MuxReg|f[24]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxReg|f[24]~24_combout\,
	combout => \DataMemory|memory~66feeder_combout\);

-- Location: FF_X76_Y60_N29
\DataMemory|memory~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|memory~66feeder_combout\,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~66_q\);

-- Location: LCCOMB_X77_Y60_N24
\DataMemory|data_out~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~25_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & (\DataMemory|memory_rtl_0|auto_generated|ram_block1a24\)) # (!\DataMemory|memory~41_q\ & ((\DataMemory|memory~66_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|memory~41_q\,
	datab => \DataMemory|memory_rtl_0|auto_generated|ram_block1a24\,
	datac => \DataMemory|data_out[14]~0_combout\,
	datad => \DataMemory|memory~66_q\,
	combout => \DataMemory|data_out~25_combout\);

-- Location: FF_X77_Y60_N25
\DataMemory|data_out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(24));

-- Location: LCCOMB_X77_Y57_N26
\MuxData|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux7~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & ((\DataMemory|data_out\(24)))) # (!\Data_Mux[0]~input_o\ & (\Data_In[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \Data_In[24]~input_o\,
	datac => \Data_Mux[1]~input_o\,
	datad => \DataMemory|data_out\(24),
	combout => \MuxData|Mux7~2_combout\);

-- Location: LCCOMB_X80_Y57_N22
\MuxA|f[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[24]~24_combout\ = (!\A_Mux~input_o\ & ((\MuxData|Mux7~2_combout\) # ((\ALU0|Mux7~5_combout\ & \MuxData|Mux31~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Mux~input_o\,
	datab => \MuxData|Mux7~2_combout\,
	datac => \ALU0|Mux7~5_combout\,
	datad => \MuxData|Mux31~3_combout\,
	combout => \MuxA|f[24]~24_combout\);

-- Location: FF_X80_Y57_N23
\A|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[24]~24_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(24));

-- Location: LCCOMB_X76_Y60_N14
\MuxReg|f[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[24]~24_combout\ = (\Reg_Mux~input_o\ & ((\B|q\(24)))) # (!\Reg_Mux~input_o\ & (\A|q\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(24),
	datac => \Reg_Mux~input_o\,
	datad => \B|q\(24),
	combout => \MuxReg|f[24]~24_combout\);

-- Location: LCCOMB_X77_Y60_N14
\DataMemory|data_out~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~24_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & ((\DataMemory|memory_rtl_0|auto_generated|ram_block1a23\))) # (!\DataMemory|memory~41_q\ & (\DataMemory|memory~65_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|data_out[14]~0_combout\,
	datab => \DataMemory|memory~65_q\,
	datac => \DataMemory|memory~41_q\,
	datad => \DataMemory|memory_rtl_0|auto_generated|ram_block1a23\,
	combout => \DataMemory|data_out~24_combout\);

-- Location: FF_X77_Y60_N15
\DataMemory|data_out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(23));

-- Location: LCCOMB_X79_Y57_N20
\MuxData|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux8~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & ((\DataMemory|data_out\(23)))) # (!\Data_Mux[0]~input_o\ & (\Data_In[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_In[23]~input_o\,
	datab => \DataMemory|data_out\(23),
	datac => \Data_Mux[1]~input_o\,
	datad => \Data_Mux[0]~input_o\,
	combout => \MuxData|Mux8~2_combout\);

-- Location: LCCOMB_X80_Y57_N20
\MuxB|f[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[23]~23_combout\ = (!\B_Mux~input_o\ & ((\MuxData|Mux8~2_combout\) # ((\MuxData|Mux31~3_combout\ & \ALU0|Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxData|Mux31~3_combout\,
	datab => \MuxData|Mux8~2_combout\,
	datac => \B_Mux~input_o\,
	datad => \ALU0|Mux8~5_combout\,
	combout => \MuxB|f[23]~23_combout\);

-- Location: FF_X80_Y57_N21
\B|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[23]~23_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(23));

-- Location: LCCOMB_X77_Y60_N0
\MuxReg|f[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[23]~23_combout\ = (\Reg_Mux~input_o\ & (\B|q\(23))) # (!\Reg_Mux~input_o\ & ((\A|q\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B|q\(23),
	datac => \Reg_Mux~input_o\,
	datad => \A|q\(23),
	combout => \MuxReg|f[23]~23_combout\);

-- Location: LCCOMB_X77_Y60_N20
\DataMemory|data_out~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~23_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & ((\DataMemory|memory_rtl_0|auto_generated|ram_block1a22\))) # (!\DataMemory|memory~41_q\ & (\DataMemory|memory~64_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|data_out[14]~0_combout\,
	datab => \DataMemory|memory~41_q\,
	datac => \DataMemory|memory~64_q\,
	datad => \DataMemory|memory_rtl_0|auto_generated|ram_block1a22\,
	combout => \DataMemory|data_out~23_combout\);

-- Location: FF_X77_Y60_N21
\DataMemory|data_out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(22));

-- Location: LCCOMB_X77_Y59_N20
\MuxData|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux9~1_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & ((\DataMemory|data_out\(22)))) # (!\Data_Mux[0]~input_o\ & (\Data_In[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_In[22]~input_o\,
	datab => \Data_Mux[1]~input_o\,
	datac => \Data_Mux[0]~input_o\,
	datad => \DataMemory|data_out\(22),
	combout => \MuxData|Mux9~1_combout\);

-- Location: LCCOMB_X81_Y59_N6
\MuxA|f[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[22]~22_combout\ = (!\A_Mux~input_o\ & ((\MuxData|Mux9~1_combout\) # (\MuxData|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Mux~input_o\,
	datac => \MuxData|Mux9~1_combout\,
	datad => \MuxData|Mux9~0_combout\,
	combout => \MuxA|f[22]~22_combout\);

-- Location: FF_X81_Y59_N7
\A|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[22]~22_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(22));

-- Location: LCCOMB_X82_Y60_N6
\MuxReg|f[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[22]~22_combout\ = (\Reg_Mux~input_o\ & ((\B|q\(22)))) # (!\Reg_Mux~input_o\ & (\A|q\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(22),
	datac => \B|q\(22),
	datad => \Reg_Mux~input_o\,
	combout => \MuxReg|f[22]~22_combout\);

-- Location: LCCOMB_X77_Y60_N30
\DataMemory|data_out~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~22_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & ((\DataMemory|memory_rtl_0|auto_generated|ram_block1a21\))) # (!\DataMemory|memory~41_q\ & (\DataMemory|memory~63_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|data_out[14]~0_combout\,
	datab => \DataMemory|memory~63_q\,
	datac => \DataMemory|memory~41_q\,
	datad => \DataMemory|memory_rtl_0|auto_generated|ram_block1a21\,
	combout => \DataMemory|data_out~22_combout\);

-- Location: FF_X77_Y60_N31
\DataMemory|data_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(21));

-- Location: IOIBUF_X18_Y73_N15
\Data_In[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(21),
	o => \Data_In[21]~input_o\);

-- Location: LCCOMB_X77_Y59_N16
\MuxData|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux10~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & (\DataMemory|data_out\(21))) # (!\Data_Mux[0]~input_o\ & ((\Data_In[21]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|data_out\(21),
	datab => \Data_In[21]~input_o\,
	datac => \Data_Mux[0]~input_o\,
	datad => \Data_Mux[1]~input_o\,
	combout => \MuxData|Mux10~2_combout\);

-- Location: LCCOMB_X81_Y59_N4
\MuxA|f[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[21]~21_combout\ = (!\A_Mux~input_o\ & ((\MuxData|Mux10~2_combout\) # ((\MuxData|Mux31~3_combout\ & \ALU0|Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxData|Mux10~2_combout\,
	datab => \MuxData|Mux31~3_combout\,
	datac => \A_Mux~input_o\,
	datad => \ALU0|Mux10~4_combout\,
	combout => \MuxA|f[21]~21_combout\);

-- Location: FF_X81_Y59_N5
\A|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[21]~21_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(21));

-- Location: LCCOMB_X82_Y59_N0
\MuxReg|f[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[21]~21_combout\ = (\Reg_Mux~input_o\ & ((\B|q\(21)))) # (!\Reg_Mux~input_o\ & (\A|q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|q\(21),
	datac => \Reg_Mux~input_o\,
	datad => \B|q\(21),
	combout => \MuxReg|f[21]~21_combout\);

-- Location: LCCOMB_X79_Y60_N24
\DataMemory|data_out~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~21_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & ((\DataMemory|memory_rtl_0|auto_generated|ram_block1a20\))) # (!\DataMemory|memory~41_q\ & (\DataMemory|memory~62_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|memory~62_q\,
	datab => \DataMemory|data_out[14]~0_combout\,
	datac => \DataMemory|memory~41_q\,
	datad => \DataMemory|memory_rtl_0|auto_generated|ram_block1a20\,
	combout => \DataMemory|data_out~21_combout\);

-- Location: FF_X79_Y60_N25
\DataMemory|data_out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(20));

-- Location: IOIBUF_X13_Y73_N15
\Data_In[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(20),
	o => \Data_In[20]~input_o\);

-- Location: LCCOMB_X79_Y56_N2
\MuxData|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux11~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & (\DataMemory|data_out\(20))) # (!\Data_Mux[0]~input_o\ & ((\Data_In[20]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|data_out\(20),
	datab => \Data_Mux[1]~input_o\,
	datac => \Data_Mux[0]~input_o\,
	datad => \Data_In[20]~input_o\,
	combout => \MuxData|Mux11~2_combout\);

-- Location: LCCOMB_X80_Y56_N8
\MuxB|f[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[20]~20_combout\ = (!\B_Mux~input_o\ & ((\MuxData|Mux11~2_combout\) # ((\MuxData|Mux31~3_combout\ & \ALU0|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxData|Mux11~2_combout\,
	datab => \MuxData|Mux31~3_combout\,
	datac => \B_Mux~input_o\,
	datad => \ALU0|Mux11~2_combout\,
	combout => \MuxB|f[20]~20_combout\);

-- Location: FF_X80_Y56_N9
\B|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[20]~20_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(20));

-- Location: LCCOMB_X80_Y60_N0
\MuxReg|f[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[20]~20_combout\ = (\Reg_Mux~input_o\ & (\B|q\(20))) # (!\Reg_Mux~input_o\ & ((\A|q\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Mux~input_o\,
	datab => \B|q\(20),
	datad => \A|q\(20),
	combout => \MuxReg|f[20]~20_combout\);

-- Location: LCCOMB_X77_Y60_N2
\DataMemory|data_out~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~19_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & ((\DataMemory|memory_rtl_0|auto_generated|ram_block1a18\))) # (!\DataMemory|memory~41_q\ & (\DataMemory|memory~60_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|data_out[14]~0_combout\,
	datab => \DataMemory|memory~60_q\,
	datac => \DataMemory|memory~41_q\,
	datad => \DataMemory|memory_rtl_0|auto_generated|ram_block1a18\,
	combout => \DataMemory|data_out~19_combout\);

-- Location: FF_X77_Y60_N3
\DataMemory|data_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(18));

-- Location: IOIBUF_X0_Y55_N8
\Data_In[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(18),
	o => \Data_In[18]~input_o\);

-- Location: LCCOMB_X81_Y56_N28
\MuxData|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux13~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & (\DataMemory|data_out\(18))) # (!\Data_Mux[0]~input_o\ & ((\Data_In[18]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[1]~input_o\,
	datab => \DataMemory|data_out\(18),
	datac => \Data_In[18]~input_o\,
	datad => \Data_Mux[0]~input_o\,
	combout => \MuxData|Mux13~2_combout\);

-- Location: LCCOMB_X81_Y57_N6
\MuxB|f[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[18]~18_combout\ = (!\B_Mux~input_o\ & ((\MuxData|Mux13~2_combout\) # ((\MuxData|Mux31~3_combout\ & \ALU0|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Mux~input_o\,
	datab => \MuxData|Mux13~2_combout\,
	datac => \MuxData|Mux31~3_combout\,
	datad => \ALU0|Mux13~2_combout\,
	combout => \MuxB|f[18]~18_combout\);

-- Location: FF_X81_Y57_N7
\B|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[18]~18_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(18));

-- Location: LCCOMB_X81_Y57_N14
\MuxIm2|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm2|Mux13~0_combout\ = (!\Im_Mux2[0]~input_o\ & (!\Im_Mux2[1]~input_o\ & \B|q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Im_Mux2[0]~input_o\,
	datac => \Im_Mux2[1]~input_o\,
	datad => \B|q\(18),
	combout => \MuxIm2|Mux13~0_combout\);

-- Location: LCCOMB_X81_Y58_N10
\ALU0|add|cycle1|cycle0|cycle1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle1|cycle0|cycle1|Cout~0_combout\ = (\MuxIm2|Mux14~0_combout\ & ((\MuxIm1|f[17]~17_combout\) # (\ALU0|add|cycle1|cycle0|cycle0|Cout~0_combout\))) # (!\MuxIm2|Mux14~0_combout\ & (\MuxIm1|f[17]~17_combout\ & 
-- \ALU0|add|cycle1|cycle0|cycle0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux14~0_combout\,
	datac => \MuxIm1|f[17]~17_combout\,
	datad => \ALU0|add|cycle1|cycle0|cycle0|Cout~0_combout\,
	combout => \ALU0|add|cycle1|cycle0|cycle1|Cout~0_combout\);

-- Location: LCCOMB_X81_Y58_N24
\ALU0|add|cycle1|cycle0|cycle2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle1|cycle0|cycle2|Cout~0_combout\ = (\MuxIm1|f[18]~18_combout\ & ((\MuxIm2|Mux13~0_combout\) # (\ALU0|add|cycle1|cycle0|cycle1|Cout~0_combout\))) # (!\MuxIm1|f[18]~18_combout\ & (\MuxIm2|Mux13~0_combout\ & 
-- \ALU0|add|cycle1|cycle0|cycle1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxIm1|f[18]~18_combout\,
	datac => \MuxIm2|Mux13~0_combout\,
	datad => \ALU0|add|cycle1|cycle0|cycle1|Cout~0_combout\,
	combout => \ALU0|add|cycle1|cycle0|cycle2|Cout~0_combout\);

-- Location: LCCOMB_X81_Y57_N30
\ALU0|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux12~4_combout\ = \ALU0|Mux12~3_combout\ $ (((\Alu_Opcode[1]~input_o\ & (!\Alu_Opcode[0]~input_o\ & \ALU0|add|cycle1|cycle0|cycle2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[1]~input_o\,
	datab => \Alu_Opcode[0]~input_o\,
	datac => \ALU0|Mux12~3_combout\,
	datad => \ALU0|add|cycle1|cycle0|cycle2|Cout~0_combout\,
	combout => \ALU0|Mux12~4_combout\);

-- Location: LCCOMB_X81_Y57_N18
\ALU0|sub|cycle1|cycle0|cycle3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle0|cycle3|s~combout\ = \MuxIm2|Mux12~0_combout\ $ (\ALU0|sub|cycle1|cycle0|cycle2|Cout~0_combout\ $ (\MuxIm1|f[19]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxIm2|Mux12~0_combout\,
	datac => \ALU0|sub|cycle1|cycle0|cycle2|Cout~0_combout\,
	datad => \MuxIm1|f[19]~19_combout\,
	combout => \ALU0|sub|cycle1|cycle0|cycle3|s~combout\);

-- Location: LCCOMB_X81_Y57_N20
\ALU0|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux12~0_combout\ = (\Alu_Opcode[1]~input_o\ & ((\Alu_Opcode[0]~input_o\) # ((!\ALU0|sub|cycle1|cycle0|cycle3|s~combout\)))) # (!\Alu_Opcode[1]~input_o\ & (!\Alu_Opcode[0]~input_o\ & (\MuxIm1|f[18]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[1]~input_o\,
	datab => \Alu_Opcode[0]~input_o\,
	datac => \MuxIm1|f[18]~18_combout\,
	datad => \ALU0|sub|cycle1|cycle0|cycle3|s~combout\,
	combout => \ALU0|Mux12~0_combout\);

-- Location: LCCOMB_X81_Y57_N2
\ALU0|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux12~1_combout\ = (\Alu_Opcode[0]~input_o\ & ((\ALU0|Mux12~0_combout\ & (\MuxIm1|f[19]~19_combout\)) # (!\ALU0|Mux12~0_combout\ & ((\MuxIm1|f[20]~20_combout\))))) # (!\Alu_Opcode[0]~input_o\ & (((\ALU0|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[19]~19_combout\,
	datab => \Alu_Opcode[0]~input_o\,
	datac => \MuxIm1|f[20]~20_combout\,
	datad => \ALU0|Mux12~0_combout\,
	combout => \ALU0|Mux12~1_combout\);

-- Location: LCCOMB_X81_Y57_N28
\ALU0|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux12~2_combout\ = (\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux12~1_combout\))) # (!\Alu_Opcode[2]~input_o\ & (\ALU0|Mux12~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alu_Opcode[2]~input_o\,
	datac => \ALU0|Mux12~4_combout\,
	datad => \ALU0|Mux12~1_combout\,
	combout => \ALU0|Mux12~2_combout\);

-- Location: LCCOMB_X81_Y57_N12
\MuxB|f[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[19]~19_combout\ = (!\B_Mux~input_o\ & ((\MuxData|Mux12~2_combout\) # ((\MuxData|Mux31~3_combout\ & \ALU0|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxData|Mux12~2_combout\,
	datab => \MuxData|Mux31~3_combout\,
	datac => \B_Mux~input_o\,
	datad => \ALU0|Mux12~2_combout\,
	combout => \MuxB|f[19]~19_combout\);

-- Location: FF_X81_Y57_N13
\B|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[19]~19_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(19));

-- Location: LCCOMB_X77_Y60_N6
\MuxReg|f[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[19]~19_combout\ = (\Reg_Mux~input_o\ & (\B|q\(19))) # (!\Reg_Mux~input_o\ & ((\A|q\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Mux~input_o\,
	datab => \B|q\(19),
	datac => \A|q\(19),
	combout => \MuxReg|f[19]~19_combout\);

-- Location: FF_X77_Y60_N7
\DataMemory|memory~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \MuxReg|f[19]~19_combout\,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~61_q\);

-- Location: LCCOMB_X77_Y60_N8
\DataMemory|data_out~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~20_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & (\DataMemory|memory_rtl_0|auto_generated|ram_block1a19\)) # (!\DataMemory|memory~41_q\ & ((\DataMemory|memory~61_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|data_out[14]~0_combout\,
	datab => \DataMemory|memory_rtl_0|auto_generated|ram_block1a19\,
	datac => \DataMemory|memory~41_q\,
	datad => \DataMemory|memory~61_q\,
	combout => \DataMemory|data_out~20_combout\);

-- Location: FF_X77_Y60_N9
\DataMemory|data_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(19));

-- Location: LCCOMB_X77_Y57_N20
\MuxData|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux12~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & ((\DataMemory|data_out\(19)))) # (!\Data_Mux[0]~input_o\ & (\Data_In[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \Data_Mux[1]~input_o\,
	datac => \Data_In[19]~input_o\,
	datad => \DataMemory|data_out\(19),
	combout => \MuxData|Mux12~2_combout\);

-- Location: LCCOMB_X81_Y57_N4
\MuxA|f[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[19]~19_combout\ = (!\A_Mux~input_o\ & ((\MuxData|Mux12~2_combout\) # ((\MuxData|Mux31~3_combout\ & \ALU0|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Mux~input_o\,
	datab => \MuxData|Mux12~2_combout\,
	datac => \MuxData|Mux31~3_combout\,
	datad => \ALU0|Mux12~2_combout\,
	combout => \MuxA|f[19]~19_combout\);

-- Location: FF_X81_Y57_N5
\A|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[19]~19_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(19));

-- Location: LCCOMB_X81_Y57_N0
\MuxIm1|f[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[19]~19_combout\ = (\Im_Mux1~input_o\ & ((\IR|q\(3)))) # (!\Im_Mux1~input_o\ & (\A|q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datac => \A|q\(19),
	datad => \IR|q\(3),
	combout => \MuxIm1|f[19]~19_combout\);

-- Location: LCCOMB_X81_Y56_N6
\ALU0|sub|cycle1|cycle0|cycle2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle1|cycle0|cycle2|s~combout\ = \MuxIm2|Mux13~0_combout\ $ (\ALU0|sub|cycle1|cycle0|cycle1|Cout~0_combout\ $ (\MuxIm1|f[18]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxIm2|Mux13~0_combout\,
	datac => \ALU0|sub|cycle1|cycle0|cycle1|Cout~0_combout\,
	datad => \MuxIm1|f[18]~18_combout\,
	combout => \ALU0|sub|cycle1|cycle0|cycle2|s~combout\);

-- Location: LCCOMB_X81_Y56_N24
\ALU0|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux13~0_combout\ = (\Alu_Opcode[1]~input_o\ & (((\Alu_Opcode[0]~input_o\)) # (!\ALU0|sub|cycle1|cycle0|cycle2|s~combout\))) # (!\Alu_Opcode[1]~input_o\ & (((!\Alu_Opcode[0]~input_o\ & \MuxIm1|f[17]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub|cycle1|cycle0|cycle2|s~combout\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \Alu_Opcode[0]~input_o\,
	datad => \MuxIm1|f[17]~17_combout\,
	combout => \ALU0|Mux13~0_combout\);

-- Location: LCCOMB_X81_Y56_N26
\ALU0|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux13~1_combout\ = (\Alu_Opcode[0]~input_o\ & ((\ALU0|Mux13~0_combout\ & (\MuxIm1|f[18]~18_combout\)) # (!\ALU0|Mux13~0_combout\ & ((\MuxIm1|f[19]~19_combout\))))) # (!\Alu_Opcode[0]~input_o\ & (((\ALU0|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[18]~18_combout\,
	datab => \Alu_Opcode[0]~input_o\,
	datac => \MuxIm1|f[19]~19_combout\,
	datad => \ALU0|Mux13~0_combout\,
	combout => \ALU0|Mux13~1_combout\);

-- Location: LCCOMB_X81_Y56_N12
\ALU0|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux13~3_combout\ = (\MuxIm2|Mux13~0_combout\ & ((\Alu_Opcode[0]~input_o\) # (\MuxIm1|f[18]~18_combout\ $ (\Alu_Opcode[1]~input_o\)))) # (!\MuxIm2|Mux13~0_combout\ & (\MuxIm1|f[18]~18_combout\ & (\Alu_Opcode[1]~input_o\ $ (\Alu_Opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[18]~18_combout\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \Alu_Opcode[0]~input_o\,
	datad => \MuxIm2|Mux13~0_combout\,
	combout => \ALU0|Mux13~3_combout\);

-- Location: LCCOMB_X81_Y56_N2
\ALU0|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux13~4_combout\ = \ALU0|Mux13~3_combout\ $ (((\Alu_Opcode[1]~input_o\ & (!\Alu_Opcode[0]~input_o\ & \ALU0|add|cycle1|cycle0|cycle1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux13~3_combout\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \Alu_Opcode[0]~input_o\,
	datad => \ALU0|add|cycle1|cycle0|cycle1|Cout~0_combout\,
	combout => \ALU0|Mux13~4_combout\);

-- Location: LCCOMB_X81_Y56_N0
\ALU0|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux13~2_combout\ = (\Alu_Opcode[2]~input_o\ & (\ALU0|Mux13~1_combout\)) # (!\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux13~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[2]~input_o\,
	datac => \ALU0|Mux13~1_combout\,
	datad => \ALU0|Mux13~4_combout\,
	combout => \ALU0|Mux13~2_combout\);

-- Location: LCCOMB_X80_Y56_N30
\MuxA|f[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[18]~18_combout\ = (!\A_Mux~input_o\ & ((\MuxData|Mux13~2_combout\) # ((\MuxData|Mux31~3_combout\ & \ALU0|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Mux~input_o\,
	datab => \MuxData|Mux31~3_combout\,
	datac => \ALU0|Mux13~2_combout\,
	datad => \MuxData|Mux13~2_combout\,
	combout => \MuxA|f[18]~18_combout\);

-- Location: FF_X80_Y56_N31
\A|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[18]~18_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(18));

-- Location: LCCOMB_X77_Y60_N16
\MuxReg|f[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[18]~18_combout\ = (\Reg_Mux~input_o\ & ((\B|q\(18)))) # (!\Reg_Mux~input_o\ & (\A|q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Mux~input_o\,
	datac => \A|q\(18),
	datad => \B|q\(18),
	combout => \MuxReg|f[18]~18_combout\);

-- Location: LCCOMB_X84_Y59_N0
\DataMemory|memory~59feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|memory~59feeder_combout\ = \MuxReg|f[17]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxReg|f[17]~17_combout\,
	combout => \DataMemory|memory~59feeder_combout\);

-- Location: FF_X84_Y59_N1
\DataMemory|memory~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|memory~59feeder_combout\,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~59_q\);

-- Location: LCCOMB_X77_Y60_N28
\DataMemory|data_out~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~18_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & (\DataMemory|memory_rtl_0|auto_generated|ram_block1a17\)) # (!\DataMemory|memory~41_q\ & ((\DataMemory|memory~59_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|data_out[14]~0_combout\,
	datab => \DataMemory|memory_rtl_0|auto_generated|ram_block1a17\,
	datac => \DataMemory|memory~41_q\,
	datad => \DataMemory|memory~59_q\,
	combout => \DataMemory|data_out~18_combout\);

-- Location: FF_X77_Y60_N29
\DataMemory|data_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(17));

-- Location: LCCOMB_X77_Y59_N18
\MuxData|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux14~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & ((\DataMemory|data_out\(17)))) # (!\Data_Mux[0]~input_o\ & (\Data_In[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_In[17]~input_o\,
	datab => \Data_Mux[1]~input_o\,
	datac => \Data_Mux[0]~input_o\,
	datad => \DataMemory|data_out\(17),
	combout => \MuxData|Mux14~2_combout\);

-- Location: LCCOMB_X80_Y56_N20
\MuxA|f[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[17]~17_combout\ = (!\A_Mux~input_o\ & ((\MuxData|Mux14~2_combout\) # ((\MuxData|Mux31~3_combout\ & \ALU0|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Mux~input_o\,
	datab => \MuxData|Mux14~2_combout\,
	datac => \MuxData|Mux31~3_combout\,
	datad => \ALU0|Mux14~2_combout\,
	combout => \MuxA|f[17]~17_combout\);

-- Location: FF_X80_Y56_N21
\A|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[17]~17_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(17));

-- Location: LCCOMB_X84_Y59_N20
\MuxReg|f[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[17]~17_combout\ = (\Reg_Mux~input_o\ & ((\B|q\(17)))) # (!\Reg_Mux~input_o\ & (\A|q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reg_Mux~input_o\,
	datac => \A|q\(17),
	datad => \B|q\(17),
	combout => \MuxReg|f[17]~17_combout\);

-- Location: LCCOMB_X77_Y60_N10
\DataMemory|data_out~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~17_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & ((\DataMemory|memory_rtl_0|auto_generated|ram_block1a16\))) # (!\DataMemory|memory~41_q\ & (\DataMemory|memory~58_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|data_out[14]~0_combout\,
	datab => \DataMemory|memory~41_q\,
	datac => \DataMemory|memory~58_q\,
	datad => \DataMemory|memory_rtl_0|auto_generated|ram_block1a16\,
	combout => \DataMemory|data_out~17_combout\);

-- Location: FF_X77_Y60_N11
\DataMemory|data_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(16));

-- Location: LCCOMB_X84_Y61_N12
\MuxData|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux15~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & ((\DataMemory|data_out\(16)))) # (!\Data_Mux[0]~input_o\ & (\Data_In[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_In[16]~input_o\,
	datab => \Data_Mux[0]~input_o\,
	datac => \Data_Mux[1]~input_o\,
	datad => \DataMemory|data_out\(16),
	combout => \MuxData|Mux15~2_combout\);

-- Location: LCCOMB_X80_Y61_N24
\MuxB|f[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[16]~16_combout\ = (!\B_Mux~input_o\ & ((\MuxData|Mux15~2_combout\) # ((\MuxData|Mux31~3_combout\ & \ALU0|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Mux~input_o\,
	datab => \MuxData|Mux31~3_combout\,
	datac => \MuxData|Mux15~2_combout\,
	datad => \ALU0|Mux15~4_combout\,
	combout => \MuxB|f[16]~16_combout\);

-- Location: FF_X80_Y61_N25
\B|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[16]~16_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(16));

-- Location: LCCOMB_X77_Y60_N22
\MuxReg|f[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[16]~16_combout\ = (\Reg_Mux~input_o\ & (\B|q\(16))) # (!\Reg_Mux~input_o\ & ((\A|q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Mux~input_o\,
	datac => \B|q\(16),
	datad => \A|q\(16),
	combout => \MuxReg|f[16]~16_combout\);

-- Location: LCCOMB_X77_Y60_N12
\DataMemory|data_out~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~16_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & ((\DataMemory|memory_rtl_0|auto_generated|ram_block1a15\))) # (!\DataMemory|memory~41_q\ & (\DataMemory|memory~57_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|data_out[14]~0_combout\,
	datab => \DataMemory|memory~57_q\,
	datac => \DataMemory|memory_rtl_0|auto_generated|ram_block1a15\,
	datad => \DataMemory|memory~41_q\,
	combout => \DataMemory|data_out~16_combout\);

-- Location: FF_X77_Y60_N13
\DataMemory|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(15));

-- Location: LCCOMB_X77_Y59_N6
\MuxData|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux16~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & ((\DataMemory|data_out\(15)))) # (!\Data_Mux[0]~input_o\ & (\Data_In[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_In[15]~input_o\,
	datab => \Data_Mux[1]~input_o\,
	datac => \Data_Mux[0]~input_o\,
	datad => \DataMemory|data_out\(15),
	combout => \MuxData|Mux16~2_combout\);

-- Location: LCCOMB_X79_Y61_N16
\ALU0|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux16~2_combout\ = (\Alu_Opcode[0]~input_o\ & ((\Alu_Opcode[1]~input_o\) # ((\MuxIm1|f[15]~15_combout\) # (\MuxIm2|Mux16~0_combout\)))) # (!\Alu_Opcode[0]~input_o\ & (!\Alu_Opcode[1]~input_o\ & (\MuxIm1|f[15]~15_combout\ & 
-- \MuxIm2|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \MuxIm1|f[15]~15_combout\,
	datad => \MuxIm2|Mux16~0_combout\,
	combout => \ALU0|Mux16~2_combout\);

-- Location: LCCOMB_X79_Y61_N6
\ALU0|add|cycle0|cycle3|cycle3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle0|cycle3|cycle3|s~combout\ = \MuxIm2|Mux16~0_combout\ $ (\ALU0|add|cycle0|cycle3|cycle2|Cout~0_combout\ $ (((!\Im_Mux1~input_o\ & \A|q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux16~0_combout\,
	datab => \ALU0|add|cycle0|cycle3|cycle2|Cout~0_combout\,
	datac => \Im_Mux1~input_o\,
	datad => \A|q\(15),
	combout => \ALU0|add|cycle0|cycle3|cycle3|s~combout\);

-- Location: LCCOMB_X79_Y61_N30
\ALU0|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux16~3_combout\ = (\ALU0|Mux16~2_combout\ & ((\MuxIm2|Mux16~0_combout\) # ((!\Alu_Opcode[1]~input_o\)))) # (!\ALU0|Mux16~2_combout\ & (((\Alu_Opcode[1]~input_o\ & \ALU0|add|cycle0|cycle3|cycle3|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux16~0_combout\,
	datab => \ALU0|Mux16~2_combout\,
	datac => \Alu_Opcode[1]~input_o\,
	datad => \ALU0|add|cycle0|cycle3|cycle3|s~combout\,
	combout => \ALU0|Mux16~3_combout\);

-- Location: LCCOMB_X84_Y58_N22
\ALU0|sub|cycle0|cycle3|cycle3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle3|cycle3|s~combout\ = \MuxIm2|Mux16~0_combout\ $ (\ALU0|sub|cycle0|cycle3|cycle2|Cout~0_combout\ $ (((!\Im_Mux1~input_o\ & \A|q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux16~0_combout\,
	datab => \Im_Mux1~input_o\,
	datac => \A|q\(15),
	datad => \ALU0|sub|cycle0|cycle3|cycle2|Cout~0_combout\,
	combout => \ALU0|sub|cycle0|cycle3|cycle3|s~combout\);

-- Location: LCCOMB_X79_Y57_N16
\MuxIm1|f[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[14]~14_combout\ = (\A|q\(14) & !\Im_Mux1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(14),
	datad => \Im_Mux1~input_o\,
	combout => \MuxIm1|f[14]~14_combout\);

-- Location: LCCOMB_X80_Y61_N6
\ALU0|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux16~0_combout\ = (\Alu_Opcode[0]~input_o\ & (((\Alu_Opcode[1]~input_o\)))) # (!\Alu_Opcode[0]~input_o\ & ((\Alu_Opcode[1]~input_o\ & (!\ALU0|sub|cycle0|cycle3|cycle3|s~combout\)) # (!\Alu_Opcode[1]~input_o\ & ((\MuxIm1|f[14]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub|cycle0|cycle3|cycle3|s~combout\,
	datab => \MuxIm1|f[14]~14_combout\,
	datac => \Alu_Opcode[0]~input_o\,
	datad => \Alu_Opcode[1]~input_o\,
	combout => \ALU0|Mux16~0_combout\);

-- Location: LCCOMB_X79_Y61_N2
\ALU0|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux16~1_combout\ = (\Alu_Opcode[0]~input_o\ & ((\ALU0|Mux16~0_combout\ & ((\MuxIm1|f[15]~15_combout\))) # (!\ALU0|Mux16~0_combout\ & (\MuxIm1|f[16]~16_combout\)))) # (!\Alu_Opcode[0]~input_o\ & (((\ALU0|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \MuxIm1|f[16]~16_combout\,
	datac => \MuxIm1|f[15]~15_combout\,
	datad => \ALU0|Mux16~0_combout\,
	combout => \ALU0|Mux16~1_combout\);

-- Location: LCCOMB_X79_Y61_N20
\ALU0|Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux16~4_combout\ = (\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux16~1_combout\))) # (!\Alu_Opcode[2]~input_o\ & (\ALU0|Mux16~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[2]~input_o\,
	datac => \ALU0|Mux16~3_combout\,
	datad => \ALU0|Mux16~1_combout\,
	combout => \ALU0|Mux16~4_combout\);

-- Location: LCCOMB_X77_Y59_N24
\MuxData|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux16~3_combout\ = (\MuxData|Mux16~2_combout\) # ((\Data_Mux[1]~input_o\ & (!\Data_Mux[0]~input_o\ & \ALU0|Mux16~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxData|Mux16~2_combout\,
	datab => \Data_Mux[1]~input_o\,
	datac => \Data_Mux[0]~input_o\,
	datad => \ALU0|Mux16~4_combout\,
	combout => \MuxData|Mux16~3_combout\);

-- Location: LCCOMB_X77_Y59_N8
\IR|q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR|q[15]~feeder_combout\ = \MuxData|Mux16~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxData|Mux16~3_combout\,
	combout => \IR|q[15]~feeder_combout\);

-- Location: FF_X77_Y59_N9
\IR|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \IR|q[15]~feeder_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(15));

-- Location: LCCOMB_X77_Y59_N26
\MuxA|f[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[15]~15_combout\ = (\A_Mux~input_o\ & (\IR|q\(15))) # (!\A_Mux~input_o\ & ((\MuxData|Mux16~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|q\(15),
	datac => \A_Mux~input_o\,
	datad => \MuxData|Mux16~3_combout\,
	combout => \MuxA|f[15]~15_combout\);

-- Location: LCCOMB_X76_Y59_N20
\A|q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A|q[15]~feeder_combout\ = \MuxA|f[15]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxA|f[15]~15_combout\,
	combout => \A|q[15]~feeder_combout\);

-- Location: FF_X76_Y59_N21
\A|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \A|q[15]~feeder_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(15));

-- Location: LCCOMB_X80_Y60_N4
\MuxIm1|f[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[15]~15_combout\ = (!\Im_Mux1~input_o\ & \A|q\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Im_Mux1~input_o\,
	datad => \A|q\(15),
	combout => \MuxIm1|f[15]~15_combout\);

-- Location: LCCOMB_X84_Y58_N26
\ALU0|sub|cycle0|cycle3|cycle2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle3|cycle2|s~combout\ = \MuxIm2|Mux17~0_combout\ $ (\ALU0|sub|cycle0|cycle3|cycle1|Cout~0_combout\ $ (((\A|q\(14) & !\Im_Mux1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux17~0_combout\,
	datab => \A|q\(14),
	datac => \Im_Mux1~input_o\,
	datad => \ALU0|sub|cycle0|cycle3|cycle1|Cout~0_combout\,
	combout => \ALU0|sub|cycle0|cycle3|cycle2|s~combout\);

-- Location: LCCOMB_X79_Y57_N26
\MuxIm1|f[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[13]~13_combout\ = (\A|q\(13) & !\Im_Mux1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|q\(13),
	datad => \Im_Mux1~input_o\,
	combout => \MuxIm1|f[13]~13_combout\);

-- Location: LCCOMB_X79_Y59_N24
\ALU0|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux17~2_combout\ = (\Alu_Opcode[0]~input_o\ & (\Alu_Opcode[1]~input_o\)) # (!\Alu_Opcode[0]~input_o\ & ((\Alu_Opcode[1]~input_o\ & (!\ALU0|sub|cycle0|cycle3|cycle2|s~combout\)) # (!\Alu_Opcode[1]~input_o\ & ((\MuxIm1|f[13]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \ALU0|sub|cycle0|cycle3|cycle2|s~combout\,
	datad => \MuxIm1|f[13]~13_combout\,
	combout => \ALU0|Mux17~2_combout\);

-- Location: LCCOMB_X79_Y59_N26
\ALU0|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux17~3_combout\ = (\Alu_Opcode[0]~input_o\ & ((\ALU0|Mux17~2_combout\ & ((\MuxIm1|f[14]~14_combout\))) # (!\ALU0|Mux17~2_combout\ & (\MuxIm1|f[15]~15_combout\)))) # (!\Alu_Opcode[0]~input_o\ & (((\ALU0|Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[15]~15_combout\,
	datab => \MuxIm1|f[14]~14_combout\,
	datac => \Alu_Opcode[0]~input_o\,
	datad => \ALU0|Mux17~2_combout\,
	combout => \ALU0|Mux17~3_combout\);

-- Location: LCCOMB_X79_Y59_N2
\ALU0|Mux17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux17~6_combout\ = (\ALU0|add|cycle0|cycle3|cycle1|Cout~0_combout\ & (\Alu_Opcode[1]~input_o\ $ (((!\Im_Mux1~input_o\ & \A|q\(14)))))) # (!\ALU0|add|cycle0|cycle3|cycle1|Cout~0_combout\ & (((!\Im_Mux1~input_o\ & \A|q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|add|cycle0|cycle3|cycle1|Cout~0_combout\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \Im_Mux1~input_o\,
	datad => \A|q\(14),
	combout => \ALU0|Mux17~6_combout\);

-- Location: LCCOMB_X79_Y59_N28
\ALU0|Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux17~4_combout\ = (\MuxIm2|Mux17~0_combout\ & ((\Alu_Opcode[0]~input_o\) # (\Alu_Opcode[1]~input_o\ $ (\ALU0|Mux17~6_combout\)))) # (!\MuxIm2|Mux17~0_combout\ & (\ALU0|Mux17~6_combout\ & (\Alu_Opcode[0]~input_o\ $ (\Alu_Opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \MuxIm2|Mux17~0_combout\,
	datad => \ALU0|Mux17~6_combout\,
	combout => \ALU0|Mux17~4_combout\);

-- Location: LCCOMB_X79_Y59_N10
\ALU0|Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux17~5_combout\ = (\Alu_Opcode[2]~input_o\ & (\ALU0|Mux17~3_combout\)) # (!\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux17~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alu_Opcode[2]~input_o\,
	datac => \ALU0|Mux17~3_combout\,
	datad => \ALU0|Mux17~4_combout\,
	combout => \ALU0|Mux17~5_combout\);

-- Location: FF_X79_Y59_N1
\DataMemory|memory~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \MuxReg|f[14]~14_combout\,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~56_q\);

-- Location: LCCOMB_X79_Y60_N22
\DataMemory|data_out~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~15_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & ((\DataMemory|memory_rtl_0|auto_generated|ram_block1a14\))) # (!\DataMemory|memory~41_q\ & (\DataMemory|memory~56_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|memory~56_q\,
	datab => \DataMemory|memory~41_q\,
	datac => \DataMemory|data_out[14]~0_combout\,
	datad => \DataMemory|memory_rtl_0|auto_generated|ram_block1a14\,
	combout => \DataMemory|data_out~15_combout\);

-- Location: FF_X79_Y60_N23
\DataMemory|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(14));

-- Location: IOIBUF_X74_Y0_N22
\Data_In[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(14),
	o => \Data_In[14]~input_o\);

-- Location: LCCOMB_X77_Y57_N14
\MuxData|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux17~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & (\DataMemory|data_out\(14))) # (!\Data_Mux[0]~input_o\ & ((\Data_In[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \Data_Mux[1]~input_o\,
	datac => \DataMemory|data_out\(14),
	datad => \Data_In[14]~input_o\,
	combout => \MuxData|Mux17~2_combout\);

-- Location: LCCOMB_X79_Y57_N10
\MuxData|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux17~3_combout\ = (\MuxData|Mux17~2_combout\) # ((!\Data_Mux[0]~input_o\ & (\ALU0|Mux17~5_combout\ & \Data_Mux[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \ALU0|Mux17~5_combout\,
	datac => \Data_Mux[1]~input_o\,
	datad => \MuxData|Mux17~2_combout\,
	combout => \MuxData|Mux17~3_combout\);

-- Location: LCCOMB_X79_Y57_N6
\MuxA|f[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[14]~14_combout\ = (\A_Mux~input_o\ & ((\IR|q\(14)))) # (!\A_Mux~input_o\ & (\MuxData|Mux17~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Mux~input_o\,
	datac => \MuxData|Mux17~3_combout\,
	datad => \IR|q\(14),
	combout => \MuxA|f[14]~14_combout\);

-- Location: FF_X79_Y57_N7
\A|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[14]~14_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(14));

-- Location: LCCOMB_X79_Y59_N0
\MuxReg|f[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[14]~14_combout\ = (\Reg_Mux~input_o\ & ((\B|q\(14)))) # (!\Reg_Mux~input_o\ & (\A|q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|q\(14),
	datac => \Reg_Mux~input_o\,
	datad => \B|q\(14),
	combout => \MuxReg|f[14]~14_combout\);

-- Location: LCCOMB_X79_Y60_N0
\DataMemory|data_out~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~14_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & ((\DataMemory|memory_rtl_0|auto_generated|ram_block1a13\))) # (!\DataMemory|memory~41_q\ & (\DataMemory|memory~55_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|data_out[14]~0_combout\,
	datab => \DataMemory|memory~55_q\,
	datac => \DataMemory|memory_rtl_0|auto_generated|ram_block1a13\,
	datad => \DataMemory|memory~41_q\,
	combout => \DataMemory|data_out~14_combout\);

-- Location: FF_X79_Y60_N1
\DataMemory|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(13));

-- Location: LCCOMB_X79_Y57_N0
\MuxData|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux18~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & ((\DataMemory|data_out\(13)))) # (!\Data_Mux[0]~input_o\ & (\Data_In[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \Data_In[13]~input_o\,
	datac => \Data_Mux[1]~input_o\,
	datad => \DataMemory|data_out\(13),
	combout => \MuxData|Mux18~2_combout\);

-- Location: LCCOMB_X84_Y59_N28
\MuxIm1|f[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[12]~12_combout\ = (\A|q\(12) & !\Im_Mux1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|q\(12),
	datad => \Im_Mux1~input_o\,
	combout => \MuxIm1|f[12]~12_combout\);

-- Location: LCCOMB_X84_Y58_N12
\ALU0|sub|cycle0|cycle3|cycle1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle3|cycle1|s~combout\ = \MuxIm2|Mux18~0_combout\ $ (\ALU0|sub|cycle0|cycle3|cycle0|Cout~0_combout\ $ (((\A|q\(13) & !\Im_Mux1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(13),
	datab => \Im_Mux1~input_o\,
	datac => \MuxIm2|Mux18~0_combout\,
	datad => \ALU0|sub|cycle0|cycle3|cycle0|Cout~0_combout\,
	combout => \ALU0|sub|cycle0|cycle3|cycle1|s~combout\);

-- Location: LCCOMB_X84_Y58_N30
\ALU0|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux18~2_combout\ = (\Alu_Opcode[0]~input_o\ & (((\Alu_Opcode[1]~input_o\)))) # (!\Alu_Opcode[0]~input_o\ & ((\Alu_Opcode[1]~input_o\ & ((!\ALU0|sub|cycle0|cycle3|cycle1|s~combout\))) # (!\Alu_Opcode[1]~input_o\ & (\MuxIm1|f[12]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[12]~12_combout\,
	datab => \Alu_Opcode[0]~input_o\,
	datac => \Alu_Opcode[1]~input_o\,
	datad => \ALU0|sub|cycle0|cycle3|cycle1|s~combout\,
	combout => \ALU0|Mux18~2_combout\);

-- Location: LCCOMB_X79_Y57_N22
\ALU0|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux18~3_combout\ = (\Alu_Opcode[0]~input_o\ & ((\ALU0|Mux18~2_combout\ & (\MuxIm1|f[13]~13_combout\)) # (!\ALU0|Mux18~2_combout\ & ((\MuxIm1|f[14]~14_combout\))))) # (!\Alu_Opcode[0]~input_o\ & (((\ALU0|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[13]~13_combout\,
	datab => \MuxIm1|f[14]~14_combout\,
	datac => \Alu_Opcode[0]~input_o\,
	datad => \ALU0|Mux18~2_combout\,
	combout => \ALU0|Mux18~3_combout\);

-- Location: LCCOMB_X79_Y57_N18
\ALU0|Mux18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux18~6_combout\ = (\ALU0|add|cycle0|cycle3|cycle0|Cout~0_combout\ & (\Alu_Opcode[1]~input_o\ $ (((\A|q\(13) & !\Im_Mux1~input_o\))))) # (!\ALU0|add|cycle0|cycle3|cycle0|Cout~0_combout\ & (\A|q\(13) & ((!\Im_Mux1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|add|cycle0|cycle3|cycle0|Cout~0_combout\,
	datab => \A|q\(13),
	datac => \Alu_Opcode[1]~input_o\,
	datad => \Im_Mux1~input_o\,
	combout => \ALU0|Mux18~6_combout\);

-- Location: LCCOMB_X79_Y57_N12
\ALU0|Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux18~4_combout\ = (\MuxIm2|Mux18~0_combout\ & ((\Alu_Opcode[0]~input_o\) # (\Alu_Opcode[1]~input_o\ $ (\ALU0|Mux18~6_combout\)))) # (!\MuxIm2|Mux18~0_combout\ & (\ALU0|Mux18~6_combout\ & (\Alu_Opcode[0]~input_o\ $ (\Alu_Opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \MuxIm2|Mux18~0_combout\,
	datac => \Alu_Opcode[1]~input_o\,
	datad => \ALU0|Mux18~6_combout\,
	combout => \ALU0|Mux18~4_combout\);

-- Location: LCCOMB_X79_Y57_N2
\ALU0|Mux18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux18~5_combout\ = (\Alu_Opcode[2]~input_o\ & (\ALU0|Mux18~3_combout\)) # (!\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux18~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alu_Opcode[2]~input_o\,
	datac => \ALU0|Mux18~3_combout\,
	datad => \ALU0|Mux18~4_combout\,
	combout => \ALU0|Mux18~5_combout\);

-- Location: LCCOMB_X79_Y57_N8
\MuxData|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux18~3_combout\ = (\MuxData|Mux18~2_combout\) # ((!\Data_Mux[0]~input_o\ & (\Data_Mux[1]~input_o\ & \ALU0|Mux18~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \MuxData|Mux18~2_combout\,
	datac => \Data_Mux[1]~input_o\,
	datad => \ALU0|Mux18~5_combout\,
	combout => \MuxData|Mux18~3_combout\);

-- Location: LCCOMB_X79_Y57_N24
\MuxA|f[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[13]~13_combout\ = (\A_Mux~input_o\ & ((\IR|q\(13)))) # (!\A_Mux~input_o\ & (\MuxData|Mux18~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Mux~input_o\,
	datac => \MuxData|Mux18~3_combout\,
	datad => \IR|q\(13),
	combout => \MuxA|f[13]~13_combout\);

-- Location: FF_X79_Y57_N25
\A|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[13]~13_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(13));

-- Location: LCCOMB_X80_Y60_N22
\MuxReg|f[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[13]~13_combout\ = (\Reg_Mux~input_o\ & ((\B|q\(13)))) # (!\Reg_Mux~input_o\ & (\A|q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Mux~input_o\,
	datab => \A|q\(13),
	datad => \B|q\(13),
	combout => \MuxReg|f[13]~13_combout\);

-- Location: LCCOMB_X80_Y60_N18
\DataMemory|data_out~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~13_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & ((\DataMemory|memory_rtl_0|auto_generated|ram_block1a12\))) # (!\DataMemory|memory~41_q\ & (\DataMemory|memory~54_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|memory~41_q\,
	datab => \DataMemory|data_out[14]~0_combout\,
	datac => \DataMemory|memory~54_q\,
	datad => \DataMemory|memory_rtl_0|auto_generated|ram_block1a12\,
	combout => \DataMemory|data_out~13_combout\);

-- Location: FF_X80_Y60_N19
\DataMemory|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(12));

-- Location: LCCOMB_X83_Y60_N8
\MuxData|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux19~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & ((\DataMemory|data_out\(12)))) # (!\Data_Mux[0]~input_o\ & (\Data_In[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \Data_Mux[1]~input_o\,
	datac => \Data_In[12]~input_o\,
	datad => \DataMemory|data_out\(12),
	combout => \MuxData|Mux19~2_combout\);

-- Location: LCCOMB_X83_Y60_N24
\ALU0|Mux19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux19~6_combout\ = (\Im_Mux1~input_o\ & (((\Alu_Opcode[1]~input_o\ & \ALU0|add|cycle0|cycle2|cycle3|Cout~0_combout\)))) # (!\Im_Mux1~input_o\ & (\A|q\(12) $ (((\Alu_Opcode[1]~input_o\ & \ALU0|add|cycle0|cycle2|cycle3|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \A|q\(12),
	datac => \Alu_Opcode[1]~input_o\,
	datad => \ALU0|add|cycle0|cycle2|cycle3|Cout~0_combout\,
	combout => \ALU0|Mux19~6_combout\);

-- Location: LCCOMB_X83_Y60_N4
\ALU0|Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux19~4_combout\ = (\MuxIm2|Mux19~0_combout\ & ((\Alu_Opcode[0]~input_o\) # (\Alu_Opcode[1]~input_o\ $ (\ALU0|Mux19~6_combout\)))) # (!\MuxIm2|Mux19~0_combout\ & (\ALU0|Mux19~6_combout\ & (\Alu_Opcode[0]~input_o\ $ (\Alu_Opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux19~0_combout\,
	datab => \Alu_Opcode[0]~input_o\,
	datac => \Alu_Opcode[1]~input_o\,
	datad => \ALU0|Mux19~6_combout\,
	combout => \ALU0|Mux19~4_combout\);

-- Location: LCCOMB_X84_Y58_N20
\ALU0|sub|cycle0|cycle3|cycle0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle3|cycle0|s~combout\ = \MuxIm2|Mux19~0_combout\ $ (\ALU0|sub|cycle0|cycle2|cycle3|Cout~0_combout\ $ (((!\Im_Mux1~input_o\ & \A|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \A|q\(12),
	datac => \MuxIm2|Mux19~0_combout\,
	datad => \ALU0|sub|cycle0|cycle2|cycle3|Cout~0_combout\,
	combout => \ALU0|sub|cycle0|cycle3|cycle0|s~combout\);

-- Location: LCCOMB_X84_Y60_N4
\ALU0|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux19~2_combout\ = (\Alu_Opcode[1]~input_o\ & ((\Alu_Opcode[0]~input_o\) # ((!\ALU0|sub|cycle0|cycle3|cycle0|s~combout\)))) # (!\Alu_Opcode[1]~input_o\ & (!\Alu_Opcode[0]~input_o\ & (\MuxIm1|f[11]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[1]~input_o\,
	datab => \Alu_Opcode[0]~input_o\,
	datac => \MuxIm1|f[11]~11_combout\,
	datad => \ALU0|sub|cycle0|cycle3|cycle0|s~combout\,
	combout => \ALU0|Mux19~2_combout\);

-- Location: LCCOMB_X84_Y60_N22
\ALU0|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux19~3_combout\ = (\ALU0|Mux19~2_combout\ & (((\MuxIm1|f[12]~12_combout\) # (!\Alu_Opcode[0]~input_o\)))) # (!\ALU0|Mux19~2_combout\ & (\MuxIm1|f[13]~13_combout\ & ((\Alu_Opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[13]~13_combout\,
	datab => \MuxIm1|f[12]~12_combout\,
	datac => \ALU0|Mux19~2_combout\,
	datad => \Alu_Opcode[0]~input_o\,
	combout => \ALU0|Mux19~3_combout\);

-- Location: LCCOMB_X83_Y60_N18
\ALU0|Mux19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux19~5_combout\ = (\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux19~3_combout\))) # (!\Alu_Opcode[2]~input_o\ & (\ALU0|Mux19~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alu_Opcode[2]~input_o\,
	datac => \ALU0|Mux19~4_combout\,
	datad => \ALU0|Mux19~3_combout\,
	combout => \ALU0|Mux19~5_combout\);

-- Location: LCCOMB_X83_Y60_N30
\MuxData|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux19~3_combout\ = (\MuxData|Mux19~2_combout\) # ((!\Data_Mux[0]~input_o\ & (\Data_Mux[1]~input_o\ & \ALU0|Mux19~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \MuxData|Mux19~2_combout\,
	datac => \Data_Mux[1]~input_o\,
	datad => \ALU0|Mux19~5_combout\,
	combout => \MuxData|Mux19~3_combout\);

-- Location: LCCOMB_X83_Y60_N16
\MuxA|f[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[12]~12_combout\ = (\A_Mux~input_o\ & ((\IR|q\(12)))) # (!\A_Mux~input_o\ & (\MuxData|Mux19~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxData|Mux19~3_combout\,
	datac => \IR|q\(12),
	datad => \A_Mux~input_o\,
	combout => \MuxA|f[12]~12_combout\);

-- Location: FF_X83_Y60_N17
\A|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[12]~12_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(12));

-- Location: LCCOMB_X84_Y59_N22
\MuxReg|f[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[12]~12_combout\ = (\Reg_Mux~input_o\ & ((\B|q\(12)))) # (!\Reg_Mux~input_o\ & (\A|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(12),
	datac => \B|q\(12),
	datad => \Reg_Mux~input_o\,
	combout => \MuxReg|f[12]~12_combout\);

-- Location: LCCOMB_X81_Y60_N24
\DataMemory|data_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~12_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & ((\DataMemory|memory_rtl_0|auto_generated|ram_block1a11\))) # (!\DataMemory|memory~41_q\ & (\DataMemory|memory~53_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|data_out[14]~0_combout\,
	datab => \DataMemory|memory~41_q\,
	datac => \DataMemory|memory~53_q\,
	datad => \DataMemory|memory_rtl_0|auto_generated|ram_block1a11\,
	combout => \DataMemory|data_out~12_combout\);

-- Location: FF_X81_Y60_N25
\DataMemory|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(11));

-- Location: LCCOMB_X81_Y60_N18
\MuxData|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux20~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & ((\DataMemory|data_out\(11)))) # (!\Data_Mux[0]~input_o\ & (\Data_In[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \Data_In[11]~input_o\,
	datac => \Data_Mux[1]~input_o\,
	datad => \DataMemory|data_out\(11),
	combout => \MuxData|Mux20~2_combout\);

-- Location: LCCOMB_X84_Y59_N14
\MuxIm1|f[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[10]~10_combout\ = (\A|q\(10) & !\Im_Mux1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|q\(10),
	datad => \Im_Mux1~input_o\,
	combout => \MuxIm1|f[10]~10_combout\);

-- Location: LCCOMB_X84_Y60_N16
\ALU0|sub|cycle0|cycle2|cycle3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle2|cycle3|s~combout\ = \MuxIm1|f[11]~11_combout\ $ (\MuxIm2|Mux20~0_combout\ $ (((\ALU0|sub|cycle0|cycle2|cycle2|Cout~2_combout\) # (\ALU0|sub|cycle0|cycle2|cycle2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[11]~11_combout\,
	datab => \ALU0|sub|cycle0|cycle2|cycle2|Cout~2_combout\,
	datac => \MuxIm2|Mux20~0_combout\,
	datad => \ALU0|sub|cycle0|cycle2|cycle2|Cout~0_combout\,
	combout => \ALU0|sub|cycle0|cycle2|cycle3|s~combout\);

-- Location: LCCOMB_X84_Y60_N26
\ALU0|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux20~0_combout\ = (\Alu_Opcode[0]~input_o\ & (((\Alu_Opcode[1]~input_o\)))) # (!\Alu_Opcode[0]~input_o\ & ((\Alu_Opcode[1]~input_o\ & ((!\ALU0|sub|cycle0|cycle2|cycle3|s~combout\))) # (!\Alu_Opcode[1]~input_o\ & (\MuxIm1|f[10]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \MuxIm1|f[10]~10_combout\,
	datac => \Alu_Opcode[1]~input_o\,
	datad => \ALU0|sub|cycle0|cycle2|cycle3|s~combout\,
	combout => \ALU0|Mux20~0_combout\);

-- Location: LCCOMB_X84_Y60_N20
\ALU0|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux20~1_combout\ = (\ALU0|Mux20~0_combout\ & ((\MuxIm1|f[11]~11_combout\) # ((!\Alu_Opcode[0]~input_o\)))) # (!\ALU0|Mux20~0_combout\ & (((\MuxIm1|f[12]~12_combout\ & \Alu_Opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[11]~11_combout\,
	datab => \MuxIm1|f[12]~12_combout\,
	datac => \ALU0|Mux20~0_combout\,
	datad => \Alu_Opcode[0]~input_o\,
	combout => \ALU0|Mux20~1_combout\);

-- Location: LCCOMB_X84_Y60_N10
\ALU0|add|cycle0|cycle2|cycle3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle0|cycle2|cycle3|s~combout\ = \MuxIm2|Mux20~0_combout\ $ (\ALU0|add|cycle0|cycle2|cycle2|Cout~0_combout\ $ (((!\Im_Mux1~input_o\ & \A|q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \A|q\(11),
	datac => \MuxIm2|Mux20~0_combout\,
	datad => \ALU0|add|cycle0|cycle2|cycle2|Cout~0_combout\,
	combout => \ALU0|add|cycle0|cycle2|cycle3|s~combout\);

-- Location: LCCOMB_X84_Y60_N14
\ALU0|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux20~2_combout\ = (\Alu_Opcode[1]~input_o\ & (((\Alu_Opcode[0]~input_o\)))) # (!\Alu_Opcode[1]~input_o\ & ((\MuxIm2|Mux20~0_combout\ & ((\MuxIm1|f[11]~11_combout\) # (\Alu_Opcode[0]~input_o\))) # (!\MuxIm2|Mux20~0_combout\ & 
-- (\MuxIm1|f[11]~11_combout\ & \Alu_Opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[1]~input_o\,
	datab => \MuxIm2|Mux20~0_combout\,
	datac => \MuxIm1|f[11]~11_combout\,
	datad => \Alu_Opcode[0]~input_o\,
	combout => \ALU0|Mux20~2_combout\);

-- Location: LCCOMB_X83_Y60_N0
\ALU0|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux20~3_combout\ = (\Alu_Opcode[1]~input_o\ & ((\ALU0|Mux20~2_combout\ & (\MuxIm2|Mux20~0_combout\)) # (!\ALU0|Mux20~2_combout\ & ((\ALU0|add|cycle0|cycle2|cycle3|s~combout\))))) # (!\Alu_Opcode[1]~input_o\ & (((\ALU0|Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[1]~input_o\,
	datab => \MuxIm2|Mux20~0_combout\,
	datac => \ALU0|add|cycle0|cycle2|cycle3|s~combout\,
	datad => \ALU0|Mux20~2_combout\,
	combout => \ALU0|Mux20~3_combout\);

-- Location: LCCOMB_X83_Y60_N10
\ALU0|Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux20~4_combout\ = (\Alu_Opcode[2]~input_o\ & (\ALU0|Mux20~1_combout\)) # (!\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux20~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux20~1_combout\,
	datab => \Alu_Opcode[2]~input_o\,
	datad => \ALU0|Mux20~3_combout\,
	combout => \ALU0|Mux20~4_combout\);

-- Location: LCCOMB_X83_Y60_N2
\MuxData|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux20~3_combout\ = (\MuxData|Mux20~2_combout\) # ((!\Data_Mux[0]~input_o\ & (\Data_Mux[1]~input_o\ & \ALU0|Mux20~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \Data_Mux[1]~input_o\,
	datac => \MuxData|Mux20~2_combout\,
	datad => \ALU0|Mux20~4_combout\,
	combout => \MuxData|Mux20~3_combout\);

-- Location: FF_X83_Y60_N13
\IR|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \MuxData|Mux20~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(11));

-- Location: LCCOMB_X84_Y60_N24
\MuxB|f[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[11]~11_combout\ = (\B_Mux~input_o\ & (\IR|q\(11))) # (!\B_Mux~input_o\ & ((\MuxData|Mux20~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Mux~input_o\,
	datab => \IR|q\(11),
	datad => \MuxData|Mux20~3_combout\,
	combout => \MuxB|f[11]~11_combout\);

-- Location: FF_X84_Y60_N25
\B|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[11]~11_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(11));

-- Location: LCCOMB_X84_Y60_N28
\MuxReg|f[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[11]~11_combout\ = (\Reg_Mux~input_o\ & (\B|q\(11))) # (!\Reg_Mux~input_o\ & ((\A|q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B|q\(11),
	datac => \Reg_Mux~input_o\,
	datad => \A|q\(11),
	combout => \MuxReg|f[11]~11_combout\);

-- Location: LCCOMB_X79_Y60_N6
\DataMemory|data_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~11_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & ((\DataMemory|memory_rtl_0|auto_generated|ram_block1a10\))) # (!\DataMemory|memory~41_q\ & (\DataMemory|memory~52_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|memory~41_q\,
	datab => \DataMemory|memory~52_q\,
	datac => \DataMemory|data_out[14]~0_combout\,
	datad => \DataMemory|memory_rtl_0|auto_generated|ram_block1a10\,
	combout => \DataMemory|data_out~11_combout\);

-- Location: FF_X79_Y60_N7
\DataMemory|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(10));

-- Location: LCCOMB_X83_Y60_N28
\MuxData|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux21~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & ((\DataMemory|data_out\(10)))) # (!\Data_Mux[0]~input_o\ & (\Data_In[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \Data_In[10]~input_o\,
	datac => \Data_Mux[1]~input_o\,
	datad => \DataMemory|data_out\(10),
	combout => \MuxData|Mux21~2_combout\);

-- Location: LCCOMB_X82_Y60_N12
\ALU0|Mux21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux21~6_combout\ = (\A|q\(10) & (\Im_Mux1~input_o\ $ (((!\ALU0|add|cycle0|cycle2|cycle1|Cout~0_combout\) # (!\Alu_Opcode[1]~input_o\))))) # (!\A|q\(10) & (((\Alu_Opcode[1]~input_o\ & \ALU0|add|cycle0|cycle2|cycle1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(10),
	datab => \Im_Mux1~input_o\,
	datac => \Alu_Opcode[1]~input_o\,
	datad => \ALU0|add|cycle0|cycle2|cycle1|Cout~0_combout\,
	combout => \ALU0|Mux21~6_combout\);

-- Location: LCCOMB_X82_Y60_N4
\ALU0|Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux21~4_combout\ = (\MuxIm2|Mux21~0_combout\ & ((\Alu_Opcode[0]~input_o\) # (\Alu_Opcode[1]~input_o\ $ (\ALU0|Mux21~6_combout\)))) # (!\MuxIm2|Mux21~0_combout\ & (\ALU0|Mux21~6_combout\ & (\Alu_Opcode[1]~input_o\ $ (\Alu_Opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[1]~input_o\,
	datab => \MuxIm2|Mux21~0_combout\,
	datac => \Alu_Opcode[0]~input_o\,
	datad => \ALU0|Mux21~6_combout\,
	combout => \ALU0|Mux21~4_combout\);

-- Location: LCCOMB_X84_Y59_N12
\ALU0|sub|cycle0|cycle2|cycle2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle2|cycle2|s~0_combout\ = \MuxIm2|Mux21~0_combout\ $ (((\A|q\(10) & !\Im_Mux1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(10),
	datab => \MuxIm2|Mux21~0_combout\,
	datad => \Im_Mux1~input_o\,
	combout => \ALU0|sub|cycle0|cycle2|cycle2|s~0_combout\);

-- Location: LCCOMB_X84_Y59_N18
\ALU0|sub|cycle0|cycle2|cycle2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle2|cycle2|s~combout\ = \ALU0|sub|cycle0|cycle2|cycle2|s~0_combout\ $ (((\ALU0|sub|cycle0|cycle2|cycle0|Cout~0_combout\ & ((\MuxIm1|f[9]~9_combout\) # (!\MuxIm2|Mux22~0_combout\))) # (!\ALU0|sub|cycle0|cycle2|cycle0|Cout~0_combout\ & 
-- (!\MuxIm2|Mux22~0_combout\ & \MuxIm1|f[9]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub|cycle0|cycle2|cycle2|s~0_combout\,
	datab => \ALU0|sub|cycle0|cycle2|cycle0|Cout~0_combout\,
	datac => \MuxIm2|Mux22~0_combout\,
	datad => \MuxIm1|f[9]~9_combout\,
	combout => \ALU0|sub|cycle0|cycle2|cycle2|s~combout\);

-- Location: LCCOMB_X84_Y60_N8
\ALU0|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux21~2_combout\ = (\Alu_Opcode[1]~input_o\ & ((\Alu_Opcode[0]~input_o\) # ((!\ALU0|sub|cycle0|cycle2|cycle2|s~combout\)))) # (!\Alu_Opcode[1]~input_o\ & (!\Alu_Opcode[0]~input_o\ & ((\MuxIm1|f[9]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[1]~input_o\,
	datab => \Alu_Opcode[0]~input_o\,
	datac => \ALU0|sub|cycle0|cycle2|cycle2|s~combout\,
	datad => \MuxIm1|f[9]~9_combout\,
	combout => \ALU0|Mux21~2_combout\);

-- Location: LCCOMB_X84_Y60_N6
\ALU0|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux21~3_combout\ = (\ALU0|Mux21~2_combout\ & (((\MuxIm1|f[10]~10_combout\) # (!\Alu_Opcode[0]~input_o\)))) # (!\ALU0|Mux21~2_combout\ & (\MuxIm1|f[11]~11_combout\ & ((\Alu_Opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[11]~11_combout\,
	datab => \MuxIm1|f[10]~10_combout\,
	datac => \ALU0|Mux21~2_combout\,
	datad => \Alu_Opcode[0]~input_o\,
	combout => \ALU0|Mux21~3_combout\);

-- Location: LCCOMB_X83_Y60_N12
\ALU0|Mux21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux21~5_combout\ = (\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux21~3_combout\))) # (!\Alu_Opcode[2]~input_o\ & (\ALU0|Mux21~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[2]~input_o\,
	datab => \ALU0|Mux21~4_combout\,
	datad => \ALU0|Mux21~3_combout\,
	combout => \ALU0|Mux21~5_combout\);

-- Location: LCCOMB_X83_Y60_N6
\MuxData|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux21~3_combout\ = (\MuxData|Mux21~2_combout\) # ((!\Data_Mux[0]~input_o\ & (\Data_Mux[1]~input_o\ & \ALU0|Mux21~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \MuxData|Mux21~2_combout\,
	datac => \Data_Mux[1]~input_o\,
	datad => \ALU0|Mux21~5_combout\,
	combout => \MuxData|Mux21~3_combout\);

-- Location: FF_X83_Y60_N7
\IR|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxData|Mux21~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(10));

-- Location: LCCOMB_X81_Y60_N16
\MuxB|f[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[10]~10_combout\ = (\B_Mux~input_o\ & (\IR|q\(10))) # (!\B_Mux~input_o\ & ((\MuxData|Mux21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_Mux~input_o\,
	datac => \IR|q\(10),
	datad => \MuxData|Mux21~3_combout\,
	combout => \MuxB|f[10]~10_combout\);

-- Location: FF_X81_Y60_N17
\B|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxB|f[10]~10_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(10));

-- Location: LCCOMB_X82_Y60_N28
\MuxReg|f[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[10]~10_combout\ = (\Reg_Mux~input_o\ & (\B|q\(10))) # (!\Reg_Mux~input_o\ & ((\A|q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|q\(10),
	datac => \A|q\(10),
	datad => \Reg_Mux~input_o\,
	combout => \MuxReg|f[10]~10_combout\);

-- Location: LCCOMB_X80_Y60_N28
\DataMemory|data_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~10_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & ((\DataMemory|memory_rtl_0|auto_generated|ram_block1a9\))) # (!\DataMemory|memory~41_q\ & (\DataMemory|memory~51_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|memory~51_q\,
	datab => \DataMemory|data_out[14]~0_combout\,
	datac => \DataMemory|memory~41_q\,
	datad => \DataMemory|memory_rtl_0|auto_generated|ram_block1a9\,
	combout => \DataMemory|data_out~10_combout\);

-- Location: FF_X80_Y60_N29
\DataMemory|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(9));

-- Location: IOIBUF_X115_Y34_N22
\Data_In[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(9),
	o => \Data_In[9]~input_o\);

-- Location: LCCOMB_X86_Y58_N22
\MuxData|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux22~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & (\DataMemory|data_out\(9))) # (!\Data_Mux[0]~input_o\ & ((\Data_In[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \Data_Mux[1]~input_o\,
	datac => \DataMemory|data_out\(9),
	datad => \Data_In[9]~input_o\,
	combout => \MuxData|Mux22~2_combout\);

-- Location: LCCOMB_X86_Y58_N26
\ALU0|sub|cycle0|cycle2|cycle1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle2|cycle1|s~combout\ = \ALU0|sub|cycle0|cycle2|cycle0|Cout~0_combout\ $ (\MuxIm2|Mux22~0_combout\ $ (((!\Im_Mux1~input_o\ & \A|q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub|cycle0|cycle2|cycle0|Cout~0_combout\,
	datab => \Im_Mux1~input_o\,
	datac => \MuxIm2|Mux22~0_combout\,
	datad => \A|q\(9),
	combout => \ALU0|sub|cycle0|cycle2|cycle1|s~combout\);

-- Location: LCCOMB_X85_Y58_N24
\ALU0|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux22~0_combout\ = (\Alu_Opcode[0]~input_o\ & (\Alu_Opcode[1]~input_o\)) # (!\Alu_Opcode[0]~input_o\ & ((\Alu_Opcode[1]~input_o\ & ((!\ALU0|sub|cycle0|cycle2|cycle1|s~combout\))) # (!\Alu_Opcode[1]~input_o\ & (\MuxIm1|f[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \MuxIm1|f[8]~8_combout\,
	datad => \ALU0|sub|cycle0|cycle2|cycle1|s~combout\,
	combout => \ALU0|Mux22~0_combout\);

-- Location: LCCOMB_X85_Y58_N10
\ALU0|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux22~1_combout\ = (\Alu_Opcode[0]~input_o\ & ((\ALU0|Mux22~0_combout\ & ((\MuxIm1|f[9]~9_combout\))) # (!\ALU0|Mux22~0_combout\ & (\MuxIm1|f[10]~10_combout\)))) # (!\Alu_Opcode[0]~input_o\ & (((\ALU0|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \MuxIm1|f[10]~10_combout\,
	datac => \MuxIm1|f[9]~9_combout\,
	datad => \ALU0|Mux22~0_combout\,
	combout => \ALU0|Mux22~1_combout\);

-- Location: LCCOMB_X85_Y58_N8
\ALU0|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux22~2_combout\ = (\MuxIm2|Mux22~0_combout\ & ((\Alu_Opcode[0]~input_o\) # ((!\Alu_Opcode[1]~input_o\ & \MuxIm1|f[9]~9_combout\)))) # (!\MuxIm2|Mux22~0_combout\ & (\Alu_Opcode[0]~input_o\ & ((\Alu_Opcode[1]~input_o\) # (\MuxIm1|f[9]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux22~0_combout\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \Alu_Opcode[0]~input_o\,
	datad => \MuxIm1|f[9]~9_combout\,
	combout => \ALU0|Mux22~2_combout\);

-- Location: LCCOMB_X86_Y58_N0
\ALU0|add|cycle0|cycle2|cycle1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle0|cycle2|cycle1|s~combout\ = \ALU0|add|cycle0|cycle2|cycle0|Cout~0_combout\ $ (\MuxIm2|Mux22~0_combout\ $ (((!\Im_Mux1~input_o\ & \A|q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|add|cycle0|cycle2|cycle0|Cout~0_combout\,
	datab => \Im_Mux1~input_o\,
	datac => \MuxIm2|Mux22~0_combout\,
	datad => \A|q\(9),
	combout => \ALU0|add|cycle0|cycle2|cycle1|s~combout\);

-- Location: LCCOMB_X86_Y58_N18
\ALU0|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux22~3_combout\ = (\ALU0|Mux22~2_combout\ & ((\MuxIm2|Mux22~0_combout\) # ((!\Alu_Opcode[1]~input_o\)))) # (!\ALU0|Mux22~2_combout\ & (((\Alu_Opcode[1]~input_o\ & \ALU0|add|cycle0|cycle2|cycle1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux22~2_combout\,
	datab => \MuxIm2|Mux22~0_combout\,
	datac => \Alu_Opcode[1]~input_o\,
	datad => \ALU0|add|cycle0|cycle2|cycle1|s~combout\,
	combout => \ALU0|Mux22~3_combout\);

-- Location: LCCOMB_X86_Y58_N28
\ALU0|Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux22~4_combout\ = (\Alu_Opcode[2]~input_o\ & (\ALU0|Mux22~1_combout\)) # (!\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux22~1_combout\,
	datab => \Alu_Opcode[2]~input_o\,
	datad => \ALU0|Mux22~3_combout\,
	combout => \ALU0|Mux22~4_combout\);

-- Location: LCCOMB_X86_Y58_N10
\MuxData|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux22~3_combout\ = (\MuxData|Mux22~2_combout\) # ((!\Data_Mux[0]~input_o\ & (\Data_Mux[1]~input_o\ & \ALU0|Mux22~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \Data_Mux[1]~input_o\,
	datac => \MuxData|Mux22~2_combout\,
	datad => \ALU0|Mux22~4_combout\,
	combout => \MuxData|Mux22~3_combout\);

-- Location: FF_X86_Y58_N17
\IR|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \MuxData|Mux22~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(9));

-- Location: LCCOMB_X86_Y58_N12
\MuxB|f[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxB|f[9]~9_combout\ = (\B_Mux~input_o\ & (\IR|q\(9))) # (!\B_Mux~input_o\ & ((\MuxData|Mux22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Mux~input_o\,
	datab => \IR|q\(9),
	datad => \MuxData|Mux22~3_combout\,
	combout => \MuxB|f[9]~9_combout\);

-- Location: FF_X85_Y58_N31
\B|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \MuxB|f[9]~9_combout\,
	clrn => \ALT_INV_Clr_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B|q\(9));

-- Location: LCCOMB_X86_Y58_N16
\MuxReg|f[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxReg|f[9]~9_combout\ = (\Reg_Mux~input_o\ & (\B|q\(9))) # (!\Reg_Mux~input_o\ & ((\A|q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Mux~input_o\,
	datab => \B|q\(9),
	datad => \A|q\(9),
	combout => \MuxReg|f[9]~9_combout\);

-- Location: FF_X80_Y60_N3
\DataMemory|memory~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	asdata => \MuxReg|f[8]~8_combout\,
	sload => VCC,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~50_q\);

-- Location: LCCOMB_X80_Y60_N30
\DataMemory|data_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~9_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & (\DataMemory|memory_rtl_0|auto_generated|ram_block1a8\)) # (!\DataMemory|memory~41_q\ & ((\DataMemory|memory~50_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|memory~41_q\,
	datab => \DataMemory|data_out[14]~0_combout\,
	datac => \DataMemory|memory_rtl_0|auto_generated|ram_block1a8\,
	datad => \DataMemory|memory~50_q\,
	combout => \DataMemory|data_out~9_combout\);

-- Location: FF_X80_Y60_N31
\DataMemory|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(8));

-- Location: LCCOMB_X84_Y61_N2
\MuxData|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux23~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & ((\DataMemory|data_out\(8)))) # (!\Data_Mux[0]~input_o\ & (\Data_In[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_In[8]~input_o\,
	datab => \Data_Mux[0]~input_o\,
	datac => \Data_Mux[1]~input_o\,
	datad => \DataMemory|data_out\(8),
	combout => \MuxData|Mux23~2_combout\);

-- Location: LCCOMB_X85_Y58_N18
\ALU0|sub|cycle0|cycle2|cycle0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle2|cycle0|s~combout\ = \MuxIm2|Mux23~0_combout\ $ (\ALU0|sub|cycle0|cycle1|cycle3|Cout~0_combout\ $ (((\A|q\(8) & !\Im_Mux1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux23~0_combout\,
	datab => \A|q\(8),
	datac => \Im_Mux1~input_o\,
	datad => \ALU0|sub|cycle0|cycle1|cycle3|Cout~0_combout\,
	combout => \ALU0|sub|cycle0|cycle2|cycle0|s~combout\);

-- Location: LCCOMB_X85_Y58_N0
\ALU0|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux23~2_combout\ = (\Alu_Opcode[1]~input_o\ & (((\Alu_Opcode[0]~input_o\) # (!\ALU0|sub|cycle0|cycle2|cycle0|s~combout\)))) # (!\Alu_Opcode[1]~input_o\ & (\MuxIm1|f[7]~7_combout\ & (!\Alu_Opcode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[7]~7_combout\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \Alu_Opcode[0]~input_o\,
	datad => \ALU0|sub|cycle0|cycle2|cycle0|s~combout\,
	combout => \ALU0|Mux23~2_combout\);

-- Location: LCCOMB_X85_Y58_N14
\ALU0|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux23~3_combout\ = (\Alu_Opcode[0]~input_o\ & ((\ALU0|Mux23~2_combout\ & ((\MuxIm1|f[8]~8_combout\))) # (!\ALU0|Mux23~2_combout\ & (\MuxIm1|f[9]~9_combout\)))) # (!\Alu_Opcode[0]~input_o\ & (((\ALU0|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \MuxIm1|f[9]~9_combout\,
	datac => \MuxIm1|f[8]~8_combout\,
	datad => \ALU0|Mux23~2_combout\,
	combout => \ALU0|Mux23~3_combout\);

-- Location: LCCOMB_X85_Y58_N2
\ALU0|Mux23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux23~6_combout\ = (\Im_Mux1~input_o\ & (((\Alu_Opcode[1]~input_o\ & \ALU0|add|cycle0|cycle1|cycle3|Cout~0_combout\)))) # (!\Im_Mux1~input_o\ & (\A|q\(8) $ (((\Alu_Opcode[1]~input_o\ & \ALU0|add|cycle0|cycle1|cycle3|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \A|q\(8),
	datac => \Alu_Opcode[1]~input_o\,
	datad => \ALU0|add|cycle0|cycle1|cycle3|Cout~0_combout\,
	combout => \ALU0|Mux23~6_combout\);

-- Location: LCCOMB_X86_Y58_N2
\ALU0|Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux23~4_combout\ = (\MuxIm2|Mux23~0_combout\ & ((\Alu_Opcode[0]~input_o\) # (\Alu_Opcode[1]~input_o\ $ (\ALU0|Mux23~6_combout\)))) # (!\MuxIm2|Mux23~0_combout\ & (\ALU0|Mux23~6_combout\ & (\Alu_Opcode[0]~input_o\ $ (\Alu_Opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux23~0_combout\,
	datab => \Alu_Opcode[0]~input_o\,
	datac => \Alu_Opcode[1]~input_o\,
	datad => \ALU0|Mux23~6_combout\,
	combout => \ALU0|Mux23~4_combout\);

-- Location: LCCOMB_X86_Y58_N24
\ALU0|Mux23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux23~5_combout\ = (\Alu_Opcode[2]~input_o\ & (\ALU0|Mux23~3_combout\)) # (!\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux23~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux23~3_combout\,
	datac => \Alu_Opcode[2]~input_o\,
	datad => \ALU0|Mux23~4_combout\,
	combout => \ALU0|Mux23~5_combout\);

-- Location: LCCOMB_X86_Y58_N6
\MuxData|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux23~3_combout\ = (\MuxData|Mux23~2_combout\) # ((!\Data_Mux[0]~input_o\ & (\Data_Mux[1]~input_o\ & \ALU0|Mux23~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \Data_Mux[1]~input_o\,
	datac => \MuxData|Mux23~2_combout\,
	datad => \ALU0|Mux23~5_combout\,
	combout => \MuxData|Mux23~3_combout\);

-- Location: FF_X86_Y58_N7
\IR|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxData|Mux23~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(8));

-- Location: LCCOMB_X85_Y58_N28
\MuxA|f[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[8]~8_combout\ = (\A_Mux~input_o\ & (\IR|q\(8))) # (!\A_Mux~input_o\ & ((\MuxData|Mux23~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|q\(8),
	datac => \A_Mux~input_o\,
	datad => \MuxData|Mux23~3_combout\,
	combout => \MuxA|f[8]~8_combout\);

-- Location: FF_X85_Y58_N29
\A|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[8]~8_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(8));

-- Location: LCCOMB_X85_Y58_N26
\MuxIm1|f[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[8]~8_combout\ = (!\Im_Mux1~input_o\ & \A|q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Im_Mux1~input_o\,
	datad => \A|q\(8),
	combout => \MuxIm1|f[8]~8_combout\);

-- Location: LCCOMB_X83_Y57_N6
\ALU0|sub|cycle0|cycle1|cycle3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle1|cycle3|s~combout\ = \MuxIm2|Mux24~0_combout\ $ (\ALU0|sub|cycle0|cycle1|cycle2|Cout~0_combout\ $ (((\A|q\(7) & !\Im_Mux1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(7),
	datab => \MuxIm2|Mux24~0_combout\,
	datac => \Im_Mux1~input_o\,
	datad => \ALU0|sub|cycle0|cycle1|cycle2|Cout~0_combout\,
	combout => \ALU0|sub|cycle0|cycle1|cycle3|s~combout\);

-- Location: LCCOMB_X83_Y57_N16
\MuxIm1|f[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[6]~6_combout\ = (\A|q\(6) & !\Im_Mux1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(6),
	datac => \Im_Mux1~input_o\,
	combout => \MuxIm1|f[6]~6_combout\);

-- Location: LCCOMB_X83_Y57_N20
\ALU0|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux24~2_combout\ = (\Alu_Opcode[1]~input_o\ & (((\Alu_Opcode[0]~input_o\)) # (!\ALU0|sub|cycle0|cycle1|cycle3|s~combout\))) # (!\Alu_Opcode[1]~input_o\ & (((!\Alu_Opcode[0]~input_o\ & \MuxIm1|f[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub|cycle0|cycle1|cycle3|s~combout\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \Alu_Opcode[0]~input_o\,
	datad => \MuxIm1|f[6]~6_combout\,
	combout => \ALU0|Mux24~2_combout\);

-- Location: LCCOMB_X84_Y57_N4
\ALU0|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux24~3_combout\ = (\Alu_Opcode[0]~input_o\ & ((\ALU0|Mux24~2_combout\ & ((\MuxIm1|f[7]~7_combout\))) # (!\ALU0|Mux24~2_combout\ & (\MuxIm1|f[8]~8_combout\)))) # (!\Alu_Opcode[0]~input_o\ & (((\ALU0|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \MuxIm1|f[8]~8_combout\,
	datac => \MuxIm1|f[7]~7_combout\,
	datad => \ALU0|Mux24~2_combout\,
	combout => \ALU0|Mux24~3_combout\);

-- Location: LCCOMB_X83_Y57_N12
\ALU0|Mux24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux24~5_combout\ = (\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux24~3_combout\))) # (!\Alu_Opcode[2]~input_o\ & (\ALU0|Mux24~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[2]~input_o\,
	datac => \ALU0|Mux24~4_combout\,
	datad => \ALU0|Mux24~3_combout\,
	combout => \ALU0|Mux24~5_combout\);

-- Location: IOIBUF_X115_Y45_N22
\Data_In[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(7),
	o => \Data_In[7]~input_o\);

-- Location: FF_X82_Y60_N19
\DataMemory|memory~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \MuxReg|f[7]~7_combout\,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~49_q\);

-- Location: LCCOMB_X79_Y60_N12
\DataMemory|data_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~8_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & ((\DataMemory|memory_rtl_0|auto_generated|ram_block1a7\))) # (!\DataMemory|memory~41_q\ & (\DataMemory|memory~49_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|memory~41_q\,
	datab => \DataMemory|memory~49_q\,
	datac => \DataMemory|data_out[14]~0_combout\,
	datad => \DataMemory|memory_rtl_0|auto_generated|ram_block1a7\,
	combout => \DataMemory|data_out~8_combout\);

-- Location: FF_X79_Y60_N13
\DataMemory|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(7));

-- Location: LCCOMB_X82_Y57_N18
\MuxData|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux24~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & ((\DataMemory|data_out\(7)))) # (!\Data_Mux[0]~input_o\ & (\Data_In[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \Data_In[7]~input_o\,
	datac => \Data_Mux[1]~input_o\,
	datad => \DataMemory|data_out\(7),
	combout => \MuxData|Mux24~2_combout\);

-- Location: LCCOMB_X82_Y57_N10
\MuxData|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux24~3_combout\ = (\MuxData|Mux24~2_combout\) # ((!\Data_Mux[0]~input_o\ & (\ALU0|Mux24~5_combout\ & \Data_Mux[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \ALU0|Mux24~5_combout\,
	datac => \Data_Mux[1]~input_o\,
	datad => \MuxData|Mux24~2_combout\,
	combout => \MuxData|Mux24~3_combout\);

-- Location: FF_X82_Y57_N11
\IR|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxData|Mux24~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(7));

-- Location: LCCOMB_X82_Y60_N0
\MuxA|f[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[7]~7_combout\ = (\A_Mux~input_o\ & (\IR|q\(7))) # (!\A_Mux~input_o\ & ((\MuxData|Mux24~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Mux~input_o\,
	datab => \IR|q\(7),
	datac => \MuxData|Mux24~3_combout\,
	combout => \MuxA|f[7]~7_combout\);

-- Location: FF_X82_Y60_N1
\A|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[7]~7_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(7));

-- Location: LCCOMB_X83_Y57_N0
\MuxIm1|f[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[7]~7_combout\ = (!\Im_Mux1~input_o\ & \A|q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Im_Mux1~input_o\,
	datad => \A|q\(7),
	combout => \MuxIm1|f[7]~7_combout\);

-- Location: LCCOMB_X83_Y57_N28
\ALU0|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux25~3_combout\ = (\ALU0|Mux25~2_combout\ & (((\MuxIm1|f[6]~6_combout\) # (!\Alu_Opcode[0]~input_o\)))) # (!\ALU0|Mux25~2_combout\ & (\MuxIm1|f[7]~7_combout\ & (\Alu_Opcode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux25~2_combout\,
	datab => \MuxIm1|f[7]~7_combout\,
	datac => \Alu_Opcode[0]~input_o\,
	datad => \MuxIm1|f[6]~6_combout\,
	combout => \ALU0|Mux25~3_combout\);

-- Location: LCCOMB_X83_Y57_N4
\ALU0|Mux25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux25~5_combout\ = (\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux25~3_combout\))) # (!\Alu_Opcode[2]~input_o\ & (\ALU0|Mux25~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[2]~input_o\,
	datac => \ALU0|Mux25~4_combout\,
	datad => \ALU0|Mux25~3_combout\,
	combout => \ALU0|Mux25~5_combout\);

-- Location: IOIBUF_X113_Y73_N8
\Data_In[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(6),
	o => \Data_In[6]~input_o\);

-- Location: FF_X83_Y57_N15
\DataMemory|memory~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \MuxReg|f[6]~6_combout\,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~48_q\);

-- Location: LCCOMB_X80_Y60_N24
\DataMemory|data_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~7_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & ((\DataMemory|memory_rtl_0|auto_generated|ram_block1a6\))) # (!\DataMemory|memory~41_q\ & (\DataMemory|memory~48_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|memory~41_q\,
	datab => \DataMemory|data_out[14]~0_combout\,
	datac => \DataMemory|memory~48_q\,
	datad => \DataMemory|memory_rtl_0|auto_generated|ram_block1a6\,
	combout => \DataMemory|data_out~7_combout\);

-- Location: FF_X80_Y60_N25
\DataMemory|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(6));

-- Location: LCCOMB_X82_Y57_N28
\MuxData|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux25~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & ((\DataMemory|data_out\(6)))) # (!\Data_Mux[0]~input_o\ & (\Data_In[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \Data_In[6]~input_o\,
	datac => \Data_Mux[1]~input_o\,
	datad => \DataMemory|data_out\(6),
	combout => \MuxData|Mux25~2_combout\);

-- Location: LCCOMB_X82_Y57_N12
\MuxData|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux25~3_combout\ = (\MuxData|Mux25~2_combout\) # ((\ALU0|Mux25~5_combout\ & (!\Data_Mux[0]~input_o\ & \Data_Mux[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux25~5_combout\,
	datab => \Data_Mux[0]~input_o\,
	datac => \Data_Mux[1]~input_o\,
	datad => \MuxData|Mux25~2_combout\,
	combout => \MuxData|Mux25~3_combout\);

-- Location: FF_X82_Y57_N13
\IR|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxData|Mux25~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(6));

-- Location: LCCOMB_X79_Y60_N10
\DataMemory|data_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~6_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & ((\DataMemory|memory_rtl_0|auto_generated|ram_block1a5\))) # (!\DataMemory|memory~41_q\ & (\DataMemory|memory~47_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|memory~41_q\,
	datab => \DataMemory|memory~47_q\,
	datac => \DataMemory|data_out[14]~0_combout\,
	datad => \DataMemory|memory_rtl_0|auto_generated|ram_block1a5\,
	combout => \DataMemory|data_out~6_combout\);

-- Location: FF_X79_Y60_N11
\DataMemory|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(5));

-- Location: LCCOMB_X82_Y57_N24
\MuxData|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux26~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & ((\DataMemory|data_out\(5)))) # (!\Data_Mux[0]~input_o\ & (\Data_In[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_In[5]~input_o\,
	datab => \DataMemory|data_out\(5),
	datac => \Data_Mux[1]~input_o\,
	datad => \Data_Mux[0]~input_o\,
	combout => \MuxData|Mux26~2_combout\);

-- Location: LCCOMB_X83_Y58_N2
\ALU0|sub|cycle0|cycle1|cycle1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle1|cycle1|s~combout\ = \MuxIm1|f[5]~5_combout\ $ (\MuxIm2|Mux26~0_combout\ $ (((\ALU0|sub|cycle0|cycle1|cycle0|Cout~0_combout\) # (\ALU0|sub|cycle0|cycle1|cycle0|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub|cycle0|cycle1|cycle0|Cout~0_combout\,
	datab => \ALU0|sub|cycle0|cycle1|cycle0|Cout~2_combout\,
	datac => \MuxIm1|f[5]~5_combout\,
	datad => \MuxIm2|Mux26~0_combout\,
	combout => \ALU0|sub|cycle0|cycle1|cycle1|s~combout\);

-- Location: LCCOMB_X83_Y57_N2
\ALU0|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux26~0_combout\ = (\Alu_Opcode[0]~input_o\ & (\Alu_Opcode[1]~input_o\)) # (!\Alu_Opcode[0]~input_o\ & ((\Alu_Opcode[1]~input_o\ & ((!\ALU0|sub|cycle0|cycle1|cycle1|s~combout\))) # (!\Alu_Opcode[1]~input_o\ & (\MuxIm1|f[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \MuxIm1|f[4]~4_combout\,
	datad => \ALU0|sub|cycle0|cycle1|cycle1|s~combout\,
	combout => \ALU0|Mux26~0_combout\);

-- Location: LCCOMB_X83_Y57_N8
\ALU0|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux26~1_combout\ = (\ALU0|Mux26~0_combout\ & ((\MuxIm1|f[5]~5_combout\) # ((!\Alu_Opcode[0]~input_o\)))) # (!\ALU0|Mux26~0_combout\ & (((\Alu_Opcode[0]~input_o\ & \MuxIm1|f[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[5]~5_combout\,
	datab => \ALU0|Mux26~0_combout\,
	datac => \Alu_Opcode[0]~input_o\,
	datad => \MuxIm1|f[6]~6_combout\,
	combout => \ALU0|Mux26~1_combout\);

-- Location: LCCOMB_X82_Y57_N4
\ALU0|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux26~2_combout\ = (\Alu_Opcode[1]~input_o\ & (\Alu_Opcode[0]~input_o\)) # (!\Alu_Opcode[1]~input_o\ & ((\Alu_Opcode[0]~input_o\ & ((\MuxIm1|f[5]~5_combout\) # (\MuxIm2|Mux26~0_combout\))) # (!\Alu_Opcode[0]~input_o\ & (\MuxIm1|f[5]~5_combout\ & 
-- \MuxIm2|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[1]~input_o\,
	datab => \Alu_Opcode[0]~input_o\,
	datac => \MuxIm1|f[5]~5_combout\,
	datad => \MuxIm2|Mux26~0_combout\,
	combout => \ALU0|Mux26~2_combout\);

-- Location: LCCOMB_X82_Y58_N30
\ALU0|add|cycle0|cycle1|cycle1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle0|cycle1|cycle1|s~combout\ = \MuxIm2|Mux26~0_combout\ $ (\ALU0|add|cycle0|cycle1|cycle0|Cout~0_combout\ $ (((\A|q\(5) & !\Im_Mux1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux26~0_combout\,
	datab => \ALU0|add|cycle0|cycle1|cycle0|Cout~0_combout\,
	datac => \A|q\(5),
	datad => \Im_Mux1~input_o\,
	combout => \ALU0|add|cycle0|cycle1|cycle1|s~combout\);

-- Location: LCCOMB_X82_Y57_N22
\ALU0|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux26~3_combout\ = (\Alu_Opcode[1]~input_o\ & ((\ALU0|Mux26~2_combout\ & ((\MuxIm2|Mux26~0_combout\))) # (!\ALU0|Mux26~2_combout\ & (\ALU0|add|cycle0|cycle1|cycle1|s~combout\)))) # (!\Alu_Opcode[1]~input_o\ & (\ALU0|Mux26~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[1]~input_o\,
	datab => \ALU0|Mux26~2_combout\,
	datac => \ALU0|add|cycle0|cycle1|cycle1|s~combout\,
	datad => \MuxIm2|Mux26~0_combout\,
	combout => \ALU0|Mux26~3_combout\);

-- Location: LCCOMB_X83_Y57_N10
\ALU0|Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux26~4_combout\ = (\Alu_Opcode[2]~input_o\ & (\ALU0|Mux26~1_combout\)) # (!\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux26~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[2]~input_o\,
	datac => \ALU0|Mux26~1_combout\,
	datad => \ALU0|Mux26~3_combout\,
	combout => \ALU0|Mux26~4_combout\);

-- Location: LCCOMB_X82_Y57_N26
\MuxData|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux26~3_combout\ = (\MuxData|Mux26~2_combout\) # ((!\Data_Mux[0]~input_o\ & (\Data_Mux[1]~input_o\ & \ALU0|Mux26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \MuxData|Mux26~2_combout\,
	datac => \Data_Mux[1]~input_o\,
	datad => \ALU0|Mux26~4_combout\,
	combout => \MuxData|Mux26~3_combout\);

-- Location: FF_X82_Y57_N27
\IR|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxData|Mux26~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(5));

-- Location: LCCOMB_X82_Y59_N30
\MuxA|f[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[5]~5_combout\ = (\A_Mux~input_o\ & (\IR|q\(5))) # (!\A_Mux~input_o\ & ((\MuxData|Mux26~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Mux~input_o\,
	datab => \IR|q\(5),
	datad => \MuxData|Mux26~3_combout\,
	combout => \MuxA|f[5]~5_combout\);

-- Location: FF_X82_Y59_N31
\A|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[5]~5_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(5));

-- Location: LCCOMB_X82_Y59_N24
\MuxIm1|f[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[5]~5_combout\ = (!\Im_Mux1~input_o\ & \A|q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datac => \A|q\(5),
	combout => \MuxIm1|f[5]~5_combout\);

-- Location: LCCOMB_X83_Y61_N24
\ALU0|sub|cycle0|cycle0|cycle3|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle0|cycle3|Cout~2_combout\ = (\MuxIm2|Mux28~0_combout\ & (!\Im_Mux1~input_o\ & (\A|q\(3) & \ALU0|sub|cycle0|cycle0|cycle2|Cout~0_combout\))) # (!\MuxIm2|Mux28~0_combout\ & ((\ALU0|sub|cycle0|cycle0|cycle2|Cout~0_combout\) # 
-- ((!\Im_Mux1~input_o\ & \A|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \A|q\(3),
	datac => \MuxIm2|Mux28~0_combout\,
	datad => \ALU0|sub|cycle0|cycle0|cycle2|Cout~0_combout\,
	combout => \ALU0|sub|cycle0|cycle0|cycle3|Cout~2_combout\);

-- Location: LCCOMB_X83_Y61_N8
\ALU0|sub|cycle0|cycle1|cycle0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle1|cycle0|s~combout\ = \ALU0|sub|cycle0|cycle0|cycle3|Cout~2_combout\ $ (\MuxIm2|Mux27~0_combout\ $ (((\A|q\(4) & !\Im_Mux1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(4),
	datab => \ALU0|sub|cycle0|cycle0|cycle3|Cout~2_combout\,
	datac => \Im_Mux1~input_o\,
	datad => \MuxIm2|Mux27~0_combout\,
	combout => \ALU0|sub|cycle0|cycle1|cycle0|s~combout\);

-- Location: LCCOMB_X83_Y61_N26
\ALU0|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux27~2_combout\ = (\Alu_Opcode[1]~input_o\ & (((\Alu_Opcode[0]~input_o\)) # (!\ALU0|sub|cycle0|cycle1|cycle0|s~combout\))) # (!\Alu_Opcode[1]~input_o\ & (((\MuxIm1|f[3]~3_combout\ & !\Alu_Opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[1]~input_o\,
	datab => \ALU0|sub|cycle0|cycle1|cycle0|s~combout\,
	datac => \MuxIm1|f[3]~3_combout\,
	datad => \Alu_Opcode[0]~input_o\,
	combout => \ALU0|Mux27~2_combout\);

-- Location: LCCOMB_X83_Y61_N0
\ALU0|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux27~3_combout\ = (\Alu_Opcode[0]~input_o\ & ((\ALU0|Mux27~2_combout\ & ((\MuxIm1|f[4]~4_combout\))) # (!\ALU0|Mux27~2_combout\ & (\MuxIm1|f[5]~5_combout\)))) # (!\Alu_Opcode[0]~input_o\ & (((\ALU0|Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \MuxIm1|f[5]~5_combout\,
	datac => \ALU0|Mux27~2_combout\,
	datad => \MuxIm1|f[4]~4_combout\,
	combout => \ALU0|Mux27~3_combout\);

-- Location: LCCOMB_X83_Y61_N20
\ALU0|Mux27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux27~5_combout\ = (\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux27~3_combout\))) # (!\Alu_Opcode[2]~input_o\ & (\ALU0|Mux27~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alu_Opcode[2]~input_o\,
	datac => \ALU0|Mux27~4_combout\,
	datad => \ALU0|Mux27~3_combout\,
	combout => \ALU0|Mux27~5_combout\);

-- Location: FF_X82_Y60_N25
\DataMemory|memory~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \MuxReg|f[4]~4_combout\,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~46_q\);

-- Location: LCCOMB_X81_Y60_N8
\DataMemory|data_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~5_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & ((\DataMemory|memory_rtl_0|auto_generated|ram_block1a4\))) # (!\DataMemory|memory~41_q\ & (\DataMemory|memory~46_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|data_out[14]~0_combout\,
	datab => \DataMemory|memory~46_q\,
	datac => \DataMemory|memory_rtl_0|auto_generated|ram_block1a4\,
	datad => \DataMemory|memory~41_q\,
	combout => \DataMemory|data_out~5_combout\);

-- Location: FF_X81_Y60_N9
\DataMemory|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(4));

-- Location: IOIBUF_X35_Y73_N15
\Data_In[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(4),
	o => \Data_In[4]~input_o\);

-- Location: LCCOMB_X83_Y61_N28
\MuxData|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux27~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & (\DataMemory|data_out\(4))) # (!\Data_Mux[0]~input_o\ & ((\Data_In[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[1]~input_o\,
	datab => \DataMemory|data_out\(4),
	datac => \Data_In[4]~input_o\,
	datad => \Data_Mux[0]~input_o\,
	combout => \MuxData|Mux27~2_combout\);

-- Location: LCCOMB_X83_Y61_N2
\MuxData|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux27~3_combout\ = (\MuxData|Mux27~2_combout\) # ((\ALU0|Mux27~5_combout\ & (\Data_Mux[1]~input_o\ & !\Data_Mux[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux27~5_combout\,
	datab => \MuxData|Mux27~2_combout\,
	datac => \Data_Mux[1]~input_o\,
	datad => \Data_Mux[0]~input_o\,
	combout => \MuxData|Mux27~3_combout\);

-- Location: FF_X83_Y61_N23
\IR|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \MuxData|Mux27~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(4));

-- Location: LCCOMB_X82_Y61_N2
\MuxA|f[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[4]~4_combout\ = (\A_Mux~input_o\ & (\IR|q\(4))) # (!\A_Mux~input_o\ & ((\MuxData|Mux27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|q\(4),
	datac => \MuxData|Mux27~3_combout\,
	datad => \A_Mux~input_o\,
	combout => \MuxA|f[4]~4_combout\);

-- Location: FF_X82_Y61_N3
\A|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[4]~4_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(4));

-- Location: LCCOMB_X83_Y61_N22
\MuxIm1|f[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxIm1|f[4]~4_combout\ = (!\Im_Mux1~input_o\ & \A|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datad => \A|q\(4),
	combout => \MuxIm1|f[4]~4_combout\);

-- Location: LCCOMB_X83_Y61_N30
\ALU0|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux28~1_combout\ = (\Alu_Opcode[0]~input_o\ & ((\ALU0|Mux28~0_combout\ & (\MuxIm1|f[3]~3_combout\)) # (!\ALU0|Mux28~0_combout\ & ((\MuxIm1|f[4]~4_combout\))))) # (!\Alu_Opcode[0]~input_o\ & (\ALU0|Mux28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \ALU0|Mux28~0_combout\,
	datac => \MuxIm1|f[3]~3_combout\,
	datad => \MuxIm1|f[4]~4_combout\,
	combout => \ALU0|Mux28~1_combout\);

-- Location: LCCOMB_X82_Y60_N10
\ALU0|Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux28~4_combout\ = (\Alu_Opcode[1]~input_o\ & (\MuxIm2|Mux28~0_combout\ $ (((!\Im_Mux1~input_o\ & \A|q\(3)))))) # (!\Alu_Opcode[1]~input_o\ & (!\Im_Mux1~input_o\ & (\A|q\(3) & \MuxIm2|Mux28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[1]~input_o\,
	datab => \Im_Mux1~input_o\,
	datac => \A|q\(3),
	datad => \MuxIm2|Mux28~0_combout\,
	combout => \ALU0|Mux28~4_combout\);

-- Location: LCCOMB_X82_Y60_N8
\ALU0|Mux28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux28~5_combout\ = (\Alu_Opcode[0]~input_o\ & (((\Alu_Opcode[1]~input_o\)))) # (!\Alu_Opcode[0]~input_o\ & (\ALU0|Mux28~4_combout\ $ (((\Alu_Opcode[1]~input_o\ & \ALU0|add|cycle0|cycle0|cycle2|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux28~4_combout\,
	datab => \Alu_Opcode[0]~input_o\,
	datac => \Alu_Opcode[1]~input_o\,
	datad => \ALU0|add|cycle0|cycle0|cycle2|Cout~0_combout\,
	combout => \ALU0|Mux28~5_combout\);

-- Location: LCCOMB_X82_Y60_N30
\ALU0|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux28~2_combout\ = (\Alu_Opcode[0]~input_o\ & ((\MuxIm2|Mux28~0_combout\) # ((\MuxIm1|f[3]~3_combout\ & !\ALU0|Mux28~5_combout\)))) # (!\Alu_Opcode[0]~input_o\ & (((\ALU0|Mux28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[3]~3_combout\,
	datab => \ALU0|Mux28~5_combout\,
	datac => \Alu_Opcode[0]~input_o\,
	datad => \MuxIm2|Mux28~0_combout\,
	combout => \ALU0|Mux28~2_combout\);

-- Location: LCCOMB_X83_Y60_N22
\ALU0|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux28~3_combout\ = (\Alu_Opcode[2]~input_o\ & (\ALU0|Mux28~1_combout\)) # (!\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux28~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux28~1_combout\,
	datab => \Alu_Opcode[2]~input_o\,
	datad => \ALU0|Mux28~2_combout\,
	combout => \ALU0|Mux28~3_combout\);

-- Location: IOIBUF_X113_Y73_N1
\Data_In[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(3),
	o => \Data_In[3]~input_o\);

-- Location: FF_X80_Y60_N5
\DataMemory|memory~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	asdata => \MuxReg|f[3]~3_combout\,
	sload => VCC,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~45_q\);

-- Location: LCCOMB_X79_Y60_N20
\DataMemory|data_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~4_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & ((\DataMemory|memory_rtl_0|auto_generated|ram_block1a3\))) # (!\DataMemory|memory~41_q\ & (\DataMemory|memory~45_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|memory~45_q\,
	datab => \DataMemory|memory~41_q\,
	datac => \DataMemory|data_out[14]~0_combout\,
	datad => \DataMemory|memory_rtl_0|auto_generated|ram_block1a3\,
	combout => \DataMemory|data_out~4_combout\);

-- Location: FF_X79_Y60_N21
\DataMemory|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(3));

-- Location: LCCOMB_X82_Y59_N2
\MuxData|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux28~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & ((\DataMemory|data_out\(3)))) # (!\Data_Mux[0]~input_o\ & (\Data_In[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[1]~input_o\,
	datab => \Data_In[3]~input_o\,
	datac => \Data_Mux[0]~input_o\,
	datad => \DataMemory|data_out\(3),
	combout => \MuxData|Mux28~2_combout\);

-- Location: LCCOMB_X82_Y59_N14
\MuxData|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux28~3_combout\ = (\MuxData|Mux28~2_combout\) # ((\Data_Mux[1]~input_o\ & (!\Data_Mux[0]~input_o\ & \ALU0|Mux28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[1]~input_o\,
	datab => \Data_Mux[0]~input_o\,
	datac => \ALU0|Mux28~3_combout\,
	datad => \MuxData|Mux28~2_combout\,
	combout => \MuxData|Mux28~3_combout\);

-- Location: FF_X83_Y59_N9
\IR|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \MuxData|Mux28~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(3));

-- Location: FF_X82_Y60_N21
\DataMemory|memory~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \MuxReg|f[1]~1_combout\,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~43_q\);

-- Location: LCCOMB_X81_Y60_N10
\DataMemory|data_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~2_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & (\DataMemory|memory_rtl_0|auto_generated|ram_block1a1\)) # (!\DataMemory|memory~41_q\ & ((\DataMemory|memory~43_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|data_out[14]~0_combout\,
	datab => \DataMemory|memory~41_q\,
	datac => \DataMemory|memory_rtl_0|auto_generated|ram_block1a1\,
	datad => \DataMemory|memory~43_q\,
	combout => \DataMemory|data_out~2_combout\);

-- Location: FF_X81_Y60_N11
\DataMemory|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(1));

-- Location: LCCOMB_X81_Y61_N10
\MuxData|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux30~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & ((\DataMemory|data_out\(1)))) # (!\Data_Mux[0]~input_o\ & (\Data_In[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \Data_Mux[1]~input_o\,
	datac => \Data_In[1]~input_o\,
	datad => \DataMemory|data_out\(1),
	combout => \MuxData|Mux30~2_combout\);

-- Location: LCCOMB_X81_Y61_N0
\MuxData|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux30~3_combout\ = (\MuxData|Mux30~2_combout\) # ((!\Data_Mux[0]~input_o\ & (\ALU0|Mux30~3_combout\ & \Data_Mux[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \ALU0|Mux30~3_combout\,
	datac => \Data_Mux[1]~input_o\,
	datad => \MuxData|Mux30~2_combout\,
	combout => \MuxData|Mux30~3_combout\);

-- Location: FF_X83_Y59_N5
\IR|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \MuxData|Mux30~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(1));

-- Location: LCCOMB_X82_Y59_N8
\MuxA|f[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[1]~1_combout\ = (\A_Mux~input_o\ & (\IR|q\(1))) # (!\A_Mux~input_o\ & ((\MuxData|Mux30~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Mux~input_o\,
	datac => \IR|q\(1),
	datad => \MuxData|Mux30~3_combout\,
	combout => \MuxA|f[1]~1_combout\);

-- Location: FF_X82_Y59_N9
\A|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[1]~1_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(1));

-- Location: LCCOMB_X82_Y58_N24
\ALU0|add|cycle0|cycle0|cycle1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|add|cycle0|cycle0|cycle1|Cout~0_combout\ = (\MuxIm2|Mux30~0_combout\ & ((\ALU0|add|cycle0|cycle0|cycle0|Cout~0_combout\) # ((\A|q\(1) & !\Im_Mux1~input_o\)))) # (!\MuxIm2|Mux30~0_combout\ & (\A|q\(1) & (!\Im_Mux1~input_o\ & 
-- \ALU0|add|cycle0|cycle0|cycle0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(1),
	datab => \Im_Mux1~input_o\,
	datac => \MuxIm2|Mux30~0_combout\,
	datad => \ALU0|add|cycle0|cycle0|cycle0|Cout~0_combout\,
	combout => \ALU0|add|cycle0|cycle0|cycle1|Cout~0_combout\);

-- Location: LCCOMB_X82_Y61_N6
\ALU0|Mux29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux29~5_combout\ = (\Alu_Opcode[0]~input_o\ & (((\Alu_Opcode[1]~input_o\)))) # (!\Alu_Opcode[0]~input_o\ & (\ALU0|Mux29~4_combout\ $ (((\Alu_Opcode[1]~input_o\ & \ALU0|add|cycle0|cycle0|cycle1|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux29~4_combout\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \Alu_Opcode[0]~input_o\,
	datad => \ALU0|add|cycle0|cycle0|cycle1|Cout~0_combout\,
	combout => \ALU0|Mux29~5_combout\);

-- Location: LCCOMB_X82_Y61_N12
\ALU0|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux29~2_combout\ = (\Alu_Opcode[0]~input_o\ & ((\MuxIm2|Mux29~0_combout\) # ((!\ALU0|Mux29~5_combout\ & \MuxIm1|f[2]~1_combout\)))) # (!\Alu_Opcode[0]~input_o\ & (\ALU0|Mux29~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux29~5_combout\,
	datab => \MuxIm2|Mux29~0_combout\,
	datac => \Alu_Opcode[0]~input_o\,
	datad => \MuxIm1|f[2]~1_combout\,
	combout => \ALU0|Mux29~2_combout\);

-- Location: LCCOMB_X83_Y58_N30
\ALU0|sub|cycle0|cycle0|cycle2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|sub|cycle0|cycle0|cycle2|s~combout\ = \ALU0|sub|cycle0|cycle0|cycle1|Cout~0_combout\ $ (\MuxIm2|Mux29~0_combout\ $ (((!\Im_Mux1~input_o\ & \A|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \ALU0|sub|cycle0|cycle0|cycle1|Cout~0_combout\,
	datac => \MuxIm2|Mux29~0_combout\,
	datad => \A|q\(2),
	combout => \ALU0|sub|cycle0|cycle0|cycle2|s~combout\);

-- Location: LCCOMB_X82_Y61_N28
\ALU0|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux29~0_combout\ = (\Alu_Opcode[1]~input_o\ & (((\Alu_Opcode[0]~input_o\)) # (!\ALU0|sub|cycle0|cycle0|cycle2|s~combout\))) # (!\Alu_Opcode[1]~input_o\ & (((!\Alu_Opcode[0]~input_o\ & \MuxIm1|f[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|sub|cycle0|cycle0|cycle2|s~combout\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \Alu_Opcode[0]~input_o\,
	datad => \MuxIm1|f[1]~2_combout\,
	combout => \ALU0|Mux29~0_combout\);

-- Location: LCCOMB_X82_Y61_N22
\ALU0|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux29~1_combout\ = (\Alu_Opcode[0]~input_o\ & ((\ALU0|Mux29~0_combout\ & ((\MuxIm1|f[2]~1_combout\))) # (!\ALU0|Mux29~0_combout\ & (\MuxIm1|f[3]~3_combout\)))) # (!\Alu_Opcode[0]~input_o\ & (\ALU0|Mux29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \ALU0|Mux29~0_combout\,
	datac => \MuxIm1|f[3]~3_combout\,
	datad => \MuxIm1|f[2]~1_combout\,
	combout => \ALU0|Mux29~1_combout\);

-- Location: LCCOMB_X81_Y61_N26
\ALU0|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux29~3_combout\ = (\Alu_Opcode[2]~input_o\ & ((\ALU0|Mux29~1_combout\))) # (!\Alu_Opcode[2]~input_o\ & (\ALU0|Mux29~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alu_Opcode[2]~input_o\,
	datac => \ALU0|Mux29~2_combout\,
	datad => \ALU0|Mux29~1_combout\,
	combout => \ALU0|Mux29~3_combout\);

-- Location: IOIBUF_X72_Y0_N1
\Data_In[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(2),
	o => \Data_In[2]~input_o\);

-- Location: FF_X82_Y60_N27
\DataMemory|memory~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \MuxReg|f[2]~2_combout\,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~44_q\);

-- Location: LCCOMB_X79_Y60_N28
\DataMemory|data_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~3_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & (\DataMemory|memory_rtl_0|auto_generated|ram_block1a2\)) # (!\DataMemory|memory~41_q\ & ((\DataMemory|memory~44_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|memory~41_q\,
	datab => \DataMemory|data_out[14]~0_combout\,
	datac => \DataMemory|memory_rtl_0|auto_generated|ram_block1a2\,
	datad => \DataMemory|memory~44_q\,
	combout => \DataMemory|data_out~3_combout\);

-- Location: FF_X79_Y60_N29
\DataMemory|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(2));

-- Location: LCCOMB_X79_Y60_N2
\MuxData|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux29~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & ((\DataMemory|data_out\(2)))) # (!\Data_Mux[0]~input_o\ & (\Data_In[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \Data_Mux[1]~input_o\,
	datac => \Data_In[2]~input_o\,
	datad => \DataMemory|data_out\(2),
	combout => \MuxData|Mux29~2_combout\);

-- Location: LCCOMB_X81_Y61_N18
\MuxData|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux29~3_combout\ = (\MuxData|Mux29~2_combout\) # ((!\Data_Mux[0]~input_o\ & (\Data_Mux[1]~input_o\ & \ALU0|Mux29~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \Data_Mux[1]~input_o\,
	datac => \ALU0|Mux29~3_combout\,
	datad => \MuxData|Mux29~2_combout\,
	combout => \MuxData|Mux29~3_combout\);

-- Location: FF_X83_Y59_N7
\IR|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \MuxData|Mux29~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(2));

-- Location: LCCOMB_X83_Y59_N2
\DataMemory|memory~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|memory~76_combout\ = (!\IR|q\(2) & (!\IR|q\(4) & (!\IR|q\(3) & !\IR|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|q\(2),
	datab => \IR|q\(4),
	datac => \IR|q\(3),
	datad => \IR|q\(5),
	combout => \DataMemory|memory~76_combout\);

-- Location: LCCOMB_X83_Y59_N24
\DataMemory|memory~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|memory~75_combout\ = (\wen~input_o\ & (\en~input_o\ & (!\IR|q\(7) & !\IR|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wen~input_o\,
	datab => \en~input_o\,
	datac => \IR|q\(7),
	datad => \IR|q\(6),
	combout => \DataMemory|memory~75_combout\);

-- Location: LCCOMB_X84_Y59_N2
\DataMemory|memory~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|memory~77_combout\ = (\DataMemory|memory~76_combout\ & (!\IR|q\(1) & (!\IR|q\(0) & \DataMemory|memory~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|memory~76_combout\,
	datab => \IR|q\(1),
	datac => \IR|q\(0),
	datad => \DataMemory|memory~75_combout\,
	combout => \DataMemory|memory~77_combout\);

-- Location: FF_X82_Y60_N15
\DataMemory|memory~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \MuxReg|f[0]~0_combout\,
	ena => \DataMemory|memory~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|memory~42_q\);

-- Location: LCCOMB_X81_Y60_N0
\DataMemory|data_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMemory|data_out~1_combout\ = (!\DataMemory|data_out[14]~0_combout\ & ((\DataMemory|memory~41_q\ & ((\DataMemory|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (!\DataMemory|memory~41_q\ & (\DataMemory|memory~42_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemory|data_out[14]~0_combout\,
	datab => \DataMemory|memory~42_q\,
	datac => \DataMemory|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \DataMemory|memory~41_q\,
	combout => \DataMemory|data_out~1_combout\);

-- Location: FF_X81_Y60_N1
\DataMemory|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputclkctrl_outclk\,
	d => \DataMemory|data_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMemory|data_out\(0));

-- Location: IOIBUF_X56_Y73_N22
\Data_In[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(0),
	o => \Data_In[0]~input_o\);

-- Location: LCCOMB_X81_Y61_N28
\MuxData|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux31~2_combout\ = (!\Data_Mux[1]~input_o\ & ((\Data_Mux[0]~input_o\ & (\DataMemory|data_out\(0))) # (!\Data_Mux[0]~input_o\ & ((\Data_In[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \DataMemory|data_out\(0),
	datac => \Data_Mux[1]~input_o\,
	datad => \Data_In[0]~input_o\,
	combout => \MuxData|Mux31~2_combout\);

-- Location: LCCOMB_X81_Y61_N24
\ALU0|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux31~3_combout\ = (\Alu_Opcode[1]~input_o\ & (\MuxIm2|Mux31~0_combout\ $ (\MuxIm1|f[0]~0_combout\ $ (\Alu_Opcode[2]~input_o\)))) # (!\Alu_Opcode[1]~input_o\ & (\MuxIm2|Mux31~0_combout\ & (\MuxIm1|f[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux31~0_combout\,
	datab => \MuxIm1|f[0]~0_combout\,
	datac => \Alu_Opcode[1]~input_o\,
	datad => \Alu_Opcode[2]~input_o\,
	combout => \ALU0|Mux31~3_combout\);

-- Location: LCCOMB_X82_Y61_N30
\ALU0|Mux31~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux31~8_combout\ = (\MuxIm2|Mux31~0_combout\) # ((\A|q\(0) & (!\Alu_Opcode[1]~input_o\ & !\Im_Mux1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|q\(0),
	datab => \Alu_Opcode[1]~input_o\,
	datac => \Im_Mux1~input_o\,
	datad => \MuxIm2|Mux31~0_combout\,
	combout => \ALU0|Mux31~8_combout\);

-- Location: LCCOMB_X81_Y61_N6
\ALU0|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux31~4_combout\ = (\Alu_Opcode[0]~input_o\ & (((\ALU0|Mux31~8_combout\) # (\Alu_Opcode[2]~input_o\)))) # (!\Alu_Opcode[0]~input_o\ & (\ALU0|Mux31~3_combout\ & ((!\Alu_Opcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \ALU0|Mux31~3_combout\,
	datac => \ALU0|Mux31~8_combout\,
	datad => \Alu_Opcode[2]~input_o\,
	combout => \ALU0|Mux31~4_combout\);

-- Location: LCCOMB_X82_Y61_N26
\ALU0|Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux31~5_combout\ = (!\Im_Mux1~input_o\ & ((\Alu_Opcode[1]~input_o\ & ((\A|q\(0)))) # (!\Alu_Opcode[1]~input_o\ & (\A|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Im_Mux1~input_o\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \A|q\(1),
	datad => \A|q\(0),
	combout => \ALU0|Mux31~5_combout\);

-- Location: LCCOMB_X81_Y61_N2
\ALU0|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux31~2_combout\ = (\MuxIm2|Mux31~0_combout\ $ (\MuxIm1|f[0]~0_combout\ $ (\Alu_Opcode[2]~input_o\))) # (!\Alu_Opcode[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm2|Mux31~0_combout\,
	datab => \MuxIm1|f[0]~0_combout\,
	datac => \Alu_Opcode[1]~input_o\,
	datad => \Alu_Opcode[2]~input_o\,
	combout => \ALU0|Mux31~2_combout\);

-- Location: LCCOMB_X81_Y61_N12
\ALU0|Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux31~6_combout\ = (\ALU0|Mux31~4_combout\ & (((\ALU0|Mux31~5_combout\)) # (!\Alu_Opcode[2]~input_o\))) # (!\ALU0|Mux31~4_combout\ & (\Alu_Opcode[2]~input_o\ & ((!\ALU0|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux31~4_combout\,
	datab => \Alu_Opcode[2]~input_o\,
	datac => \ALU0|Mux31~5_combout\,
	datad => \ALU0|Mux31~2_combout\,
	combout => \ALU0|Mux31~6_combout\);

-- Location: LCCOMB_X81_Y61_N14
\MuxData|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux31~4_combout\ = (\MuxData|Mux31~2_combout\) # ((!\Data_Mux[0]~input_o\ & (\Data_Mux[1]~input_o\ & \ALU0|Mux31~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \MuxData|Mux31~2_combout\,
	datac => \Data_Mux[1]~input_o\,
	datad => \ALU0|Mux31~6_combout\,
	combout => \MuxData|Mux31~4_combout\);

-- Location: FF_X83_Y58_N19
\IR|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \MuxData|Mux31~4_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(0));

-- Location: LCCOMB_X84_Y58_N8
\MuxA|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxA|f[0]~0_combout\ = (\A_Mux~input_o\ & (\IR|q\(0))) # (!\A_Mux~input_o\ & ((\MuxData|Mux31~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Mux~input_o\,
	datac => \IR|q\(0),
	datad => \MuxData|Mux31~4_combout\,
	combout => \MuxA|f[0]~0_combout\);

-- Location: FF_X84_Y58_N9
\A|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxA|f[0]~0_combout\,
	clrn => \ALT_INV_Clr_A~inputclkctrl_outclk\,
	ena => \Ld_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|q\(0));

-- Location: IOIBUF_X25_Y73_N15
\Ld_C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ld_C,
	o => \Ld_C~input_o\);

-- Location: LCCOMB_X80_Y61_N4
\ALU0|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux32~0_combout\ = ((\Im_Mux2[0]~input_o\) # ((\Im_Mux2[1]~input_o\) # (!\Alu_Opcode[1]~input_o\))) # (!\B|q\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|q\(31),
	datab => \Im_Mux2[0]~input_o\,
	datac => \Im_Mux2[1]~input_o\,
	datad => \Alu_Opcode[1]~input_o\,
	combout => \ALU0|Mux32~0_combout\);

-- Location: LCCOMB_X79_Y61_N22
\ALU0|Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux32~1_combout\ = (\Alu_Opcode[2]~input_o\ & (\MuxIm1|f[31]~31_combout\ & ((\ALU0|Mux32~0_combout\) # (\ALU0|sub|cycle1|cycle3|cycle2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[2]~input_o\,
	datab => \ALU0|Mux32~0_combout\,
	datac => \MuxIm1|f[31]~31_combout\,
	datad => \ALU0|sub|cycle1|cycle3|cycle2|Cout~0_combout\,
	combout => \ALU0|Mux32~1_combout\);

-- Location: LCCOMB_X79_Y61_N8
\ALU0|Mux32~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux32~4_combout\ = (!\Alu_Opcode[2]~input_o\ & (\MuxIm2|Mux0~0_combout\ & ((\MuxIm1|f[31]~31_combout\) # (\ALU0|add|cycle1|cycle3|cycle2|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[2]~input_o\,
	datab => \MuxIm2|Mux0~0_combout\,
	datac => \MuxIm1|f[31]~31_combout\,
	datad => \ALU0|add|cycle1|cycle3|cycle2|Cout~2_combout\,
	combout => \ALU0|Mux32~4_combout\);

-- Location: LCCOMB_X79_Y61_N4
\ALU0|Mux32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux32~2_combout\ = (\Alu_Opcode[2]~input_o\ & \ALU0|sub|cycle1|cycle3|cycle2|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[2]~input_o\,
	datad => \ALU0|sub|cycle1|cycle3|cycle2|Cout~0_combout\,
	combout => \ALU0|Mux32~2_combout\);

-- Location: LCCOMB_X79_Y61_N10
\ALU0|Mux32~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux32~3_combout\ = (!\MuxIm2|Mux0~0_combout\ & ((\ALU0|Mux32~2_combout\) # ((\MuxIm1|f[31]~31_combout\ & \ALU0|add|cycle1|cycle3|cycle2|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIm1|f[31]~31_combout\,
	datab => \MuxIm2|Mux0~0_combout\,
	datac => \ALU0|Mux32~2_combout\,
	datad => \ALU0|add|cycle1|cycle3|cycle2|Cout~2_combout\,
	combout => \ALU0|Mux32~3_combout\);

-- Location: LCCOMB_X79_Y61_N18
\ALU0|Mux32~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux32~5_combout\ = (\ALU0|Mux32~1_combout\) # ((\Alu_Opcode[1]~input_o\ & ((\ALU0|Mux32~4_combout\) # (\ALU0|Mux32~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux32~1_combout\,
	datab => \Alu_Opcode[1]~input_o\,
	datac => \ALU0|Mux32~4_combout\,
	datad => \ALU0|Mux32~3_combout\,
	combout => \ALU0|Mux32~5_combout\);

-- Location: LCCOMB_X79_Y61_N24
\C|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C|q~0_combout\ = (\Ld_C~input_o\ & (!\Alu_Opcode[0]~input_o\ & ((\ALU0|Mux32~5_combout\)))) # (!\Ld_C~input_o\ & (((\C|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Opcode[0]~input_o\,
	datab => \Ld_C~input_o\,
	datac => \C|q~q\,
	datad => \ALU0|Mux32~5_combout\,
	combout => \C|q~0_combout\);

-- Location: IOIBUF_X20_Y73_N15
\Clr_C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clr_C,
	o => \Clr_C~input_o\);

-- Location: FF_X79_Y61_N25
\C|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \C|q~0_combout\,
	clrn => \ALT_INV_Clr_C~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|q~q\);

-- Location: IOIBUF_X115_Y62_N22
\Ld_Z~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ld_Z,
	o => \Ld_Z~input_o\);

-- Location: LCCOMB_X79_Y61_N0
\Z|q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z|q~4_combout\ = (!\ALU0|Mux16~4_combout\ & (!\ALU0|Mux17~5_combout\ & (!\ALU0|Mux15~4_combout\ & !\ALU0|Mux18~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux16~4_combout\,
	datab => \ALU0|Mux17~5_combout\,
	datac => \ALU0|Mux15~4_combout\,
	datad => \ALU0|Mux18~5_combout\,
	combout => \Z|q~4_combout\);

-- Location: LCCOMB_X82_Y57_N14
\Z|q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z|q~2_combout\ = (!\ALU0|Mux25~5_combout\ & (!\ALU0|Mux24~5_combout\ & (!\ALU0|Mux23~5_combout\ & !\ALU0|Mux26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux25~5_combout\,
	datab => \ALU0|Mux24~5_combout\,
	datac => \ALU0|Mux23~5_combout\,
	datad => \ALU0|Mux26~4_combout\,
	combout => \Z|q~2_combout\);

-- Location: LCCOMB_X83_Y60_N20
\Z|q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z|q~3_combout\ = (!\ALU0|Mux20~4_combout\ & (!\ALU0|Mux19~5_combout\ & (!\ALU0|Mux22~4_combout\ & !\ALU0|Mux21~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux20~4_combout\,
	datab => \ALU0|Mux19~5_combout\,
	datac => \ALU0|Mux22~4_combout\,
	datad => \ALU0|Mux21~5_combout\,
	combout => \Z|q~3_combout\);

-- Location: LCCOMB_X81_Y61_N20
\Z|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z|q~0_combout\ = (!\ALU0|Mux29~3_combout\ & (\Ld_Z~input_o\ & (!\ALU0|Mux30~3_combout\ & !\ALU0|Mux31~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux29~3_combout\,
	datab => \Ld_Z~input_o\,
	datac => \ALU0|Mux30~3_combout\,
	datad => \ALU0|Mux31~6_combout\,
	combout => \Z|q~0_combout\);

-- Location: LCCOMB_X80_Y58_N10
\Z|q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z|q~1_combout\ = (!\ALU0|Mux28~3_combout\ & (!\ALU0|Mux27~5_combout\ & (\Z|q~0_combout\ & !\ALU0|Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux28~3_combout\,
	datab => \ALU0|Mux27~5_combout\,
	datac => \Z|q~0_combout\,
	datad => \ALU0|Mux0~4_combout\,
	combout => \Z|q~1_combout\);

-- Location: LCCOMB_X80_Y58_N0
\Z|q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z|q~5_combout\ = (\Z|q~4_combout\ & (\Z|q~2_combout\ & (\Z|q~3_combout\ & \Z|q~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z|q~4_combout\,
	datab => \Z|q~2_combout\,
	datac => \Z|q~3_combout\,
	datad => \Z|q~1_combout\,
	combout => \Z|q~5_combout\);

-- Location: LCCOMB_X81_Y59_N22
\Z|q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z|q~7_combout\ = (!\ALU0|Mux10~4_combout\ & ((\Alu_Opcode[2]~input_o\ & ((!\ALU0|Mux9~1_combout\))) # (!\Alu_Opcode[2]~input_o\ & (!\ALU0|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux9~3_combout\,
	datab => \Alu_Opcode[2]~input_o\,
	datac => \ALU0|Mux9~1_combout\,
	datad => \ALU0|Mux10~4_combout\,
	combout => \Z|q~7_combout\);

-- Location: LCCOMB_X80_Y56_N22
\Z|q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z|q~6_combout\ = (!\ALU0|Mux12~2_combout\ & (!\ALU0|Mux14~2_combout\ & (!\ALU0|Mux13~2_combout\ & !\ALU0|Mux11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux12~2_combout\,
	datab => \ALU0|Mux14~2_combout\,
	datac => \ALU0|Mux13~2_combout\,
	datad => \ALU0|Mux11~2_combout\,
	combout => \Z|q~6_combout\);

-- Location: LCCOMB_X80_Y58_N14
\Z|q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z|q~8_combout\ = (\Z|q~7_combout\ & (!\ALU0|Mux8~5_combout\ & (\Z|q~6_combout\ & !\ALU0|Mux7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z|q~7_combout\,
	datab => \ALU0|Mux8~5_combout\,
	datac => \Z|q~6_combout\,
	datad => \ALU0|Mux7~5_combout\,
	combout => \Z|q~8_combout\);

-- Location: LCCOMB_X80_Y58_N8
\Z|q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z|q~9_combout\ = (!\ALU0|Mux5~4_combout\ & (!\ALU0|Mux6~2_combout\ & (!\ALU0|Mux3~2_combout\ & !\ALU0|Mux4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux5~4_combout\,
	datab => \ALU0|Mux6~2_combout\,
	datac => \ALU0|Mux3~2_combout\,
	datad => \ALU0|Mux4~4_combout\,
	combout => \Z|q~9_combout\);

-- Location: LCCOMB_X80_Y58_N2
\Z|q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z|q~10_combout\ = (!\ALU0|Mux1~5_combout\ & (\Z|q~8_combout\ & (\Z|q~9_combout\ & !\ALU0|Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux1~5_combout\,
	datab => \Z|q~8_combout\,
	datac => \Z|q~9_combout\,
	datad => \ALU0|Mux2~4_combout\,
	combout => \Z|q~10_combout\);

-- Location: LCCOMB_X80_Y58_N24
\Z|q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z|q~11_combout\ = (\Ld_Z~input_o\ & (\Z|q~5_combout\ & ((\Z|q~10_combout\)))) # (!\Ld_Z~input_o\ & ((\Z|q~q\) # ((\Z|q~5_combout\ & \Z|q~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ld_Z~input_o\,
	datab => \Z|q~5_combout\,
	datac => \Z|q~q\,
	datad => \Z|q~10_combout\,
	combout => \Z|q~11_combout\);

-- Location: IOIBUF_X111_Y73_N1
\Clr_Z~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clr_Z,
	o => \Clr_Z~input_o\);

-- Location: FF_X80_Y58_N25
\Z|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Z|q~11_combout\,
	clrn => \ALT_INV_Clr_Z~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Z|q~q\);

-- Location: IOIBUF_X58_Y0_N22
\Clr_PC~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clr_PC,
	o => \Clr_PC~input_o\);

-- Location: CLKCTRL_G18
\Clr_PC~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clr_PC~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clr_PC~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y22_N15
\Ld_PC~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ld_PC,
	o => \Ld_PC~input_o\);

-- Location: IOIBUF_X115_Y29_N1
\Inc_PC~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inc_PC,
	o => \Inc_PC~input_o\);

-- Location: LCCOMB_X114_Y30_N0
\ProgramCounter|q_reg[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[0]~30_combout\ = (\Ld_PC~input_o\ & !\Inc_PC~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ld_PC~input_o\,
	datad => \Inc_PC~input_o\,
	combout => \ProgramCounter|q_reg[0]~30_combout\);

-- Location: FF_X91_Y58_N13
\ProgramCounter|q_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \IR|q\(0),
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ProgramCounter|q_reg[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(0));

-- Location: LCCOMB_X84_Y61_N0
\ProgramCounter|q_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[1]~feeder_combout\ = \IR|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IR|q\(1),
	combout => \ProgramCounter|q_reg[1]~feeder_combout\);

-- Location: FF_X84_Y61_N1
\ProgramCounter|q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[1]~feeder_combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	ena => \ProgramCounter|q_reg[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(1));

-- Location: LCCOMB_X114_Y23_N2
\ProgramCounter|q_reg[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[2]~31_combout\ = \ProgramCounter|q_reg\(2) $ (VCC)
-- \ProgramCounter|q_reg[2]~32\ = CARRY(\ProgramCounter|q_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ProgramCounter|q_reg\(2),
	datad => VCC,
	combout => \ProgramCounter|q_reg[2]~31_combout\,
	cout => \ProgramCounter|q_reg[2]~32\);

-- Location: FF_X114_Y23_N3
\ProgramCounter|q_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[2]~31_combout\,
	asdata => \IR|q\(2),
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(2));

-- Location: LCCOMB_X114_Y23_N4
\ProgramCounter|q_reg[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[3]~33_combout\ = (\ProgramCounter|q_reg\(3) & (!\ProgramCounter|q_reg[2]~32\)) # (!\ProgramCounter|q_reg\(3) & ((\ProgramCounter|q_reg[2]~32\) # (GND)))
-- \ProgramCounter|q_reg[3]~34\ = CARRY((!\ProgramCounter|q_reg[2]~32\) # (!\ProgramCounter|q_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|q_reg\(3),
	datad => VCC,
	cin => \ProgramCounter|q_reg[2]~32\,
	combout => \ProgramCounter|q_reg[3]~33_combout\,
	cout => \ProgramCounter|q_reg[3]~34\);

-- Location: FF_X114_Y23_N5
\ProgramCounter|q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[3]~33_combout\,
	asdata => \IR|q\(3),
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(3));

-- Location: LCCOMB_X114_Y23_N6
\ProgramCounter|q_reg[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[4]~35_combout\ = (\ProgramCounter|q_reg\(4) & (\ProgramCounter|q_reg[3]~34\ $ (GND))) # (!\ProgramCounter|q_reg\(4) & (!\ProgramCounter|q_reg[3]~34\ & VCC))
-- \ProgramCounter|q_reg[4]~36\ = CARRY((\ProgramCounter|q_reg\(4) & !\ProgramCounter|q_reg[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|q_reg\(4),
	datad => VCC,
	cin => \ProgramCounter|q_reg[3]~34\,
	combout => \ProgramCounter|q_reg[4]~35_combout\,
	cout => \ProgramCounter|q_reg[4]~36\);

-- Location: FF_X114_Y23_N7
\ProgramCounter|q_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[4]~35_combout\,
	asdata => \IR|q\(4),
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(4));

-- Location: LCCOMB_X114_Y23_N8
\ProgramCounter|q_reg[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[5]~37_combout\ = (\ProgramCounter|q_reg\(5) & (!\ProgramCounter|q_reg[4]~36\)) # (!\ProgramCounter|q_reg\(5) & ((\ProgramCounter|q_reg[4]~36\) # (GND)))
-- \ProgramCounter|q_reg[5]~38\ = CARRY((!\ProgramCounter|q_reg[4]~36\) # (!\ProgramCounter|q_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ProgramCounter|q_reg\(5),
	datad => VCC,
	cin => \ProgramCounter|q_reg[4]~36\,
	combout => \ProgramCounter|q_reg[5]~37_combout\,
	cout => \ProgramCounter|q_reg[5]~38\);

-- Location: FF_X114_Y23_N9
\ProgramCounter|q_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[5]~37_combout\,
	asdata => \IR|q\(5),
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(5));

-- Location: LCCOMB_X114_Y23_N10
\ProgramCounter|q_reg[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[6]~39_combout\ = (\ProgramCounter|q_reg\(6) & (\ProgramCounter|q_reg[5]~38\ $ (GND))) # (!\ProgramCounter|q_reg\(6) & (!\ProgramCounter|q_reg[5]~38\ & VCC))
-- \ProgramCounter|q_reg[6]~40\ = CARRY((\ProgramCounter|q_reg\(6) & !\ProgramCounter|q_reg[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|q_reg\(6),
	datad => VCC,
	cin => \ProgramCounter|q_reg[5]~38\,
	combout => \ProgramCounter|q_reg[6]~39_combout\,
	cout => \ProgramCounter|q_reg[6]~40\);

-- Location: FF_X114_Y23_N11
\ProgramCounter|q_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[6]~39_combout\,
	asdata => \IR|q\(6),
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(6));

-- Location: LCCOMB_X114_Y23_N12
\ProgramCounter|q_reg[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[7]~41_combout\ = (\ProgramCounter|q_reg\(7) & (!\ProgramCounter|q_reg[6]~40\)) # (!\ProgramCounter|q_reg\(7) & ((\ProgramCounter|q_reg[6]~40\) # (GND)))
-- \ProgramCounter|q_reg[7]~42\ = CARRY((!\ProgramCounter|q_reg[6]~40\) # (!\ProgramCounter|q_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|q_reg\(7),
	datad => VCC,
	cin => \ProgramCounter|q_reg[6]~40\,
	combout => \ProgramCounter|q_reg[7]~41_combout\,
	cout => \ProgramCounter|q_reg[7]~42\);

-- Location: FF_X114_Y23_N13
\ProgramCounter|q_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[7]~41_combout\,
	asdata => \IR|q\(7),
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(7));

-- Location: LCCOMB_X114_Y23_N14
\ProgramCounter|q_reg[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[8]~43_combout\ = (\ProgramCounter|q_reg\(8) & (\ProgramCounter|q_reg[7]~42\ $ (GND))) # (!\ProgramCounter|q_reg\(8) & (!\ProgramCounter|q_reg[7]~42\ & VCC))
-- \ProgramCounter|q_reg[8]~44\ = CARRY((\ProgramCounter|q_reg\(8) & !\ProgramCounter|q_reg[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ProgramCounter|q_reg\(8),
	datad => VCC,
	cin => \ProgramCounter|q_reg[7]~42\,
	combout => \ProgramCounter|q_reg[8]~43_combout\,
	cout => \ProgramCounter|q_reg[8]~44\);

-- Location: FF_X114_Y23_N15
\ProgramCounter|q_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[8]~43_combout\,
	asdata => \IR|q\(8),
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(8));

-- Location: LCCOMB_X114_Y23_N16
\ProgramCounter|q_reg[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[9]~45_combout\ = (\ProgramCounter|q_reg\(9) & (!\ProgramCounter|q_reg[8]~44\)) # (!\ProgramCounter|q_reg\(9) & ((\ProgramCounter|q_reg[8]~44\) # (GND)))
-- \ProgramCounter|q_reg[9]~46\ = CARRY((!\ProgramCounter|q_reg[8]~44\) # (!\ProgramCounter|q_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ProgramCounter|q_reg\(9),
	datad => VCC,
	cin => \ProgramCounter|q_reg[8]~44\,
	combout => \ProgramCounter|q_reg[9]~45_combout\,
	cout => \ProgramCounter|q_reg[9]~46\);

-- Location: FF_X114_Y23_N17
\ProgramCounter|q_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[9]~45_combout\,
	asdata => \IR|q\(9),
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(9));

-- Location: LCCOMB_X114_Y23_N18
\ProgramCounter|q_reg[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[10]~47_combout\ = (\ProgramCounter|q_reg\(10) & (\ProgramCounter|q_reg[9]~46\ $ (GND))) # (!\ProgramCounter|q_reg\(10) & (!\ProgramCounter|q_reg[9]~46\ & VCC))
-- \ProgramCounter|q_reg[10]~48\ = CARRY((\ProgramCounter|q_reg\(10) & !\ProgramCounter|q_reg[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ProgramCounter|q_reg\(10),
	datad => VCC,
	cin => \ProgramCounter|q_reg[9]~46\,
	combout => \ProgramCounter|q_reg[10]~47_combout\,
	cout => \ProgramCounter|q_reg[10]~48\);

-- Location: FF_X114_Y23_N19
\ProgramCounter|q_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[10]~47_combout\,
	asdata => \IR|q\(10),
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(10));

-- Location: LCCOMB_X114_Y23_N20
\ProgramCounter|q_reg[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[11]~49_combout\ = (\ProgramCounter|q_reg\(11) & (!\ProgramCounter|q_reg[10]~48\)) # (!\ProgramCounter|q_reg\(11) & ((\ProgramCounter|q_reg[10]~48\) # (GND)))
-- \ProgramCounter|q_reg[11]~50\ = CARRY((!\ProgramCounter|q_reg[10]~48\) # (!\ProgramCounter|q_reg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ProgramCounter|q_reg\(11),
	datad => VCC,
	cin => \ProgramCounter|q_reg[10]~48\,
	combout => \ProgramCounter|q_reg[11]~49_combout\,
	cout => \ProgramCounter|q_reg[11]~50\);

-- Location: FF_X114_Y23_N21
\ProgramCounter|q_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[11]~49_combout\,
	asdata => \IR|q\(11),
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(11));

-- Location: LCCOMB_X114_Y23_N22
\ProgramCounter|q_reg[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[12]~51_combout\ = (\ProgramCounter|q_reg\(12) & (\ProgramCounter|q_reg[11]~50\ $ (GND))) # (!\ProgramCounter|q_reg\(12) & (!\ProgramCounter|q_reg[11]~50\ & VCC))
-- \ProgramCounter|q_reg[12]~52\ = CARRY((\ProgramCounter|q_reg\(12) & !\ProgramCounter|q_reg[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|q_reg\(12),
	datad => VCC,
	cin => \ProgramCounter|q_reg[11]~50\,
	combout => \ProgramCounter|q_reg[12]~51_combout\,
	cout => \ProgramCounter|q_reg[12]~52\);

-- Location: FF_X114_Y23_N23
\ProgramCounter|q_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[12]~51_combout\,
	asdata => \IR|q\(12),
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(12));

-- Location: LCCOMB_X114_Y23_N24
\ProgramCounter|q_reg[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[13]~53_combout\ = (\ProgramCounter|q_reg\(13) & (!\ProgramCounter|q_reg[12]~52\)) # (!\ProgramCounter|q_reg\(13) & ((\ProgramCounter|q_reg[12]~52\) # (GND)))
-- \ProgramCounter|q_reg[13]~54\ = CARRY((!\ProgramCounter|q_reg[12]~52\) # (!\ProgramCounter|q_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ProgramCounter|q_reg\(13),
	datad => VCC,
	cin => \ProgramCounter|q_reg[12]~52\,
	combout => \ProgramCounter|q_reg[13]~53_combout\,
	cout => \ProgramCounter|q_reg[13]~54\);

-- Location: FF_X114_Y23_N25
\ProgramCounter|q_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[13]~53_combout\,
	asdata => \IR|q\(13),
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(13));

-- Location: LCCOMB_X114_Y23_N26
\ProgramCounter|q_reg[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[14]~55_combout\ = (\ProgramCounter|q_reg\(14) & (\ProgramCounter|q_reg[13]~54\ $ (GND))) # (!\ProgramCounter|q_reg\(14) & (!\ProgramCounter|q_reg[13]~54\ & VCC))
-- \ProgramCounter|q_reg[14]~56\ = CARRY((\ProgramCounter|q_reg\(14) & !\ProgramCounter|q_reg[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|q_reg\(14),
	datad => VCC,
	cin => \ProgramCounter|q_reg[13]~54\,
	combout => \ProgramCounter|q_reg[14]~55_combout\,
	cout => \ProgramCounter|q_reg[14]~56\);

-- Location: FF_X114_Y23_N27
\ProgramCounter|q_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[14]~55_combout\,
	asdata => \IR|q\(14),
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(14));

-- Location: LCCOMB_X114_Y23_N28
\ProgramCounter|q_reg[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[15]~57_combout\ = (\ProgramCounter|q_reg\(15) & (!\ProgramCounter|q_reg[14]~56\)) # (!\ProgramCounter|q_reg\(15) & ((\ProgramCounter|q_reg[14]~56\) # (GND)))
-- \ProgramCounter|q_reg[15]~58\ = CARRY((!\ProgramCounter|q_reg[14]~56\) # (!\ProgramCounter|q_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ProgramCounter|q_reg\(15),
	datad => VCC,
	cin => \ProgramCounter|q_reg[14]~56\,
	combout => \ProgramCounter|q_reg[15]~57_combout\,
	cout => \ProgramCounter|q_reg[15]~58\);

-- Location: FF_X114_Y23_N29
\ProgramCounter|q_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[15]~57_combout\,
	asdata => \IR|q\(15),
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(15));

-- Location: LCCOMB_X114_Y23_N30
\ProgramCounter|q_reg[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[16]~59_combout\ = (\ProgramCounter|q_reg\(16) & (\ProgramCounter|q_reg[15]~58\ $ (GND))) # (!\ProgramCounter|q_reg\(16) & (!\ProgramCounter|q_reg[15]~58\ & VCC))
-- \ProgramCounter|q_reg[16]~60\ = CARRY((\ProgramCounter|q_reg\(16) & !\ProgramCounter|q_reg[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|q_reg\(16),
	datad => VCC,
	cin => \ProgramCounter|q_reg[15]~58\,
	combout => \ProgramCounter|q_reg[16]~59_combout\,
	cout => \ProgramCounter|q_reg[16]~60\);

-- Location: LCCOMB_X114_Y23_N0
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X114_Y23_N31
\ProgramCounter|q_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[16]~59_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(16));

-- Location: LCCOMB_X114_Y22_N0
\ProgramCounter|q_reg[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[17]~61_combout\ = (\ProgramCounter|q_reg\(17) & (!\ProgramCounter|q_reg[16]~60\)) # (!\ProgramCounter|q_reg\(17) & ((\ProgramCounter|q_reg[16]~60\) # (GND)))
-- \ProgramCounter|q_reg[17]~62\ = CARRY((!\ProgramCounter|q_reg[16]~60\) # (!\ProgramCounter|q_reg\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ProgramCounter|q_reg\(17),
	datad => VCC,
	cin => \ProgramCounter|q_reg[16]~60\,
	combout => \ProgramCounter|q_reg[17]~61_combout\,
	cout => \ProgramCounter|q_reg[17]~62\);

-- Location: FF_X114_Y22_N1
\ProgramCounter|q_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[17]~61_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(17));

-- Location: LCCOMB_X114_Y22_N2
\ProgramCounter|q_reg[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[18]~63_combout\ = (\ProgramCounter|q_reg\(18) & (\ProgramCounter|q_reg[17]~62\ $ (GND))) # (!\ProgramCounter|q_reg\(18) & (!\ProgramCounter|q_reg[17]~62\ & VCC))
-- \ProgramCounter|q_reg[18]~64\ = CARRY((\ProgramCounter|q_reg\(18) & !\ProgramCounter|q_reg[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ProgramCounter|q_reg\(18),
	datad => VCC,
	cin => \ProgramCounter|q_reg[17]~62\,
	combout => \ProgramCounter|q_reg[18]~63_combout\,
	cout => \ProgramCounter|q_reg[18]~64\);

-- Location: FF_X114_Y22_N3
\ProgramCounter|q_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[18]~63_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(18));

-- Location: LCCOMB_X114_Y22_N4
\ProgramCounter|q_reg[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[19]~65_combout\ = (\ProgramCounter|q_reg\(19) & (!\ProgramCounter|q_reg[18]~64\)) # (!\ProgramCounter|q_reg\(19) & ((\ProgramCounter|q_reg[18]~64\) # (GND)))
-- \ProgramCounter|q_reg[19]~66\ = CARRY((!\ProgramCounter|q_reg[18]~64\) # (!\ProgramCounter|q_reg\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ProgramCounter|q_reg\(19),
	datad => VCC,
	cin => \ProgramCounter|q_reg[18]~64\,
	combout => \ProgramCounter|q_reg[19]~65_combout\,
	cout => \ProgramCounter|q_reg[19]~66\);

-- Location: FF_X114_Y22_N5
\ProgramCounter|q_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[19]~65_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(19));

-- Location: LCCOMB_X114_Y22_N6
\ProgramCounter|q_reg[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[20]~67_combout\ = (\ProgramCounter|q_reg\(20) & (\ProgramCounter|q_reg[19]~66\ $ (GND))) # (!\ProgramCounter|q_reg\(20) & (!\ProgramCounter|q_reg[19]~66\ & VCC))
-- \ProgramCounter|q_reg[20]~68\ = CARRY((\ProgramCounter|q_reg\(20) & !\ProgramCounter|q_reg[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|q_reg\(20),
	datad => VCC,
	cin => \ProgramCounter|q_reg[19]~66\,
	combout => \ProgramCounter|q_reg[20]~67_combout\,
	cout => \ProgramCounter|q_reg[20]~68\);

-- Location: FF_X114_Y22_N7
\ProgramCounter|q_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[20]~67_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(20));

-- Location: LCCOMB_X114_Y22_N8
\ProgramCounter|q_reg[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[21]~69_combout\ = (\ProgramCounter|q_reg\(21) & (!\ProgramCounter|q_reg[20]~68\)) # (!\ProgramCounter|q_reg\(21) & ((\ProgramCounter|q_reg[20]~68\) # (GND)))
-- \ProgramCounter|q_reg[21]~70\ = CARRY((!\ProgramCounter|q_reg[20]~68\) # (!\ProgramCounter|q_reg\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ProgramCounter|q_reg\(21),
	datad => VCC,
	cin => \ProgramCounter|q_reg[20]~68\,
	combout => \ProgramCounter|q_reg[21]~69_combout\,
	cout => \ProgramCounter|q_reg[21]~70\);

-- Location: FF_X114_Y22_N9
\ProgramCounter|q_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[21]~69_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(21));

-- Location: LCCOMB_X114_Y22_N10
\ProgramCounter|q_reg[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[22]~71_combout\ = (\ProgramCounter|q_reg\(22) & (\ProgramCounter|q_reg[21]~70\ $ (GND))) # (!\ProgramCounter|q_reg\(22) & (!\ProgramCounter|q_reg[21]~70\ & VCC))
-- \ProgramCounter|q_reg[22]~72\ = CARRY((\ProgramCounter|q_reg\(22) & !\ProgramCounter|q_reg[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|q_reg\(22),
	datad => VCC,
	cin => \ProgramCounter|q_reg[21]~70\,
	combout => \ProgramCounter|q_reg[22]~71_combout\,
	cout => \ProgramCounter|q_reg[22]~72\);

-- Location: FF_X114_Y22_N11
\ProgramCounter|q_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[22]~71_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(22));

-- Location: LCCOMB_X114_Y22_N12
\ProgramCounter|q_reg[23]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[23]~73_combout\ = (\ProgramCounter|q_reg\(23) & (!\ProgramCounter|q_reg[22]~72\)) # (!\ProgramCounter|q_reg\(23) & ((\ProgramCounter|q_reg[22]~72\) # (GND)))
-- \ProgramCounter|q_reg[23]~74\ = CARRY((!\ProgramCounter|q_reg[22]~72\) # (!\ProgramCounter|q_reg\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|q_reg\(23),
	datad => VCC,
	cin => \ProgramCounter|q_reg[22]~72\,
	combout => \ProgramCounter|q_reg[23]~73_combout\,
	cout => \ProgramCounter|q_reg[23]~74\);

-- Location: FF_X114_Y22_N13
\ProgramCounter|q_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[23]~73_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(23));

-- Location: LCCOMB_X114_Y22_N14
\ProgramCounter|q_reg[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[24]~75_combout\ = (\ProgramCounter|q_reg\(24) & (\ProgramCounter|q_reg[23]~74\ $ (GND))) # (!\ProgramCounter|q_reg\(24) & (!\ProgramCounter|q_reg[23]~74\ & VCC))
-- \ProgramCounter|q_reg[24]~76\ = CARRY((\ProgramCounter|q_reg\(24) & !\ProgramCounter|q_reg[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ProgramCounter|q_reg\(24),
	datad => VCC,
	cin => \ProgramCounter|q_reg[23]~74\,
	combout => \ProgramCounter|q_reg[24]~75_combout\,
	cout => \ProgramCounter|q_reg[24]~76\);

-- Location: FF_X114_Y22_N15
\ProgramCounter|q_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[24]~75_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(24));

-- Location: LCCOMB_X114_Y22_N16
\ProgramCounter|q_reg[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[25]~77_combout\ = (\ProgramCounter|q_reg\(25) & (!\ProgramCounter|q_reg[24]~76\)) # (!\ProgramCounter|q_reg\(25) & ((\ProgramCounter|q_reg[24]~76\) # (GND)))
-- \ProgramCounter|q_reg[25]~78\ = CARRY((!\ProgramCounter|q_reg[24]~76\) # (!\ProgramCounter|q_reg\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ProgramCounter|q_reg\(25),
	datad => VCC,
	cin => \ProgramCounter|q_reg[24]~76\,
	combout => \ProgramCounter|q_reg[25]~77_combout\,
	cout => \ProgramCounter|q_reg[25]~78\);

-- Location: FF_X114_Y22_N17
\ProgramCounter|q_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[25]~77_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(25));

-- Location: LCCOMB_X114_Y22_N18
\ProgramCounter|q_reg[26]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[26]~79_combout\ = (\ProgramCounter|q_reg\(26) & (\ProgramCounter|q_reg[25]~78\ $ (GND))) # (!\ProgramCounter|q_reg\(26) & (!\ProgramCounter|q_reg[25]~78\ & VCC))
-- \ProgramCounter|q_reg[26]~80\ = CARRY((\ProgramCounter|q_reg\(26) & !\ProgramCounter|q_reg[25]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ProgramCounter|q_reg\(26),
	datad => VCC,
	cin => \ProgramCounter|q_reg[25]~78\,
	combout => \ProgramCounter|q_reg[26]~79_combout\,
	cout => \ProgramCounter|q_reg[26]~80\);

-- Location: FF_X114_Y22_N19
\ProgramCounter|q_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[26]~79_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(26));

-- Location: LCCOMB_X114_Y22_N20
\ProgramCounter|q_reg[27]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[27]~81_combout\ = (\ProgramCounter|q_reg\(27) & (!\ProgramCounter|q_reg[26]~80\)) # (!\ProgramCounter|q_reg\(27) & ((\ProgramCounter|q_reg[26]~80\) # (GND)))
-- \ProgramCounter|q_reg[27]~82\ = CARRY((!\ProgramCounter|q_reg[26]~80\) # (!\ProgramCounter|q_reg\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ProgramCounter|q_reg\(27),
	datad => VCC,
	cin => \ProgramCounter|q_reg[26]~80\,
	combout => \ProgramCounter|q_reg[27]~81_combout\,
	cout => \ProgramCounter|q_reg[27]~82\);

-- Location: FF_X114_Y22_N21
\ProgramCounter|q_reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[27]~81_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(27));

-- Location: LCCOMB_X114_Y22_N22
\ProgramCounter|q_reg[28]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[28]~83_combout\ = (\ProgramCounter|q_reg\(28) & (\ProgramCounter|q_reg[27]~82\ $ (GND))) # (!\ProgramCounter|q_reg\(28) & (!\ProgramCounter|q_reg[27]~82\ & VCC))
-- \ProgramCounter|q_reg[28]~84\ = CARRY((\ProgramCounter|q_reg\(28) & !\ProgramCounter|q_reg[27]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|q_reg\(28),
	datad => VCC,
	cin => \ProgramCounter|q_reg[27]~82\,
	combout => \ProgramCounter|q_reg[28]~83_combout\,
	cout => \ProgramCounter|q_reg[28]~84\);

-- Location: FF_X114_Y22_N23
\ProgramCounter|q_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[28]~83_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(28));

-- Location: LCCOMB_X114_Y22_N24
\ProgramCounter|q_reg[29]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[29]~85_combout\ = (\ProgramCounter|q_reg\(29) & (!\ProgramCounter|q_reg[28]~84\)) # (!\ProgramCounter|q_reg\(29) & ((\ProgramCounter|q_reg[28]~84\) # (GND)))
-- \ProgramCounter|q_reg[29]~86\ = CARRY((!\ProgramCounter|q_reg[28]~84\) # (!\ProgramCounter|q_reg\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ProgramCounter|q_reg\(29),
	datad => VCC,
	cin => \ProgramCounter|q_reg[28]~84\,
	combout => \ProgramCounter|q_reg[29]~85_combout\,
	cout => \ProgramCounter|q_reg[29]~86\);

-- Location: FF_X114_Y22_N25
\ProgramCounter|q_reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[29]~85_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(29));

-- Location: LCCOMB_X114_Y22_N26
\ProgramCounter|q_reg[30]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[30]~87_combout\ = (\ProgramCounter|q_reg\(30) & (\ProgramCounter|q_reg[29]~86\ $ (GND))) # (!\ProgramCounter|q_reg\(30) & (!\ProgramCounter|q_reg[29]~86\ & VCC))
-- \ProgramCounter|q_reg[30]~88\ = CARRY((\ProgramCounter|q_reg\(30) & !\ProgramCounter|q_reg[29]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|q_reg\(30),
	datad => VCC,
	cin => \ProgramCounter|q_reg[29]~86\,
	combout => \ProgramCounter|q_reg[30]~87_combout\,
	cout => \ProgramCounter|q_reg[30]~88\);

-- Location: FF_X114_Y22_N27
\ProgramCounter|q_reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[30]~87_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(30));

-- Location: LCCOMB_X114_Y22_N28
\ProgramCounter|q_reg[31]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \ProgramCounter|q_reg[31]~89_combout\ = \ProgramCounter|q_reg[30]~88\ $ (\ProgramCounter|q_reg\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|q_reg\(31),
	cin => \ProgramCounter|q_reg[30]~88\,
	combout => \ProgramCounter|q_reg[31]~89_combout\);

-- Location: FF_X114_Y22_N29
\ProgramCounter|q_reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ProgramCounter|q_reg[31]~89_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_Clr_PC~inputclkctrl_outclk\,
	sload => \ALT_INV_Inc_PC~input_o\,
	ena => \Ld_PC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|q_reg\(31));

-- Location: LCCOMB_X81_Y61_N4
\MuxData|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux15~3_combout\ = (\MuxData|Mux15~2_combout\) # ((\Data_Mux[1]~input_o\ & (!\Data_Mux[0]~input_o\ & \ALU0|Mux15~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxData|Mux15~2_combout\,
	datab => \Data_Mux[1]~input_o\,
	datac => \Data_Mux[0]~input_o\,
	datad => \ALU0|Mux15~4_combout\,
	combout => \MuxData|Mux15~3_combout\);

-- Location: FF_X81_Y61_N5
\IR|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxData|Mux15~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(16));

-- Location: LCCOMB_X81_Y56_N20
\MuxData|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux14~3_combout\ = (\MuxData|Mux14~2_combout\) # ((\Data_Mux[1]~input_o\ & (!\Data_Mux[0]~input_o\ & \ALU0|Mux14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[1]~input_o\,
	datab => \MuxData|Mux14~2_combout\,
	datac => \Data_Mux[0]~input_o\,
	datad => \ALU0|Mux14~2_combout\,
	combout => \MuxData|Mux14~3_combout\);

-- Location: FF_X81_Y56_N21
\IR|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxData|Mux14~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(17));

-- Location: LCCOMB_X81_Y56_N14
\MuxData|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux13~3_combout\ = (\MuxData|Mux13~2_combout\) # ((!\Data_Mux[0]~input_o\ & (\Data_Mux[1]~input_o\ & \ALU0|Mux13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \MuxData|Mux13~2_combout\,
	datac => \Data_Mux[1]~input_o\,
	datad => \ALU0|Mux13~2_combout\,
	combout => \MuxData|Mux13~3_combout\);

-- Location: FF_X81_Y56_N15
\IR|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxData|Mux13~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(18));

-- Location: LCCOMB_X77_Y57_N24
\MuxData|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux12~3_combout\ = (\MuxData|Mux12~2_combout\) # ((!\Data_Mux[0]~input_o\ & (\Data_Mux[1]~input_o\ & \ALU0|Mux12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \MuxData|Mux12~2_combout\,
	datac => \Data_Mux[1]~input_o\,
	datad => \ALU0|Mux12~2_combout\,
	combout => \MuxData|Mux12~3_combout\);

-- Location: FF_X77_Y57_N25
\IR|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxData|Mux12~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(19));

-- Location: LCCOMB_X79_Y56_N24
\MuxData|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux11~3_combout\ = (\MuxData|Mux11~2_combout\) # ((\Data_Mux[1]~input_o\ & (!\Data_Mux[0]~input_o\ & \ALU0|Mux11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxData|Mux11~2_combout\,
	datab => \Data_Mux[1]~input_o\,
	datac => \Data_Mux[0]~input_o\,
	datad => \ALU0|Mux11~2_combout\,
	combout => \MuxData|Mux11~3_combout\);

-- Location: FF_X79_Y56_N25
\IR|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxData|Mux11~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(20));

-- Location: LCCOMB_X82_Y59_N18
\MuxData|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux10~3_combout\ = (\MuxData|Mux10~2_combout\) # ((!\Data_Mux[0]~input_o\ & (\Data_Mux[1]~input_o\ & \ALU0|Mux10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxData|Mux10~2_combout\,
	datab => \Data_Mux[0]~input_o\,
	datac => \Data_Mux[1]~input_o\,
	datad => \ALU0|Mux10~4_combout\,
	combout => \MuxData|Mux10~3_combout\);

-- Location: FF_X82_Y59_N19
\IR|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxData|Mux10~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(21));

-- Location: LCCOMB_X82_Y59_N28
\MuxData|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux9~2_combout\ = (\MuxData|Mux9~1_combout\) # (\MuxData|Mux9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxData|Mux9~1_combout\,
	datad => \MuxData|Mux9~0_combout\,
	combout => \MuxData|Mux9~2_combout\);

-- Location: FF_X82_Y59_N29
\IR|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxData|Mux9~2_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(22));

-- Location: LCCOMB_X79_Y57_N4
\MuxData|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux8~3_combout\ = (\MuxData|Mux8~2_combout\) # ((\Data_Mux[1]~input_o\ & (\ALU0|Mux8~5_combout\ & !\Data_Mux[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[1]~input_o\,
	datab => \MuxData|Mux8~2_combout\,
	datac => \ALU0|Mux8~5_combout\,
	datad => \Data_Mux[0]~input_o\,
	combout => \MuxData|Mux8~3_combout\);

-- Location: FF_X79_Y57_N5
\IR|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxData|Mux8~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(23));

-- Location: LCCOMB_X79_Y57_N30
\MuxData|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux7~3_combout\ = (\MuxData|Mux7~2_combout\) # ((!\Data_Mux[0]~input_o\ & (\Data_Mux[1]~input_o\ & \ALU0|Mux7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \MuxData|Mux7~2_combout\,
	datac => \Data_Mux[1]~input_o\,
	datad => \ALU0|Mux7~5_combout\,
	combout => \MuxData|Mux7~3_combout\);

-- Location: FF_X79_Y57_N31
\IR|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxData|Mux7~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(24));

-- Location: LCCOMB_X77_Y58_N14
\MuxData|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux6~3_combout\ = (\MuxData|Mux6~2_combout\) # ((!\Data_Mux[0]~input_o\ & (\ALU0|Mux6~2_combout\ & \Data_Mux[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \ALU0|Mux6~2_combout\,
	datac => \Data_Mux[1]~input_o\,
	datad => \MuxData|Mux6~2_combout\,
	combout => \MuxData|Mux6~3_combout\);

-- Location: FF_X77_Y58_N15
\IR|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxData|Mux6~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(25));

-- Location: LCCOMB_X77_Y58_N4
\MuxData|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux5~3_combout\ = (\MuxData|Mux5~2_combout\) # ((!\Data_Mux[0]~input_o\ & (\Data_Mux[1]~input_o\ & \ALU0|Mux5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \MuxData|Mux5~2_combout\,
	datac => \Data_Mux[1]~input_o\,
	datad => \ALU0|Mux5~4_combout\,
	combout => \MuxData|Mux5~3_combout\);

-- Location: FF_X77_Y58_N5
\IR|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxData|Mux5~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(26));

-- Location: LCCOMB_X86_Y58_N14
\MuxData|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux4~3_combout\ = (\MuxData|Mux4~2_combout\) # ((!\Data_Mux[0]~input_o\ & (\Data_Mux[1]~input_o\ & \ALU0|Mux4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \Data_Mux[1]~input_o\,
	datac => \MuxData|Mux4~2_combout\,
	datad => \ALU0|Mux4~4_combout\,
	combout => \MuxData|Mux4~3_combout\);

-- Location: FF_X86_Y58_N15
\IR|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxData|Mux4~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(27));

-- Location: LCCOMB_X80_Y59_N28
\MuxData|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux3~3_combout\ = (\MuxData|Mux3~2_combout\) # ((!\Data_Mux[0]~input_o\ & (\ALU0|Mux3~2_combout\ & \Data_Mux[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxData|Mux3~2_combout\,
	datab => \Data_Mux[0]~input_o\,
	datac => \ALU0|Mux3~2_combout\,
	datad => \Data_Mux[1]~input_o\,
	combout => \MuxData|Mux3~3_combout\);

-- Location: FF_X80_Y59_N29
\IR|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxData|Mux3~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(28));

-- Location: LCCOMB_X80_Y59_N26
\MuxData|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux2~3_combout\ = (\MuxData|Mux2~2_combout\) # ((!\Data_Mux[0]~input_o\ & (\ALU0|Mux2~4_combout\ & \Data_Mux[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxData|Mux2~2_combout\,
	datab => \Data_Mux[0]~input_o\,
	datac => \ALU0|Mux2~4_combout\,
	datad => \Data_Mux[1]~input_o\,
	combout => \MuxData|Mux2~3_combout\);

-- Location: FF_X80_Y59_N27
\IR|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxData|Mux2~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(29));

-- Location: LCCOMB_X81_Y56_N4
\MuxData|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux1~3_combout\ = (\MuxData|Mux1~2_combout\) # ((!\Data_Mux[0]~input_o\ & (\Data_Mux[1]~input_o\ & \ALU0|Mux1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \MuxData|Mux1~2_combout\,
	datac => \Data_Mux[1]~input_o\,
	datad => \ALU0|Mux1~5_combout\,
	combout => \MuxData|Mux1~3_combout\);

-- Location: FF_X81_Y56_N5
\IR|q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxData|Mux1~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(30));

-- Location: LCCOMB_X81_Y61_N22
\MuxData|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxData|Mux0~3_combout\ = (\MuxData|Mux0~2_combout\) # ((!\Data_Mux[0]~input_o\ & (\Data_Mux[1]~input_o\ & \ALU0|Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_Mux[0]~input_o\,
	datab => \Data_Mux[1]~input_o\,
	datac => \ALU0|Mux0~4_combout\,
	datad => \MuxData|Mux0~2_combout\,
	combout => \MuxData|Mux0~3_combout\);

-- Location: FF_X81_Y61_N23
\IR|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \MuxData|Mux0~3_combout\,
	clrn => \ALT_INV_Clr_IR~inputclkctrl_outclk\,
	ena => \Ld_IR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|q\(31));

-- Location: IOIBUF_X56_Y73_N15
\mClk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mClk,
	o => \mClk~input_o\);

ww_Out_A(0) <= \Out_A[0]~output_o\;

ww_Out_A(1) <= \Out_A[1]~output_o\;

ww_Out_A(2) <= \Out_A[2]~output_o\;

ww_Out_A(3) <= \Out_A[3]~output_o\;

ww_Out_A(4) <= \Out_A[4]~output_o\;

ww_Out_A(5) <= \Out_A[5]~output_o\;

ww_Out_A(6) <= \Out_A[6]~output_o\;

ww_Out_A(7) <= \Out_A[7]~output_o\;

ww_Out_A(8) <= \Out_A[8]~output_o\;

ww_Out_A(9) <= \Out_A[9]~output_o\;

ww_Out_A(10) <= \Out_A[10]~output_o\;

ww_Out_A(11) <= \Out_A[11]~output_o\;

ww_Out_A(12) <= \Out_A[12]~output_o\;

ww_Out_A(13) <= \Out_A[13]~output_o\;

ww_Out_A(14) <= \Out_A[14]~output_o\;

ww_Out_A(15) <= \Out_A[15]~output_o\;

ww_Out_A(16) <= \Out_A[16]~output_o\;

ww_Out_A(17) <= \Out_A[17]~output_o\;

ww_Out_A(18) <= \Out_A[18]~output_o\;

ww_Out_A(19) <= \Out_A[19]~output_o\;

ww_Out_A(20) <= \Out_A[20]~output_o\;

ww_Out_A(21) <= \Out_A[21]~output_o\;

ww_Out_A(22) <= \Out_A[22]~output_o\;

ww_Out_A(23) <= \Out_A[23]~output_o\;

ww_Out_A(24) <= \Out_A[24]~output_o\;

ww_Out_A(25) <= \Out_A[25]~output_o\;

ww_Out_A(26) <= \Out_A[26]~output_o\;

ww_Out_A(27) <= \Out_A[27]~output_o\;

ww_Out_A(28) <= \Out_A[28]~output_o\;

ww_Out_A(29) <= \Out_A[29]~output_o\;

ww_Out_A(30) <= \Out_A[30]~output_o\;

ww_Out_A(31) <= \Out_A[31]~output_o\;

ww_Out_B(0) <= \Out_B[0]~output_o\;

ww_Out_B(1) <= \Out_B[1]~output_o\;

ww_Out_B(2) <= \Out_B[2]~output_o\;

ww_Out_B(3) <= \Out_B[3]~output_o\;

ww_Out_B(4) <= \Out_B[4]~output_o\;

ww_Out_B(5) <= \Out_B[5]~output_o\;

ww_Out_B(6) <= \Out_B[6]~output_o\;

ww_Out_B(7) <= \Out_B[7]~output_o\;

ww_Out_B(8) <= \Out_B[8]~output_o\;

ww_Out_B(9) <= \Out_B[9]~output_o\;

ww_Out_B(10) <= \Out_B[10]~output_o\;

ww_Out_B(11) <= \Out_B[11]~output_o\;

ww_Out_B(12) <= \Out_B[12]~output_o\;

ww_Out_B(13) <= \Out_B[13]~output_o\;

ww_Out_B(14) <= \Out_B[14]~output_o\;

ww_Out_B(15) <= \Out_B[15]~output_o\;

ww_Out_B(16) <= \Out_B[16]~output_o\;

ww_Out_B(17) <= \Out_B[17]~output_o\;

ww_Out_B(18) <= \Out_B[18]~output_o\;

ww_Out_B(19) <= \Out_B[19]~output_o\;

ww_Out_B(20) <= \Out_B[20]~output_o\;

ww_Out_B(21) <= \Out_B[21]~output_o\;

ww_Out_B(22) <= \Out_B[22]~output_o\;

ww_Out_B(23) <= \Out_B[23]~output_o\;

ww_Out_B(24) <= \Out_B[24]~output_o\;

ww_Out_B(25) <= \Out_B[25]~output_o\;

ww_Out_B(26) <= \Out_B[26]~output_o\;

ww_Out_B(27) <= \Out_B[27]~output_o\;

ww_Out_B(28) <= \Out_B[28]~output_o\;

ww_Out_B(29) <= \Out_B[29]~output_o\;

ww_Out_B(30) <= \Out_B[30]~output_o\;

ww_Out_B(31) <= \Out_B[31]~output_o\;

ww_Out_C <= \Out_C~output_o\;

ww_Out_Z <= \Out_Z~output_o\;

ww_Out_PC(0) <= \Out_PC[0]~output_o\;

ww_Out_PC(1) <= \Out_PC[1]~output_o\;

ww_Out_PC(2) <= \Out_PC[2]~output_o\;

ww_Out_PC(3) <= \Out_PC[3]~output_o\;

ww_Out_PC(4) <= \Out_PC[4]~output_o\;

ww_Out_PC(5) <= \Out_PC[5]~output_o\;

ww_Out_PC(6) <= \Out_PC[6]~output_o\;

ww_Out_PC(7) <= \Out_PC[7]~output_o\;

ww_Out_PC(8) <= \Out_PC[8]~output_o\;

ww_Out_PC(9) <= \Out_PC[9]~output_o\;

ww_Out_PC(10) <= \Out_PC[10]~output_o\;

ww_Out_PC(11) <= \Out_PC[11]~output_o\;

ww_Out_PC(12) <= \Out_PC[12]~output_o\;

ww_Out_PC(13) <= \Out_PC[13]~output_o\;

ww_Out_PC(14) <= \Out_PC[14]~output_o\;

ww_Out_PC(15) <= \Out_PC[15]~output_o\;

ww_Out_PC(16) <= \Out_PC[16]~output_o\;

ww_Out_PC(17) <= \Out_PC[17]~output_o\;

ww_Out_PC(18) <= \Out_PC[18]~output_o\;

ww_Out_PC(19) <= \Out_PC[19]~output_o\;

ww_Out_PC(20) <= \Out_PC[20]~output_o\;

ww_Out_PC(21) <= \Out_PC[21]~output_o\;

ww_Out_PC(22) <= \Out_PC[22]~output_o\;

ww_Out_PC(23) <= \Out_PC[23]~output_o\;

ww_Out_PC(24) <= \Out_PC[24]~output_o\;

ww_Out_PC(25) <= \Out_PC[25]~output_o\;

ww_Out_PC(26) <= \Out_PC[26]~output_o\;

ww_Out_PC(27) <= \Out_PC[27]~output_o\;

ww_Out_PC(28) <= \Out_PC[28]~output_o\;

ww_Out_PC(29) <= \Out_PC[29]~output_o\;

ww_Out_PC(30) <= \Out_PC[30]~output_o\;

ww_Out_PC(31) <= \Out_PC[31]~output_o\;

ww_Out_IR(0) <= \Out_IR[0]~output_o\;

ww_Out_IR(1) <= \Out_IR[1]~output_o\;

ww_Out_IR(2) <= \Out_IR[2]~output_o\;

ww_Out_IR(3) <= \Out_IR[3]~output_o\;

ww_Out_IR(4) <= \Out_IR[4]~output_o\;

ww_Out_IR(5) <= \Out_IR[5]~output_o\;

ww_Out_IR(6) <= \Out_IR[6]~output_o\;

ww_Out_IR(7) <= \Out_IR[7]~output_o\;

ww_Out_IR(8) <= \Out_IR[8]~output_o\;

ww_Out_IR(9) <= \Out_IR[9]~output_o\;

ww_Out_IR(10) <= \Out_IR[10]~output_o\;

ww_Out_IR(11) <= \Out_IR[11]~output_o\;

ww_Out_IR(12) <= \Out_IR[12]~output_o\;

ww_Out_IR(13) <= \Out_IR[13]~output_o\;

ww_Out_IR(14) <= \Out_IR[14]~output_o\;

ww_Out_IR(15) <= \Out_IR[15]~output_o\;

ww_Out_IR(16) <= \Out_IR[16]~output_o\;

ww_Out_IR(17) <= \Out_IR[17]~output_o\;

ww_Out_IR(18) <= \Out_IR[18]~output_o\;

ww_Out_IR(19) <= \Out_IR[19]~output_o\;

ww_Out_IR(20) <= \Out_IR[20]~output_o\;

ww_Out_IR(21) <= \Out_IR[21]~output_o\;

ww_Out_IR(22) <= \Out_IR[22]~output_o\;

ww_Out_IR(23) <= \Out_IR[23]~output_o\;

ww_Out_IR(24) <= \Out_IR[24]~output_o\;

ww_Out_IR(25) <= \Out_IR[25]~output_o\;

ww_Out_IR(26) <= \Out_IR[26]~output_o\;

ww_Out_IR(27) <= \Out_IR[27]~output_o\;

ww_Out_IR(28) <= \Out_IR[28]~output_o\;

ww_Out_IR(29) <= \Out_IR[29]~output_o\;

ww_Out_IR(30) <= \Out_IR[30]~output_o\;

ww_Out_IR(31) <= \Out_IR[31]~output_o\;

ww_Addr_Out(0) <= \Addr_Out[0]~output_o\;

ww_Addr_Out(1) <= \Addr_Out[1]~output_o\;

ww_Addr_Out(2) <= \Addr_Out[2]~output_o\;

ww_Addr_Out(3) <= \Addr_Out[3]~output_o\;

ww_Addr_Out(4) <= \Addr_Out[4]~output_o\;

ww_Addr_Out(5) <= \Addr_Out[5]~output_o\;

ww_Addr_Out(6) <= \Addr_Out[6]~output_o\;

ww_Addr_Out(7) <= \Addr_Out[7]~output_o\;

ww_Addr_Out(8) <= \Addr_Out[8]~output_o\;

ww_Addr_Out(9) <= \Addr_Out[9]~output_o\;

ww_Addr_Out(10) <= \Addr_Out[10]~output_o\;

ww_Addr_Out(11) <= \Addr_Out[11]~output_o\;

ww_Addr_Out(12) <= \Addr_Out[12]~output_o\;

ww_Addr_Out(13) <= \Addr_Out[13]~output_o\;

ww_Addr_Out(14) <= \Addr_Out[14]~output_o\;

ww_Addr_Out(15) <= \Addr_Out[15]~output_o\;

ww_Addr_Out(16) <= \Addr_Out[16]~output_o\;

ww_Addr_Out(17) <= \Addr_Out[17]~output_o\;

ww_Addr_Out(18) <= \Addr_Out[18]~output_o\;

ww_Addr_Out(19) <= \Addr_Out[19]~output_o\;

ww_Addr_Out(20) <= \Addr_Out[20]~output_o\;

ww_Addr_Out(21) <= \Addr_Out[21]~output_o\;

ww_Addr_Out(22) <= \Addr_Out[22]~output_o\;

ww_Addr_Out(23) <= \Addr_Out[23]~output_o\;

ww_Addr_Out(24) <= \Addr_Out[24]~output_o\;

ww_Addr_Out(25) <= \Addr_Out[25]~output_o\;

ww_Addr_Out(26) <= \Addr_Out[26]~output_o\;

ww_Addr_Out(27) <= \Addr_Out[27]~output_o\;

ww_Addr_Out(28) <= \Addr_Out[28]~output_o\;

ww_Addr_Out(29) <= \Addr_Out[29]~output_o\;

ww_Addr_Out(30) <= \Addr_Out[30]~output_o\;

ww_Addr_Out(31) <= \Addr_Out[31]~output_o\;

ww_Data_Out(0) <= \Data_Out[0]~output_o\;

ww_Data_Out(1) <= \Data_Out[1]~output_o\;

ww_Data_Out(2) <= \Data_Out[2]~output_o\;

ww_Data_Out(3) <= \Data_Out[3]~output_o\;

ww_Data_Out(4) <= \Data_Out[4]~output_o\;

ww_Data_Out(5) <= \Data_Out[5]~output_o\;

ww_Data_Out(6) <= \Data_Out[6]~output_o\;

ww_Data_Out(7) <= \Data_Out[7]~output_o\;

ww_Data_Out(8) <= \Data_Out[8]~output_o\;

ww_Data_Out(9) <= \Data_Out[9]~output_o\;

ww_Data_Out(10) <= \Data_Out[10]~output_o\;

ww_Data_Out(11) <= \Data_Out[11]~output_o\;

ww_Data_Out(12) <= \Data_Out[12]~output_o\;

ww_Data_Out(13) <= \Data_Out[13]~output_o\;

ww_Data_Out(14) <= \Data_Out[14]~output_o\;

ww_Data_Out(15) <= \Data_Out[15]~output_o\;

ww_Data_Out(16) <= \Data_Out[16]~output_o\;

ww_Data_Out(17) <= \Data_Out[17]~output_o\;

ww_Data_Out(18) <= \Data_Out[18]~output_o\;

ww_Data_Out(19) <= \Data_Out[19]~output_o\;

ww_Data_Out(20) <= \Data_Out[20]~output_o\;

ww_Data_Out(21) <= \Data_Out[21]~output_o\;

ww_Data_Out(22) <= \Data_Out[22]~output_o\;

ww_Data_Out(23) <= \Data_Out[23]~output_o\;

ww_Data_Out(24) <= \Data_Out[24]~output_o\;

ww_Data_Out(25) <= \Data_Out[25]~output_o\;

ww_Data_Out(26) <= \Data_Out[26]~output_o\;

ww_Data_Out(27) <= \Data_Out[27]~output_o\;

ww_Data_Out(28) <= \Data_Out[28]~output_o\;

ww_Data_Out(29) <= \Data_Out[29]~output_o\;

ww_Data_Out(30) <= \Data_Out[30]~output_o\;

ww_Data_Out(31) <= \Data_Out[31]~output_o\;

ww_Mem_Out(0) <= \Mem_Out[0]~output_o\;

ww_Mem_Out(1) <= \Mem_Out[1]~output_o\;

ww_Mem_Out(2) <= \Mem_Out[2]~output_o\;

ww_Mem_Out(3) <= \Mem_Out[3]~output_o\;

ww_Mem_Out(4) <= \Mem_Out[4]~output_o\;

ww_Mem_Out(5) <= \Mem_Out[5]~output_o\;

ww_Mem_Out(6) <= \Mem_Out[6]~output_o\;

ww_Mem_Out(7) <= \Mem_Out[7]~output_o\;

ww_Mem_Out(8) <= \Mem_Out[8]~output_o\;

ww_Mem_Out(9) <= \Mem_Out[9]~output_o\;

ww_Mem_Out(10) <= \Mem_Out[10]~output_o\;

ww_Mem_Out(11) <= \Mem_Out[11]~output_o\;

ww_Mem_Out(12) <= \Mem_Out[12]~output_o\;

ww_Mem_Out(13) <= \Mem_Out[13]~output_o\;

ww_Mem_Out(14) <= \Mem_Out[14]~output_o\;

ww_Mem_Out(15) <= \Mem_Out[15]~output_o\;

ww_Mem_Out(16) <= \Mem_Out[16]~output_o\;

ww_Mem_Out(17) <= \Mem_Out[17]~output_o\;

ww_Mem_Out(18) <= \Mem_Out[18]~output_o\;

ww_Mem_Out(19) <= \Mem_Out[19]~output_o\;

ww_Mem_Out(20) <= \Mem_Out[20]~output_o\;

ww_Mem_Out(21) <= \Mem_Out[21]~output_o\;

ww_Mem_Out(22) <= \Mem_Out[22]~output_o\;

ww_Mem_Out(23) <= \Mem_Out[23]~output_o\;

ww_Mem_Out(24) <= \Mem_Out[24]~output_o\;

ww_Mem_Out(25) <= \Mem_Out[25]~output_o\;

ww_Mem_Out(26) <= \Mem_Out[26]~output_o\;

ww_Mem_Out(27) <= \Mem_Out[27]~output_o\;

ww_Mem_Out(28) <= \Mem_Out[28]~output_o\;

ww_Mem_Out(29) <= \Mem_Out[29]~output_o\;

ww_Mem_Out(30) <= \Mem_Out[30]~output_o\;

ww_Mem_Out(31) <= \Mem_Out[31]~output_o\;

ww_Mem_In(0) <= \Mem_In[0]~output_o\;

ww_Mem_In(1) <= \Mem_In[1]~output_o\;

ww_Mem_In(2) <= \Mem_In[2]~output_o\;

ww_Mem_In(3) <= \Mem_In[3]~output_o\;

ww_Mem_In(4) <= \Mem_In[4]~output_o\;

ww_Mem_In(5) <= \Mem_In[5]~output_o\;

ww_Mem_In(6) <= \Mem_In[6]~output_o\;

ww_Mem_In(7) <= \Mem_In[7]~output_o\;

ww_Mem_In(8) <= \Mem_In[8]~output_o\;

ww_Mem_In(9) <= \Mem_In[9]~output_o\;

ww_Mem_In(10) <= \Mem_In[10]~output_o\;

ww_Mem_In(11) <= \Mem_In[11]~output_o\;

ww_Mem_In(12) <= \Mem_In[12]~output_o\;

ww_Mem_In(13) <= \Mem_In[13]~output_o\;

ww_Mem_In(14) <= \Mem_In[14]~output_o\;

ww_Mem_In(15) <= \Mem_In[15]~output_o\;

ww_Mem_In(16) <= \Mem_In[16]~output_o\;

ww_Mem_In(17) <= \Mem_In[17]~output_o\;

ww_Mem_In(18) <= \Mem_In[18]~output_o\;

ww_Mem_In(19) <= \Mem_In[19]~output_o\;

ww_Mem_In(20) <= \Mem_In[20]~output_o\;

ww_Mem_In(21) <= \Mem_In[21]~output_o\;

ww_Mem_In(22) <= \Mem_In[22]~output_o\;

ww_Mem_In(23) <= \Mem_In[23]~output_o\;

ww_Mem_In(24) <= \Mem_In[24]~output_o\;

ww_Mem_In(25) <= \Mem_In[25]~output_o\;

ww_Mem_In(26) <= \Mem_In[26]~output_o\;

ww_Mem_In(27) <= \Mem_In[27]~output_o\;

ww_Mem_In(28) <= \Mem_In[28]~output_o\;

ww_Mem_In(29) <= \Mem_In[29]~output_o\;

ww_Mem_In(30) <= \Mem_In[30]~output_o\;

ww_Mem_In(31) <= \Mem_In[31]~output_o\;

ww_Mem_Addr(0) <= \Mem_Addr[0]~output_o\;

ww_Mem_Addr(1) <= \Mem_Addr[1]~output_o\;

ww_Mem_Addr(2) <= \Mem_Addr[2]~output_o\;

ww_Mem_Addr(3) <= \Mem_Addr[3]~output_o\;

ww_Mem_Addr(4) <= \Mem_Addr[4]~output_o\;

ww_Mem_Addr(5) <= \Mem_Addr[5]~output_o\;

ww_Mem_Addr(6) <= \Mem_Addr[6]~output_o\;

ww_Mem_Addr(7) <= \Mem_Addr[7]~output_o\;
END structure;


