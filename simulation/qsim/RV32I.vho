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

-- DATE "02/06/2026 12:00:52"

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

ENTITY 	cpu_test_sim IS
    PORT (
	cpuClk : IN std_logic;
	memClk : IN std_logic;
	rst : IN std_logic;
	outA : BUFFER std_logic_vector(31 DOWNTO 0);
	outB : BUFFER std_logic_vector(31 DOWNTO 0);
	outC : BUFFER std_logic;
	outZ : BUFFER std_logic;
	outIR : BUFFER std_logic_vector(31 DOWNTO 0);
	outPC : BUFFER std_logic_vector(31 DOWNTO 0);
	addrOut : BUFFER std_logic_vector(5 DOWNTO 0);
	wEn : BUFFER std_logic;
	memDataOut : BUFFER std_logic_vector(31 DOWNTO 0);
	memDataIn : BUFFER std_logic_vector(31 DOWNTO 0);
	T_Info : BUFFER std_logic_vector(2 DOWNTO 0);
	wen_mem : BUFFER std_logic;
	en_mem : BUFFER std_logic
	);
END cpu_test_sim;

-- Design Ports Information
-- outA[0]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[1]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[2]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[3]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[4]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[6]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[7]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[8]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[9]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[10]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[11]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[12]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[13]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[14]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[15]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[16]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[17]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[18]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[19]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[20]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[21]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[22]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[23]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[24]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[25]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[26]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[27]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[28]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[29]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[30]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[31]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[0]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[1]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[2]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[3]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[4]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[5]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[6]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[7]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[8]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[9]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[10]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[11]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[12]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[13]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[14]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[15]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[16]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[17]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[18]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[19]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[20]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[21]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[22]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[23]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[24]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[25]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[26]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[27]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[28]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[29]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[30]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[31]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outC	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outZ	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[0]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[2]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[3]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[4]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[5]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[6]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[7]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[8]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[9]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[10]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[11]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[12]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[13]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[14]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[15]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[16]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[17]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[18]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[19]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[20]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[21]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[22]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[23]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[24]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[25]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[26]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[27]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[28]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[29]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[30]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[31]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[0]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[1]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[2]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[4]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[5]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[6]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[7]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[8]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[9]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[10]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[11]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[12]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[13]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[14]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[15]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[16]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[17]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[18]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[19]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[20]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[21]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[22]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[23]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[24]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[25]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[26]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[27]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[28]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[29]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[30]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[31]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrOut[0]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrOut[1]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrOut[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrOut[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrOut[4]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrOut[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wEn	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[0]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[1]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[2]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[3]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[4]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[5]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[6]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[7]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[8]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[9]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[10]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[11]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[12]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[13]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[14]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[15]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[16]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[17]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[18]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[19]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[20]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[21]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[22]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[23]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[24]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[25]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[26]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[27]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[28]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[29]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[30]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[31]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[0]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[2]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[3]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[4]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[5]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[6]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[7]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[8]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[9]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[10]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[11]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[12]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[13]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[14]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[15]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[16]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[17]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[18]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[19]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[20]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[21]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[22]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[23]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[24]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[25]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[26]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[27]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[28]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[29]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[30]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[31]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T_Info[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T_Info[1]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T_Info[2]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wen_mem	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_mem	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpuClk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memClk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cpu_test_sim IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_cpuClk : std_logic;
SIGNAL ww_memClk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_outA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_outB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_outC : std_logic;
SIGNAL ww_outZ : std_logic;
SIGNAL ww_outIR : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_outPC : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_addrOut : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_wEn : std_logic;
SIGNAL ww_memDataOut : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_memDataIn : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_T_Info : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_wen_mem : std_logic;
SIGNAL ww_en_mem : std_logic;
SIGNAL \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \memClk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cpuClk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \outA[0]~output_o\ : std_logic;
SIGNAL \outA[1]~output_o\ : std_logic;
SIGNAL \outA[2]~output_o\ : std_logic;
SIGNAL \outA[3]~output_o\ : std_logic;
SIGNAL \outA[4]~output_o\ : std_logic;
SIGNAL \outA[5]~output_o\ : std_logic;
SIGNAL \outA[6]~output_o\ : std_logic;
SIGNAL \outA[7]~output_o\ : std_logic;
SIGNAL \outA[8]~output_o\ : std_logic;
SIGNAL \outA[9]~output_o\ : std_logic;
SIGNAL \outA[10]~output_o\ : std_logic;
SIGNAL \outA[11]~output_o\ : std_logic;
SIGNAL \outA[12]~output_o\ : std_logic;
SIGNAL \outA[13]~output_o\ : std_logic;
SIGNAL \outA[14]~output_o\ : std_logic;
SIGNAL \outA[15]~output_o\ : std_logic;
SIGNAL \outA[16]~output_o\ : std_logic;
SIGNAL \outA[17]~output_o\ : std_logic;
SIGNAL \outA[18]~output_o\ : std_logic;
SIGNAL \outA[19]~output_o\ : std_logic;
SIGNAL \outA[20]~output_o\ : std_logic;
SIGNAL \outA[21]~output_o\ : std_logic;
SIGNAL \outA[22]~output_o\ : std_logic;
SIGNAL \outA[23]~output_o\ : std_logic;
SIGNAL \outA[24]~output_o\ : std_logic;
SIGNAL \outA[25]~output_o\ : std_logic;
SIGNAL \outA[26]~output_o\ : std_logic;
SIGNAL \outA[27]~output_o\ : std_logic;
SIGNAL \outA[28]~output_o\ : std_logic;
SIGNAL \outA[29]~output_o\ : std_logic;
SIGNAL \outA[30]~output_o\ : std_logic;
SIGNAL \outA[31]~output_o\ : std_logic;
SIGNAL \outB[0]~output_o\ : std_logic;
SIGNAL \outB[1]~output_o\ : std_logic;
SIGNAL \outB[2]~output_o\ : std_logic;
SIGNAL \outB[3]~output_o\ : std_logic;
SIGNAL \outB[4]~output_o\ : std_logic;
SIGNAL \outB[5]~output_o\ : std_logic;
SIGNAL \outB[6]~output_o\ : std_logic;
SIGNAL \outB[7]~output_o\ : std_logic;
SIGNAL \outB[8]~output_o\ : std_logic;
SIGNAL \outB[9]~output_o\ : std_logic;
SIGNAL \outB[10]~output_o\ : std_logic;
SIGNAL \outB[11]~output_o\ : std_logic;
SIGNAL \outB[12]~output_o\ : std_logic;
SIGNAL \outB[13]~output_o\ : std_logic;
SIGNAL \outB[14]~output_o\ : std_logic;
SIGNAL \outB[15]~output_o\ : std_logic;
SIGNAL \outB[16]~output_o\ : std_logic;
SIGNAL \outB[17]~output_o\ : std_logic;
SIGNAL \outB[18]~output_o\ : std_logic;
SIGNAL \outB[19]~output_o\ : std_logic;
SIGNAL \outB[20]~output_o\ : std_logic;
SIGNAL \outB[21]~output_o\ : std_logic;
SIGNAL \outB[22]~output_o\ : std_logic;
SIGNAL \outB[23]~output_o\ : std_logic;
SIGNAL \outB[24]~output_o\ : std_logic;
SIGNAL \outB[25]~output_o\ : std_logic;
SIGNAL \outB[26]~output_o\ : std_logic;
SIGNAL \outB[27]~output_o\ : std_logic;
SIGNAL \outB[28]~output_o\ : std_logic;
SIGNAL \outB[29]~output_o\ : std_logic;
SIGNAL \outB[30]~output_o\ : std_logic;
SIGNAL \outB[31]~output_o\ : std_logic;
SIGNAL \outC~output_o\ : std_logic;
SIGNAL \outZ~output_o\ : std_logic;
SIGNAL \outIR[0]~output_o\ : std_logic;
SIGNAL \outIR[1]~output_o\ : std_logic;
SIGNAL \outIR[2]~output_o\ : std_logic;
SIGNAL \outIR[3]~output_o\ : std_logic;
SIGNAL \outIR[4]~output_o\ : std_logic;
SIGNAL \outIR[5]~output_o\ : std_logic;
SIGNAL \outIR[6]~output_o\ : std_logic;
SIGNAL \outIR[7]~output_o\ : std_logic;
SIGNAL \outIR[8]~output_o\ : std_logic;
SIGNAL \outIR[9]~output_o\ : std_logic;
SIGNAL \outIR[10]~output_o\ : std_logic;
SIGNAL \outIR[11]~output_o\ : std_logic;
SIGNAL \outIR[12]~output_o\ : std_logic;
SIGNAL \outIR[13]~output_o\ : std_logic;
SIGNAL \outIR[14]~output_o\ : std_logic;
SIGNAL \outIR[15]~output_o\ : std_logic;
SIGNAL \outIR[16]~output_o\ : std_logic;
SIGNAL \outIR[17]~output_o\ : std_logic;
SIGNAL \outIR[18]~output_o\ : std_logic;
SIGNAL \outIR[19]~output_o\ : std_logic;
SIGNAL \outIR[20]~output_o\ : std_logic;
SIGNAL \outIR[21]~output_o\ : std_logic;
SIGNAL \outIR[22]~output_o\ : std_logic;
SIGNAL \outIR[23]~output_o\ : std_logic;
SIGNAL \outIR[24]~output_o\ : std_logic;
SIGNAL \outIR[25]~output_o\ : std_logic;
SIGNAL \outIR[26]~output_o\ : std_logic;
SIGNAL \outIR[27]~output_o\ : std_logic;
SIGNAL \outIR[28]~output_o\ : std_logic;
SIGNAL \outIR[29]~output_o\ : std_logic;
SIGNAL \outIR[30]~output_o\ : std_logic;
SIGNAL \outIR[31]~output_o\ : std_logic;
SIGNAL \outPC[0]~output_o\ : std_logic;
SIGNAL \outPC[1]~output_o\ : std_logic;
SIGNAL \outPC[2]~output_o\ : std_logic;
SIGNAL \outPC[3]~output_o\ : std_logic;
SIGNAL \outPC[4]~output_o\ : std_logic;
SIGNAL \outPC[5]~output_o\ : std_logic;
SIGNAL \outPC[6]~output_o\ : std_logic;
SIGNAL \outPC[7]~output_o\ : std_logic;
SIGNAL \outPC[8]~output_o\ : std_logic;
SIGNAL \outPC[9]~output_o\ : std_logic;
SIGNAL \outPC[10]~output_o\ : std_logic;
SIGNAL \outPC[11]~output_o\ : std_logic;
SIGNAL \outPC[12]~output_o\ : std_logic;
SIGNAL \outPC[13]~output_o\ : std_logic;
SIGNAL \outPC[14]~output_o\ : std_logic;
SIGNAL \outPC[15]~output_o\ : std_logic;
SIGNAL \outPC[16]~output_o\ : std_logic;
SIGNAL \outPC[17]~output_o\ : std_logic;
SIGNAL \outPC[18]~output_o\ : std_logic;
SIGNAL \outPC[19]~output_o\ : std_logic;
SIGNAL \outPC[20]~output_o\ : std_logic;
SIGNAL \outPC[21]~output_o\ : std_logic;
SIGNAL \outPC[22]~output_o\ : std_logic;
SIGNAL \outPC[23]~output_o\ : std_logic;
SIGNAL \outPC[24]~output_o\ : std_logic;
SIGNAL \outPC[25]~output_o\ : std_logic;
SIGNAL \outPC[26]~output_o\ : std_logic;
SIGNAL \outPC[27]~output_o\ : std_logic;
SIGNAL \outPC[28]~output_o\ : std_logic;
SIGNAL \outPC[29]~output_o\ : std_logic;
SIGNAL \outPC[30]~output_o\ : std_logic;
SIGNAL \outPC[31]~output_o\ : std_logic;
SIGNAL \addrOut[0]~output_o\ : std_logic;
SIGNAL \addrOut[1]~output_o\ : std_logic;
SIGNAL \addrOut[2]~output_o\ : std_logic;
SIGNAL \addrOut[3]~output_o\ : std_logic;
SIGNAL \addrOut[4]~output_o\ : std_logic;
SIGNAL \addrOut[5]~output_o\ : std_logic;
SIGNAL \wEn~output_o\ : std_logic;
SIGNAL \memDataOut[0]~output_o\ : std_logic;
SIGNAL \memDataOut[1]~output_o\ : std_logic;
SIGNAL \memDataOut[2]~output_o\ : std_logic;
SIGNAL \memDataOut[3]~output_o\ : std_logic;
SIGNAL \memDataOut[4]~output_o\ : std_logic;
SIGNAL \memDataOut[5]~output_o\ : std_logic;
SIGNAL \memDataOut[6]~output_o\ : std_logic;
SIGNAL \memDataOut[7]~output_o\ : std_logic;
SIGNAL \memDataOut[8]~output_o\ : std_logic;
SIGNAL \memDataOut[9]~output_o\ : std_logic;
SIGNAL \memDataOut[10]~output_o\ : std_logic;
SIGNAL \memDataOut[11]~output_o\ : std_logic;
SIGNAL \memDataOut[12]~output_o\ : std_logic;
SIGNAL \memDataOut[13]~output_o\ : std_logic;
SIGNAL \memDataOut[14]~output_o\ : std_logic;
SIGNAL \memDataOut[15]~output_o\ : std_logic;
SIGNAL \memDataOut[16]~output_o\ : std_logic;
SIGNAL \memDataOut[17]~output_o\ : std_logic;
SIGNAL \memDataOut[18]~output_o\ : std_logic;
SIGNAL \memDataOut[19]~output_o\ : std_logic;
SIGNAL \memDataOut[20]~output_o\ : std_logic;
SIGNAL \memDataOut[21]~output_o\ : std_logic;
SIGNAL \memDataOut[22]~output_o\ : std_logic;
SIGNAL \memDataOut[23]~output_o\ : std_logic;
SIGNAL \memDataOut[24]~output_o\ : std_logic;
SIGNAL \memDataOut[25]~output_o\ : std_logic;
SIGNAL \memDataOut[26]~output_o\ : std_logic;
SIGNAL \memDataOut[27]~output_o\ : std_logic;
SIGNAL \memDataOut[28]~output_o\ : std_logic;
SIGNAL \memDataOut[29]~output_o\ : std_logic;
SIGNAL \memDataOut[30]~output_o\ : std_logic;
SIGNAL \memDataOut[31]~output_o\ : std_logic;
SIGNAL \memDataIn[0]~output_o\ : std_logic;
SIGNAL \memDataIn[1]~output_o\ : std_logic;
SIGNAL \memDataIn[2]~output_o\ : std_logic;
SIGNAL \memDataIn[3]~output_o\ : std_logic;
SIGNAL \memDataIn[4]~output_o\ : std_logic;
SIGNAL \memDataIn[5]~output_o\ : std_logic;
SIGNAL \memDataIn[6]~output_o\ : std_logic;
SIGNAL \memDataIn[7]~output_o\ : std_logic;
SIGNAL \memDataIn[8]~output_o\ : std_logic;
SIGNAL \memDataIn[9]~output_o\ : std_logic;
SIGNAL \memDataIn[10]~output_o\ : std_logic;
SIGNAL \memDataIn[11]~output_o\ : std_logic;
SIGNAL \memDataIn[12]~output_o\ : std_logic;
SIGNAL \memDataIn[13]~output_o\ : std_logic;
SIGNAL \memDataIn[14]~output_o\ : std_logic;
SIGNAL \memDataIn[15]~output_o\ : std_logic;
SIGNAL \memDataIn[16]~output_o\ : std_logic;
SIGNAL \memDataIn[17]~output_o\ : std_logic;
SIGNAL \memDataIn[18]~output_o\ : std_logic;
SIGNAL \memDataIn[19]~output_o\ : std_logic;
SIGNAL \memDataIn[20]~output_o\ : std_logic;
SIGNAL \memDataIn[21]~output_o\ : std_logic;
SIGNAL \memDataIn[22]~output_o\ : std_logic;
SIGNAL \memDataIn[23]~output_o\ : std_logic;
SIGNAL \memDataIn[24]~output_o\ : std_logic;
SIGNAL \memDataIn[25]~output_o\ : std_logic;
SIGNAL \memDataIn[26]~output_o\ : std_logic;
SIGNAL \memDataIn[27]~output_o\ : std_logic;
SIGNAL \memDataIn[28]~output_o\ : std_logic;
SIGNAL \memDataIn[29]~output_o\ : std_logic;
SIGNAL \memDataIn[30]~output_o\ : std_logic;
SIGNAL \memDataIn[31]~output_o\ : std_logic;
SIGNAL \T_Info[0]~output_o\ : std_logic;
SIGNAL \T_Info[1]~output_o\ : std_logic;
SIGNAL \T_Info[2]~output_o\ : std_logic;
SIGNAL \wen_mem~output_o\ : std_logic;
SIGNAL \en_mem~output_o\ : std_logic;
SIGNAL \cpuClk~input_o\ : std_logic;
SIGNAL \cpuClk~inputclkctrl_outclk\ : std_logic;
SIGNAL \memClk~input_o\ : std_logic;
SIGNAL \memClk~inputclkctrl_outclk\ : std_logic;
SIGNAL \main_processor|control_unit|current_state.T0~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \main_processor|reset|current_clk.clk0~0_combout\ : std_logic;
SIGNAL \main_processor|reset|current_clk.clk0~q\ : std_logic;
SIGNAL \main_processor|reset|current_clk~9_combout\ : std_logic;
SIGNAL \main_processor|reset|current_clk.clk1~q\ : std_logic;
SIGNAL \main_processor|reset|current_clk~8_combout\ : std_logic;
SIGNAL \main_processor|reset|current_clk.clk2~q\ : std_logic;
SIGNAL \main_processor|reset|current_clk~6_combout\ : std_logic;
SIGNAL \main_processor|reset|current_clk~7_combout\ : std_logic;
SIGNAL \main_processor|reset|current_clk.clk3~q\ : std_logic;
SIGNAL \main_processor|reset|enable_PD~4_combout\ : std_logic;
SIGNAL \main_processor|reset|enable_PD~q\ : std_logic;
SIGNAL \main_processor|control_unit|current_state.T0~q\ : std_logic;
SIGNAL \main_processor|control_unit|current_state.T1~0_combout\ : std_logic;
SIGNAL \main_processor|control_unit|current_state.T1~q\ : std_logic;
SIGNAL \main_processor|control_unit|current_state.T2~q\ : std_logic;
SIGNAL \main_processor|control_unit|Reg_Mux~0_combout\ : std_logic;
SIGNAL \main_processor|control_unit|wen~2_combout\ : std_logic;
SIGNAL \main_processor|control_unit|wen~1_combout\ : std_logic;
SIGNAL \main_processor|control_unit|wen~q\ : std_logic;
SIGNAL \main_processor|control_unit|Ld_IR~0_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Ld_IR~0_wirecell_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0~RAM_ENABLE_AND_combout\ : std_logic;
SIGNAL \main_processor|control_unit|ALU_op[0]~7_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[0]~32_combout\ : std_logic;
SIGNAL \main_processor|control_unit|ALU_op[0]~2_combout\ : std_logic;
SIGNAL \main_processor|control_unit|ALU_op[0]~8_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[0]~0_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Im_Mux2[1]~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[0]~33\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[1]~34_combout\ : std_logic;
SIGNAL \main_processor|reset|clr_PC~0_combout\ : std_logic;
SIGNAL \main_processor|reset|clr_PC~q\ : std_logic;
SIGNAL \main_processor|control_unit|ALU_op[0]~5_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Clr_Z~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux31~2_combout\ : std_logic;
SIGNAL \main_processor|control_unit|B_Mux~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[1]~35\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[2]~36_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Clr_C~0_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Im_Mux1~0_combout\ : std_logic;
SIGNAL \main_processor|control_unit|ALU_op[0]~6_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[2]~37\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[3]~38_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[3]~3_combout\ : std_logic;
SIGNAL \main_processor|control_unit|ALU_op[0]~2_Duplicate_17\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[3]~39\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[4]~40_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Im_Mux1~1_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Ld_PC~1_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Ld_PC~0_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Ld_PC~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[4]~41\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[5]~42_combout\ : std_logic;
SIGNAL \main_processor|control_unit|ALU_op[0]~2_Duplicate_10\ : std_logic;
SIGNAL \main_processor|control_unit|Im_Mux2[1]~3_Duplicate_10\ : std_logic;
SIGNAL \main_processor|control_unit|Mux7~0_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Im_Mux2[0]~0_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Im_Mux2[1]~3_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux24~2_Duplicate_4\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux24~2_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[6]~6_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Clr_B~0_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Clr_B~1_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Ld_B~0_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Ld_B~1_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Ld_B~2_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux25~0_Duplicate_2\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux27~2_combout\ : std_logic;
SIGNAL \main_processor|dat|IR|q[9]~feeder_combout\ : std_logic;
SIGNAL \main_processor|dat|IR|q[10]~feeder_combout\ : std_logic;
SIGNAL \main_processor|dat|IR|q[11]~feeder_combout\ : std_logic;
SIGNAL \main_processor|dat|IR|q[12]~feeder_combout\ : std_logic;
SIGNAL \main_processor|control_unit|ALU_op[0]~2_Duplicate_14\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[2]~2_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Clr_A~0_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Ld_A~0_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Ld_A~1_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Ld_A~2_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Reg_Mux~1_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[2]~2_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[3]~3_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[4]~4_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[5]~5_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[6]~6_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[7]~7_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[9]~9_combout\ : std_logic;
SIGNAL \main_processor|dat|IR|q[8]~feeder_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[8]~8_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux23~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[8]~8_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Mux7~0_Duplicate_4\ : std_logic;
SIGNAL \main_processor|control_unit|ALU_op[0]~5_Duplicate_15\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux24~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|Cout~1_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux25~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux26~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux28~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux27~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|Cout~1_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Mux7~0_Duplicate_2\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux30~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux30~1_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Im_Mux2[1]~3_Duplicate_8\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[2]~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|Cout~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|Cout~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle2|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|Cout~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle1|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|Cout~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle0|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|s~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux21~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux21~1_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux21~2_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[10]~10_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[10]~10_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle1|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux22~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux22~1_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux22~2_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[9]~9_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[9]~9_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[10]~10_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[11]~11_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|Cout~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|Cout~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle3|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux19~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|s~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux18~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[13]~13_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[14]~14_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[14]~14_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[18]~18_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux17~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|Cout~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|Cout~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle2|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle3|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux16~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[16]~16_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[15]~15_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux16~1_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux16~2_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[15]~15_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux16~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux16~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle1|cycle3|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle2|cycle0|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle2|cycle1|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle2|cycle2|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle2|cycle3|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle3|cycle0|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle3|cycle1|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle3|cycle2|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle3|cycle3|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux16~3_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux16~4_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux16~1_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Im_Mux2[1]~1_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[16]~16_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux15~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle3|cycle3|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux15~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux15~3_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[17]~17_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|s~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux15~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux15~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux15~4_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux15~1_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[17]~17_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux14~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux14~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle1|s~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux14~3_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|Cout~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|Cout~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle1|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux14~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux14~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux14~4_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux14~1_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[18]~18_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux13~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[19]~19_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux12~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|s~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle1|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux12~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[20]~20_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux11~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux11~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle0|s~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|Cout~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|Cout~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle1|cycle0|cycle2|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux11~3_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[19]~19_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[20]~20_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[21]~21_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux10~1_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[23]~23_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[23]~23_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[22]~22_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[22]~22_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux9~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|s~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|Cout~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|Cout~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle0|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux9~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux9~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|Cout~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|Cout~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle1|cycle1|cycle1|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux9~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux9~3_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux9~4_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux9~1_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux8~1_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[29]~29_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[29]~29_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[23]~23_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux7~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[24]~24_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[24]~24_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux7~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux7~3_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[25]~25_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[25]~25_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux5~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux5~2_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux6~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle2|s~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle1|cycle2|cycle0|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux5~3_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[27]~27_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux4~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|Cout~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|Cout~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux4~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux4~3_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[28]~28_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux3~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux3~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle1|cycle2|cycle3|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux3~3_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|s~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|Cout~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|Cout~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|Cout~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle3|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|Cout~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle2|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux3~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux3~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux3~4_Duplicate_6\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[28]~28_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[28]~28_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle3|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux4~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux4~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux4~4_Duplicate_6\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[27]~27_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[27]~27_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle2|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux5~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux5~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux5~4_Duplicate_6_Duplicate\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[26]~26_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[26]~26_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[27]~27_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[28]~28_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[29]~29_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[29]~29_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux1~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux2~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux1~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux1~3_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux31~9_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux31~7_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle1|cycle3|cycle2|Cout~0_Duplicate_2\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux31~8_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux0~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux0~1_Duplicate_3_Duplicate\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[31]~31_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux0~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle3|s~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|Cout~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|Cout~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle1|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle2|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux31~6_Duplicate_11\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux0~1_Duplicate_3\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[31]~31_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[31]~31_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle2|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux1~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux1~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux1~4_Duplicate_6\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[30]~30_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[30]~30_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[31]~31_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~26_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux5~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux5~4_Duplicate_6\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[26]~26_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[26]~26_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|s~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux6~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux6~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle1|cycle2|cycle0|Cout~0_Duplicate_2\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux6~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux6~3_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux6~4_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[25]~25_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[25]~25_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle0|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux7~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux7~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux7~4_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[24]~24_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[24]~24_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~30_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux1~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[30]~30_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[30]~30_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle1|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux2~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux2~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux2~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle1|s~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux2~3_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux2~4_Duplicate_6\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux2~1_Duplicate_5\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~22_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux9~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[22]~22_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[22]~22_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~21_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux10~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[21]~21_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux10~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle1|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux10~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux10~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux10~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux10~3_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux10~4_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[21]~21_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[21]~21_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle0|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux11~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux11~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux11~4_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux11~1_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~20_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux11~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[20]~20_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[20]~20_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux12~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux12~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux12~3_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux12~4_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux12~1_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~18_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux13~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux13~1_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~19_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux12~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[19]~19_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[19]~19_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle2|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux13~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux13~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux13~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux13~3_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux13~4_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[18]~18_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[18]~18_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~17_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux14~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[17]~17_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[17]~17_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~16_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux15~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[16]~16_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[16]~16_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~15_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux16~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[15]~15_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[15]~15_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~14_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux17~1_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[14]~14_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[14]~14_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux18~1_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux18~2_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[13]~13_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[13]~13_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle0|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux19~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux19~1_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux19~2_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[12]~12_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[12]~12_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~8_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux23~1_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[8]~8_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[8]~8_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~13_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux18~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[13]~13_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux18~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux18~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle3|cycle1|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux18~3_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux18~4_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux18~1_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~1_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux30~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[1]~1_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[1]~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|s~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux30~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux30~1_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux30~2_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[1]~1_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[1]~1_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~12_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux19~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[12]~12_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[12]~12_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux19~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle3|cycle0|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux19~3_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux19~4_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux19~1_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~11_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux20~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[11]~11_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux20~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux20~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle2|cycle3|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux20~3_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux20~2_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[11]~11_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[11]~11_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle3|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux20~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux20~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux20~4_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux20~1_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~10_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux21~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[10]~10_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux21~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux21~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle2|cycle2|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux21~3_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux21~4_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux21~1_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~9_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux22~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[9]~9_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux22~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux22~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle2|cycle1|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux22~3_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux22~4_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux22~1_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~3_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux28~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[3]~3_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux28~0_Duplicate_2\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux30~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle0|cycle0|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle0|cycle1|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle0|cycle2|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle0|cycle3|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle1|cycle0|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle1|cycle1|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle1|cycle2|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle1|cycle3|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux24~3_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux24~2_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[7]~7_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux24~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle0|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux23~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux23~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux23~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle2|cycle0|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux23~3_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux23~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux23~2_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~6_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux25~1_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[6]~6_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[6]~6_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|s~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux24~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux24~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux24~4_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux24~1_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~7_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux24~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[7]~7_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[7]~7_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle2|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux25~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux25~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux25~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle1|cycle2|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux25~3_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux25~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux25~2_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~5_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux26~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[5]~5_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux26~0_Duplicate_2\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux26~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle1|cycle1|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux26~3_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux26~2_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[5]~5_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[5]~5_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle1|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux26~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux26~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux26~4_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux26~1_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~4_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux27~1_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[4]~4_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux27~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|s~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux27~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux27~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle1|cycle0|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux27~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux27~3_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux27~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux27~2_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[4]~4_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm1|f[4]~4_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle3|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux28~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux28~1_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux28~2_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[3]~3_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|reg_result~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle0|cycle3|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux28~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux28~3_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux28~4_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux28~1_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~2_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux29~1_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[2]~2_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux29~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|reg_result~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle0|cycle2|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux29~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux29~3_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle2|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux29~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux29~1_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux29~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux29~2_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~23_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux8~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[23]~23_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux8~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle3|s~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux8~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux8~3_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle3|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux8~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux8~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux8~4_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Equal0~10_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Equal0~9_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Equal0~11_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Clr_Z~1_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Ld_C~0_combout\ : std_logic;
SIGNAL \main_processor|dat|Z|q_OTERM3\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux3~4_combout\ : std_logic;
SIGNAL \main_processor|dat|Z|q_OTERM5_OTERM23\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux6~4_RTM026_combout\ : std_logic;
SIGNAL \main_processor|dat|Z|q_OTERM5_OTERM25\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux4~3_Duplicate_7\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux4~4_combout\ : std_logic;
SIGNAL \main_processor|dat|Z|q_OTERM5_OTERM21\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux5~4_combout\ : std_logic;
SIGNAL \main_processor|dat|Z|q_OTERM5_OTERM19\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Equal0~12_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Equal0~5_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Equal0~3_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Equal0~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Equal0~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Equal0~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Equal0~4_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Equal0~7_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux17~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle3|cycle2|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux17~3_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle2|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux17~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux17~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Equal0~6_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Equal0~8_combout\ : std_logic;
SIGNAL \main_processor|dat|Z|q_OTERM1\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux31~5_RTM08_combout\ : std_logic;
SIGNAL \main_processor|dat|Z|q_OTERM7_OTERM7\ : std_logic;
SIGNAL \main_processor|dat|Z|q_OTERM7_OTERM5_OTERM47\ : std_logic;
SIGNAL \main_processor|dat|Z|q_OTERM7_OTERM5_OTERM45~feeder_combout\ : std_logic;
SIGNAL \main_processor|dat|Z|q_OTERM7_OTERM5_OTERM45\ : std_logic;
SIGNAL \main_processor|dat|Z|q_OTERM7_OTERM5_OTERM41\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux31~6_combout\ : std_logic;
SIGNAL \main_processor|dat|Z|q_OTERM7_OTERM5_OTERM43\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux0~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux1~4_combout\ : std_logic;
SIGNAL \main_processor|dat|Z|q_OTERM7_OTERM3\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux2~3_Duplicate_7\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux2~4_combout\ : std_logic;
SIGNAL \main_processor|dat|Z|q_OTERM7_OTERM1\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Equal0~13_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Equal0~14_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux32~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux32~1_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Clr_C~1_combout\ : std_logic;
SIGNAL \main_processor|dat|C|q_OTERM13\ : std_logic;
SIGNAL \main_processor|dat|C|q_OTERM9~feeder_combout\ : std_logic;
SIGNAL \main_processor|dat|C|q_OTERM9\ : std_logic;
SIGNAL \main_processor|dat|C|q_OTERM11\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle1|cycle3|cycle2|Cout~0_combout\ : std_logic;
SIGNAL \main_processor|dat|C|q_OTERM15_OTERM17_OTERM35~feeder_combout\ : std_logic;
SIGNAL \main_processor|dat|C|q_OTERM15_OTERM17_OTERM35\ : std_logic;
SIGNAL \main_processor|dat|C|q_OTERM15_OTERM17_OTERM29\ : std_logic;
SIGNAL \main_processor|dat|C|q_OTERM15_OTERM17_OTERM33\ : std_logic;
SIGNAL \main_processor|dat|C|q_OTERM15_OTERM17_OTERM31~feeder_combout\ : std_logic;
SIGNAL \main_processor|dat|C|q_OTERM15_OTERM17_OTERM31\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux32~3_combout\ : std_logic;
SIGNAL \main_processor|dat|C|q_OTERM15_OTERM11\ : std_logic;
SIGNAL \main_processor|dat|C|q_OTERM15_OTERM13\ : std_logic;
SIGNAL \main_processor|dat|C|q_OTERM15_OTERM15_OTERM39\ : std_logic;
SIGNAL \main_processor|dat|C|q_OTERM15_OTERM15_OTERM37~feeder_combout\ : std_logic;
SIGNAL \main_processor|dat|C|q_OTERM15_OTERM15_OTERM37\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux32~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux32~4_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux32~5_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Mux12~0_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Inc_PC~3_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Inc_PC~4_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~25_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out[25]~feeder_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux6~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux6~1_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Mux4~0_combout\ : std_logic;
SIGNAL \main_processor|control_unit|ALU_op[0]~2_Duplicate_12\ : std_logic;
SIGNAL \main_processor|control_unit|ALU_op[1]~4_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|reg_result~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|add|cycle0|cycle0|cycle1|s~combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux30~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux30~3_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux30~4_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux30~1_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~27_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux4~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux4~1_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Im_Mux2[1]~1_Duplicate_5\ : std_logic;
SIGNAL \main_processor|control_unit|Im_Mux2[1]~3_Duplicate_6\ : std_logic;
SIGNAL \main_processor|dat|MuxIm2|Mux31~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux31~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux31~2_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux31~3_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux31~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux31~4_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux31~5_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux31~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux31~1_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~24_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux7~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux7~1_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Mux3~0_combout\ : std_logic;
SIGNAL \main_processor|control_unit|ALU_op[2]~3_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux17~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux17~2_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~28_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux3~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux3~1_combout\ : std_logic;
SIGNAL \main_processor|control_unit|B_Mux~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxB|f[0]~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxReg|f[0]~0_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~31_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux0~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux0~1_combout\ : std_logic;
SIGNAL \main_processor|dat|IR|q[31]~feeder_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Mux33~0_combout\ : std_logic;
SIGNAL \main_processor|control_unit|en~1_combout\ : std_logic;
SIGNAL \main_processor|control_unit|en~q\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory~41_combout\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \main_processor|dat|DataMemory|data_out~29_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux2~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux2~1_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Mux19~0_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Data_Mux[0]~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux5~1_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Mux2~0_combout\ : std_logic;
SIGNAL \main_processor|control_unit|Data_Mux[1]~1_combout\ : std_logic;
SIGNAL \main_processor|dat|ALU0|Mux1~4_Duplicate_6_Duplicate\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux1~1_combout\ : std_logic;
SIGNAL \main_processor|control_unit|A_Mux~0_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxA|f[0]~0_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[5]~43\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[6]~44_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[6]~45\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[7]~46_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[7]~47\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[8]~48_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[8]~49\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[9]~50_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[9]~51\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[10]~52_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[10]~53\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[11]~54_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[11]~55\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[12]~56_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[12]~57\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[13]~58_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[13]~59\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[14]~60_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[14]~61\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[15]~62_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[15]~63\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[16]~64_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[16]~65\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[17]~66_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[17]~67\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[18]~68_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[18]~69\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[19]~70_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[19]~71\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[20]~72_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[20]~73\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[21]~74_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[21]~75\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[22]~76_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[22]~77\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[23]~78_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[23]~79\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[24]~80_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[24]~81\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[25]~82_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[25]~83\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[26]~84_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[26]~85\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[27]~86_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[27]~87\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[28]~88_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[28]~89\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[29]~90_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[29]~91\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[30]~92_combout\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[30]~93\ : std_logic;
SIGNAL \main_processor|dat|ProgramCounter|q_reg[31]~94_combout\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux25~2_Duplicate_4\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux17~2_Duplicate_4\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux15~1_Duplicate_3\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux7~1_Duplicate_3\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux6~1_Duplicate_3\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux5~1_Duplicate_3\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux4~1_Duplicate_3\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux3~1_Duplicate_3\ : std_logic;
SIGNAL \main_processor|dat|MuxData|Mux2~1_Duplicate_3\ : std_logic;
SIGNAL \main_processor|dat|B|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \main_processor|dat|IR|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \main_memory|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \main_processor|dat|A|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \main_processor|dat|ProgramCounter|q_reg\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \main_processor|dat|DataMemory|data_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_cpuClk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_memClk~inputclkctrl_outclk\ : std_logic;
SIGNAL \main_processor|control_unit|ALT_INV_Ld_IR~0_wirecell_combout\ : std_logic;
SIGNAL \main_processor|reset|ALT_INV_clr_PC~q\ : std_logic;
SIGNAL \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\ : std_logic;
SIGNAL \main_processor|control_unit|ALT_INV_Clr_Z~1_combout\ : std_logic;
SIGNAL \main_processor|control_unit|ALT_INV_Clr_C~1_combout\ : std_logic;
SIGNAL \main_processor|control_unit|ALT_INV_Clr_B~1_combout\ : std_logic;
SIGNAL \main_processor|control_unit|ALT_INV_Clr_A~0_combout\ : std_logic;
SIGNAL \main_processor|reset|ALT_INV_enable_PD~q\ : std_logic;
SIGNAL \main_processor|control_unit|ALT_INV_current_state.T0~q\ : std_logic;

BEGIN

ww_cpuClk <= cpuClk;
ww_memClk <= memClk;
ww_rst <= rst;
outA <= ww_outA;
outB <= ww_outB;
outC <= ww_outC;
outZ <= ww_outZ;
outIR <= ww_outIR;
outPC <= ww_outPC;
addrOut <= ww_addrOut;
wEn <= ww_wEn;
memDataOut <= ww_memDataOut;
memDataIn <= ww_memDataIn;
T_Info <= ww_T_Info;
wen_mem <= ww_wen_mem;
en_mem <= ww_en_mem;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \main_processor|dat|MuxData|Mux18~1_combout\ & \main_processor|dat|MuxData|Mux19~1_combout\ & \main_processor|dat|MuxData|Mux20~1_combout\ & 
\main_processor|dat|MuxData|Mux21~1_combout\ & \main_processor|dat|MuxData|Mux22~1_combout\ & \main_processor|dat|MuxData|Mux23~2_combout\ & \main_processor|dat|MuxData|Mux24~1_combout\ & \main_processor|dat|MuxData|Mux25~2_combout\ & 
\main_processor|dat|MuxData|Mux26~1_combout\ & \main_processor|dat|MuxData|Mux27~2_combout\ & \main_processor|dat|MuxData|Mux28~1_combout\ & \main_processor|dat|MuxData|Mux29~2_combout\ & \main_processor|dat|MuxData|Mux30~1_combout\ & 
\main_processor|dat|MuxData|Mux31~1_combout\);

\main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\main_processor|dat|ProgramCounter|q_reg\(5) & \main_processor|dat|ProgramCounter|q_reg\(4) & \main_processor|dat|ProgramCounter|q_reg\(3) & 
\main_processor|dat|ProgramCounter|q_reg\(2) & \main_processor|dat|ProgramCounter|q_reg\(1) & \main_processor|dat|ProgramCounter|q_reg\(0));

\main_memory|altsyncram_component|auto_generated|q_a\(0) <= \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\main_memory|altsyncram_component|auto_generated|q_a\(1) <= \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\main_memory|altsyncram_component|auto_generated|q_a\(2) <= \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\main_memory|altsyncram_component|auto_generated|q_a\(3) <= \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\main_memory|altsyncram_component|auto_generated|q_a\(4) <= \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\main_memory|altsyncram_component|auto_generated|q_a\(5) <= \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\main_memory|altsyncram_component|auto_generated|q_a\(6) <= \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\main_memory|altsyncram_component|auto_generated|q_a\(7) <= \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\main_memory|altsyncram_component|auto_generated|q_a\(8) <= \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\main_memory|altsyncram_component|auto_generated|q_a\(9) <= \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\main_memory|altsyncram_component|auto_generated|q_a\(10) <= \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\main_memory|altsyncram_component|auto_generated|q_a\(11) <= \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\main_memory|altsyncram_component|auto_generated|q_a\(12) <= \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\main_memory|altsyncram_component|auto_generated|q_a\(13) <= \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);

\main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ <= (\main_processor|dat|MuxData|Mux0~1_combout\ & \main_processor|dat|MuxData|Mux1~1_combout\ & \main_processor|dat|MuxData|Mux2~1_Duplicate_5\ & 
\main_processor|dat|MuxData|Mux3~1_combout\ & \main_processor|dat|MuxData|Mux4~1_combout\ & \main_processor|dat|MuxData|Mux5~1_combout\ & \main_processor|dat|MuxData|Mux6~1_combout\ & \main_processor|dat|MuxData|Mux7~1_combout\ & 
\main_processor|dat|MuxData|Mux8~1_combout\ & \main_processor|dat|MuxData|Mux9~1_combout\ & \main_processor|dat|MuxData|Mux10~1_combout\ & \main_processor|dat|MuxData|Mux11~1_combout\ & \main_processor|dat|MuxData|Mux12~1_combout\ & 
\main_processor|dat|MuxData|Mux13~1_combout\ & \main_processor|dat|MuxData|Mux14~1_combout\ & \main_processor|dat|MuxData|Mux15~1_combout\ & \main_processor|dat|MuxData|Mux16~1_combout\ & \main_processor|dat|MuxData|Mux17~2_combout\);

\main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\main_processor|dat|ProgramCounter|q_reg\(5) & \main_processor|dat|ProgramCounter|q_reg\(4) & \main_processor|dat|ProgramCounter|q_reg\(3) & 
\main_processor|dat|ProgramCounter|q_reg\(2) & \main_processor|dat|ProgramCounter|q_reg\(1) & \main_processor|dat|ProgramCounter|q_reg\(0));

\main_memory|altsyncram_component|auto_generated|q_a\(14) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);
\main_memory|altsyncram_component|auto_generated|q_a\(15) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(1);
\main_memory|altsyncram_component|auto_generated|q_a\(16) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(2);
\main_memory|altsyncram_component|auto_generated|q_a\(17) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(3);
\main_memory|altsyncram_component|auto_generated|q_a\(18) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(4);
\main_memory|altsyncram_component|auto_generated|q_a\(19) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(5);
\main_memory|altsyncram_component|auto_generated|q_a\(20) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(6);
\main_memory|altsyncram_component|auto_generated|q_a\(21) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(7);
\main_memory|altsyncram_component|auto_generated|q_a\(22) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(8);
\main_memory|altsyncram_component|auto_generated|q_a\(23) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(9);
\main_memory|altsyncram_component|auto_generated|q_a\(24) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(10);
\main_memory|altsyncram_component|auto_generated|q_a\(25) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(11);
\main_memory|altsyncram_component|auto_generated|q_a\(26) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(12);
\main_memory|altsyncram_component|auto_generated|q_a\(27) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(13);
\main_memory|altsyncram_component|auto_generated|q_a\(28) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(14);
\main_memory|altsyncram_component|auto_generated|q_a\(29) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(15);
\main_memory|altsyncram_component|auto_generated|q_a\(30) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(16);
\main_memory|altsyncram_component|auto_generated|q_a\(31) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(17);

\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \main_processor|dat|MuxReg|f[31]~31_combout\ & \main_processor|dat|MuxReg|f[30]~30_combout\ & \main_processor|dat|MuxReg|f[29]~29_combout\
& \main_processor|dat|MuxReg|f[28]~28_combout\ & \main_processor|dat|MuxReg|f[27]~27_combout\ & \main_processor|dat|MuxReg|f[26]~26_combout\ & \main_processor|dat|MuxReg|f[25]~25_combout\ & \main_processor|dat|MuxReg|f[24]~24_combout\ & 
\main_processor|dat|MuxReg|f[23]~23_combout\ & \main_processor|dat|MuxReg|f[22]~22_combout\ & \main_processor|dat|MuxReg|f[21]~21_combout\ & \main_processor|dat|MuxReg|f[20]~20_combout\ & \main_processor|dat|MuxReg|f[19]~19_combout\ & 
\main_processor|dat|MuxReg|f[18]~18_combout\ & \main_processor|dat|MuxReg|f[17]~17_combout\ & \main_processor|dat|MuxReg|f[16]~16_combout\ & \main_processor|dat|MuxReg|f[15]~15_combout\ & \main_processor|dat|MuxReg|f[14]~14_combout\ & 
\main_processor|dat|MuxReg|f[13]~13_combout\ & \main_processor|dat|MuxReg|f[12]~12_combout\ & \main_processor|dat|MuxReg|f[11]~11_combout\ & \main_processor|dat|MuxReg|f[10]~10_combout\ & \main_processor|dat|MuxReg|f[9]~9_combout\ & 
\main_processor|dat|MuxReg|f[8]~8_combout\ & \main_processor|dat|MuxReg|f[7]~7_combout\ & \main_processor|dat|MuxReg|f[6]~6_combout\ & \main_processor|dat|MuxReg|f[5]~5_combout\ & \main_processor|dat|MuxReg|f[4]~4_combout\ & 
\main_processor|dat|MuxReg|f[3]~3_combout\ & \main_processor|dat|MuxReg|f[2]~2_combout\ & \main_processor|dat|MuxReg|f[1]~1_combout\ & \main_processor|dat|MuxReg|f[0]~0_combout\);

\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\main_processor|dat|IR|q\(7) & \main_processor|dat|IR|q\(6) & \main_processor|dat|IR|q\(5) & \main_processor|dat|IR|q\(4) & \main_processor|dat|IR|q\(3)
& \main_processor|dat|IR|q\(2) & \main_processor|dat|IR|q\(1) & \main_processor|dat|IR|q\(0));

\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\main_processor|dat|MuxData|Mux24~1_combout\ & \main_processor|dat|MuxData|Mux25~2_combout\ & \main_processor|dat|MuxData|Mux26~1_combout\ & 
\main_processor|dat|MuxData|Mux27~2_combout\ & \main_processor|dat|MuxData|Mux28~1_combout\ & \main_processor|dat|MuxData|Mux29~2_combout\ & \main_processor|dat|MuxData|Mux30~1_combout\ & \main_processor|dat|MuxData|Mux31~1_combout\);

\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a1\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a2\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a3\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a4\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a5\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a6\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a7\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a8\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a9\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a10\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a11\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a12\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a13\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a14\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a15\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a16\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a17\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a18\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a19\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a20\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a21\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a22\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a23\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a24\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a25\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a26\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a27\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a28\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a29\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a30\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a31\ <= \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\memClk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \memClk~input_o\);

\cpuClk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cpuClk~input_o\);
\ALT_INV_cpuClk~inputclkctrl_outclk\ <= NOT \cpuClk~inputclkctrl_outclk\;
\ALT_INV_memClk~inputclkctrl_outclk\ <= NOT \memClk~inputclkctrl_outclk\;
\main_processor|control_unit|ALT_INV_Ld_IR~0_wirecell_combout\ <= NOT \main_processor|control_unit|Ld_IR~0_wirecell_combout\;
\main_processor|reset|ALT_INV_clr_PC~q\ <= NOT \main_processor|reset|clr_PC~q\;
\main_processor|control_unit|ALT_INV_Ld_IR~0_combout\ <= NOT \main_processor|control_unit|Ld_IR~0_combout\;
\main_processor|control_unit|ALT_INV_Clr_Z~1_combout\ <= NOT \main_processor|control_unit|Clr_Z~1_combout\;
\main_processor|control_unit|ALT_INV_Clr_C~1_combout\ <= NOT \main_processor|control_unit|Clr_C~1_combout\;
\main_processor|control_unit|ALT_INV_Clr_B~1_combout\ <= NOT \main_processor|control_unit|Clr_B~1_combout\;
\main_processor|control_unit|ALT_INV_Clr_A~0_combout\ <= NOT \main_processor|control_unit|Clr_A~0_combout\;
\main_processor|reset|ALT_INV_enable_PD~q\ <= NOT \main_processor|reset|enable_PD~q\;
\main_processor|control_unit|ALT_INV_current_state.T0~q\ <= NOT \main_processor|control_unit|current_state.T0~q\;

-- Location: IOOBUF_X0_Y24_N9
\outA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(0),
	devoe => ww_devoe,
	o => \outA[0]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\outA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(1),
	devoe => ww_devoe,
	o => \outA[1]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\outA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(2),
	devoe => ww_devoe,
	o => \outA[2]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\outA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(3),
	devoe => ww_devoe,
	o => \outA[3]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\outA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(4),
	devoe => ww_devoe,
	o => \outA[4]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\outA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(5),
	devoe => ww_devoe,
	o => \outA[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\outA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(6),
	devoe => ww_devoe,
	o => \outA[6]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\outA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(7),
	devoe => ww_devoe,
	o => \outA[7]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\outA[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(8),
	devoe => ww_devoe,
	o => \outA[8]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\outA[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(9),
	devoe => ww_devoe,
	o => \outA[9]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\outA[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(10),
	devoe => ww_devoe,
	o => \outA[10]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\outA[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(11),
	devoe => ww_devoe,
	o => \outA[11]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\outA[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(12),
	devoe => ww_devoe,
	o => \outA[12]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\outA[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(13),
	devoe => ww_devoe,
	o => \outA[13]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\outA[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(14),
	devoe => ww_devoe,
	o => \outA[14]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\outA[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(15),
	devoe => ww_devoe,
	o => \outA[15]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\outA[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(16),
	devoe => ww_devoe,
	o => \outA[16]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\outA[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(17),
	devoe => ww_devoe,
	o => \outA[17]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\outA[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(18),
	devoe => ww_devoe,
	o => \outA[18]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\outA[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(19),
	devoe => ww_devoe,
	o => \outA[19]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\outA[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(20),
	devoe => ww_devoe,
	o => \outA[20]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\outA[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(21),
	devoe => ww_devoe,
	o => \outA[21]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\outA[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(22),
	devoe => ww_devoe,
	o => \outA[22]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\outA[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(23),
	devoe => ww_devoe,
	o => \outA[23]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\outA[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(24),
	devoe => ww_devoe,
	o => \outA[24]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\outA[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(25),
	devoe => ww_devoe,
	o => \outA[25]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\outA[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(26),
	devoe => ww_devoe,
	o => \outA[26]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\outA[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(27),
	devoe => ww_devoe,
	o => \outA[27]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\outA[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(28),
	devoe => ww_devoe,
	o => \outA[28]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\outA[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(29),
	devoe => ww_devoe,
	o => \outA[29]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\outA[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(30),
	devoe => ww_devoe,
	o => \outA[30]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\outA[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|A|q\(31),
	devoe => ww_devoe,
	o => \outA[31]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\outB[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(0),
	devoe => ww_devoe,
	o => \outB[0]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\outB[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(1),
	devoe => ww_devoe,
	o => \outB[1]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\outB[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(2),
	devoe => ww_devoe,
	o => \outB[2]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\outB[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(3),
	devoe => ww_devoe,
	o => \outB[3]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\outB[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(4),
	devoe => ww_devoe,
	o => \outB[4]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\outB[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(5),
	devoe => ww_devoe,
	o => \outB[5]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\outB[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(6),
	devoe => ww_devoe,
	o => \outB[6]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\outB[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(7),
	devoe => ww_devoe,
	o => \outB[7]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\outB[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(8),
	devoe => ww_devoe,
	o => \outB[8]~output_o\);

-- Location: IOOBUF_X115_Y24_N2
\outB[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(9),
	devoe => ww_devoe,
	o => \outB[9]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\outB[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(10),
	devoe => ww_devoe,
	o => \outB[10]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\outB[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(11),
	devoe => ww_devoe,
	o => \outB[11]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\outB[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(12),
	devoe => ww_devoe,
	o => \outB[12]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\outB[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(13),
	devoe => ww_devoe,
	o => \outB[13]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\outB[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(14),
	devoe => ww_devoe,
	o => \outB[14]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\outB[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(15),
	devoe => ww_devoe,
	o => \outB[15]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\outB[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(16),
	devoe => ww_devoe,
	o => \outB[16]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\outB[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(17),
	devoe => ww_devoe,
	o => \outB[17]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
\outB[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(18),
	devoe => ww_devoe,
	o => \outB[18]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\outB[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(19),
	devoe => ww_devoe,
	o => \outB[19]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\outB[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(20),
	devoe => ww_devoe,
	o => \outB[20]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\outB[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(21),
	devoe => ww_devoe,
	o => \outB[21]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\outB[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(22),
	devoe => ww_devoe,
	o => \outB[22]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\outB[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(23),
	devoe => ww_devoe,
	o => \outB[23]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\outB[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(24),
	devoe => ww_devoe,
	o => \outB[24]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\outB[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(25),
	devoe => ww_devoe,
	o => \outB[25]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\outB[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(26),
	devoe => ww_devoe,
	o => \outB[26]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\outB[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(27),
	devoe => ww_devoe,
	o => \outB[27]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\outB[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(28),
	devoe => ww_devoe,
	o => \outB[28]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\outB[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(29),
	devoe => ww_devoe,
	o => \outB[29]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\outB[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(30),
	devoe => ww_devoe,
	o => \outB[30]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\outB[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|B|q\(31),
	devoe => ww_devoe,
	o => \outB[31]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\outC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ALU0|Mux32~5_combout\,
	devoe => ww_devoe,
	o => \outC~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\outZ~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ALU0|Equal0~14_combout\,
	devoe => ww_devoe,
	o => \outZ~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\outIR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(0),
	devoe => ww_devoe,
	o => \outIR[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\outIR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(1),
	devoe => ww_devoe,
	o => \outIR[1]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\outIR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(2),
	devoe => ww_devoe,
	o => \outIR[2]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\outIR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(3),
	devoe => ww_devoe,
	o => \outIR[3]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\outIR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(4),
	devoe => ww_devoe,
	o => \outIR[4]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\outIR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(5),
	devoe => ww_devoe,
	o => \outIR[5]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\outIR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(6),
	devoe => ww_devoe,
	o => \outIR[6]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\outIR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(7),
	devoe => ww_devoe,
	o => \outIR[7]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\outIR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(8),
	devoe => ww_devoe,
	o => \outIR[8]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\outIR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(9),
	devoe => ww_devoe,
	o => \outIR[9]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\outIR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(10),
	devoe => ww_devoe,
	o => \outIR[10]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\outIR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(11),
	devoe => ww_devoe,
	o => \outIR[11]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\outIR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(12),
	devoe => ww_devoe,
	o => \outIR[12]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\outIR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(13),
	devoe => ww_devoe,
	o => \outIR[13]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\outIR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(14),
	devoe => ww_devoe,
	o => \outIR[14]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\outIR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(15),
	devoe => ww_devoe,
	o => \outIR[15]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\outIR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(16),
	devoe => ww_devoe,
	o => \outIR[16]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\outIR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(17),
	devoe => ww_devoe,
	o => \outIR[17]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\outIR[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(18),
	devoe => ww_devoe,
	o => \outIR[18]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\outIR[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(19),
	devoe => ww_devoe,
	o => \outIR[19]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\outIR[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(20),
	devoe => ww_devoe,
	o => \outIR[20]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\outIR[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(21),
	devoe => ww_devoe,
	o => \outIR[21]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\outIR[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(22),
	devoe => ww_devoe,
	o => \outIR[22]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\outIR[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(23),
	devoe => ww_devoe,
	o => \outIR[23]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\outIR[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(24),
	devoe => ww_devoe,
	o => \outIR[24]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\outIR[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(25),
	devoe => ww_devoe,
	o => \outIR[25]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\outIR[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(26),
	devoe => ww_devoe,
	o => \outIR[26]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\outIR[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(27),
	devoe => ww_devoe,
	o => \outIR[27]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\outIR[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(28),
	devoe => ww_devoe,
	o => \outIR[28]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\outIR[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(29),
	devoe => ww_devoe,
	o => \outIR[29]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\outIR[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(30),
	devoe => ww_devoe,
	o => \outIR[30]~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\outIR[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|IR|q\(31),
	devoe => ww_devoe,
	o => \outIR[31]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\outPC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(0),
	devoe => ww_devoe,
	o => \outPC[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\outPC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(1),
	devoe => ww_devoe,
	o => \outPC[1]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\outPC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(2),
	devoe => ww_devoe,
	o => \outPC[2]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\outPC[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(3),
	devoe => ww_devoe,
	o => \outPC[3]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\outPC[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(4),
	devoe => ww_devoe,
	o => \outPC[4]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\outPC[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(5),
	devoe => ww_devoe,
	o => \outPC[5]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\outPC[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(6),
	devoe => ww_devoe,
	o => \outPC[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\outPC[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(7),
	devoe => ww_devoe,
	o => \outPC[7]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\outPC[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(8),
	devoe => ww_devoe,
	o => \outPC[8]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\outPC[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(9),
	devoe => ww_devoe,
	o => \outPC[9]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\outPC[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(10),
	devoe => ww_devoe,
	o => \outPC[10]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\outPC[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(11),
	devoe => ww_devoe,
	o => \outPC[11]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\outPC[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(12),
	devoe => ww_devoe,
	o => \outPC[12]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\outPC[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(13),
	devoe => ww_devoe,
	o => \outPC[13]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\outPC[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(14),
	devoe => ww_devoe,
	o => \outPC[14]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\outPC[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(15),
	devoe => ww_devoe,
	o => \outPC[15]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\outPC[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(16),
	devoe => ww_devoe,
	o => \outPC[16]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\outPC[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(17),
	devoe => ww_devoe,
	o => \outPC[17]~output_o\);

-- Location: IOOBUF_X0_Y14_N2
\outPC[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(18),
	devoe => ww_devoe,
	o => \outPC[18]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\outPC[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(19),
	devoe => ww_devoe,
	o => \outPC[19]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\outPC[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(20),
	devoe => ww_devoe,
	o => \outPC[20]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\outPC[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(21),
	devoe => ww_devoe,
	o => \outPC[21]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\outPC[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(22),
	devoe => ww_devoe,
	o => \outPC[22]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\outPC[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(23),
	devoe => ww_devoe,
	o => \outPC[23]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\outPC[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(24),
	devoe => ww_devoe,
	o => \outPC[24]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\outPC[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(25),
	devoe => ww_devoe,
	o => \outPC[25]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\outPC[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(26),
	devoe => ww_devoe,
	o => \outPC[26]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\outPC[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(27),
	devoe => ww_devoe,
	o => \outPC[27]~output_o\);

-- Location: IOOBUF_X0_Y14_N9
\outPC[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(28),
	devoe => ww_devoe,
	o => \outPC[28]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\outPC[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(29),
	devoe => ww_devoe,
	o => \outPC[29]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\outPC[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(30),
	devoe => ww_devoe,
	o => \outPC[30]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\outPC[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(31),
	devoe => ww_devoe,
	o => \outPC[31]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\addrOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(0),
	devoe => ww_devoe,
	o => \addrOut[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\addrOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(1),
	devoe => ww_devoe,
	o => \addrOut[1]~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\addrOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(2),
	devoe => ww_devoe,
	o => \addrOut[2]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\addrOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(3),
	devoe => ww_devoe,
	o => \addrOut[3]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\addrOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(4),
	devoe => ww_devoe,
	o => \addrOut[4]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\addrOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|ProgramCounter|q_reg\(5),
	devoe => ww_devoe,
	o => \addrOut[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\wEn~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \wEn~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\memDataOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \memDataOut[0]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\memDataOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \memDataOut[1]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\memDataOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \memDataOut[2]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\memDataOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \memDataOut[3]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\memDataOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \memDataOut[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\memDataOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \memDataOut[5]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\memDataOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \memDataOut[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\memDataOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \memDataOut[7]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\memDataOut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \memDataOut[8]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\memDataOut[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \memDataOut[9]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\memDataOut[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \memDataOut[10]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\memDataOut[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \memDataOut[11]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\memDataOut[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \memDataOut[12]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\memDataOut[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \memDataOut[13]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\memDataOut[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \memDataOut[14]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\memDataOut[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \memDataOut[15]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\memDataOut[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => \memDataOut[16]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\memDataOut[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => \memDataOut[17]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\memDataOut[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => \memDataOut[18]~output_o\);

-- Location: IOOBUF_X115_Y27_N9
\memDataOut[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => \memDataOut[19]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\memDataOut[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => \memDataOut[20]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\memDataOut[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => \memDataOut[21]~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\memDataOut[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => \memDataOut[22]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\memDataOut[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => \memDataOut[23]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\memDataOut[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => \memDataOut[24]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\memDataOut[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => \memDataOut[25]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\memDataOut[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => \memDataOut[26]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\memDataOut[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => \memDataOut[27]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\memDataOut[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => \memDataOut[28]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\memDataOut[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => \memDataOut[29]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\memDataOut[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => \memDataOut[30]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\memDataOut[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => \memDataOut[31]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\memDataIn[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux31~1_combout\,
	devoe => ww_devoe,
	o => \memDataIn[0]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\memDataIn[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux30~1_combout\,
	devoe => ww_devoe,
	o => \memDataIn[1]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\memDataIn[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux29~2_combout\,
	devoe => ww_devoe,
	o => \memDataIn[2]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\memDataIn[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux28~1_combout\,
	devoe => ww_devoe,
	o => \memDataIn[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\memDataIn[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux27~2_combout\,
	devoe => ww_devoe,
	o => \memDataIn[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\memDataIn[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux26~1_combout\,
	devoe => ww_devoe,
	o => \memDataIn[5]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\memDataIn[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux25~2_Duplicate_4\,
	devoe => ww_devoe,
	o => \memDataIn[6]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\memDataIn[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux24~1_combout\,
	devoe => ww_devoe,
	o => \memDataIn[7]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\memDataIn[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux23~2_combout\,
	devoe => ww_devoe,
	o => \memDataIn[8]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\memDataIn[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux22~1_combout\,
	devoe => ww_devoe,
	o => \memDataIn[9]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\memDataIn[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux21~1_combout\,
	devoe => ww_devoe,
	o => \memDataIn[10]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\memDataIn[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux20~1_combout\,
	devoe => ww_devoe,
	o => \memDataIn[11]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\memDataIn[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux19~1_combout\,
	devoe => ww_devoe,
	o => \memDataIn[12]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\memDataIn[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux18~1_combout\,
	devoe => ww_devoe,
	o => \memDataIn[13]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\memDataIn[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux17~2_Duplicate_4\,
	devoe => ww_devoe,
	o => \memDataIn[14]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\memDataIn[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux16~1_combout\,
	devoe => ww_devoe,
	o => \memDataIn[15]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\memDataIn[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux15~1_Duplicate_3\,
	devoe => ww_devoe,
	o => \memDataIn[16]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\memDataIn[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux14~1_combout\,
	devoe => ww_devoe,
	o => \memDataIn[17]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\memDataIn[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux13~1_combout\,
	devoe => ww_devoe,
	o => \memDataIn[18]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\memDataIn[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux12~1_combout\,
	devoe => ww_devoe,
	o => \memDataIn[19]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\memDataIn[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux11~1_combout\,
	devoe => ww_devoe,
	o => \memDataIn[20]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\memDataIn[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux10~1_combout\,
	devoe => ww_devoe,
	o => \memDataIn[21]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\memDataIn[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux9~1_combout\,
	devoe => ww_devoe,
	o => \memDataIn[22]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\memDataIn[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux8~1_combout\,
	devoe => ww_devoe,
	o => \memDataIn[23]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\memDataIn[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux7~1_Duplicate_3\,
	devoe => ww_devoe,
	o => \memDataIn[24]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\memDataIn[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux6~1_Duplicate_3\,
	devoe => ww_devoe,
	o => \memDataIn[25]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\memDataIn[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux5~1_Duplicate_3\,
	devoe => ww_devoe,
	o => \memDataIn[26]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\memDataIn[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux4~1_Duplicate_3\,
	devoe => ww_devoe,
	o => \memDataIn[27]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\memDataIn[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux3~1_Duplicate_3\,
	devoe => ww_devoe,
	o => \memDataIn[28]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\memDataIn[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux2~1_Duplicate_3\,
	devoe => ww_devoe,
	o => \memDataIn[29]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\memDataIn[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \memDataIn[30]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\memDataIn[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|dat|MuxData|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \memDataIn[31]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\T_Info[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|control_unit|ALT_INV_current_state.T0~q\,
	devoe => ww_devoe,
	o => \T_Info[0]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\T_Info[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|control_unit|current_state.T1~q\,
	devoe => ww_devoe,
	o => \T_Info[1]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\T_Info[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|control_unit|current_state.T2~q\,
	devoe => ww_devoe,
	o => \T_Info[2]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\wen_mem~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \wen_mem~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\en_mem~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \en_mem~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\cpuClk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cpuClk,
	o => \cpuClk~input_o\);

-- Location: CLKCTRL_G2
\cpuClk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cpuClk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cpuClk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y36_N15
\memClk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memClk,
	o => \memClk~input_o\);

-- Location: CLKCTRL_G4
\memClk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \memClk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \memClk~inputclkctrl_outclk\);

-- Location: LCCOMB_X53_Y23_N2
\main_processor|control_unit|current_state.T0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|current_state.T0~0_combout\ = !\main_processor|control_unit|current_state.T2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_processor|control_unit|current_state.T2~q\,
	combout => \main_processor|control_unit|current_state.T0~0_combout\);

-- Location: IOIBUF_X13_Y0_N22
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X45_Y23_N22
\main_processor|reset|current_clk.clk0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|reset|current_clk.clk0~0_combout\ = !\rst~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rst~input_o\,
	combout => \main_processor|reset|current_clk.clk0~0_combout\);

-- Location: FF_X45_Y23_N23
\main_processor|reset|current_clk.clk0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|reset|current_clk.clk0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|reset|current_clk.clk0~q\);

-- Location: LCCOMB_X45_Y23_N12
\main_processor|reset|current_clk~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|reset|current_clk~9_combout\ = (!\main_processor|reset|current_clk.clk0~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|reset|current_clk.clk0~q\,
	datad => \rst~input_o\,
	combout => \main_processor|reset|current_clk~9_combout\);

-- Location: FF_X45_Y23_N13
\main_processor|reset|current_clk.clk1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|reset|current_clk~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|reset|current_clk.clk1~q\);

-- Location: LCCOMB_X45_Y23_N2
\main_processor|reset|current_clk~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|reset|current_clk~8_combout\ = (\main_processor|reset|current_clk.clk1~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|reset|current_clk.clk1~q\,
	datad => \rst~input_o\,
	combout => \main_processor|reset|current_clk~8_combout\);

-- Location: FF_X45_Y23_N3
\main_processor|reset|current_clk.clk2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|reset|current_clk~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|reset|current_clk.clk2~q\);

-- Location: LCCOMB_X45_Y23_N0
\main_processor|reset|current_clk~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|reset|current_clk~6_combout\ = (\main_processor|reset|current_clk.clk3~q\) # (\main_processor|reset|current_clk.clk2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|reset|current_clk.clk3~q\,
	datad => \main_processor|reset|current_clk.clk2~q\,
	combout => \main_processor|reset|current_clk~6_combout\);

-- Location: LCCOMB_X45_Y23_N10
\main_processor|reset|current_clk~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|reset|current_clk~7_combout\ = (!\rst~input_o\ & (\main_processor|reset|current_clk~6_combout\ & (\main_processor|reset|current_clk.clk0~q\ & !\main_processor|reset|current_clk.clk1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \main_processor|reset|current_clk~6_combout\,
	datac => \main_processor|reset|current_clk.clk0~q\,
	datad => \main_processor|reset|current_clk.clk1~q\,
	combout => \main_processor|reset|current_clk~7_combout\);

-- Location: FF_X45_Y23_N11
\main_processor|reset|current_clk.clk3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|reset|current_clk~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|reset|current_clk.clk3~q\);

-- Location: LCCOMB_X45_Y23_N20
\main_processor|reset|enable_PD~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|reset|enable_PD~4_combout\ = (\rst~input_o\) # ((\main_processor|reset|enable_PD~q\ & !\main_processor|reset|current_clk.clk3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|reset|enable_PD~q\,
	datac => \rst~input_o\,
	datad => \main_processor|reset|current_clk.clk3~q\,
	combout => \main_processor|reset|enable_PD~4_combout\);

-- Location: FF_X53_Y23_N9
\main_processor|reset|enable_PD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|reset|enable_PD~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|reset|enable_PD~q\);

-- Location: FF_X53_Y23_N3
\main_processor|control_unit|current_state.T0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|control_unit|current_state.T0~0_combout\,
	clrn => \main_processor|reset|ALT_INV_enable_PD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|control_unit|current_state.T0~q\);

-- Location: LCCOMB_X53_Y23_N30
\main_processor|control_unit|current_state.T1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|current_state.T1~0_combout\ = !\main_processor|control_unit|current_state.T0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|control_unit|current_state.T0~q\,
	combout => \main_processor|control_unit|current_state.T1~0_combout\);

-- Location: FF_X53_Y23_N31
\main_processor|control_unit|current_state.T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|control_unit|current_state.T1~0_combout\,
	clrn => \main_processor|reset|ALT_INV_enable_PD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|control_unit|current_state.T1~q\);

-- Location: FF_X53_Y23_N21
\main_processor|control_unit|current_state.T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|control_unit|current_state.T1~q\,
	clrn => \main_processor|reset|ALT_INV_enable_PD~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|control_unit|current_state.T2~q\);

-- Location: LCCOMB_X52_Y23_N22
\main_processor|control_unit|Reg_Mux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Reg_Mux~0_combout\ = (!\main_processor|dat|IR|q\(31) & (!\main_processor|dat|IR|q\(30) & \main_processor|dat|IR|q\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|IR|q\(31),
	datac => \main_processor|dat|IR|q\(30),
	datad => \main_processor|dat|IR|q\(29),
	combout => \main_processor|control_unit|Reg_Mux~0_combout\);

-- Location: LCCOMB_X52_Y26_N30
\main_processor|control_unit|wen~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|wen~2_combout\ = (\main_processor|control_unit|Reg_Mux~0_combout\ & ((!\cpuClk~input_o\) # (!\main_processor|control_unit|current_state.T2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|current_state.T2~q\,
	datac => \cpuClk~input_o\,
	datad => \main_processor|control_unit|Reg_Mux~0_combout\,
	combout => \main_processor|control_unit|wen~2_combout\);

-- Location: LCCOMB_X52_Y26_N0
\main_processor|control_unit|wen~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|wen~1_combout\ = (\main_processor|control_unit|current_state.T1~q\) # ((\cpuClk~input_o\ & \main_processor|control_unit|current_state.T2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|current_state.T1~q\,
	datac => \cpuClk~input_o\,
	datad => \main_processor|control_unit|current_state.T2~q\,
	combout => \main_processor|control_unit|wen~1_combout\);

-- Location: FF_X52_Y26_N31
\main_processor|control_unit|wen\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|control_unit|wen~2_combout\,
	ena => \main_processor|control_unit|wen~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|control_unit|wen~q\);

-- Location: LCCOMB_X52_Y23_N16
\main_processor|control_unit|Ld_IR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Ld_IR~0_combout\ = (\main_processor|reset|enable_PD~q\) # (\main_processor|control_unit|current_state.T0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|reset|enable_PD~q\,
	datad => \main_processor|control_unit|current_state.T0~q\,
	combout => \main_processor|control_unit|Ld_IR~0_combout\);

-- Location: LCCOMB_X50_Y23_N10
\main_processor|control_unit|Ld_IR~0_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Ld_IR~0_wirecell_combout\ = !\main_processor|control_unit|Ld_IR~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_processor|control_unit|Ld_IR~0_combout\,
	combout => \main_processor|control_unit|Ld_IR~0_wirecell_combout\);

-- Location: LCCOMB_X49_Y24_N26
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0~RAM_ENABLE_AND\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0~RAM_ENABLE_AND_combout\ = (\main_processor|dat|DataMemory|memory~41_combout\ & \main_processor|dat|DataMemory|memory~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|DataMemory|memory~41_combout\,
	datad => \main_processor|dat|DataMemory|memory~41_combout\,
	combout => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0~RAM_ENABLE_AND_combout\);

-- Location: LCCOMB_X53_Y23_N8
\main_processor|control_unit|ALU_op[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|ALU_op[0]~7_combout\ = (\main_processor|control_unit|current_state.T2~q\ & (!\main_processor|reset|enable_PD~q\ & !\main_processor|dat|IR|q\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|control_unit|current_state.T2~q\,
	datac => \main_processor|reset|enable_PD~q\,
	datad => \main_processor|dat|IR|q\(31),
	combout => \main_processor|control_unit|ALU_op[0]~7_combout\);

-- Location: LCCOMB_X31_Y23_N0
\main_processor|dat|ProgramCounter|q_reg[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[0]~32_combout\ = \main_processor|dat|ProgramCounter|q_reg\(0) $ (VCC)
-- \main_processor|dat|ProgramCounter|q_reg[0]~33\ = CARRY(\main_processor|dat|ProgramCounter|q_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|ProgramCounter|q_reg\(0),
	datad => VCC,
	combout => \main_processor|dat|ProgramCounter|q_reg[0]~32_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[0]~33\);

-- Location: LCCOMB_X53_Y23_N18
\main_processor|control_unit|ALU_op[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|ALU_op[0]~2_combout\ = (\main_processor|dat|IR|q\(30) & (\main_processor|control_unit|current_state.T2~q\ & (!\main_processor|reset|enable_PD~q\ & !\main_processor|dat|IR|q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(30),
	datab => \main_processor|control_unit|current_state.T2~q\,
	datac => \main_processor|reset|enable_PD~q\,
	datad => \main_processor|dat|IR|q\(31),
	combout => \main_processor|control_unit|ALU_op[0]~2_combout\);

-- Location: LCCOMB_X53_Y23_N28
\main_processor|control_unit|ALU_op[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|ALU_op[0]~8_combout\ = (\main_processor|dat|IR|q\(29) & (\main_processor|dat|IR|q\(28) & \main_processor|control_unit|ALU_op[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|IR|q\(29),
	datac => \main_processor|dat|IR|q\(28),
	datad => \main_processor|control_unit|ALU_op[0]~2_combout\,
	combout => \main_processor|control_unit|ALU_op[0]~8_combout\);

-- Location: LCCOMB_X53_Y24_N26
\main_processor|dat|MuxIm1|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[0]~0_combout\ = (\main_processor|dat|A|q\(0) & ((\main_processor|dat|IR|q\(29)) # ((\main_processor|dat|IR|q\(28)) # (!\main_processor|control_unit|ALU_op[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|A|q\(0),
	datab => \main_processor|dat|IR|q\(29),
	datac => \main_processor|dat|IR|q\(28),
	datad => \main_processor|control_unit|ALU_op[0]~2_combout\,
	combout => \main_processor|dat|MuxIm1|f[0]~0_combout\);

-- Location: LCCOMB_X53_Y23_N0
\main_processor|control_unit|Im_Mux2[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Im_Mux2[1]~2_combout\ = (\main_processor|dat|IR|q\(30) & (\main_processor|control_unit|current_state.T2~q\ & (\main_processor|dat|IR|q\(29) & !\main_processor|dat|IR|q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(30),
	datab => \main_processor|control_unit|current_state.T2~q\,
	datac => \main_processor|dat|IR|q\(29),
	datad => \main_processor|dat|IR|q\(31),
	combout => \main_processor|control_unit|Im_Mux2[1]~2_combout\);

-- Location: LCCOMB_X31_Y23_N2
\main_processor|dat|ProgramCounter|q_reg[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[1]~34_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(1) & (!\main_processor|dat|ProgramCounter|q_reg[0]~33\)) # (!\main_processor|dat|ProgramCounter|q_reg\(1) & 
-- ((\main_processor|dat|ProgramCounter|q_reg[0]~33\) # (GND)))
-- \main_processor|dat|ProgramCounter|q_reg[1]~35\ = CARRY((!\main_processor|dat|ProgramCounter|q_reg[0]~33\) # (!\main_processor|dat|ProgramCounter|q_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|ProgramCounter|q_reg\(1),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[0]~33\,
	combout => \main_processor|dat|ProgramCounter|q_reg[1]~34_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[1]~35\);

-- Location: LCCOMB_X45_Y23_N24
\main_processor|reset|clr_PC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|reset|clr_PC~0_combout\ = (\rst~input_o\) # ((!\main_processor|reset|current_clk.clk3~q\ & \main_processor|reset|clr_PC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|reset|current_clk.clk3~q\,
	datac => \main_processor|reset|clr_PC~q\,
	datad => \rst~input_o\,
	combout => \main_processor|reset|clr_PC~0_combout\);

-- Location: FF_X45_Y23_N25
\main_processor|reset|clr_PC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|reset|clr_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|reset|clr_PC~q\);

-- Location: LCCOMB_X53_Y22_N8
\main_processor|control_unit|ALU_op[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|ALU_op[0]~5_combout\ = (\main_processor|dat|IR|q\(28) & \main_processor|dat|IR|q\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|dat|IR|q\(28),
	datad => \main_processor|dat|IR|q\(29),
	combout => \main_processor|control_unit|ALU_op[0]~5_combout\);

-- Location: LCCOMB_X54_Y24_N28
\main_processor|control_unit|Clr_Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Clr_Z~0_combout\ = (!\main_processor|dat|IR|q\(24) & \main_processor|dat|IR|q\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|IR|q\(24),
	datad => \main_processor|dat|IR|q\(27),
	combout => \main_processor|control_unit|Clr_Z~0_combout\);

-- Location: LCCOMB_X52_Y23_N28
\main_processor|dat|MuxData|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux31~2_combout\ = (\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|reset|enable_PD~q\) # ((!\main_processor|control_unit|current_state.T0~q\) # (!\main_processor|control_unit|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datab => \main_processor|reset|enable_PD~q\,
	datac => \main_processor|control_unit|Mux19~0_combout\,
	datad => \main_processor|control_unit|current_state.T0~q\,
	combout => \main_processor|dat|MuxData|Mux31~2_combout\);

-- Location: LCCOMB_X50_Y24_N20
\main_processor|control_unit|B_Mux~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|B_Mux~1_combout\ = (!\main_processor|dat|IR|q\(30) & (\main_processor|dat|IR|q\(28) & (!\main_processor|dat|IR|q\(29) & \main_processor|control_unit|ALU_op[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(30),
	datab => \main_processor|dat|IR|q\(28),
	datac => \main_processor|dat|IR|q\(29),
	datad => \main_processor|control_unit|ALU_op[0]~7_combout\,
	combout => \main_processor|control_unit|B_Mux~1_combout\);

-- Location: LCCOMB_X31_Y23_N4
\main_processor|dat|ProgramCounter|q_reg[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[2]~36_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(2) & (\main_processor|dat|ProgramCounter|q_reg[1]~35\ $ (GND))) # (!\main_processor|dat|ProgramCounter|q_reg\(2) & 
-- (!\main_processor|dat|ProgramCounter|q_reg[1]~35\ & VCC))
-- \main_processor|dat|ProgramCounter|q_reg[2]~37\ = CARRY((\main_processor|dat|ProgramCounter|q_reg\(2) & !\main_processor|dat|ProgramCounter|q_reg[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|ProgramCounter|q_reg\(2),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[1]~35\,
	combout => \main_processor|dat|ProgramCounter|q_reg[2]~36_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[2]~37\);

-- Location: LCCOMB_X54_Y23_N6
\main_processor|control_unit|Clr_C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Clr_C~0_combout\ = (\main_processor|dat|IR|q\(28) & (\main_processor|control_unit|ALU_op[0]~2_combout\ & (\main_processor|dat|IR|q\(26) & \main_processor|dat|IR|q\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(28),
	datab => \main_processor|control_unit|ALU_op[0]~2_combout\,
	datac => \main_processor|dat|IR|q\(26),
	datad => \main_processor|dat|IR|q\(29),
	combout => \main_processor|control_unit|Clr_C~0_combout\);

-- Location: LCCOMB_X53_Y23_N6
\main_processor|control_unit|Im_Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Im_Mux1~0_combout\ = (!\main_processor|dat|IR|q\(28) & (!\main_processor|dat|IR|q\(29) & \main_processor|control_unit|ALU_op[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(28),
	datac => \main_processor|dat|IR|q\(29),
	datad => \main_processor|control_unit|ALU_op[0]~2_combout\,
	combout => \main_processor|control_unit|Im_Mux1~0_combout\);

-- Location: LCCOMB_X54_Y23_N2
\main_processor|control_unit|ALU_op[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|ALU_op[0]~6_combout\ = (\main_processor|control_unit|Im_Mux1~0_combout\) # ((\main_processor|dat|IR|q\(24) & (\main_processor|control_unit|Clr_C~0_combout\ & \main_processor|dat|IR|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(24),
	datab => \main_processor|control_unit|Clr_C~0_combout\,
	datac => \main_processor|control_unit|Im_Mux1~0_combout\,
	datad => \main_processor|dat|IR|q\(27),
	combout => \main_processor|control_unit|ALU_op[0]~6_combout\);

-- Location: LCCOMB_X31_Y23_N6
\main_processor|dat|ProgramCounter|q_reg[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[3]~38_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(3) & (!\main_processor|dat|ProgramCounter|q_reg[2]~37\)) # (!\main_processor|dat|ProgramCounter|q_reg\(3) & 
-- ((\main_processor|dat|ProgramCounter|q_reg[2]~37\) # (GND)))
-- \main_processor|dat|ProgramCounter|q_reg[3]~39\ = CARRY((!\main_processor|dat|ProgramCounter|q_reg[2]~37\) # (!\main_processor|dat|ProgramCounter|q_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ProgramCounter|q_reg\(3),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[2]~37\,
	combout => \main_processor|dat|ProgramCounter|q_reg[3]~38_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[3]~39\);

-- Location: LCCOMB_X52_Y21_N22
\main_processor|dat|MuxIm1|f[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[3]~3_combout\ = (\main_processor|dat|A|q\(3) & ((\main_processor|dat|IR|q\(28)) # ((\main_processor|dat|IR|q\(29)) # (!\main_processor|control_unit|ALU_op[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|A|q\(3),
	datab => \main_processor|dat|IR|q\(28),
	datac => \main_processor|control_unit|ALU_op[0]~2_combout\,
	datad => \main_processor|dat|IR|q\(29),
	combout => \main_processor|dat|MuxIm1|f[3]~3_combout\);

-- Location: LCCOMB_X50_Y21_N6
\main_processor|control_unit|ALU_op[0]~2_Duplicate_16\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|ALU_op[0]~2_Duplicate_17\ = (!\main_processor|dat|IR|q\(31) & (!\main_processor|reset|enable_PD~q\ & (\main_processor|control_unit|current_state.T2~q\ & \main_processor|dat|IR|q\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(31),
	datab => \main_processor|reset|enable_PD~q\,
	datac => \main_processor|control_unit|current_state.T2~q\,
	datad => \main_processor|dat|IR|q\(30),
	combout => \main_processor|control_unit|ALU_op[0]~2_Duplicate_17\);

-- Location: LCCOMB_X31_Y23_N8
\main_processor|dat|ProgramCounter|q_reg[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[4]~40_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(4) & (\main_processor|dat|ProgramCounter|q_reg[3]~39\ $ (GND))) # (!\main_processor|dat|ProgramCounter|q_reg\(4) & 
-- (!\main_processor|dat|ProgramCounter|q_reg[3]~39\ & VCC))
-- \main_processor|dat|ProgramCounter|q_reg[4]~41\ = CARRY((\main_processor|dat|ProgramCounter|q_reg\(4) & !\main_processor|dat|ProgramCounter|q_reg[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|ProgramCounter|q_reg\(4),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[3]~39\,
	combout => \main_processor|dat|ProgramCounter|q_reg[4]~40_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[4]~41\);

-- Location: LCCOMB_X52_Y24_N26
\main_processor|control_unit|Im_Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Im_Mux1~1_combout\ = (!\main_processor|dat|IR|q\(28) & !\main_processor|dat|IR|q\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(28),
	datac => \main_processor|dat|IR|q\(29),
	combout => \main_processor|control_unit|Im_Mux1~1_combout\);

-- Location: LCCOMB_X53_Y23_N4
\main_processor|control_unit|Ld_PC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Ld_PC~1_combout\ = (\main_processor|control_unit|current_state.T2~q\ & ((\main_processor|control_unit|Im_Mux1~1_combout\ & (!\main_processor|dat|IR|q\(30) & \main_processor|dat|IR|q\(31))) # 
-- (!\main_processor|control_unit|Im_Mux1~1_combout\ & (\main_processor|dat|IR|q\(30) & !\main_processor|dat|IR|q\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~1_combout\,
	datab => \main_processor|control_unit|current_state.T2~q\,
	datac => \main_processor|dat|IR|q\(30),
	datad => \main_processor|dat|IR|q\(31),
	combout => \main_processor|control_unit|Ld_PC~1_combout\);

-- Location: LCCOMB_X50_Y23_N16
\main_processor|control_unit|Ld_PC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Ld_PC~0_combout\ = (!\main_processor|reset|enable_PD~q\ & (((!\main_processor|dat|IR|q\(28)) # (!\main_processor|dat|IR|q\(29))) # (!\main_processor|control_unit|ALU_op[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~2_combout\,
	datab => \main_processor|dat|IR|q\(29),
	datac => \main_processor|dat|IR|q\(28),
	datad => \main_processor|reset|enable_PD~q\,
	combout => \main_processor|control_unit|Ld_PC~0_combout\);

-- Location: LCCOMB_X50_Y23_N30
\main_processor|control_unit|Ld_PC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Ld_PC~2_combout\ = (\main_processor|control_unit|Inc_PC~3_combout\) # ((\main_processor|control_unit|Ld_PC~0_combout\ & ((\main_processor|control_unit|Ld_PC~1_combout\) # (\main_processor|control_unit|current_state.T1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Ld_PC~1_combout\,
	datab => \main_processor|control_unit|current_state.T1~q\,
	datac => \main_processor|control_unit|Inc_PC~3_combout\,
	datad => \main_processor|control_unit|Ld_PC~0_combout\,
	combout => \main_processor|control_unit|Ld_PC~2_combout\);

-- Location: FF_X31_Y23_N9
\main_processor|dat|ProgramCounter|q_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[4]~40_combout\,
	asdata => \main_processor|dat|IR|q\(4),
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(4));

-- Location: LCCOMB_X31_Y23_N10
\main_processor|dat|ProgramCounter|q_reg[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[5]~42_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(5) & (!\main_processor|dat|ProgramCounter|q_reg[4]~41\)) # (!\main_processor|dat|ProgramCounter|q_reg\(5) & 
-- ((\main_processor|dat|ProgramCounter|q_reg[4]~41\) # (GND)))
-- \main_processor|dat|ProgramCounter|q_reg[5]~43\ = CARRY((!\main_processor|dat|ProgramCounter|q_reg[4]~41\) # (!\main_processor|dat|ProgramCounter|q_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ProgramCounter|q_reg\(5),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[4]~41\,
	combout => \main_processor|dat|ProgramCounter|q_reg[5]~42_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[5]~43\);

-- Location: LCCOMB_X52_Y24_N18
\main_processor|control_unit|ALU_op[0]~2_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|ALU_op[0]~2_Duplicate_10\ = (\main_processor|dat|IR|q\(30) & (\main_processor|control_unit|current_state.T2~q\ & (!\main_processor|reset|enable_PD~q\ & !\main_processor|dat|IR|q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(30),
	datab => \main_processor|control_unit|current_state.T2~q\,
	datac => \main_processor|reset|enable_PD~q\,
	datad => \main_processor|dat|IR|q\(31),
	combout => \main_processor|control_unit|ALU_op[0]~2_Duplicate_10\);

-- Location: FF_X52_Y25_N25
\main_processor|dat|IR|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxData|Mux25~2_combout\,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(6));

-- Location: LCCOMB_X50_Y21_N18
\main_processor|control_unit|Im_Mux2[1]~3_Duplicate_9\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Im_Mux2[1]~3_Duplicate_10\ = (\main_processor|control_unit|Im_Mux2[1]~2_combout\ & (\main_processor|dat|IR|q\(28) & (\main_processor|control_unit|Im_Mux2[1]~1_Duplicate_5\ & !\main_processor|reset|enable_PD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux2[1]~2_combout\,
	datab => \main_processor|dat|IR|q\(28),
	datac => \main_processor|control_unit|Im_Mux2[1]~1_Duplicate_5\,
	datad => \main_processor|reset|enable_PD~q\,
	combout => \main_processor|control_unit|Im_Mux2[1]~3_Duplicate_10\);

-- Location: LCCOMB_X54_Y24_N22
\main_processor|control_unit|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Mux7~0_combout\ = (\main_processor|dat|IR|q\(24) & (!\main_processor|dat|IR|q\(25) & ((\main_processor|dat|IR|q\(27)) # (!\main_processor|dat|IR|q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(24),
	datab => \main_processor|dat|IR|q\(25),
	datac => \main_processor|dat|IR|q\(26),
	datad => \main_processor|dat|IR|q\(27),
	combout => \main_processor|control_unit|Mux7~0_combout\);

-- Location: LCCOMB_X52_Y24_N28
\main_processor|control_unit|Im_Mux2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Im_Mux2[0]~0_combout\ = (((!\main_processor|control_unit|ALU_op[0]~2_Duplicate_10\) # (!\main_processor|control_unit|Mux7~0_combout\)) # (!\main_processor|dat|IR|q\(29))) # (!\main_processor|dat|IR|q\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(28),
	datab => \main_processor|dat|IR|q\(29),
	datac => \main_processor|control_unit|Mux7~0_combout\,
	datad => \main_processor|control_unit|ALU_op[0]~2_Duplicate_10\,
	combout => \main_processor|control_unit|Im_Mux2[0]~0_combout\);

-- Location: LCCOMB_X53_Y23_N16
\main_processor|control_unit|Im_Mux2[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Im_Mux2[1]~3_combout\ = (\main_processor|control_unit|Im_Mux2[1]~2_combout\ & (!\main_processor|reset|enable_PD~q\ & (\main_processor|dat|IR|q\(28) & \main_processor|control_unit|Im_Mux2[1]~1_Duplicate_5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux2[1]~2_combout\,
	datab => \main_processor|reset|enable_PD~q\,
	datac => \main_processor|dat|IR|q\(28),
	datad => \main_processor|control_unit|Im_Mux2[1]~1_Duplicate_5\,
	combout => \main_processor|control_unit|Im_Mux2[1]~3_combout\);

-- Location: LCCOMB_X52_Y25_N22
\main_processor|dat|MuxIm2|Mux24~2_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux24~2_Duplicate_4\ = (!\main_processor|control_unit|Im_Mux2[1]~3_combout\ & ((\main_processor|control_unit|Im_Mux2[0]~0_combout\ & ((\main_processor|dat|B|q\(7)))) # (!\main_processor|control_unit|Im_Mux2[0]~0_combout\ & 
-- (\main_processor|dat|IR|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux2[0]~0_combout\,
	datab => \main_processor|control_unit|Im_Mux2[1]~3_combout\,
	datac => \main_processor|dat|IR|q\(7),
	datad => \main_processor|dat|B|q\(7),
	combout => \main_processor|dat|MuxIm2|Mux24~2_Duplicate_4\);

-- Location: LCCOMB_X50_Y25_N24
\main_processor|dat|ALU0|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux24~2_combout\ = (\main_processor|dat|MuxIm2|Mux24~2_Duplicate_4\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # ((!\main_processor|control_unit|ALU_op[1]~4_combout\ & \main_processor|dat|MuxIm1|f[7]~7_combout\)))) # 
-- (!\main_processor|dat|MuxIm2|Mux24~2_Duplicate_4\ & (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|control_unit|ALU_op[1]~4_combout\) # (\main_processor|dat|MuxIm1|f[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux24~2_Duplicate_4\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datad => \main_processor|dat|MuxIm1|f[7]~7_combout\,
	combout => \main_processor|dat|ALU0|Mux24~2_combout\);

-- Location: LCCOMB_X52_Y22_N22
\main_processor|dat|MuxB|f[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[6]~6_combout\ = (\main_processor|control_unit|B_Mux~1_combout\ & (((\main_processor|dat|IR|q\(6))))) # (!\main_processor|control_unit|B_Mux~1_combout\ & ((\main_processor|dat|MuxData|Mux25~1_combout\) # 
-- ((\main_processor|dat|MuxData|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|B_Mux~1_combout\,
	datab => \main_processor|dat|MuxData|Mux25~1_combout\,
	datac => \main_processor|dat|MuxData|Mux25~0_combout\,
	datad => \main_processor|dat|IR|q\(6),
	combout => \main_processor|dat|MuxB|f[6]~6_combout\);

-- Location: LCCOMB_X54_Y24_N10
\main_processor|control_unit|Clr_B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Clr_B~0_combout\ = (!\main_processor|dat|IR|q\(27) & (\main_processor|dat|IR|q\(25) & !\main_processor|dat|IR|q\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(27),
	datab => \main_processor|dat|IR|q\(25),
	datad => \main_processor|dat|IR|q\(24),
	combout => \main_processor|control_unit|Clr_B~0_combout\);

-- Location: LCCOMB_X54_Y24_N16
\main_processor|control_unit|Clr_B~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Clr_B~1_combout\ = (\main_processor|control_unit|Clr_B~0_combout\ & ((\main_processor|control_unit|Clr_C~0_combout\) # ((\main_processor|control_unit|Im_Mux1~1_combout\ & 
-- \main_processor|control_unit|ALU_op[0]~2_Duplicate_10\)))) # (!\main_processor|control_unit|Clr_B~0_combout\ & (((\main_processor|control_unit|Im_Mux1~1_combout\ & \main_processor|control_unit|ALU_op[0]~2_Duplicate_10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Clr_B~0_combout\,
	datab => \main_processor|control_unit|Clr_C~0_combout\,
	datac => \main_processor|control_unit|Im_Mux1~1_combout\,
	datad => \main_processor|control_unit|ALU_op[0]~2_Duplicate_10\,
	combout => \main_processor|control_unit|Clr_B~1_combout\);

-- Location: LCCOMB_X53_Y23_N26
\main_processor|control_unit|Ld_B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Ld_B~0_combout\ = (\main_processor|control_unit|current_state.T1~q\ & (\main_processor|dat|IR|q\(29))) # (!\main_processor|control_unit|current_state.T1~q\ & ((\main_processor|control_unit|current_state.T2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|IR|q\(29),
	datac => \main_processor|control_unit|current_state.T1~q\,
	datad => \main_processor|control_unit|current_state.T2~q\,
	combout => \main_processor|control_unit|Ld_B~0_combout\);

-- Location: LCCOMB_X52_Y23_N0
\main_processor|control_unit|Ld_B~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Ld_B~1_combout\ = (\main_processor|dat|IR|q\(28) & (!\main_processor|dat|IR|q\(31) & !\main_processor|dat|IR|q\(29))) # (!\main_processor|dat|IR|q\(28) & (\main_processor|dat|IR|q\(31) & \main_processor|dat|IR|q\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|IR|q\(28),
	datac => \main_processor|dat|IR|q\(31),
	datad => \main_processor|dat|IR|q\(29),
	combout => \main_processor|control_unit|Ld_B~1_combout\);

-- Location: LCCOMB_X52_Y23_N2
\main_processor|control_unit|Ld_B~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Ld_B~2_combout\ = (!\main_processor|dat|IR|q\(30) & (\main_processor|control_unit|Ld_B~0_combout\ & (!\main_processor|reset|enable_PD~q\ & \main_processor|control_unit|Ld_B~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(30),
	datab => \main_processor|control_unit|Ld_B~0_combout\,
	datac => \main_processor|reset|enable_PD~q\,
	datad => \main_processor|control_unit|Ld_B~1_combout\,
	combout => \main_processor|control_unit|Ld_B~2_combout\);

-- Location: FF_X52_Y22_N23
\main_processor|dat|B|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[6]~6_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(6));

-- Location: LCCOMB_X52_Y25_N14
\main_processor|dat|MuxIm2|Mux25~0_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux25~0_Duplicate_2\ = (!\main_processor|control_unit|Im_Mux2[1]~3_combout\ & ((\main_processor|control_unit|Im_Mux2[0]~0_combout\ & (\main_processor|dat|B|q\(6))) # (!\main_processor|control_unit|Im_Mux2[0]~0_combout\ & 
-- ((\main_processor|dat|IR|q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|B|q\(6),
	datab => \main_processor|dat|IR|q\(6),
	datac => \main_processor|control_unit|Im_Mux2[0]~0_combout\,
	datad => \main_processor|control_unit|Im_Mux2[1]~3_combout\,
	combout => \main_processor|dat|MuxIm2|Mux25~0_Duplicate_2\);

-- Location: LCCOMB_X53_Y25_N8
\main_processor|dat|MuxIm2|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux27~2_combout\ = (!\main_processor|control_unit|Im_Mux2[1]~3_combout\ & ((\main_processor|control_unit|Im_Mux2[0]~0_combout\ & ((\main_processor|dat|B|q\(4)))) # (!\main_processor|control_unit|Im_Mux2[0]~0_combout\ & 
-- (\main_processor|dat|IR|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(4),
	datab => \main_processor|dat|B|q\(4),
	datac => \main_processor|control_unit|Im_Mux2[1]~3_combout\,
	datad => \main_processor|control_unit|Im_Mux2[0]~0_combout\,
	combout => \main_processor|dat|MuxIm2|Mux27~2_combout\);

-- Location: LCCOMB_X53_Y26_N8
\main_processor|dat|IR|q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|IR|q[9]~feeder_combout\ = \main_processor|dat|MuxData|Mux22~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_processor|dat|MuxData|Mux22~1_combout\,
	combout => \main_processor|dat|IR|q[9]~feeder_combout\);

-- Location: FF_X53_Y26_N9
\main_processor|dat|IR|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|IR|q[9]~feeder_combout\,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(9));

-- Location: LCCOMB_X53_Y26_N6
\main_processor|dat|IR|q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|IR|q[10]~feeder_combout\ = \main_processor|dat|MuxData|Mux21~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|dat|MuxData|Mux21~1_combout\,
	combout => \main_processor|dat|IR|q[10]~feeder_combout\);

-- Location: FF_X53_Y26_N7
\main_processor|dat|IR|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|IR|q[10]~feeder_combout\,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(10));

-- Location: LCCOMB_X53_Y26_N16
\main_processor|dat|IR|q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|IR|q[11]~feeder_combout\ = \main_processor|dat|MuxData|Mux20~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|dat|MuxData|Mux20~1_combout\,
	combout => \main_processor|dat|IR|q[11]~feeder_combout\);

-- Location: FF_X53_Y26_N17
\main_processor|dat|IR|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|IR|q[11]~feeder_combout\,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(11));

-- Location: LCCOMB_X54_Y26_N20
\main_processor|dat|IR|q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|IR|q[12]~feeder_combout\ = \main_processor|dat|MuxData|Mux19~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|dat|MuxData|Mux19~1_combout\,
	combout => \main_processor|dat|IR|q[12]~feeder_combout\);

-- Location: FF_X54_Y26_N21
\main_processor|dat|IR|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|IR|q[12]~feeder_combout\,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(12));

-- Location: LCCOMB_X53_Y22_N30
\main_processor|control_unit|ALU_op[0]~2_Duplicate_13\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|ALU_op[0]~2_Duplicate_14\ = (!\main_processor|reset|enable_PD~q\ & (!\main_processor|dat|IR|q\(31) & (\main_processor|dat|IR|q\(30) & \main_processor|control_unit|current_state.T2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|reset|enable_PD~q\,
	datab => \main_processor|dat|IR|q\(31),
	datac => \main_processor|dat|IR|q\(30),
	datad => \main_processor|control_unit|current_state.T2~q\,
	combout => \main_processor|control_unit|ALU_op[0]~2_Duplicate_14\);

-- Location: FF_X55_Y22_N17
\main_processor|dat|IR|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|MuxData|Mux18~1_combout\,
	sload => VCC,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(13));

-- Location: LCCOMB_X53_Y20_N16
\main_processor|dat|MuxA|f[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[2]~2_combout\ = (\main_processor|control_unit|A_Mux~0_combout\ & (\main_processor|dat|IR|q\(2))) # (!\main_processor|control_unit|A_Mux~0_combout\ & (((\main_processor|dat|MuxData|Mux29~0_combout\) # 
-- (\main_processor|dat|MuxData|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(2),
	datab => \main_processor|dat|MuxData|Mux29~0_combout\,
	datac => \main_processor|dat|MuxData|Mux29~1_combout\,
	datad => \main_processor|control_unit|A_Mux~0_combout\,
	combout => \main_processor|dat|MuxA|f[2]~2_combout\);

-- Location: LCCOMB_X54_Y23_N28
\main_processor|control_unit|Clr_A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Clr_A~0_combout\ = (\main_processor|dat|IR|q\(24) & (!\main_processor|dat|IR|q\(27) & (!\main_processor|dat|IR|q\(25) & \main_processor|control_unit|Clr_C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(24),
	datab => \main_processor|dat|IR|q\(27),
	datac => \main_processor|dat|IR|q\(25),
	datad => \main_processor|control_unit|Clr_C~0_combout\,
	combout => \main_processor|control_unit|Clr_A~0_combout\);

-- Location: LCCOMB_X52_Y24_N16
\main_processor|control_unit|Ld_A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Ld_A~0_combout\ = (\main_processor|dat|IR|q\(29) & (!\main_processor|control_unit|Mux2~0_combout\ & (\main_processor|dat|IR|q\(28) & \main_processor|dat|IR|q\(30)))) # (!\main_processor|dat|IR|q\(29) & 
-- (((!\main_processor|dat|IR|q\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Mux2~0_combout\,
	datab => \main_processor|dat|IR|q\(29),
	datac => \main_processor|dat|IR|q\(28),
	datad => \main_processor|dat|IR|q\(30),
	combout => \main_processor|control_unit|Ld_A~0_combout\);

-- Location: LCCOMB_X53_Y23_N20
\main_processor|control_unit|Ld_A~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Ld_A~1_combout\ = (!\main_processor|reset|enable_PD~q\ & ((\main_processor|control_unit|current_state.T1~q\ & (\main_processor|dat|IR|q\(31))) # (!\main_processor|control_unit|current_state.T1~q\ & 
-- ((\main_processor|control_unit|current_state.T2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|current_state.T1~q\,
	datab => \main_processor|dat|IR|q\(31),
	datac => \main_processor|control_unit|current_state.T2~q\,
	datad => \main_processor|reset|enable_PD~q\,
	combout => \main_processor|control_unit|Ld_A~1_combout\);

-- Location: LCCOMB_X52_Y24_N10
\main_processor|control_unit|Ld_A~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Ld_A~2_combout\ = (\main_processor|control_unit|Ld_A~1_combout\ & ((\main_processor|dat|IR|q\(31) & ((\main_processor|control_unit|B_Mux~0_combout\))) # (!\main_processor|dat|IR|q\(31) & 
-- (\main_processor|control_unit|Ld_A~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(31),
	datab => \main_processor|control_unit|Ld_A~0_combout\,
	datac => \main_processor|control_unit|B_Mux~0_combout\,
	datad => \main_processor|control_unit|Ld_A~1_combout\,
	combout => \main_processor|control_unit|Ld_A~2_combout\);

-- Location: FF_X53_Y20_N17
\main_processor|dat|A|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[2]~2_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(2));

-- Location: LCCOMB_X52_Y23_N4
\main_processor|control_unit|Reg_Mux~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Reg_Mux~1_combout\ = (\main_processor|control_unit|Reg_Mux~0_combout\ & (\main_processor|dat|IR|q\(28) & (!\main_processor|reset|enable_PD~q\ & \main_processor|control_unit|current_state.T0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Reg_Mux~0_combout\,
	datab => \main_processor|dat|IR|q\(28),
	datac => \main_processor|reset|enable_PD~q\,
	datad => \main_processor|control_unit|current_state.T0~q\,
	combout => \main_processor|control_unit|Reg_Mux~1_combout\);

-- Location: LCCOMB_X53_Y24_N30
\main_processor|dat|MuxReg|f[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[2]~2_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|B|q\(2))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|A|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|B|q\(2),
	datab => \main_processor|dat|A|q\(2),
	datad => \main_processor|control_unit|Reg_Mux~1_combout\,
	combout => \main_processor|dat|MuxReg|f[2]~2_combout\);

-- Location: LCCOMB_X52_Y21_N12
\main_processor|dat|MuxReg|f[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[3]~3_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|B|q\(3)))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|A|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|A|q\(3),
	datac => \main_processor|dat|B|q\(3),
	datad => \main_processor|control_unit|Reg_Mux~1_combout\,
	combout => \main_processor|dat|MuxReg|f[3]~3_combout\);

-- Location: LCCOMB_X53_Y25_N30
\main_processor|dat|MuxReg|f[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[4]~4_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|B|q\(4))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|A|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|B|q\(4),
	datab => \main_processor|dat|A|q\(4),
	datad => \main_processor|control_unit|Reg_Mux~1_combout\,
	combout => \main_processor|dat|MuxReg|f[4]~4_combout\);

-- Location: LCCOMB_X52_Y24_N8
\main_processor|dat|MuxReg|f[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[5]~5_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|B|q\(5))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|A|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|B|q\(5),
	datab => \main_processor|control_unit|Reg_Mux~1_combout\,
	datad => \main_processor|dat|A|q\(5),
	combout => \main_processor|dat|MuxReg|f[5]~5_combout\);

-- Location: LCCOMB_X50_Y23_N12
\main_processor|dat|MuxReg|f[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[6]~6_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|B|q\(6)))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|A|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|A|q\(6),
	datac => \main_processor|dat|B|q\(6),
	datad => \main_processor|control_unit|Reg_Mux~1_combout\,
	combout => \main_processor|dat|MuxReg|f[6]~6_combout\);

-- Location: LCCOMB_X52_Y22_N4
\main_processor|dat|MuxReg|f[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[7]~7_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|B|q\(7)))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|A|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Reg_Mux~1_combout\,
	datac => \main_processor|dat|A|q\(7),
	datad => \main_processor|dat|B|q\(7),
	combout => \main_processor|dat|MuxReg|f[7]~7_combout\);

-- Location: LCCOMB_X52_Y24_N14
\main_processor|dat|MuxIm1|f[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[9]~9_combout\ = (\main_processor|dat|A|q\(9) & ((\main_processor|dat|IR|q\(28)) # ((\main_processor|dat|IR|q\(29)) # (!\main_processor|control_unit|ALU_op[0]~2_Duplicate_10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(28),
	datab => \main_processor|control_unit|ALU_op[0]~2_Duplicate_10\,
	datac => \main_processor|dat|IR|q\(29),
	datad => \main_processor|dat|A|q\(9),
	combout => \main_processor|dat|MuxIm1|f[9]~9_combout\);

-- Location: LCCOMB_X53_Y26_N18
\main_processor|dat|IR|q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|IR|q[8]~feeder_combout\ = \main_processor|dat|MuxData|Mux23~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_processor|dat|MuxData|Mux23~2_combout\,
	combout => \main_processor|dat|IR|q[8]~feeder_combout\);

-- Location: FF_X53_Y26_N19
\main_processor|dat|IR|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|IR|q[8]~feeder_combout\,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(8));

-- Location: LCCOMB_X52_Y22_N18
\main_processor|dat|MuxB|f[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[8]~8_combout\ = (\main_processor|control_unit|B_Mux~1_combout\ & (((\main_processor|dat|IR|q\(8))))) # (!\main_processor|control_unit|B_Mux~1_combout\ & ((\main_processor|dat|MuxData|Mux23~0_combout\) # 
-- ((\main_processor|dat|MuxData|Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|B_Mux~1_combout\,
	datab => \main_processor|dat|MuxData|Mux23~0_combout\,
	datac => \main_processor|dat|MuxData|Mux23~1_combout\,
	datad => \main_processor|dat|IR|q\(8),
	combout => \main_processor|dat|MuxB|f[8]~8_combout\);

-- Location: FF_X52_Y22_N19
\main_processor|dat|B|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[8]~8_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(8));

-- Location: LCCOMB_X52_Y22_N8
\main_processor|dat|MuxIm2|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux23~0_combout\ = (!\main_processor|control_unit|Im_Mux2[1]~3_combout\ & ((\main_processor|control_unit|Im_Mux2[0]~0_combout\ & (\main_processor|dat|B|q\(8))) # (!\main_processor|control_unit|Im_Mux2[0]~0_combout\ & 
-- ((\main_processor|dat|IR|q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux2[0]~0_combout\,
	datab => \main_processor|dat|B|q\(8),
	datac => \main_processor|control_unit|Im_Mux2[1]~3_combout\,
	datad => \main_processor|dat|IR|q\(8),
	combout => \main_processor|dat|MuxIm2|Mux23~0_combout\);

-- Location: LCCOMB_X53_Y21_N0
\main_processor|dat|MuxIm1|f[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[8]~8_combout\ = (\main_processor|dat|A|q\(8) & (((\main_processor|dat|IR|q\(29)) # (\main_processor|dat|IR|q\(28))) # (!\main_processor|control_unit|ALU_op[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~2_combout\,
	datab => \main_processor|dat|IR|q\(29),
	datac => \main_processor|dat|IR|q\(28),
	datad => \main_processor|dat|A|q\(8),
	combout => \main_processor|dat|MuxIm1|f[8]~8_combout\);

-- Location: LCCOMB_X54_Y23_N14
\main_processor|control_unit|Mux7~0_Duplicate_3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Mux7~0_Duplicate_4\ = (!\main_processor|dat|IR|q\(25) & (\main_processor|dat|IR|q\(24) & ((\main_processor|dat|IR|q\(27)) # (!\main_processor|dat|IR|q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(26),
	datab => \main_processor|dat|IR|q\(27),
	datac => \main_processor|dat|IR|q\(25),
	datad => \main_processor|dat|IR|q\(24),
	combout => \main_processor|control_unit|Mux7~0_Duplicate_4\);

-- Location: LCCOMB_X50_Y21_N8
\main_processor|control_unit|ALU_op[0]~5_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|ALU_op[0]~5_Duplicate_15\ = (\main_processor|dat|IR|q\(28) & \main_processor|dat|IR|q\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|IR|q\(28),
	datad => \main_processor|dat|IR|q\(29),
	combout => \main_processor|control_unit|ALU_op[0]~5_Duplicate_15\);

-- Location: LCCOMB_X50_Y21_N28
\main_processor|dat|MuxIm2|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux24~1_combout\ = (\main_processor|control_unit|ALU_op[0]~2_Duplicate_17\ & (\main_processor|control_unit|Mux7~0_Duplicate_4\ & (\main_processor|control_unit|ALU_op[0]~5_Duplicate_15\ & \main_processor|dat|IR|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~2_Duplicate_17\,
	datab => \main_processor|control_unit|Mux7~0_Duplicate_4\,
	datac => \main_processor|control_unit|ALU_op[0]~5_Duplicate_15\,
	datad => \main_processor|dat|IR|q\(7),
	combout => \main_processor|dat|MuxIm2|Mux24~1_combout\);

-- Location: LCCOMB_X50_Y21_N14
\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|Cout~1_combout\ = (\main_processor|dat|MuxIm1|f[7]~7_combout\) # ((\main_processor|control_unit|Im_Mux2[1]~3_Duplicate_10\) # ((!\main_processor|dat|MuxIm2|Mux24~0_combout\ & 
-- !\main_processor|dat|MuxIm2|Mux24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[7]~7_combout\,
	datab => \main_processor|control_unit|Im_Mux2[1]~3_Duplicate_10\,
	datac => \main_processor|dat|MuxIm2|Mux24~0_combout\,
	datad => \main_processor|dat|MuxIm2|Mux24~1_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|Cout~1_combout\);

-- Location: LCCOMB_X52_Y22_N28
\main_processor|dat|MuxIm2|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux25~0_combout\ = (!\main_processor|control_unit|Im_Mux2[1]~3_combout\ & ((\main_processor|control_unit|Im_Mux2[0]~0_combout\ & (\main_processor|dat|B|q\(6))) # (!\main_processor|control_unit|Im_Mux2[0]~0_combout\ & 
-- ((\main_processor|dat|IR|q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|B|q\(6),
	datab => \main_processor|control_unit|Im_Mux2[1]~3_combout\,
	datac => \main_processor|control_unit|Im_Mux2[0]~0_combout\,
	datad => \main_processor|dat|IR|q\(6),
	combout => \main_processor|dat|MuxIm2|Mux25~0_combout\);

-- Location: LCCOMB_X52_Y22_N30
\main_processor|dat|MuxIm2|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux26~0_combout\ = (!\main_processor|control_unit|Im_Mux2[1]~3_combout\ & ((\main_processor|control_unit|Im_Mux2[0]~0_combout\ & ((\main_processor|dat|B|q\(5)))) # (!\main_processor|control_unit|Im_Mux2[0]~0_combout\ & 
-- (\main_processor|dat|IR|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux2[0]~0_combout\,
	datab => \main_processor|dat|IR|q\(5),
	datac => \main_processor|control_unit|Im_Mux2[1]~3_combout\,
	datad => \main_processor|dat|B|q\(5),
	combout => \main_processor|dat|MuxIm2|Mux26~0_combout\);

-- Location: LCCOMB_X52_Y21_N28
\main_processor|dat|MuxIm2|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux28~0_combout\ = (!\main_processor|control_unit|Im_Mux2[1]~3_combout\ & ((\main_processor|control_unit|Im_Mux2[0]~0_combout\ & (\main_processor|dat|B|q\(3))) # (!\main_processor|control_unit|Im_Mux2[0]~0_combout\ & 
-- ((\main_processor|dat|IR|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|B|q\(3),
	datab => \main_processor|control_unit|Im_Mux2[0]~0_combout\,
	datac => \main_processor|dat|IR|q\(3),
	datad => \main_processor|control_unit|Im_Mux2[1]~3_combout\,
	combout => \main_processor|dat|MuxIm2|Mux28~0_combout\);

-- Location: LCCOMB_X50_Y21_N4
\main_processor|dat|MuxIm2|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux27~1_combout\ = (\main_processor|control_unit|ALU_op[0]~2_Duplicate_17\ & (\main_processor|dat|IR|q\(4) & (\main_processor|control_unit|ALU_op[0]~5_Duplicate_15\ & \main_processor|control_unit|Mux7~0_Duplicate_4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~2_Duplicate_17\,
	datab => \main_processor|dat|IR|q\(4),
	datac => \main_processor|control_unit|ALU_op[0]~5_Duplicate_15\,
	datad => \main_processor|control_unit|Mux7~0_Duplicate_4\,
	combout => \main_processor|dat|MuxIm2|Mux27~1_combout\);

-- Location: LCCOMB_X50_Y21_N30
\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|Cout~1_combout\ = (\main_processor|dat|MuxIm1|f[4]~4_combout\) # ((\main_processor|control_unit|Im_Mux2[1]~3_Duplicate_10\) # ((!\main_processor|dat|MuxIm2|Mux27~0_combout\ & 
-- !\main_processor|dat|MuxIm2|Mux27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux27~0_combout\,
	datab => \main_processor|dat|MuxIm1|f[4]~4_combout\,
	datac => \main_processor|dat|MuxIm2|Mux27~1_combout\,
	datad => \main_processor|control_unit|Im_Mux2[1]~3_Duplicate_10\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|Cout~1_combout\);

-- Location: LCCOMB_X53_Y22_N0
\main_processor|control_unit|Mux7~0_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Mux7~0_Duplicate_2\ = (\main_processor|dat|IR|q\(24) & (!\main_processor|dat|IR|q\(25) & ((\main_processor|dat|IR|q\(27)) # (!\main_processor|dat|IR|q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(24),
	datab => \main_processor|dat|IR|q\(25),
	datac => \main_processor|dat|IR|q\(27),
	datad => \main_processor|dat|IR|q\(26),
	combout => \main_processor|control_unit|Mux7~0_Duplicate_2\);

-- Location: LCCOMB_X53_Y22_N4
\main_processor|dat|MuxIm2|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux30~0_combout\ = (\main_processor|dat|B|q\(1) & (((!\main_processor|control_unit|ALU_op[0]~5_combout\) # (!\main_processor|control_unit|Mux7~0_Duplicate_2\)) # (!\main_processor|control_unit|ALU_op[0]~2_Duplicate_14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~2_Duplicate_14\,
	datab => \main_processor|control_unit|Mux7~0_Duplicate_2\,
	datac => \main_processor|control_unit|ALU_op[0]~5_combout\,
	datad => \main_processor|dat|B|q\(1),
	combout => \main_processor|dat|MuxIm2|Mux30~0_combout\);

-- Location: LCCOMB_X53_Y22_N14
\main_processor|dat|MuxIm2|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux30~1_combout\ = (\main_processor|control_unit|ALU_op[0]~2_Duplicate_14\ & (\main_processor|dat|IR|q\(1) & (\main_processor|control_unit|ALU_op[0]~5_combout\ & \main_processor|control_unit|Mux7~0_Duplicate_2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~2_Duplicate_14\,
	datab => \main_processor|dat|IR|q\(1),
	datac => \main_processor|control_unit|ALU_op[0]~5_combout\,
	datad => \main_processor|control_unit|Mux7~0_Duplicate_2\,
	combout => \main_processor|dat|MuxIm2|Mux30~1_combout\);

-- Location: LCCOMB_X53_Y22_N18
\main_processor|control_unit|Im_Mux2[1]~3_Duplicate_7\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Im_Mux2[1]~3_Duplicate_8\ = (!\main_processor|reset|enable_PD~q\ & (\main_processor|dat|IR|q\(28) & (\main_processor|control_unit|Im_Mux2[1]~2_combout\ & \main_processor|control_unit|Im_Mux2[1]~1_Duplicate_5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|reset|enable_PD~q\,
	datab => \main_processor|dat|IR|q\(28),
	datac => \main_processor|control_unit|Im_Mux2[1]~2_combout\,
	datad => \main_processor|control_unit|Im_Mux2[1]~1_Duplicate_5\,
	combout => \main_processor|control_unit|Im_Mux2[1]~3_Duplicate_8\);

-- Location: LCCOMB_X53_Y22_N20
\main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|Cout~0_combout\ = (\main_processor|dat|MuxIm1|f[1]~2_combout\ & ((\main_processor|control_unit|Im_Mux2[1]~3_Duplicate_8\) # ((!\main_processor|dat|MuxIm2|Mux30~0_combout\ & 
-- !\main_processor|dat|MuxIm2|Mux30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[1]~2_combout\,
	datab => \main_processor|dat|MuxIm2|Mux30~0_combout\,
	datac => \main_processor|dat|MuxIm2|Mux30~1_combout\,
	datad => \main_processor|control_unit|Im_Mux2[1]~3_Duplicate_8\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|Cout~0_combout\);

-- Location: LCCOMB_X53_Y20_N4
\main_processor|dat|MuxIm1|f[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[2]~1_combout\ = (\main_processor|dat|A|q\(2) & ((\main_processor|dat|IR|q\(29)) # ((\main_processor|dat|IR|q\(28)) # (!\main_processor|control_unit|ALU_op[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(29),
	datab => \main_processor|dat|A|q\(2),
	datac => \main_processor|dat|IR|q\(28),
	datad => \main_processor|control_unit|ALU_op[0]~2_combout\,
	combout => \main_processor|dat|MuxIm1|f[2]~1_combout\);

-- Location: LCCOMB_X53_Y22_N2
\main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|Cout~1_combout\ = (\main_processor|dat|MuxIm1|f[1]~2_combout\) # ((\main_processor|control_unit|Im_Mux2[1]~3_Duplicate_8\) # ((!\main_processor|dat|MuxIm2|Mux30~0_combout\ & 
-- !\main_processor|dat|MuxIm2|Mux30~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[1]~2_combout\,
	datab => \main_processor|dat|MuxIm2|Mux30~0_combout\,
	datac => \main_processor|dat|MuxIm2|Mux30~1_combout\,
	datad => \main_processor|control_unit|Im_Mux2[1]~3_Duplicate_8\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|Cout~1_combout\);

-- Location: LCCOMB_X53_Y24_N20
\main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|Cout~2_combout\ = (\main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|Cout~1_combout\ & ((\main_processor|dat|MuxIm1|f[0]~0_combout\ & ((\main_processor|control_unit|ALU_op[2]~3_combout\) # 
-- (!\main_processor|dat|MuxIm2|Mux31~0_combout\))) # (!\main_processor|dat|MuxIm1|f[0]~0_combout\ & (!\main_processor|dat|MuxIm2|Mux31~0_combout\ & \main_processor|control_unit|ALU_op[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[0]~0_combout\,
	datab => \main_processor|dat|MuxIm2|Mux31~0_combout\,
	datac => \main_processor|control_unit|ALU_op[2]~3_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|Cout~1_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|Cout~2_combout\);

-- Location: LCCOMB_X52_Y21_N2
\main_processor|dat|ALU0|sub|cycle0|cycle0|cycle2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle2|Cout~0_combout\ = (\main_processor|dat|MuxIm1|f[2]~1_combout\ & ((\main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|Cout~0_combout\) # ((\main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|Cout~2_combout\) # 
-- (!\main_processor|dat|MuxIm2|Mux29~0_combout\)))) # (!\main_processor|dat|MuxIm1|f[2]~1_combout\ & (!\main_processor|dat|MuxIm2|Mux29~0_combout\ & ((\main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|Cout~0_combout\,
	datab => \main_processor|dat|MuxIm1|f[2]~1_combout\,
	datac => \main_processor|dat|MuxIm2|Mux29~0_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|Cout~2_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle2|Cout~0_combout\);

-- Location: LCCOMB_X52_Y21_N0
\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|Cout~2_combout\ = (\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|Cout~1_combout\ & ((\main_processor|dat|MuxIm1|f[3]~3_combout\ & ((\main_processor|dat|ALU0|sub|cycle0|cycle0|cycle2|Cout~0_combout\) # 
-- (!\main_processor|dat|MuxIm2|Mux28~0_combout\))) # (!\main_processor|dat|MuxIm1|f[3]~3_combout\ & (!\main_processor|dat|MuxIm2|Mux28~0_combout\ & \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[3]~3_combout\,
	datab => \main_processor|dat|MuxIm2|Mux28~0_combout\,
	datac => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|Cout~1_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle2|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|Cout~2_combout\);

-- Location: LCCOMB_X50_Y21_N24
\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|Cout~0_combout\ = (\main_processor|dat|MuxIm1|f[4]~4_combout\ & ((\main_processor|control_unit|Im_Mux2[1]~3_Duplicate_10\) # ((!\main_processor|dat|MuxIm2|Mux27~0_combout\ & 
-- !\main_processor|dat|MuxIm2|Mux27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux27~0_combout\,
	datab => \main_processor|dat|MuxIm1|f[4]~4_combout\,
	datac => \main_processor|dat|MuxIm2|Mux27~1_combout\,
	datad => \main_processor|control_unit|Im_Mux2[1]~3_Duplicate_10\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|Cout~0_combout\);

-- Location: LCCOMB_X50_Y21_N16
\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle1|Cout~0_combout\ = (\main_processor|dat|MuxIm1|f[5]~5_combout\ & (((\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|Cout~2_combout\) # (\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|Cout~0_combout\)) 
-- # (!\main_processor|dat|MuxIm2|Mux26~0_combout\))) # (!\main_processor|dat|MuxIm1|f[5]~5_combout\ & (!\main_processor|dat|MuxIm2|Mux26~0_combout\ & ((\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|Cout~2_combout\) # 
-- (\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[5]~5_combout\,
	datab => \main_processor|dat|MuxIm2|Mux26~0_combout\,
	datac => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|Cout~2_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle1|Cout~0_combout\);

-- Location: LCCOMB_X50_Y21_N20
\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|Cout~2_combout\ = (\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|Cout~1_combout\ & ((\main_processor|dat|MuxIm1|f[6]~6_combout\ & ((\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle1|Cout~0_combout\) # 
-- (!\main_processor|dat|MuxIm2|Mux25~0_combout\))) # (!\main_processor|dat|MuxIm1|f[6]~6_combout\ & (!\main_processor|dat|MuxIm2|Mux25~0_combout\ & \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[6]~6_combout\,
	datab => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|Cout~1_combout\,
	datac => \main_processor|dat|MuxIm2|Mux25~0_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle1|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|Cout~2_combout\);

-- Location: LCCOMB_X53_Y21_N20
\main_processor|dat|ALU0|sub|cycle0|cycle2|cycle0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle0|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux23~0_combout\ & (\main_processor|dat|MuxIm1|f[8]~8_combout\ & ((\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|Cout~2_combout\)))) # (!\main_processor|dat|MuxIm2|Mux23~0_combout\ & ((\main_processor|dat|MuxIm1|f[8]~8_combout\) # ((\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux23~0_combout\,
	datab => \main_processor|dat|MuxIm1|f[8]~8_combout\,
	datac => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|Cout~0_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|Cout~2_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle0|Cout~0_combout\);

-- Location: LCCOMB_X52_Y24_N6
\main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|s~0_combout\ = \main_processor|dat|MuxIm2|Mux21~0_combout\ $ (((\main_processor|dat|A|q\(10) & ((!\main_processor|control_unit|Im_Mux1~1_combout\) # 
-- (!\main_processor|control_unit|ALU_op[0]~2_Duplicate_10\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux21~0_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~2_Duplicate_10\,
	datac => \main_processor|control_unit|Im_Mux1~1_combout\,
	datad => \main_processor|dat|A|q\(10),
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|s~0_combout\);

-- Location: LCCOMB_X52_Y24_N20
\main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|s~combout\ = \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|s~0_combout\ $ (((\main_processor|dat|ALU0|sub|cycle0|cycle2|cycle0|Cout~0_combout\ & ((\main_processor|dat|MuxIm1|f[9]~9_combout\) # 
-- (!\main_processor|dat|MuxIm2|Mux22~0_combout\))) # (!\main_processor|dat|ALU0|sub|cycle0|cycle2|cycle0|Cout~0_combout\ & (!\main_processor|dat|MuxIm2|Mux22~0_combout\ & \main_processor|dat|MuxIm1|f[9]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle0|Cout~0_combout\,
	datab => \main_processor|dat|MuxIm2|Mux22~0_combout\,
	datac => \main_processor|dat|MuxIm1|f[9]~9_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|s~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|s~combout\);

-- Location: LCCOMB_X52_Y24_N30
\main_processor|dat|ALU0|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux21~0_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & (\main_processor|control_unit|ALU_op[1]~4_combout\)) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & 
-- ((\main_processor|control_unit|ALU_op[1]~4_combout\ & ((!\main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|s~combout\))) # (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (\main_processor|dat|MuxIm1|f[9]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datab => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|dat|MuxIm1|f[9]~9_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|s~combout\,
	combout => \main_processor|dat|ALU0|Mux21~0_combout\);

-- Location: LCCOMB_X52_Y24_N12
\main_processor|dat|ALU0|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux21~1_combout\ = (\main_processor|dat|ALU0|Mux21~0_combout\ & (((\main_processor|dat|MuxIm1|f[10]~10_combout\) # (!\main_processor|control_unit|ALU_op[0]~6_combout\)))) # (!\main_processor|dat|ALU0|Mux21~0_combout\ & 
-- (\main_processor|dat|MuxIm1|f[11]~11_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux21~0_combout\,
	datab => \main_processor|dat|MuxIm1|f[11]~11_combout\,
	datac => \main_processor|dat|MuxIm1|f[10]~10_combout\,
	datad => \main_processor|control_unit|ALU_op[0]~6_combout\,
	combout => \main_processor|dat|ALU0|Mux21~1_combout\);

-- Location: LCCOMB_X53_Y26_N14
\main_processor|dat|MuxData|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux21~2_combout\ = (\main_processor|dat|MuxData|Mux31~2_combout\ & ((\main_processor|control_unit|ALU_op[2]~3_combout\ & (\main_processor|dat|ALU0|Mux21~1_combout\)) # (!\main_processor|control_unit|ALU_op[2]~3_combout\ & 
-- ((\main_processor|dat|ALU0|Mux21~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux21~1_combout\,
	datab => \main_processor|control_unit|ALU_op[2]~3_combout\,
	datac => \main_processor|dat|ALU0|Mux21~3_combout\,
	datad => \main_processor|dat|MuxData|Mux31~2_combout\,
	combout => \main_processor|dat|MuxData|Mux21~2_combout\);

-- Location: LCCOMB_X54_Y25_N0
\main_processor|dat|MuxA|f[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[10]~10_combout\ = (\main_processor|control_unit|A_Mux~0_combout\ & (\main_processor|dat|IR|q\(10))) # (!\main_processor|control_unit|A_Mux~0_combout\ & (((\main_processor|dat|MuxData|Mux21~0_combout\) # 
-- (\main_processor|dat|MuxData|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(10),
	datab => \main_processor|control_unit|A_Mux~0_combout\,
	datac => \main_processor|dat|MuxData|Mux21~0_combout\,
	datad => \main_processor|dat|MuxData|Mux21~2_combout\,
	combout => \main_processor|dat|MuxA|f[10]~10_combout\);

-- Location: FF_X54_Y25_N1
\main_processor|dat|A|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[10]~10_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(10));

-- Location: LCCOMB_X52_Y24_N4
\main_processor|dat|MuxIm1|f[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[10]~10_combout\ = (\main_processor|dat|A|q\(10) & (((\main_processor|dat|IR|q\(29)) # (\main_processor|dat|IR|q\(28))) # (!\main_processor|control_unit|ALU_op[0]~2_Duplicate_10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~2_Duplicate_10\,
	datab => \main_processor|dat|IR|q\(29),
	datac => \main_processor|dat|IR|q\(28),
	datad => \main_processor|dat|A|q\(10),
	combout => \main_processor|dat|MuxIm1|f[10]~10_combout\);

-- Location: LCCOMB_X53_Y21_N6
\main_processor|dat|ALU0|sub|cycle0|cycle2|cycle1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle1|s~combout\ = \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle0|Cout~0_combout\ $ (\main_processor|dat|MuxIm2|Mux22~0_combout\ $ (((\main_processor|dat|A|q\(9) & 
-- !\main_processor|control_unit|Im_Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|A|q\(9),
	datab => \main_processor|control_unit|Im_Mux1~0_combout\,
	datac => \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle0|Cout~0_combout\,
	datad => \main_processor|dat|MuxIm2|Mux22~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle1|s~combout\);

-- Location: LCCOMB_X50_Y22_N18
\main_processor|dat|ALU0|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux22~0_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & (((\main_processor|control_unit|ALU_op[0]~6_combout\)) # (!\main_processor|dat|ALU0|sub|cycle0|cycle2|cycle1|s~combout\))) # 
-- (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (((!\main_processor|control_unit|ALU_op[0]~6_combout\ & \main_processor|dat|MuxIm1|f[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle1|s~combout\,
	datab => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|MuxIm1|f[8]~8_combout\,
	combout => \main_processor|dat|ALU0|Mux22~0_combout\);

-- Location: LCCOMB_X50_Y22_N8
\main_processor|dat|ALU0|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux22~1_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|ALU0|Mux22~0_combout\ & ((\main_processor|dat|MuxIm1|f[9]~9_combout\))) # (!\main_processor|dat|ALU0|Mux22~0_combout\ & 
-- (\main_processor|dat|MuxIm1|f[10]~10_combout\)))) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (((\main_processor|dat|ALU0|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[10]~10_combout\,
	datab => \main_processor|dat|MuxIm1|f[9]~9_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|ALU0|Mux22~0_combout\,
	combout => \main_processor|dat|ALU0|Mux22~1_combout\);

-- Location: LCCOMB_X53_Y26_N12
\main_processor|dat|MuxData|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux22~2_combout\ = (\main_processor|dat|MuxData|Mux31~2_combout\ & ((\main_processor|control_unit|ALU_op[2]~3_combout\ & ((\main_processor|dat|ALU0|Mux22~1_combout\))) # (!\main_processor|control_unit|ALU_op[2]~3_combout\ & 
-- (\main_processor|dat|ALU0|Mux22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux31~2_combout\,
	datab => \main_processor|control_unit|ALU_op[2]~3_combout\,
	datac => \main_processor|dat|ALU0|Mux22~3_combout\,
	datad => \main_processor|dat|ALU0|Mux22~1_combout\,
	combout => \main_processor|dat|MuxData|Mux22~2_combout\);

-- Location: LCCOMB_X53_Y26_N24
\main_processor|dat|MuxA|f[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[9]~9_combout\ = (\main_processor|control_unit|A_Mux~0_combout\ & (\main_processor|dat|IR|q\(9))) # (!\main_processor|control_unit|A_Mux~0_combout\ & (((\main_processor|dat|MuxData|Mux22~0_combout\) # 
-- (\main_processor|dat|MuxData|Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(9),
	datab => \main_processor|dat|MuxData|Mux22~0_combout\,
	datac => \main_processor|control_unit|A_Mux~0_combout\,
	datad => \main_processor|dat|MuxData|Mux22~2_combout\,
	combout => \main_processor|dat|MuxA|f[9]~9_combout\);

-- Location: FF_X53_Y26_N25
\main_processor|dat|A|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[9]~9_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(9));

-- Location: LCCOMB_X54_Y22_N4
\main_processor|dat|MuxReg|f[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[9]~9_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|B|q\(9)))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|A|q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Reg_Mux~1_combout\,
	datac => \main_processor|dat|A|q\(9),
	datad => \main_processor|dat|B|q\(9),
	combout => \main_processor|dat|MuxReg|f[9]~9_combout\);

-- Location: LCCOMB_X54_Y25_N8
\main_processor|dat|MuxReg|f[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[10]~10_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|B|q\(10)))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|A|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|A|q\(10),
	datac => \main_processor|control_unit|Reg_Mux~1_combout\,
	datad => \main_processor|dat|B|q\(10),
	combout => \main_processor|dat|MuxReg|f[10]~10_combout\);

-- Location: LCCOMB_X54_Y22_N26
\main_processor|dat|MuxReg|f[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[11]~11_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|B|q\(11)))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|A|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Reg_Mux~1_combout\,
	datab => \main_processor|dat|A|q\(11),
	datad => \main_processor|dat|B|q\(11),
	combout => \main_processor|dat|MuxReg|f[11]~11_combout\);

-- Location: LCCOMB_X53_Y21_N4
\main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|Cout~0_combout\ = (!\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|A|q\(10) & !\main_processor|dat|MuxIm2|Mux21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datac => \main_processor|dat|A|q\(10),
	datad => \main_processor|dat|MuxIm2|Mux21~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|Cout~0_combout\);

-- Location: LCCOMB_X53_Y21_N30
\main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|Cout~1_combout\ = ((!\main_processor|control_unit|Im_Mux1~0_combout\ & \main_processor|dat|A|q\(10))) # (!\main_processor|dat|MuxIm2|Mux21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datac => \main_processor|dat|A|q\(10),
	datad => \main_processor|dat|MuxIm2|Mux21~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|Cout~1_combout\);

-- Location: LCCOMB_X53_Y21_N24
\main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|Cout~2_combout\ = (\main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|Cout~1_combout\ & ((\main_processor|dat|MuxIm1|f[9]~9_combout\ & ((\main_processor|dat|ALU0|sub|cycle0|cycle2|cycle0|Cout~0_combout\) # 
-- (!\main_processor|dat|MuxIm2|Mux22~0_combout\))) # (!\main_processor|dat|MuxIm1|f[9]~9_combout\ & (!\main_processor|dat|MuxIm2|Mux22~0_combout\ & \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle0|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[9]~9_combout\,
	datab => \main_processor|dat|MuxIm2|Mux22~0_combout\,
	datac => \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|Cout~1_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle0|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|Cout~2_combout\);

-- Location: LCCOMB_X53_Y21_N12
\main_processor|dat|ALU0|sub|cycle0|cycle2|cycle3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle3|Cout~0_combout\ = (\main_processor|dat|MuxIm1|f[11]~11_combout\ & ((\main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|Cout~0_combout\) # ((\main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|Cout~2_combout\) 
-- # (!\main_processor|dat|MuxIm2|Mux20~0_combout\)))) # (!\main_processor|dat|MuxIm1|f[11]~11_combout\ & (!\main_processor|dat|MuxIm2|Mux20~0_combout\ & ((\main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[11]~11_combout\,
	datab => \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|Cout~0_combout\,
	datac => \main_processor|dat|MuxIm2|Mux20~0_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|Cout~2_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle3|Cout~0_combout\);

-- Location: LCCOMB_X54_Y25_N20
\main_processor|dat|MuxIm2|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux19~0_combout\ = (!\main_processor|control_unit|Im_Mux2[1]~3_combout\ & ((\main_processor|control_unit|Im_Mux2[0]~0_combout\ & ((\main_processor|dat|B|q\(12)))) # (!\main_processor|control_unit|Im_Mux2[0]~0_combout\ & 
-- (\main_processor|dat|IR|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(12),
	datab => \main_processor|dat|B|q\(12),
	datac => \main_processor|control_unit|Im_Mux2[0]~0_combout\,
	datad => \main_processor|control_unit|Im_Mux2[1]~3_combout\,
	combout => \main_processor|dat|MuxIm2|Mux19~0_combout\);

-- Location: LCCOMB_X54_Y21_N0
\main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|s~0_combout\ = \main_processor|dat|MuxIm2|Mux18~0_combout\ $ (((\main_processor|dat|A|q\(13) & ((!\main_processor|control_unit|ALU_op[0]~2_combout\) # (!\main_processor|control_unit|Im_Mux1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|A|q\(13),
	datab => \main_processor|control_unit|Im_Mux1~1_combout\,
	datac => \main_processor|dat|MuxIm2|Mux18~0_combout\,
	datad => \main_processor|control_unit|ALU_op[0]~2_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|s~0_combout\);

-- Location: LCCOMB_X54_Y21_N2
\main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|s~combout\ = \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|s~0_combout\ $ (((\main_processor|dat|ALU0|sub|cycle0|cycle2|cycle3|Cout~0_combout\ & ((\main_processor|dat|MuxIm1|f[12]~12_combout\) # 
-- (!\main_processor|dat|MuxIm2|Mux19~0_combout\))) # (!\main_processor|dat|ALU0|sub|cycle0|cycle2|cycle3|Cout~0_combout\ & (\main_processor|dat|MuxIm1|f[12]~12_combout\ & !\main_processor|dat|MuxIm2|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle3|Cout~0_combout\,
	datab => \main_processor|dat|MuxIm1|f[12]~12_combout\,
	datac => \main_processor|dat|MuxIm2|Mux19~0_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|s~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|s~combout\);

-- Location: LCCOMB_X55_Y21_N2
\main_processor|dat|ALU0|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux18~0_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & (((\main_processor|control_unit|ALU_op[0]~6_combout\) # (!\main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|s~combout\)))) # 
-- (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (\main_processor|dat|MuxIm1|f[12]~12_combout\ & (!\main_processor|control_unit|ALU_op[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|dat|MuxIm1|f[12]~12_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|s~combout\,
	combout => \main_processor|dat|ALU0|Mux18~0_combout\);

-- Location: FF_X55_Y21_N1
\main_processor|dat|IR|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxData|Mux17~2_combout\,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(14));

-- Location: LCCOMB_X55_Y22_N16
\main_processor|dat|MuxReg|f[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[13]~13_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|B|q\(13)))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|A|q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Reg_Mux~1_combout\,
	datab => \main_processor|dat|A|q\(13),
	datad => \main_processor|dat|B|q\(13),
	combout => \main_processor|dat|MuxReg|f[13]~13_combout\);

-- Location: LCCOMB_X52_Y22_N20
\main_processor|dat|MuxB|f[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[14]~14_combout\ = (\main_processor|control_unit|B_Mux~1_combout\ & (\main_processor|dat|IR|q\(14))) # (!\main_processor|control_unit|B_Mux~1_combout\ & (((\main_processor|dat|MuxData|Mux17~1_combout\) # 
-- (\main_processor|dat|MuxData|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(14),
	datab => \main_processor|dat|MuxData|Mux17~1_combout\,
	datac => \main_processor|dat|MuxData|Mux17~0_combout\,
	datad => \main_processor|control_unit|B_Mux~1_combout\,
	combout => \main_processor|dat|MuxB|f[14]~14_combout\);

-- Location: FF_X52_Y22_N21
\main_processor|dat|B|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[14]~14_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(14));

-- Location: LCCOMB_X52_Y22_N24
\main_processor|dat|MuxReg|f[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[14]~14_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|B|q\(14))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|A|q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|B|q\(14),
	datac => \main_processor|dat|A|q\(14),
	datad => \main_processor|control_unit|Reg_Mux~1_combout\,
	combout => \main_processor|dat|MuxReg|f[14]~14_combout\);

-- Location: LCCOMB_X55_Y25_N6
\main_processor|dat|MuxIm1|f[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[18]~18_combout\ = (\main_processor|control_unit|ALU_op[0]~2_combout\ & ((\main_processor|control_unit|Im_Mux1~1_combout\ & (\main_processor|dat|IR|q\(2))) # (!\main_processor|control_unit|Im_Mux1~1_combout\ & 
-- ((\main_processor|dat|A|q\(18)))))) # (!\main_processor|control_unit|ALU_op[0]~2_combout\ & (((\main_processor|dat|A|q\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~2_combout\,
	datab => \main_processor|dat|IR|q\(2),
	datac => \main_processor|control_unit|Im_Mux1~1_combout\,
	datad => \main_processor|dat|A|q\(18),
	combout => \main_processor|dat|MuxIm1|f[18]~18_combout\);

-- Location: FF_X55_Y21_N23
\main_processor|dat|IR|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxData|Mux16~1_combout\,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(15));

-- Location: LCCOMB_X52_Y22_N6
\main_processor|dat|MuxIm2|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux17~0_combout\ = (!\main_processor|control_unit|Im_Mux2[1]~3_combout\ & ((\main_processor|control_unit|Im_Mux2[0]~0_combout\ & ((\main_processor|dat|B|q\(14)))) # (!\main_processor|control_unit|Im_Mux2[0]~0_combout\ & 
-- (\main_processor|dat|IR|q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(14),
	datab => \main_processor|control_unit|Im_Mux2[1]~3_combout\,
	datac => \main_processor|control_unit|Im_Mux2[0]~0_combout\,
	datad => \main_processor|dat|B|q\(14),
	combout => \main_processor|dat|MuxIm2|Mux17~0_combout\);

-- Location: LCCOMB_X57_Y21_N4
\main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|Cout~0_combout\ = (\main_processor|dat|A|q\(13) & (!\main_processor|dat|MuxIm2|Mux18~0_combout\ & !\main_processor|control_unit|Im_Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|A|q\(13),
	datac => \main_processor|dat|MuxIm2|Mux18~0_combout\,
	datad => \main_processor|control_unit|Im_Mux1~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|Cout~0_combout\);

-- Location: LCCOMB_X57_Y21_N26
\main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|Cout~1_combout\ = ((\main_processor|dat|A|q\(13) & !\main_processor|control_unit|Im_Mux1~0_combout\)) # (!\main_processor|dat|MuxIm2|Mux18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|A|q\(13),
	datac => \main_processor|dat|MuxIm2|Mux18~0_combout\,
	datad => \main_processor|control_unit|Im_Mux1~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|Cout~1_combout\);

-- Location: LCCOMB_X58_Y21_N16
\main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|Cout~2_combout\ = (\main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|Cout~1_combout\ & ((\main_processor|dat|MuxIm1|f[12]~12_combout\ & ((\main_processor|dat|ALU0|sub|cycle0|cycle2|cycle3|Cout~0_combout\) 
-- # (!\main_processor|dat|MuxIm2|Mux19~0_combout\))) # (!\main_processor|dat|MuxIm1|f[12]~12_combout\ & (!\main_processor|dat|MuxIm2|Mux19~0_combout\ & \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[12]~12_combout\,
	datab => \main_processor|dat|MuxIm2|Mux19~0_combout\,
	datac => \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|Cout~1_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle3|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|Cout~2_combout\);

-- Location: LCCOMB_X58_Y21_N6
\main_processor|dat|ALU0|sub|cycle0|cycle3|cycle2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle2|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux17~0_combout\ & (\main_processor|dat|MuxIm1|f[14]~14_combout\ & ((\main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|Cout~2_combout\)))) # (!\main_processor|dat|MuxIm2|Mux17~0_combout\ & ((\main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|Cout~0_combout\) # ((\main_processor|dat|MuxIm1|f[14]~14_combout\) # 
-- (\main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux17~0_combout\,
	datab => \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|Cout~0_combout\,
	datac => \main_processor|dat|MuxIm1|f[14]~14_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|Cout~2_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle2|Cout~0_combout\);

-- Location: LCCOMB_X58_Y21_N20
\main_processor|dat|ALU0|sub|cycle0|cycle3|cycle3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle3|s~combout\ = \main_processor|dat|MuxIm2|Mux16~0_combout\ $ (\main_processor|dat|ALU0|sub|cycle0|cycle3|cycle2|Cout~0_combout\ $ (((!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- \main_processor|dat|A|q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux16~0_combout\,
	datab => \main_processor|control_unit|Im_Mux1~0_combout\,
	datac => \main_processor|dat|A|q\(15),
	datad => \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle2|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle3|s~combout\);

-- Location: LCCOMB_X55_Y21_N10
\main_processor|dat|ALU0|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux16~0_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & (((\main_processor|control_unit|ALU_op[0]~6_combout\) # (!\main_processor|dat|ALU0|sub|cycle0|cycle3|cycle3|s~combout\)))) # 
-- (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (\main_processor|dat|MuxIm1|f[14]~14_combout\ & (!\main_processor|control_unit|ALU_op[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|dat|MuxIm1|f[14]~14_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle3|s~combout\,
	combout => \main_processor|dat|ALU0|Mux16~0_combout\);

-- Location: LCCOMB_X58_Y21_N0
\main_processor|dat|MuxIm1|f[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[16]~16_combout\ = (\main_processor|control_unit|ALU_op[0]~2_combout\ & ((\main_processor|control_unit|Im_Mux1~1_combout\ & (\main_processor|dat|IR|q\(0))) # (!\main_processor|control_unit|Im_Mux1~1_combout\ & 
-- ((\main_processor|dat|A|q\(16)))))) # (!\main_processor|control_unit|ALU_op[0]~2_combout\ & (((\main_processor|dat|A|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(0),
	datab => \main_processor|control_unit|ALU_op[0]~2_combout\,
	datac => \main_processor|dat|A|q\(16),
	datad => \main_processor|control_unit|Im_Mux1~1_combout\,
	combout => \main_processor|dat|MuxIm1|f[16]~16_combout\);

-- Location: LCCOMB_X55_Y21_N12
\main_processor|dat|MuxIm1|f[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[15]~15_combout\ = (\main_processor|dat|A|q\(15) & ((\main_processor|dat|IR|q\(29)) # ((\main_processor|dat|IR|q\(28)) # (!\main_processor|control_unit|ALU_op[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(29),
	datab => \main_processor|dat|IR|q\(28),
	datac => \main_processor|dat|A|q\(15),
	datad => \main_processor|control_unit|ALU_op[0]~2_combout\,
	combout => \main_processor|dat|MuxIm1|f[15]~15_combout\);

-- Location: LCCOMB_X55_Y21_N28
\main_processor|dat|ALU0|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux16~1_combout\ = (\main_processor|dat|ALU0|Mux16~0_combout\ & (((\main_processor|dat|MuxIm1|f[15]~15_combout\)) # (!\main_processor|control_unit|ALU_op[0]~6_combout\))) # (!\main_processor|dat|ALU0|Mux16~0_combout\ & 
-- (\main_processor|control_unit|ALU_op[0]~6_combout\ & (\main_processor|dat|MuxIm1|f[16]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux16~0_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|MuxIm1|f[16]~16_combout\,
	datad => \main_processor|dat|MuxIm1|f[15]~15_combout\,
	combout => \main_processor|dat|ALU0|Mux16~1_combout\);

-- Location: LCCOMB_X55_Y21_N18
\main_processor|dat|MuxData|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux16~2_combout\ = (\main_processor|dat|MuxData|Mux31~2_combout\ & ((\main_processor|control_unit|ALU_op[2]~3_combout\ & ((\main_processor|dat|ALU0|Mux16~1_combout\))) # (!\main_processor|control_unit|ALU_op[2]~3_combout\ & 
-- (\main_processor|dat|ALU0|Mux16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux31~2_combout\,
	datab => \main_processor|control_unit|ALU_op[2]~3_combout\,
	datac => \main_processor|dat|ALU0|Mux16~3_combout\,
	datad => \main_processor|dat|ALU0|Mux16~1_combout\,
	combout => \main_processor|dat|MuxData|Mux16~2_combout\);

-- Location: LCCOMB_X54_Y22_N2
\main_processor|dat|MuxB|f[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[15]~15_combout\ = (\main_processor|control_unit|B_Mux~1_combout\ & (((\main_processor|dat|IR|q\(15))))) # (!\main_processor|control_unit|B_Mux~1_combout\ & ((\main_processor|dat|MuxData|Mux16~2_combout\) # 
-- ((\main_processor|dat|MuxData|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|B_Mux~1_combout\,
	datab => \main_processor|dat|MuxData|Mux16~2_combout\,
	datac => \main_processor|dat|IR|q\(15),
	datad => \main_processor|dat|MuxData|Mux16~0_combout\,
	combout => \main_processor|dat|MuxB|f[15]~15_combout\);

-- Location: FF_X54_Y22_N3
\main_processor|dat|B|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[15]~15_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(15));

-- Location: LCCOMB_X54_Y22_N18
\main_processor|dat|MuxIm2|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux16~0_combout\ = (!\main_processor|control_unit|Im_Mux2[1]~3_combout\ & ((\main_processor|control_unit|Im_Mux2[0]~0_combout\ & ((\main_processor|dat|B|q\(15)))) # (!\main_processor|control_unit|Im_Mux2[0]~0_combout\ & 
-- (\main_processor|dat|IR|q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux2[1]~3_combout\,
	datab => \main_processor|control_unit|Im_Mux2[0]~0_combout\,
	datac => \main_processor|dat|IR|q\(15),
	datad => \main_processor|dat|B|q\(15),
	combout => \main_processor|dat|MuxIm2|Mux16~0_combout\);

-- Location: LCCOMB_X55_Y21_N30
\main_processor|dat|ALU0|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux16~2_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & (((\main_processor|control_unit|ALU_op[0]~6_combout\)))) # (!\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|dat|MuxIm2|Mux16~0_combout\ 
-- & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # (\main_processor|dat|MuxIm1|f[15]~15_combout\))) # (!\main_processor|dat|MuxIm2|Mux16~0_combout\ & (\main_processor|control_unit|ALU_op[0]~6_combout\ & 
-- \main_processor|dat|MuxIm1|f[15]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|dat|MuxIm2|Mux16~0_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|MuxIm1|f[15]~15_combout\,
	combout => \main_processor|dat|ALU0|Mux16~2_combout\);

-- Location: LCCOMB_X52_Y25_N0
\main_processor|dat|ALU0|add|cycle0|cycle1|cycle3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle1|cycle3|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux24~2_Duplicate_4\ & ((\main_processor|dat|ALU0|add|cycle0|cycle1|cycle2|Cout~0_combout\) # ((\main_processor|dat|A|q\(7) & 
-- !\main_processor|control_unit|Im_Mux1~0_combout\)))) # (!\main_processor|dat|MuxIm2|Mux24~2_Duplicate_4\ & (\main_processor|dat|A|q\(7) & (!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- \main_processor|dat|ALU0|add|cycle0|cycle1|cycle2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|A|q\(7),
	datab => \main_processor|control_unit|Im_Mux1~0_combout\,
	datac => \main_processor|dat|MuxIm2|Mux24~2_Duplicate_4\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle1|cycle2|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle0|cycle1|cycle3|Cout~0_combout\);

-- Location: LCCOMB_X53_Y21_N28
\main_processor|dat|ALU0|add|cycle0|cycle2|cycle0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle2|cycle0|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux23~0_combout\ & ((\main_processor|dat|ALU0|add|cycle0|cycle1|cycle3|Cout~0_combout\) # ((!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- \main_processor|dat|A|q\(8))))) # (!\main_processor|dat|MuxIm2|Mux23~0_combout\ & (!\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|A|q\(8) & \main_processor|dat|ALU0|add|cycle0|cycle1|cycle3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|A|q\(8),
	datac => \main_processor|dat|MuxIm2|Mux23~0_combout\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle1|cycle3|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle0|cycle2|cycle0|Cout~0_combout\);

-- Location: LCCOMB_X53_Y21_N2
\main_processor|dat|ALU0|add|cycle0|cycle2|cycle1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle2|cycle1|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux22~0_combout\ & ((\main_processor|dat|ALU0|add|cycle0|cycle2|cycle0|Cout~0_combout\) # ((!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- \main_processor|dat|A|q\(9))))) # (!\main_processor|dat|MuxIm2|Mux22~0_combout\ & (!\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|A|q\(9) & \main_processor|dat|ALU0|add|cycle0|cycle2|cycle0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|MuxIm2|Mux22~0_combout\,
	datac => \main_processor|dat|A|q\(9),
	datad => \main_processor|dat|ALU0|add|cycle0|cycle2|cycle0|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle0|cycle2|cycle1|Cout~0_combout\);

-- Location: LCCOMB_X53_Y21_N18
\main_processor|dat|ALU0|add|cycle0|cycle2|cycle2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle2|cycle2|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux21~0_combout\ & ((\main_processor|dat|ALU0|add|cycle0|cycle2|cycle1|Cout~0_combout\) # ((!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- \main_processor|dat|A|q\(10))))) # (!\main_processor|dat|MuxIm2|Mux21~0_combout\ & (!\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|A|q\(10) & \main_processor|dat|ALU0|add|cycle0|cycle2|cycle1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|MuxIm2|Mux21~0_combout\,
	datac => \main_processor|dat|A|q\(10),
	datad => \main_processor|dat|ALU0|add|cycle0|cycle2|cycle1|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle0|cycle2|cycle2|Cout~0_combout\);

-- Location: LCCOMB_X53_Y21_N14
\main_processor|dat|ALU0|add|cycle0|cycle2|cycle3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle2|cycle3|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux20~0_combout\ & ((\main_processor|dat|ALU0|add|cycle0|cycle2|cycle2|Cout~0_combout\) # ((\main_processor|dat|A|q\(11) & 
-- !\main_processor|control_unit|Im_Mux1~0_combout\)))) # (!\main_processor|dat|MuxIm2|Mux20~0_combout\ & (\main_processor|dat|A|q\(11) & (!\main_processor|control_unit|Im_Mux1~0_combout\ & \main_processor|dat|ALU0|add|cycle0|cycle2|cycle2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|A|q\(11),
	datab => \main_processor|dat|MuxIm2|Mux20~0_combout\,
	datac => \main_processor|control_unit|Im_Mux1~0_combout\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle2|cycle2|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle0|cycle2|cycle3|Cout~0_combout\);

-- Location: LCCOMB_X54_Y21_N24
\main_processor|dat|ALU0|add|cycle0|cycle3|cycle0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle3|cycle0|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux19~0_combout\ & ((\main_processor|dat|ALU0|add|cycle0|cycle2|cycle3|Cout~0_combout\) # ((!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- \main_processor|dat|A|q\(12))))) # (!\main_processor|dat|MuxIm2|Mux19~0_combout\ & (!\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|A|q\(12) & \main_processor|dat|ALU0|add|cycle0|cycle2|cycle3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux19~0_combout\,
	datab => \main_processor|control_unit|Im_Mux1~0_combout\,
	datac => \main_processor|dat|A|q\(12),
	datad => \main_processor|dat|ALU0|add|cycle0|cycle2|cycle3|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle0|cycle3|cycle0|Cout~0_combout\);

-- Location: LCCOMB_X54_Y21_N20
\main_processor|dat|ALU0|add|cycle0|cycle3|cycle1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle3|cycle1|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux18~0_combout\ & ((\main_processor|dat|ALU0|add|cycle0|cycle3|cycle0|Cout~0_combout\) # ((\main_processor|dat|A|q\(13) & 
-- !\main_processor|control_unit|Im_Mux1~0_combout\)))) # (!\main_processor|dat|MuxIm2|Mux18~0_combout\ & (\main_processor|dat|A|q\(13) & (!\main_processor|control_unit|Im_Mux1~0_combout\ & \main_processor|dat|ALU0|add|cycle0|cycle3|cycle0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|A|q\(13),
	datab => \main_processor|control_unit|Im_Mux1~0_combout\,
	datac => \main_processor|dat|MuxIm2|Mux18~0_combout\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle3|cycle0|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle0|cycle3|cycle1|Cout~0_combout\);

-- Location: LCCOMB_X55_Y21_N6
\main_processor|dat|ALU0|add|cycle0|cycle3|cycle2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle3|cycle2|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux17~0_combout\ & ((\main_processor|dat|ALU0|add|cycle0|cycle3|cycle1|Cout~0_combout\) # ((!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- \main_processor|dat|A|q\(14))))) # (!\main_processor|dat|MuxIm2|Mux17~0_combout\ & (!\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|A|q\(14) & \main_processor|dat|ALU0|add|cycle0|cycle3|cycle1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux17~0_combout\,
	datab => \main_processor|control_unit|Im_Mux1~0_combout\,
	datac => \main_processor|dat|A|q\(14),
	datad => \main_processor|dat|ALU0|add|cycle0|cycle3|cycle1|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle0|cycle3|cycle2|Cout~0_combout\);

-- Location: LCCOMB_X55_Y21_N20
\main_processor|dat|ALU0|add|cycle0|cycle3|cycle3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle3|cycle3|s~combout\ = \main_processor|dat|MuxIm2|Mux16~0_combout\ $ (\main_processor|dat|ALU0|add|cycle0|cycle3|cycle2|Cout~0_combout\ $ (((!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- \main_processor|dat|A|q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|A|q\(15),
	datac => \main_processor|dat|MuxIm2|Mux16~0_combout\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle3|cycle2|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle0|cycle3|cycle3|s~combout\);

-- Location: LCCOMB_X55_Y21_N4
\main_processor|dat|ALU0|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux16~3_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|dat|ALU0|Mux16~2_combout\ & (\main_processor|dat|MuxIm2|Mux16~0_combout\)) # (!\main_processor|dat|ALU0|Mux16~2_combout\ & 
-- ((\main_processor|dat|ALU0|add|cycle0|cycle3|cycle3|s~combout\))))) # (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (((\main_processor|dat|ALU0|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|dat|MuxIm2|Mux16~0_combout\,
	datac => \main_processor|dat|ALU0|Mux16~2_combout\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle3|cycle3|s~combout\,
	combout => \main_processor|dat|ALU0|Mux16~3_combout\);

-- Location: LCCOMB_X55_Y21_N26
\main_processor|dat|ALU0|Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux16~4_combout\ = (\main_processor|control_unit|ALU_op[0]~8_combout\ & ((\main_processor|control_unit|Mux3~0_combout\ & ((\main_processor|dat|ALU0|Mux16~1_combout\))) # (!\main_processor|control_unit|Mux3~0_combout\ & 
-- (\main_processor|dat|ALU0|Mux16~3_combout\)))) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & (((\main_processor|dat|ALU0|Mux16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datab => \main_processor|control_unit|Mux3~0_combout\,
	datac => \main_processor|dat|ALU0|Mux16~3_combout\,
	datad => \main_processor|dat|ALU0|Mux16~1_combout\,
	combout => \main_processor|dat|ALU0|Mux16~4_combout\);

-- Location: LCCOMB_X55_Y21_N22
\main_processor|dat|MuxData|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux16~1_combout\ = (\main_processor|dat|MuxData|Mux16~0_combout\) # ((!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|control_unit|Data_Mux[1]~1_combout\ & \main_processor|dat|ALU0|Mux16~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datab => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datac => \main_processor|dat|ALU0|Mux16~4_combout\,
	datad => \main_processor|dat|MuxData|Mux16~0_combout\,
	combout => \main_processor|dat|MuxData|Mux16~1_combout\);

-- Location: LCCOMB_X54_Y24_N0
\main_processor|control_unit|Im_Mux2[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Im_Mux2[1]~1_combout\ = (\main_processor|dat|IR|q\(25) & ((\main_processor|dat|IR|q\(26) & (!\main_processor|dat|IR|q\(24) & \main_processor|dat|IR|q\(27))) # (!\main_processor|dat|IR|q\(26) & (\main_processor|dat|IR|q\(24) & 
-- !\main_processor|dat|IR|q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(26),
	datab => \main_processor|dat|IR|q\(24),
	datac => \main_processor|dat|IR|q\(25),
	datad => \main_processor|dat|IR|q\(27),
	combout => \main_processor|control_unit|Im_Mux2[1]~1_combout\);

-- Location: LCCOMB_X57_Y23_N12
\main_processor|dat|MuxB|f[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[16]~16_combout\ = (!\main_processor|control_unit|B_Mux~1_combout\ & ((\main_processor|dat|MuxData|Mux15~0_combout\) # ((\main_processor|dat|MuxData|Mux31~2_combout\ & \main_processor|dat|ALU0|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux15~0_combout\,
	datab => \main_processor|dat|MuxData|Mux31~2_combout\,
	datac => \main_processor|control_unit|B_Mux~1_combout\,
	datad => \main_processor|dat|ALU0|Mux15~4_combout\,
	combout => \main_processor|dat|MuxB|f[16]~16_combout\);

-- Location: FF_X57_Y23_N13
\main_processor|dat|B|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[16]~16_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(16));

-- Location: LCCOMB_X57_Y23_N24
\main_processor|dat|MuxIm2|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux15~0_combout\ = (\main_processor|dat|B|q\(16) & (((!\main_processor|control_unit|Im_Mux2[1]~1_combout\ & !\main_processor|control_unit|Mux7~0_combout\)) # (!\main_processor|control_unit|ALU_op[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux2[1]~1_combout\,
	datab => \main_processor|control_unit|Mux7~0_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datad => \main_processor|dat|B|q\(16),
	combout => \main_processor|dat|MuxIm2|Mux15~0_combout\);

-- Location: LCCOMB_X55_Y21_N24
\main_processor|dat|ALU0|add|cycle0|cycle3|cycle3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle3|cycle3|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux16~0_combout\ & ((\main_processor|dat|ALU0|add|cycle0|cycle3|cycle2|Cout~0_combout\) # ((!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- \main_processor|dat|A|q\(15))))) # (!\main_processor|dat|MuxIm2|Mux16~0_combout\ & (!\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|A|q\(15) & \main_processor|dat|ALU0|add|cycle0|cycle3|cycle2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|MuxIm2|Mux16~0_combout\,
	datac => \main_processor|dat|A|q\(15),
	datad => \main_processor|dat|ALU0|add|cycle0|cycle3|cycle2|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle0|cycle3|cycle3|Cout~0_combout\);

-- Location: LCCOMB_X56_Y25_N28
\main_processor|dat|ALU0|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux15~2_combout\ = \main_processor|dat|MuxIm1|f[16]~16_combout\ $ (((\main_processor|control_unit|ALU_op[1]~4_combout\ & \main_processor|dat|ALU0|add|cycle0|cycle3|cycle3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|dat|MuxIm1|f[16]~16_combout\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle3|cycle3|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|Mux15~2_combout\);

-- Location: LCCOMB_X56_Y25_N30
\main_processor|dat|ALU0|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux15~3_combout\ = (\main_processor|dat|MuxIm2|Mux15~0_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # (\main_processor|control_unit|ALU_op[1]~4_combout\ $ (\main_processor|dat|ALU0|Mux15~2_combout\)))) # 
-- (!\main_processor|dat|MuxIm2|Mux15~0_combout\ & (\main_processor|dat|ALU0|Mux15~2_combout\ & (\main_processor|control_unit|ALU_op[1]~4_combout\ $ (\main_processor|control_unit|ALU_op[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|dat|MuxIm2|Mux15~0_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|ALU0|Mux15~2_combout\,
	combout => \main_processor|dat|ALU0|Mux15~3_combout\);

-- Location: LCCOMB_X55_Y25_N4
\main_processor|dat|MuxIm1|f[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[17]~17_combout\ = (\main_processor|control_unit|ALU_op[0]~2_combout\ & ((\main_processor|control_unit|Im_Mux1~1_combout\ & (\main_processor|dat|IR|q\(1))) # (!\main_processor|control_unit|Im_Mux1~1_combout\ & 
-- ((\main_processor|dat|A|q\(17)))))) # (!\main_processor|control_unit|ALU_op[0]~2_combout\ & (((\main_processor|dat|A|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~2_combout\,
	datab => \main_processor|control_unit|Im_Mux1~1_combout\,
	datac => \main_processor|dat|IR|q\(1),
	datad => \main_processor|dat|A|q\(17),
	combout => \main_processor|dat|MuxIm1|f[17]~17_combout\);

-- Location: LCCOMB_X58_Y21_N30
\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|s~0_combout\ = \main_processor|dat|MuxIm2|Mux15~0_combout\ $ (((\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|IR|q\(0))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- ((\main_processor|dat|A|q\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(0),
	datab => \main_processor|control_unit|Im_Mux1~0_combout\,
	datac => \main_processor|dat|A|q\(16),
	datad => \main_processor|dat|MuxIm2|Mux15~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|s~0_combout\);

-- Location: LCCOMB_X58_Y21_N12
\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|s~combout\ = \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|s~0_combout\ $ (((\main_processor|dat|ALU0|sub|cycle0|cycle3|cycle2|Cout~0_combout\ & ((\main_processor|dat|MuxIm1|f[15]~15_combout\) # 
-- (!\main_processor|dat|MuxIm2|Mux16~0_combout\))) # (!\main_processor|dat|ALU0|sub|cycle0|cycle3|cycle2|Cout~0_combout\ & (\main_processor|dat|MuxIm1|f[15]~15_combout\ & !\main_processor|dat|MuxIm2|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle2|Cout~0_combout\,
	datab => \main_processor|dat|MuxIm1|f[15]~15_combout\,
	datac => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|s~0_combout\,
	datad => \main_processor|dat|MuxIm2|Mux16~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|s~combout\);

-- Location: LCCOMB_X58_Y21_N18
\main_processor|dat|ALU0|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux15~0_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # ((!\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|s~combout\)))) # 
-- (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (\main_processor|dat|MuxIm1|f[15]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|MuxIm1|f[15]~15_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|s~combout\,
	combout => \main_processor|dat|ALU0|Mux15~0_combout\);

-- Location: LCCOMB_X57_Y25_N28
\main_processor|dat|ALU0|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux15~1_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|ALU0|Mux15~0_combout\ & ((\main_processor|dat|MuxIm1|f[16]~16_combout\))) # (!\main_processor|dat|ALU0|Mux15~0_combout\ & 
-- (\main_processor|dat|MuxIm1|f[17]~17_combout\)))) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (((\main_processor|dat|ALU0|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datab => \main_processor|dat|MuxIm1|f[17]~17_combout\,
	datac => \main_processor|dat|ALU0|Mux15~0_combout\,
	datad => \main_processor|dat|MuxIm1|f[16]~16_combout\,
	combout => \main_processor|dat|ALU0|Mux15~1_combout\);

-- Location: LCCOMB_X56_Y25_N12
\main_processor|dat|ALU0|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux15~4_combout\ = (\main_processor|control_unit|Mux3~0_combout\ & ((\main_processor|control_unit|ALU_op[0]~8_combout\ & ((\main_processor|dat|ALU0|Mux15~1_combout\))) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & 
-- (\main_processor|dat|ALU0|Mux15~3_combout\)))) # (!\main_processor|control_unit|Mux3~0_combout\ & (\main_processor|dat|ALU0|Mux15~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux15~3_combout\,
	datab => \main_processor|control_unit|Mux3~0_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datad => \main_processor|dat|ALU0|Mux15~1_combout\,
	combout => \main_processor|dat|ALU0|Mux15~4_combout\);

-- Location: LCCOMB_X54_Y23_N20
\main_processor|dat|MuxData|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux15~1_combout\ = (\main_processor|dat|MuxData|Mux15~0_combout\) # ((\main_processor|control_unit|Data_Mux[1]~1_combout\ & (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & \main_processor|dat|ALU0|Mux15~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_processor|dat|MuxData|Mux15~0_combout\,
	datad => \main_processor|dat|ALU0|Mux15~4_combout\,
	combout => \main_processor|dat|MuxData|Mux15~1_combout\);

-- Location: LCCOMB_X57_Y23_N2
\main_processor|dat|MuxB|f[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[17]~17_combout\ = (!\main_processor|control_unit|B_Mux~1_combout\ & ((\main_processor|dat|MuxData|Mux14~0_combout\) # ((\main_processor|dat|MuxData|Mux31~2_combout\ & \main_processor|dat|ALU0|Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|B_Mux~1_combout\,
	datab => \main_processor|dat|MuxData|Mux31~2_combout\,
	datac => \main_processor|dat|MuxData|Mux14~0_combout\,
	datad => \main_processor|dat|ALU0|Mux14~4_combout\,
	combout => \main_processor|dat|MuxB|f[17]~17_combout\);

-- Location: FF_X57_Y23_N3
\main_processor|dat|B|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[17]~17_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(17));

-- Location: LCCOMB_X57_Y23_N22
\main_processor|dat|MuxIm2|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux14~0_combout\ = (\main_processor|dat|B|q\(17) & (((!\main_processor|control_unit|Im_Mux2[1]~1_combout\ & !\main_processor|control_unit|Mux7~0_combout\)) # (!\main_processor|control_unit|ALU_op[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux2[1]~1_combout\,
	datab => \main_processor|control_unit|Mux7~0_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datad => \main_processor|dat|B|q\(17),
	combout => \main_processor|dat|MuxIm2|Mux14~0_combout\);

-- Location: LCCOMB_X55_Y25_N30
\main_processor|dat|ALU0|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux14~2_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & (((\main_processor|control_unit|ALU_op[0]~6_combout\)))) # (!\main_processor|control_unit|ALU_op[1]~4_combout\ & 
-- ((\main_processor|dat|MuxIm1|f[17]~17_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # (\main_processor|dat|MuxIm2|Mux14~0_combout\))) # (!\main_processor|dat|MuxIm1|f[17]~17_combout\ & (\main_processor|control_unit|ALU_op[0]~6_combout\ & 
-- \main_processor|dat|MuxIm2|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|dat|MuxIm1|f[17]~17_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|MuxIm2|Mux14~0_combout\,
	combout => \main_processor|dat|ALU0|Mux14~2_combout\);

-- Location: LCCOMB_X55_Y25_N16
\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle1|s~0_combout\ = \main_processor|dat|MuxIm2|Mux14~0_combout\ $ (((\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|IR|q\(1))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- ((\main_processor|dat|A|q\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux14~0_combout\,
	datab => \main_processor|control_unit|Im_Mux1~0_combout\,
	datac => \main_processor|dat|IR|q\(1),
	datad => \main_processor|dat|A|q\(17),
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle1|s~0_combout\);

-- Location: LCCOMB_X56_Y25_N20
\main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|s~combout\ = \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle1|s~0_combout\ $ (((\main_processor|dat|MuxIm2|Mux15~0_combout\ & ((\main_processor|dat|MuxIm1|f[16]~16_combout\) # 
-- (\main_processor|dat|ALU0|add|cycle0|cycle3|cycle3|Cout~0_combout\))) # (!\main_processor|dat|MuxIm2|Mux15~0_combout\ & (\main_processor|dat|MuxIm1|f[16]~16_combout\ & \main_processor|dat|ALU0|add|cycle0|cycle3|cycle3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle1|s~0_combout\,
	datab => \main_processor|dat|MuxIm2|Mux15~0_combout\,
	datac => \main_processor|dat|MuxIm1|f[16]~16_combout\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle3|cycle3|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|s~combout\);

-- Location: LCCOMB_X56_Y25_N6
\main_processor|dat|ALU0|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux14~3_combout\ = (\main_processor|dat|ALU0|Mux14~2_combout\ & ((\main_processor|dat|MuxIm2|Mux14~0_combout\) # ((!\main_processor|control_unit|ALU_op[1]~4_combout\)))) # (!\main_processor|dat|ALU0|Mux14~2_combout\ & 
-- (((\main_processor|control_unit|ALU_op[1]~4_combout\ & \main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux14~0_combout\,
	datab => \main_processor|dat|ALU0|Mux14~2_combout\,
	datac => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datad => \main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|s~combout\,
	combout => \main_processor|dat|ALU0|Mux14~3_combout\);

-- Location: LCCOMB_X58_Y21_N24
\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|Cout~0_combout\ = (!\main_processor|dat|MuxIm2|Mux15~0_combout\ & ((\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|IR|q\(0))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- ((\main_processor|dat|A|q\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(0),
	datab => \main_processor|control_unit|Im_Mux1~0_combout\,
	datac => \main_processor|dat|A|q\(16),
	datad => \main_processor|dat|MuxIm2|Mux15~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|Cout~0_combout\);

-- Location: LCCOMB_X58_Y21_N26
\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|Cout~1_combout\ = ((\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|IR|q\(0))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & ((\main_processor|dat|A|q\(16))))) # 
-- (!\main_processor|dat|MuxIm2|Mux15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(0),
	datab => \main_processor|control_unit|Im_Mux1~0_combout\,
	datac => \main_processor|dat|A|q\(16),
	datad => \main_processor|dat|MuxIm2|Mux15~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|Cout~1_combout\);

-- Location: LCCOMB_X58_Y21_N28
\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|Cout~2_combout\ = (\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|Cout~1_combout\ & ((\main_processor|dat|MuxIm2|Mux16~0_combout\ & (\main_processor|dat|MuxIm1|f[15]~15_combout\ & 
-- \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle2|Cout~0_combout\)) # (!\main_processor|dat|MuxIm2|Mux16~0_combout\ & ((\main_processor|dat|MuxIm1|f[15]~15_combout\) # (\main_processor|dat|ALU0|sub|cycle0|cycle3|cycle2|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux16~0_combout\,
	datab => \main_processor|dat|MuxIm1|f[15]~15_combout\,
	datac => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|Cout~1_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle2|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|Cout~2_combout\);

-- Location: LCCOMB_X58_Y21_N10
\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle1|s~combout\ = \main_processor|dat|MuxIm2|Mux14~0_combout\ $ (\main_processor|dat|MuxIm1|f[17]~17_combout\ $ (((\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux14~0_combout\,
	datab => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|Cout~0_combout\,
	datac => \main_processor|dat|MuxIm1|f[17]~17_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|Cout~2_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle1|s~combout\);

-- Location: LCCOMB_X57_Y25_N26
\main_processor|dat|ALU0|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux14~0_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # ((!\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle1|s~combout\)))) # 
-- (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (!\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|MuxIm1|f[16]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle1|s~combout\,
	datad => \main_processor|dat|MuxIm1|f[16]~16_combout\,
	combout => \main_processor|dat|ALU0|Mux14~0_combout\);

-- Location: LCCOMB_X57_Y25_N24
\main_processor|dat|ALU0|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux14~1_combout\ = (\main_processor|dat|ALU0|Mux14~0_combout\ & (((\main_processor|dat|MuxIm1|f[17]~17_combout\) # (!\main_processor|control_unit|ALU_op[0]~6_combout\)))) # (!\main_processor|dat|ALU0|Mux14~0_combout\ & 
-- (\main_processor|dat|MuxIm1|f[18]~18_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[18]~18_combout\,
	datab => \main_processor|dat|MuxIm1|f[17]~17_combout\,
	datac => \main_processor|dat|ALU0|Mux14~0_combout\,
	datad => \main_processor|control_unit|ALU_op[0]~6_combout\,
	combout => \main_processor|dat|ALU0|Mux14~1_combout\);

-- Location: LCCOMB_X56_Y25_N0
\main_processor|dat|ALU0|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux14~4_combout\ = (\main_processor|control_unit|Mux3~0_combout\ & ((\main_processor|control_unit|ALU_op[0]~8_combout\ & ((\main_processor|dat|ALU0|Mux14~1_combout\))) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & 
-- (\main_processor|dat|ALU0|Mux14~3_combout\)))) # (!\main_processor|control_unit|Mux3~0_combout\ & (\main_processor|dat|ALU0|Mux14~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux14~3_combout\,
	datab => \main_processor|control_unit|Mux3~0_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datad => \main_processor|dat|ALU0|Mux14~1_combout\,
	combout => \main_processor|dat|ALU0|Mux14~4_combout\);

-- Location: LCCOMB_X56_Y25_N4
\main_processor|dat|MuxData|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux14~1_combout\ = (\main_processor|dat|MuxData|Mux14~0_combout\) # ((!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|dat|ALU0|Mux14~4_combout\ & \main_processor|control_unit|Data_Mux[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datab => \main_processor|dat|ALU0|Mux14~4_combout\,
	datac => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datad => \main_processor|dat|MuxData|Mux14~0_combout\,
	combout => \main_processor|dat|MuxData|Mux14~1_combout\);

-- Location: LCCOMB_X56_Y26_N20
\main_processor|dat|MuxB|f[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[18]~18_combout\ = (!\main_processor|control_unit|B_Mux~1_combout\ & ((\main_processor|dat|MuxData|Mux13~0_combout\) # ((\main_processor|dat|ALU0|Mux13~4_combout\ & \main_processor|dat|MuxData|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux13~0_combout\,
	datab => \main_processor|control_unit|B_Mux~1_combout\,
	datac => \main_processor|dat|ALU0|Mux13~4_combout\,
	datad => \main_processor|dat|MuxData|Mux31~2_combout\,
	combout => \main_processor|dat|MuxB|f[18]~18_combout\);

-- Location: FF_X56_Y26_N21
\main_processor|dat|B|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[18]~18_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(18));

-- Location: LCCOMB_X57_Y26_N12
\main_processor|dat|MuxIm2|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux13~0_combout\ = (\main_processor|dat|B|q\(18) & (((!\main_processor|control_unit|Im_Mux2[1]~1_combout\ & !\main_processor|control_unit|Mux7~0_combout\)) # (!\main_processor|control_unit|ALU_op[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux2[1]~1_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datac => \main_processor|control_unit|Mux7~0_combout\,
	datad => \main_processor|dat|B|q\(18),
	combout => \main_processor|dat|MuxIm2|Mux13~0_combout\);

-- Location: LCCOMB_X56_Y26_N2
\main_processor|dat|MuxB|f[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[19]~19_combout\ = (!\main_processor|control_unit|B_Mux~1_combout\ & ((\main_processor|dat|MuxData|Mux12~0_combout\) # ((\main_processor|dat|MuxData|Mux31~2_combout\ & \main_processor|dat|ALU0|Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux31~2_combout\,
	datab => \main_processor|dat|MuxData|Mux12~0_combout\,
	datac => \main_processor|control_unit|B_Mux~1_combout\,
	datad => \main_processor|dat|ALU0|Mux12~4_combout\,
	combout => \main_processor|dat|MuxB|f[19]~19_combout\);

-- Location: FF_X56_Y26_N3
\main_processor|dat|B|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[19]~19_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(19));

-- Location: LCCOMB_X56_Y26_N30
\main_processor|dat|MuxIm2|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux12~0_combout\ = (\main_processor|dat|B|q\(19) & (((!\main_processor|control_unit|Im_Mux2[1]~1_combout\ & !\main_processor|control_unit|Mux7~0_combout\)) # (!\main_processor|control_unit|ALU_op[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux2[1]~1_combout\,
	datab => \main_processor|control_unit|Mux7~0_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datad => \main_processor|dat|B|q\(19),
	combout => \main_processor|dat|MuxIm2|Mux12~0_combout\);

-- Location: LCCOMB_X59_Y24_N24
\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|s~0_combout\ = \main_processor|dat|MuxIm2|Mux12~0_combout\ $ (((\main_processor|control_unit|Im_Mux1~0_combout\ & ((\main_processor|dat|IR|q\(3)))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- (\main_processor|dat|A|q\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|A|q\(19),
	datac => \main_processor|dat|IR|q\(3),
	datad => \main_processor|dat|MuxIm2|Mux12~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|s~0_combout\);

-- Location: LCCOMB_X58_Y21_N4
\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle1|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux14~0_combout\ & (\main_processor|dat|MuxIm1|f[17]~17_combout\ & ((\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|Cout~2_combout\)))) # (!\main_processor|dat|MuxIm2|Mux14~0_combout\ & ((\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|Cout~0_combout\) # ((\main_processor|dat|MuxIm1|f[17]~17_combout\) # 
-- (\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux14~0_combout\,
	datab => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|Cout~0_combout\,
	datac => \main_processor|dat|MuxIm1|f[17]~17_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle0|Cout~2_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle1|Cout~0_combout\);

-- Location: LCCOMB_X58_Y25_N16
\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|s~combout\ = \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|s~0_combout\ $ (((\main_processor|dat|MuxIm2|Mux13~0_combout\ & (\main_processor|dat|MuxIm1|f[18]~18_combout\ & 
-- \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle1|Cout~0_combout\)) # (!\main_processor|dat|MuxIm2|Mux13~0_combout\ & ((\main_processor|dat|MuxIm1|f[18]~18_combout\) # (\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle1|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux13~0_combout\,
	datab => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|s~0_combout\,
	datac => \main_processor|dat|MuxIm1|f[18]~18_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle1|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|s~combout\);

-- Location: LCCOMB_X58_Y25_N18
\main_processor|dat|ALU0|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux12~0_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # ((!\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|s~combout\)))) # 
-- (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (\main_processor|dat|MuxIm1|f[18]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|MuxIm1|f[18]~18_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|s~combout\,
	combout => \main_processor|dat|ALU0|Mux12~0_combout\);

-- Location: LCCOMB_X56_Y26_N28
\main_processor|dat|MuxB|f[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[20]~20_combout\ = (!\main_processor|control_unit|B_Mux~1_combout\ & ((\main_processor|dat|MuxData|Mux11~0_combout\) # ((\main_processor|dat|MuxData|Mux31~2_combout\ & \main_processor|dat|ALU0|Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux31~2_combout\,
	datab => \main_processor|control_unit|B_Mux~1_combout\,
	datac => \main_processor|dat|ALU0|Mux11~4_combout\,
	datad => \main_processor|dat|MuxData|Mux11~0_combout\,
	combout => \main_processor|dat|MuxB|f[20]~20_combout\);

-- Location: FF_X56_Y26_N29
\main_processor|dat|B|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[20]~20_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(20));

-- Location: LCCOMB_X56_Y26_N16
\main_processor|dat|MuxIm2|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux11~0_combout\ = (\main_processor|dat|B|q\(20) & (((!\main_processor|control_unit|Im_Mux2[1]~1_combout\ & !\main_processor|control_unit|Mux7~0_combout\)) # (!\main_processor|control_unit|ALU_op[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux2[1]~1_combout\,
	datab => \main_processor|control_unit|Mux7~0_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datad => \main_processor|dat|B|q\(20),
	combout => \main_processor|dat|MuxIm2|Mux11~0_combout\);

-- Location: LCCOMB_X58_Y25_N2
\main_processor|dat|ALU0|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux11~2_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & (((\main_processor|control_unit|ALU_op[0]~6_combout\)))) # (!\main_processor|control_unit|ALU_op[1]~4_combout\ & 
-- ((\main_processor|dat|MuxIm1|f[20]~20_combout\ & ((\main_processor|dat|MuxIm2|Mux11~0_combout\) # (\main_processor|control_unit|ALU_op[0]~6_combout\))) # (!\main_processor|dat|MuxIm1|f[20]~20_combout\ & (\main_processor|dat|MuxIm2|Mux11~0_combout\ & 
-- \main_processor|control_unit|ALU_op[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|dat|MuxIm1|f[20]~20_combout\,
	datac => \main_processor|dat|MuxIm2|Mux11~0_combout\,
	datad => \main_processor|control_unit|ALU_op[0]~6_combout\,
	combout => \main_processor|dat|ALU0|Mux11~2_combout\);

-- Location: LCCOMB_X59_Y24_N28
\main_processor|dat|ALU0|sub|cycle1|cycle1|cycle0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle0|s~0_combout\ = \main_processor|dat|MuxIm2|Mux11~0_combout\ $ (((\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|IR|q\(4))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- ((\main_processor|dat|A|q\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|MuxIm2|Mux11~0_combout\,
	datac => \main_processor|dat|IR|q\(4),
	datad => \main_processor|dat|A|q\(20),
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle0|s~0_combout\);

-- Location: LCCOMB_X56_Y25_N26
\main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux14~0_combout\ & ((\main_processor|control_unit|Im_Mux1~0_combout\ & ((\main_processor|dat|IR|q\(1)))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- (\main_processor|dat|A|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|A|q\(17),
	datac => \main_processor|dat|IR|q\(1),
	datad => \main_processor|dat|MuxIm2|Mux14~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|Cout~0_combout\);

-- Location: LCCOMB_X56_Y25_N8
\main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|Cout~1_combout\ = (\main_processor|dat|MuxIm2|Mux14~0_combout\) # ((\main_processor|control_unit|Im_Mux1~0_combout\ & ((\main_processor|dat|IR|q\(1)))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- (\main_processor|dat|A|q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|A|q\(17),
	datac => \main_processor|dat|IR|q\(1),
	datad => \main_processor|dat|MuxIm2|Mux14~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|Cout~1_combout\);

-- Location: LCCOMB_X56_Y25_N14
\main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|Cout~2_combout\ = (\main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|Cout~1_combout\ & ((\main_processor|dat|MuxIm1|f[16]~16_combout\ & ((\main_processor|dat|MuxIm2|Mux15~0_combout\) # 
-- (\main_processor|dat|ALU0|add|cycle0|cycle3|cycle3|Cout~0_combout\))) # (!\main_processor|dat|MuxIm1|f[16]~16_combout\ & (\main_processor|dat|MuxIm2|Mux15~0_combout\ & \main_processor|dat|ALU0|add|cycle0|cycle3|cycle3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[16]~16_combout\,
	datab => \main_processor|dat|MuxIm2|Mux15~0_combout\,
	datac => \main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|Cout~1_combout\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle3|cycle3|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|Cout~2_combout\);

-- Location: LCCOMB_X57_Y25_N6
\main_processor|dat|ALU0|add|cycle1|cycle0|cycle2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle1|cycle0|cycle2|Cout~0_combout\ = (\main_processor|dat|MuxIm1|f[18]~18_combout\ & ((\main_processor|dat|MuxIm2|Mux13~0_combout\) # ((\main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|Cout~2_combout\)))) # (!\main_processor|dat|MuxIm1|f[18]~18_combout\ & (\main_processor|dat|MuxIm2|Mux13~0_combout\ & ((\main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[18]~18_combout\,
	datab => \main_processor|dat|MuxIm2|Mux13~0_combout\,
	datac => \main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|Cout~0_combout\,
	datad => \main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|Cout~2_combout\,
	combout => \main_processor|dat|ALU0|add|cycle1|cycle0|cycle2|Cout~0_combout\);

-- Location: LCCOMB_X57_Y25_N2
\main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|s~combout\ = \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle0|s~0_combout\ $ (((\main_processor|dat|MuxIm1|f[19]~19_combout\ & ((\main_processor|dat|MuxIm2|Mux12~0_combout\) # 
-- (\main_processor|dat|ALU0|add|cycle1|cycle0|cycle2|Cout~0_combout\))) # (!\main_processor|dat|MuxIm1|f[19]~19_combout\ & (\main_processor|dat|MuxIm2|Mux12~0_combout\ & \main_processor|dat|ALU0|add|cycle1|cycle0|cycle2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle0|s~0_combout\,
	datab => \main_processor|dat|MuxIm1|f[19]~19_combout\,
	datac => \main_processor|dat|MuxIm2|Mux12~0_combout\,
	datad => \main_processor|dat|ALU0|add|cycle1|cycle0|cycle2|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|s~combout\);

-- Location: LCCOMB_X57_Y25_N4
\main_processor|dat|ALU0|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux11~3_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|dat|ALU0|Mux11~2_combout\ & (\main_processor|dat|MuxIm2|Mux11~0_combout\)) # (!\main_processor|dat|ALU0|Mux11~2_combout\ & 
-- ((\main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|s~combout\))))) # (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (((\main_processor|dat|ALU0|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|dat|MuxIm2|Mux11~0_combout\,
	datac => \main_processor|dat|ALU0|Mux11~2_combout\,
	datad => \main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|s~combout\,
	combout => \main_processor|dat|ALU0|Mux11~3_combout\);

-- Location: LCCOMB_X59_Y24_N12
\main_processor|dat|MuxReg|f[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[19]~19_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|B|q\(19))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|A|q\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|control_unit|Reg_Mux~1_combout\,
	datac => \main_processor|dat|B|q\(19),
	datad => \main_processor|dat|A|q\(19),
	combout => \main_processor|dat|MuxReg|f[19]~19_combout\);

-- Location: LCCOMB_X59_Y24_N18
\main_processor|dat|MuxReg|f[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[20]~20_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|B|q\(20))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|A|q\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|control_unit|Reg_Mux~1_combout\,
	datac => \main_processor|dat|B|q\(20),
	datad => \main_processor|dat|A|q\(20),
	combout => \main_processor|dat|MuxReg|f[20]~20_combout\);

-- Location: LCCOMB_X57_Y26_N4
\main_processor|dat|MuxReg|f[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[21]~21_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|B|q\(21))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|A|q\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|B|q\(21),
	datac => \main_processor|control_unit|Reg_Mux~1_combout\,
	datad => \main_processor|dat|A|q\(21),
	combout => \main_processor|dat|MuxReg|f[21]~21_combout\);

-- Location: LCCOMB_X57_Y26_N20
\main_processor|dat|MuxData|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux10~1_combout\ = (\main_processor|dat|MuxData|Mux10~0_combout\) # ((!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|control_unit|Data_Mux[1]~1_combout\ & \main_processor|dat|ALU0|Mux10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datab => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datac => \main_processor|dat|ALU0|Mux10~4_combout\,
	datad => \main_processor|dat|MuxData|Mux10~0_combout\,
	combout => \main_processor|dat|MuxData|Mux10~1_combout\);

-- Location: LCCOMB_X55_Y22_N18
\main_processor|dat|MuxA|f[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[23]~23_combout\ = (!\main_processor|control_unit|A_Mux~0_combout\ & ((\main_processor|dat|MuxData|Mux8~0_combout\) # ((\main_processor|dat|ALU0|Mux8~4_combout\ & \main_processor|dat|MuxData|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux8~0_combout\,
	datab => \main_processor|dat|ALU0|Mux8~4_combout\,
	datac => \main_processor|dat|MuxData|Mux31~2_combout\,
	datad => \main_processor|control_unit|A_Mux~0_combout\,
	combout => \main_processor|dat|MuxA|f[23]~23_combout\);

-- Location: FF_X55_Y22_N19
\main_processor|dat|A|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[23]~23_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(23));

-- Location: LCCOMB_X58_Y25_N30
\main_processor|dat|MuxIm1|f[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[23]~23_combout\ = (\main_processor|control_unit|ALU_op[0]~2_combout\ & ((\main_processor|control_unit|Im_Mux1~1_combout\ & (\main_processor|dat|IR|q\(7))) # (!\main_processor|control_unit|Im_Mux1~1_combout\ & 
-- ((\main_processor|dat|A|q\(23)))))) # (!\main_processor|control_unit|ALU_op[0]~2_combout\ & (((\main_processor|dat|A|q\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~2_combout\,
	datab => \main_processor|dat|IR|q\(7),
	datac => \main_processor|control_unit|Im_Mux1~1_combout\,
	datad => \main_processor|dat|A|q\(23),
	combout => \main_processor|dat|MuxIm1|f[23]~23_combout\);

-- Location: LCCOMB_X58_Y25_N12
\main_processor|dat|MuxIm1|f[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[22]~22_combout\ = (\main_processor|control_unit|Im_Mux1~1_combout\ & ((\main_processor|control_unit|ALU_op[0]~2_combout\ & ((\main_processor|dat|IR|q\(6)))) # (!\main_processor|control_unit|ALU_op[0]~2_combout\ & 
-- (\main_processor|dat|A|q\(22))))) # (!\main_processor|control_unit|Im_Mux1~1_combout\ & (\main_processor|dat|A|q\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|A|q\(22),
	datab => \main_processor|control_unit|Im_Mux1~1_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~2_combout\,
	datad => \main_processor|dat|IR|q\(6),
	combout => \main_processor|dat|MuxIm1|f[22]~22_combout\);

-- Location: LCCOMB_X56_Y26_N8
\main_processor|dat|MuxB|f[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[22]~22_combout\ = (!\main_processor|control_unit|B_Mux~1_combout\ & ((\main_processor|dat|MuxData|Mux9~0_combout\) # ((\main_processor|dat|MuxData|Mux31~2_combout\ & \main_processor|dat|ALU0|Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux31~2_combout\,
	datab => \main_processor|control_unit|B_Mux~1_combout\,
	datac => \main_processor|dat|MuxData|Mux9~0_combout\,
	datad => \main_processor|dat|ALU0|Mux9~4_combout\,
	combout => \main_processor|dat|MuxB|f[22]~22_combout\);

-- Location: FF_X56_Y26_N9
\main_processor|dat|B|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[22]~22_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(22));

-- Location: LCCOMB_X58_Y25_N28
\main_processor|dat|MuxIm2|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux9~0_combout\ = (\main_processor|dat|B|q\(22) & (((!\main_processor|control_unit|Mux7~0_combout\ & !\main_processor|control_unit|Im_Mux2[1]~1_combout\)) # (!\main_processor|control_unit|ALU_op[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Mux7~0_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datac => \main_processor|control_unit|Im_Mux2[1]~1_combout\,
	datad => \main_processor|dat|B|q\(22),
	combout => \main_processor|dat|MuxIm2|Mux9~0_combout\);

-- Location: LCCOMB_X58_Y25_N26
\main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|s~0_combout\ = \main_processor|dat|MuxIm2|Mux9~0_combout\ $ (((\main_processor|control_unit|Im_Mux1~0_combout\ & ((\main_processor|dat|IR|q\(6)))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- (\main_processor|dat|A|q\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|MuxIm2|Mux9~0_combout\,
	datac => \main_processor|dat|A|q\(22),
	datad => \main_processor|dat|IR|q\(6),
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|s~0_combout\);

-- Location: LCCOMB_X59_Y24_N26
\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|Cout~0_combout\ = (!\main_processor|dat|MuxIm2|Mux12~0_combout\ & ((\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|IR|q\(3))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- ((\main_processor|dat|A|q\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|MuxIm2|Mux12~0_combout\,
	datac => \main_processor|dat|IR|q\(3),
	datad => \main_processor|dat|A|q\(19),
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|Cout~0_combout\);

-- Location: LCCOMB_X59_Y24_N20
\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|Cout~1_combout\ = ((\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|IR|q\(3))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & ((\main_processor|dat|A|q\(19))))) # 
-- (!\main_processor|dat|MuxIm2|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|MuxIm2|Mux12~0_combout\,
	datac => \main_processor|dat|IR|q\(3),
	datad => \main_processor|dat|A|q\(19),
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|Cout~1_combout\);

-- Location: LCCOMB_X59_Y24_N10
\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|Cout~2_combout\ = (\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|Cout~1_combout\ & ((\main_processor|dat|MuxIm2|Mux13~0_combout\ & (\main_processor|dat|MuxIm1|f[18]~18_combout\ & 
-- \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle1|Cout~0_combout\)) # (!\main_processor|dat|MuxIm2|Mux13~0_combout\ & ((\main_processor|dat|MuxIm1|f[18]~18_combout\) # (\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle1|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux13~0_combout\,
	datab => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|Cout~1_combout\,
	datac => \main_processor|dat|MuxIm1|f[18]~18_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle1|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|Cout~2_combout\);

-- Location: LCCOMB_X59_Y24_N22
\main_processor|dat|ALU0|sub|cycle1|cycle1|cycle0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle0|Cout~0_combout\ = (\main_processor|dat|MuxIm1|f[20]~20_combout\ & (((\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|Cout~2_combout\)) # (!\main_processor|dat|MuxIm2|Mux11~0_combout\))) # (!\main_processor|dat|MuxIm1|f[20]~20_combout\ & (!\main_processor|dat|MuxIm2|Mux11~0_combout\ & 
-- ((\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|Cout~0_combout\) # (\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[20]~20_combout\,
	datab => \main_processor|dat|MuxIm2|Mux11~0_combout\,
	datac => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|Cout~0_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|Cout~2_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle0|Cout~0_combout\);

-- Location: LCCOMB_X58_Y24_N24
\main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|s~combout\ = \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|s~0_combout\ $ (((\main_processor|dat|MuxIm1|f[21]~21_combout\ & ((\main_processor|dat|ALU0|sub|cycle1|cycle1|cycle0|Cout~0_combout\) # 
-- (!\main_processor|dat|MuxIm2|Mux10~0_combout\))) # (!\main_processor|dat|MuxIm1|f[21]~21_combout\ & (!\main_processor|dat|MuxIm2|Mux10~0_combout\ & \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle0|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[21]~21_combout\,
	datab => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|s~0_combout\,
	datac => \main_processor|dat|MuxIm2|Mux10~0_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle0|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|s~combout\);

-- Location: LCCOMB_X58_Y24_N18
\main_processor|dat|ALU0|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux9~0_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # ((!\main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|s~combout\)))) # 
-- (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (\main_processor|dat|MuxIm1|f[21]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|MuxIm1|f[21]~21_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|s~combout\,
	combout => \main_processor|dat|ALU0|Mux9~0_combout\);

-- Location: LCCOMB_X58_Y24_N20
\main_processor|dat|ALU0|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux9~1_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|ALU0|Mux9~0_combout\ & ((\main_processor|dat|MuxIm1|f[22]~22_combout\))) # (!\main_processor|dat|ALU0|Mux9~0_combout\ & 
-- (\main_processor|dat|MuxIm1|f[23]~23_combout\)))) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (((\main_processor|dat|ALU0|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[23]~23_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|MuxIm1|f[22]~22_combout\,
	datad => \main_processor|dat|ALU0|Mux9~0_combout\,
	combout => \main_processor|dat|ALU0|Mux9~1_combout\);

-- Location: LCCOMB_X59_Y24_N0
\main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux11~0_combout\ & ((\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|IR|q\(4))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- ((\main_processor|dat|A|q\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|MuxIm2|Mux11~0_combout\,
	datac => \main_processor|dat|IR|q\(4),
	datad => \main_processor|dat|A|q\(20),
	combout => \main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|Cout~0_combout\);

-- Location: LCCOMB_X59_Y24_N14
\main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|Cout~1_combout\ = (\main_processor|dat|MuxIm2|Mux11~0_combout\) # ((\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|IR|q\(4))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- ((\main_processor|dat|A|q\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|MuxIm2|Mux11~0_combout\,
	datac => \main_processor|dat|IR|q\(4),
	datad => \main_processor|dat|A|q\(20),
	combout => \main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|Cout~1_combout\);

-- Location: LCCOMB_X57_Y25_N18
\main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|Cout~2_combout\ = (\main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|Cout~1_combout\ & ((\main_processor|dat|MuxIm1|f[19]~19_combout\ & ((\main_processor|dat|MuxIm2|Mux12~0_combout\) # 
-- (\main_processor|dat|ALU0|add|cycle1|cycle0|cycle2|Cout~0_combout\))) # (!\main_processor|dat|MuxIm1|f[19]~19_combout\ & (\main_processor|dat|MuxIm2|Mux12~0_combout\ & \main_processor|dat|ALU0|add|cycle1|cycle0|cycle2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|Cout~1_combout\,
	datab => \main_processor|dat|MuxIm1|f[19]~19_combout\,
	datac => \main_processor|dat|MuxIm2|Mux12~0_combout\,
	datad => \main_processor|dat|ALU0|add|cycle1|cycle0|cycle2|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|Cout~2_combout\);

-- Location: LCCOMB_X57_Y25_N16
\main_processor|dat|ALU0|add|cycle1|cycle1|cycle1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle1|cycle1|cycle1|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux10~0_combout\ & ((\main_processor|dat|MuxIm1|f[21]~21_combout\) # ((\main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|Cout~2_combout\)))) # (!\main_processor|dat|MuxIm2|Mux10~0_combout\ & (\main_processor|dat|MuxIm1|f[21]~21_combout\ & ((\main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux10~0_combout\,
	datab => \main_processor|dat|MuxIm1|f[21]~21_combout\,
	datac => \main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|Cout~0_combout\,
	datad => \main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|Cout~2_combout\,
	combout => \main_processor|dat|ALU0|add|cycle1|cycle1|cycle1|Cout~0_combout\);

-- Location: LCCOMB_X57_Y25_N22
\main_processor|dat|ALU0|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux9~2_combout\ = \main_processor|dat|MuxIm1|f[22]~22_combout\ $ (((\main_processor|control_unit|ALU_op[1]~4_combout\ & \main_processor|dat|ALU0|add|cycle1|cycle1|cycle1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|dat|MuxIm1|f[22]~22_combout\,
	datad => \main_processor|dat|ALU0|add|cycle1|cycle1|cycle1|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|Mux9~2_combout\);

-- Location: LCCOMB_X57_Y25_N0
\main_processor|dat|ALU0|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux9~3_combout\ = (\main_processor|dat|MuxIm2|Mux9~0_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # (\main_processor|control_unit|ALU_op[1]~4_combout\ $ (\main_processor|dat|ALU0|Mux9~2_combout\)))) # 
-- (!\main_processor|dat|MuxIm2|Mux9~0_combout\ & (\main_processor|dat|ALU0|Mux9~2_combout\ & (\main_processor|control_unit|ALU_op[1]~4_combout\ $ (\main_processor|control_unit|ALU_op[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|ALU0|Mux9~2_combout\,
	datad => \main_processor|dat|MuxIm2|Mux9~0_combout\,
	combout => \main_processor|dat|ALU0|Mux9~3_combout\);

-- Location: LCCOMB_X57_Y26_N28
\main_processor|dat|ALU0|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux9~4_combout\ = (\main_processor|control_unit|Mux3~0_combout\ & ((\main_processor|control_unit|ALU_op[0]~8_combout\ & (\main_processor|dat|ALU0|Mux9~1_combout\)) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & 
-- ((\main_processor|dat|ALU0|Mux9~3_combout\))))) # (!\main_processor|control_unit|Mux3~0_combout\ & (((\main_processor|dat|ALU0|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Mux3~0_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datac => \main_processor|dat|ALU0|Mux9~1_combout\,
	datad => \main_processor|dat|ALU0|Mux9~3_combout\,
	combout => \main_processor|dat|ALU0|Mux9~4_combout\);

-- Location: LCCOMB_X57_Y26_N2
\main_processor|dat|MuxData|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux9~1_combout\ = (\main_processor|dat|MuxData|Mux9~0_combout\) # ((!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|dat|ALU0|Mux9~4_combout\ & \main_processor|control_unit|Data_Mux[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datab => \main_processor|dat|ALU0|Mux9~4_combout\,
	datac => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datad => \main_processor|dat|MuxData|Mux9~0_combout\,
	combout => \main_processor|dat|MuxData|Mux9~1_combout\);

-- Location: LCCOMB_X55_Y22_N30
\main_processor|dat|MuxData|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux8~1_combout\ = (\main_processor|dat|MuxData|Mux8~0_combout\) # ((!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|dat|ALU0|Mux8~4_combout\ & \main_processor|control_unit|Data_Mux[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datab => \main_processor|dat|ALU0|Mux8~4_combout\,
	datac => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datad => \main_processor|dat|MuxData|Mux8~0_combout\,
	combout => \main_processor|dat|MuxData|Mux8~1_combout\);

-- Location: LCCOMB_X54_Y23_N10
\main_processor|dat|MuxA|f[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[29]~29_combout\ = (!\main_processor|control_unit|A_Mux~0_combout\ & ((\main_processor|dat|MuxData|Mux2~0_combout\) # ((\main_processor|dat|MuxData|Mux31~2_combout\ & \main_processor|dat|ALU0|Mux2~4_Duplicate_6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux31~2_combout\,
	datab => \main_processor|control_unit|A_Mux~0_combout\,
	datac => \main_processor|dat|MuxData|Mux2~0_combout\,
	datad => \main_processor|dat|ALU0|Mux2~4_Duplicate_6\,
	combout => \main_processor|dat|MuxA|f[29]~29_combout\);

-- Location: FF_X54_Y23_N11
\main_processor|dat|A|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[29]~29_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(29));

-- Location: LCCOMB_X57_Y22_N0
\main_processor|dat|MuxIm1|f[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[29]~29_combout\ = (\main_processor|control_unit|ALU_op[0]~2_combout\ & ((\main_processor|control_unit|Im_Mux1~1_combout\ & ((\main_processor|dat|IR|q\(13)))) # (!\main_processor|control_unit|Im_Mux1~1_combout\ & 
-- (\main_processor|dat|A|q\(29))))) # (!\main_processor|control_unit|ALU_op[0]~2_combout\ & (\main_processor|dat|A|q\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|A|q\(29),
	datab => \main_processor|control_unit|ALU_op[0]~2_combout\,
	datac => \main_processor|dat|IR|q\(13),
	datad => \main_processor|control_unit|Im_Mux1~1_combout\,
	combout => \main_processor|dat|MuxIm1|f[29]~29_combout\);

-- Location: M9K_X51_Y23_N0
\main_memory|altsyncram_component|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000100080002",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "system_memory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "system_memory:main_memory|altsyncram:altsyncram_component|altsyncram_04d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 6,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \memClk~inputclkctrl_outclk\,
	portadatain => \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: LCCOMB_X58_Y23_N0
\main_processor|dat|MuxReg|f[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[23]~23_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|B|q\(23)))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|A|q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|A|q\(23),
	datac => \main_processor|control_unit|Reg_Mux~1_combout\,
	datad => \main_processor|dat|B|q\(23),
	combout => \main_processor|dat|MuxReg|f[23]~23_combout\);

-- Location: LCCOMB_X58_Y23_N18
\main_processor|dat|MuxIm2|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux7~0_combout\ = (\main_processor|dat|B|q\(24) & (((!\main_processor|control_unit|Mux7~0_combout\ & !\main_processor|control_unit|Im_Mux2[1]~1_combout\)) # (!\main_processor|control_unit|ALU_op[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|B|q\(24),
	datab => \main_processor|control_unit|Mux7~0_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datad => \main_processor|control_unit|Im_Mux2[1]~1_combout\,
	combout => \main_processor|dat|MuxIm2|Mux7~0_combout\);

-- Location: LCCOMB_X56_Y23_N18
\main_processor|dat|MuxA|f[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[24]~24_combout\ = (!\main_processor|control_unit|A_Mux~0_combout\ & ((\main_processor|dat|MuxData|Mux7~0_combout\) # ((\main_processor|dat|ALU0|Mux7~4_combout\ & \main_processor|dat|MuxData|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|A_Mux~0_combout\,
	datab => \main_processor|dat|MuxData|Mux7~0_combout\,
	datac => \main_processor|dat|ALU0|Mux7~4_combout\,
	datad => \main_processor|dat|MuxData|Mux31~2_combout\,
	combout => \main_processor|dat|MuxA|f[24]~24_combout\);

-- Location: FF_X56_Y23_N19
\main_processor|dat|A|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[24]~24_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(24));

-- Location: LCCOMB_X56_Y23_N0
\main_processor|dat|MuxIm1|f[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[24]~24_combout\ = (\main_processor|control_unit|Im_Mux1~1_combout\ & ((\main_processor|control_unit|ALU_op[0]~2_combout\ & (\main_processor|dat|IR|q\(8))) # (!\main_processor|control_unit|ALU_op[0]~2_combout\ & 
-- ((\main_processor|dat|A|q\(24)))))) # (!\main_processor|control_unit|Im_Mux1~1_combout\ & (((\main_processor|dat|A|q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~1_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~2_combout\,
	datac => \main_processor|dat|IR|q\(8),
	datad => \main_processor|dat|A|q\(24),
	combout => \main_processor|dat|MuxIm1|f[24]~24_combout\);

-- Location: LCCOMB_X58_Y25_N6
\main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~1_combout\ = (\main_processor|dat|MuxIm2|Mux8~0_combout\) # ((\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|IR|q\(7))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- ((\main_processor|dat|A|q\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|IR|q\(7),
	datac => \main_processor|dat|MuxIm2|Mux8~0_combout\,
	datad => \main_processor|dat|A|q\(23),
	combout => \main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~1_combout\);

-- Location: LCCOMB_X57_Y25_N30
\main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~2_combout\ = (\main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~1_combout\ & ((\main_processor|dat|MuxIm2|Mux9~0_combout\ & ((\main_processor|dat|MuxIm1|f[22]~22_combout\) # 
-- (\main_processor|dat|ALU0|add|cycle1|cycle1|cycle1|Cout~0_combout\))) # (!\main_processor|dat|MuxIm2|Mux9~0_combout\ & (\main_processor|dat|MuxIm1|f[22]~22_combout\ & \main_processor|dat|ALU0|add|cycle1|cycle1|cycle1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~1_combout\,
	datab => \main_processor|dat|MuxIm2|Mux9~0_combout\,
	datac => \main_processor|dat|MuxIm1|f[22]~22_combout\,
	datad => \main_processor|dat|ALU0|add|cycle1|cycle1|cycle1|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~2_combout\);

-- Location: LCCOMB_X58_Y25_N4
\main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux8~0_combout\ & ((\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|IR|q\(7))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- ((\main_processor|dat|A|q\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|IR|q\(7),
	datac => \main_processor|dat|MuxIm2|Mux8~0_combout\,
	datad => \main_processor|dat|A|q\(23),
	combout => \main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~0_combout\);

-- Location: LCCOMB_X57_Y24_N6
\main_processor|dat|ALU0|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux7~2_combout\ = \main_processor|dat|MuxIm1|f[24]~24_combout\ $ (((\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~2_combout\) # 
-- (\main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[24]~24_combout\,
	datab => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~2_combout\,
	datad => \main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|Mux7~2_combout\);

-- Location: LCCOMB_X57_Y24_N8
\main_processor|dat|ALU0|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux7~3_combout\ = (\main_processor|dat|MuxIm2|Mux7~0_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # (\main_processor|control_unit|ALU_op[1]~4_combout\ $ (\main_processor|dat|ALU0|Mux7~2_combout\)))) # 
-- (!\main_processor|dat|MuxIm2|Mux7~0_combout\ & (\main_processor|dat|ALU0|Mux7~2_combout\ & (\main_processor|control_unit|ALU_op[0]~6_combout\ $ (\main_processor|control_unit|ALU_op[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datab => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|dat|MuxIm2|Mux7~0_combout\,
	datad => \main_processor|dat|ALU0|Mux7~2_combout\,
	combout => \main_processor|dat|ALU0|Mux7~3_combout\);

-- Location: LCCOMB_X57_Y24_N14
\main_processor|dat|MuxB|f[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[25]~25_combout\ = (!\main_processor|control_unit|B_Mux~1_combout\ & ((\main_processor|dat|MuxData|Mux6~0_combout\) # ((\main_processor|dat|MuxData|Mux31~2_combout\ & \main_processor|dat|ALU0|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|B_Mux~1_combout\,
	datab => \main_processor|dat|MuxData|Mux31~2_combout\,
	datac => \main_processor|dat|MuxData|Mux6~0_combout\,
	datad => \main_processor|dat|ALU0|Mux6~4_combout\,
	combout => \main_processor|dat|MuxB|f[25]~25_combout\);

-- Location: FF_X57_Y24_N15
\main_processor|dat|B|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[25]~25_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(25));

-- Location: LCCOMB_X55_Y26_N20
\main_processor|dat|MuxReg|f[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[25]~25_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|B|q\(25)))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|A|q\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|A|q\(25),
	datac => \main_processor|dat|B|q\(25),
	datad => \main_processor|control_unit|Reg_Mux~1_combout\,
	combout => \main_processor|dat|MuxReg|f[25]~25_combout\);

-- Location: LCCOMB_X57_Y23_N18
\main_processor|dat|MuxIm2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux5~0_combout\ = (\main_processor|dat|B|q\(26) & (((!\main_processor|control_unit|Mux7~0_combout\ & !\main_processor|control_unit|Im_Mux2[1]~1_combout\)) # (!\main_processor|control_unit|ALU_op[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datab => \main_processor|control_unit|Mux7~0_combout\,
	datac => \main_processor|control_unit|Im_Mux2[1]~1_combout\,
	datad => \main_processor|dat|B|q\(26),
	combout => \main_processor|dat|MuxIm2|Mux5~0_combout\);

-- Location: LCCOMB_X57_Y23_N30
\main_processor|dat|ALU0|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux5~2_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & (\main_processor|control_unit|ALU_op[0]~6_combout\)) # (!\main_processor|control_unit|ALU_op[1]~4_combout\ & 
-- ((\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|MuxIm1|f[26]~26_combout\) # (\main_processor|dat|MuxIm2|Mux5~0_combout\))) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (\main_processor|dat|MuxIm1|f[26]~26_combout\ & 
-- \main_processor|dat|MuxIm2|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|MuxIm1|f[26]~26_combout\,
	datad => \main_processor|dat|MuxIm2|Mux5~0_combout\,
	combout => \main_processor|dat|ALU0|Mux5~2_combout\);

-- Location: LCCOMB_X55_Y26_N10
\main_processor|dat|MuxIm2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux6~0_combout\ = (\main_processor|dat|B|q\(25) & (((!\main_processor|control_unit|Mux7~0_combout\ & !\main_processor|control_unit|Im_Mux2[1]~1_combout\)) # (!\main_processor|control_unit|ALU_op[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datab => \main_processor|control_unit|Mux7~0_combout\,
	datac => \main_processor|dat|B|q\(25),
	datad => \main_processor|control_unit|Im_Mux2[1]~1_combout\,
	combout => \main_processor|dat|MuxIm2|Mux6~0_combout\);

-- Location: LCCOMB_X57_Y23_N20
\main_processor|dat|ALU0|sub|cycle1|cycle2|cycle2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle2|s~0_combout\ = \main_processor|dat|MuxIm2|Mux5~0_combout\ $ (((\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|IR|q\(10))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- ((\main_processor|dat|A|q\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(10),
	datab => \main_processor|control_unit|Im_Mux1~0_combout\,
	datac => \main_processor|dat|A|q\(26),
	datad => \main_processor|dat|MuxIm2|Mux5~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle2|s~0_combout\);

-- Location: LCCOMB_X56_Y24_N10
\main_processor|dat|ALU0|add|cycle1|cycle2|cycle0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle1|cycle2|cycle0|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux7~0_combout\ & ((\main_processor|dat|MuxIm1|f[24]~24_combout\) # ((\main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~2_combout\)))) # (!\main_processor|dat|MuxIm2|Mux7~0_combout\ & (\main_processor|dat|MuxIm1|f[24]~24_combout\ & ((\main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux7~0_combout\,
	datab => \main_processor|dat|MuxIm1|f[24]~24_combout\,
	datac => \main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~0_combout\,
	datad => \main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~2_combout\,
	combout => \main_processor|dat|ALU0|add|cycle1|cycle2|cycle0|Cout~0_combout\);

-- Location: LCCOMB_X56_Y24_N6
\main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|s~combout\ = \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle2|s~0_combout\ $ (((\main_processor|dat|MuxIm1|f[25]~25_combout\ & ((\main_processor|dat|MuxIm2|Mux6~0_combout\) # 
-- (\main_processor|dat|ALU0|add|cycle1|cycle2|cycle0|Cout~0_combout\))) # (!\main_processor|dat|MuxIm1|f[25]~25_combout\ & (\main_processor|dat|MuxIm2|Mux6~0_combout\ & \main_processor|dat|ALU0|add|cycle1|cycle2|cycle0|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[25]~25_combout\,
	datab => \main_processor|dat|MuxIm2|Mux6~0_combout\,
	datac => \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle2|s~0_combout\,
	datad => \main_processor|dat|ALU0|add|cycle1|cycle2|cycle0|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|s~combout\);

-- Location: LCCOMB_X56_Y24_N8
\main_processor|dat|ALU0|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux5~3_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|dat|ALU0|Mux5~2_combout\ & (\main_processor|dat|MuxIm2|Mux5~0_combout\)) # (!\main_processor|dat|ALU0|Mux5~2_combout\ & 
-- ((\main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|s~combout\))))) # (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (((\main_processor|dat|ALU0|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux5~0_combout\,
	datab => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|dat|ALU0|Mux5~2_combout\,
	datad => \main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|s~combout\,
	combout => \main_processor|dat|ALU0|Mux5~3_combout\);

-- Location: LCCOMB_X54_Y20_N16
\main_processor|dat|MuxB|f[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[27]~27_combout\ = (!\main_processor|control_unit|B_Mux~1_combout\ & ((\main_processor|dat|MuxData|Mux4~0_combout\) # ((\main_processor|dat|MuxData|Mux31~2_combout\ & \main_processor|dat|ALU0|Mux4~4_Duplicate_6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux4~0_combout\,
	datab => \main_processor|dat|MuxData|Mux31~2_combout\,
	datac => \main_processor|control_unit|B_Mux~1_combout\,
	datad => \main_processor|dat|ALU0|Mux4~4_Duplicate_6\,
	combout => \main_processor|dat|MuxB|f[27]~27_combout\);

-- Location: FF_X54_Y20_N17
\main_processor|dat|B|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[27]~27_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(27));

-- Location: LCCOMB_X55_Y20_N26
\main_processor|dat|MuxIm2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux4~0_combout\ = (\main_processor|dat|B|q\(27) & (((!\main_processor|control_unit|Mux7~0_combout\ & !\main_processor|control_unit|Im_Mux2[1]~1_combout\)) # (!\main_processor|control_unit|ALU_op[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|B|q\(27),
	datab => \main_processor|control_unit|Mux7~0_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datad => \main_processor|control_unit|Im_Mux2[1]~1_combout\,
	combout => \main_processor|dat|MuxIm2|Mux4~0_combout\);

-- Location: LCCOMB_X57_Y23_N4
\main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux5~0_combout\ & ((\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|IR|q\(10))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- ((\main_processor|dat|A|q\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(10),
	datab => \main_processor|control_unit|Im_Mux1~0_combout\,
	datac => \main_processor|dat|A|q\(26),
	datad => \main_processor|dat|MuxIm2|Mux5~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|Cout~0_combout\);

-- Location: LCCOMB_X57_Y23_N6
\main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|Cout~1_combout\ = (\main_processor|dat|MuxIm2|Mux5~0_combout\) # ((\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|IR|q\(10))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- ((\main_processor|dat|A|q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(10),
	datab => \main_processor|control_unit|Im_Mux1~0_combout\,
	datac => \main_processor|dat|A|q\(26),
	datad => \main_processor|dat|MuxIm2|Mux5~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|Cout~1_combout\);

-- Location: LCCOMB_X56_Y24_N18
\main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|Cout~2_combout\ = (\main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|Cout~1_combout\ & ((\main_processor|dat|MuxIm1|f[25]~25_combout\ & ((\main_processor|dat|MuxIm2|Mux6~0_combout\) # 
-- (\main_processor|dat|ALU0|add|cycle1|cycle2|cycle0|Cout~0_combout\))) # (!\main_processor|dat|MuxIm1|f[25]~25_combout\ & (\main_processor|dat|MuxIm2|Mux6~0_combout\ & \main_processor|dat|ALU0|add|cycle1|cycle2|cycle0|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[25]~25_combout\,
	datab => \main_processor|dat|MuxIm2|Mux6~0_combout\,
	datac => \main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|Cout~1_combout\,
	datad => \main_processor|dat|ALU0|add|cycle1|cycle2|cycle0|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|Cout~2_combout\);

-- Location: LCCOMB_X56_Y24_N20
\main_processor|dat|ALU0|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux4~2_combout\ = \main_processor|dat|MuxIm1|f[27]~27_combout\ $ (((\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|Cout~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|Cout~0_combout\,
	datac => \main_processor|dat|MuxIm1|f[27]~27_combout\,
	datad => \main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|Cout~2_combout\,
	combout => \main_processor|dat|ALU0|Mux4~2_combout\);

-- Location: LCCOMB_X55_Y20_N22
\main_processor|dat|ALU0|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux4~3_combout\ = (\main_processor|dat|MuxIm2|Mux4~0_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # (\main_processor|control_unit|ALU_op[1]~4_combout\ $ (\main_processor|dat|ALU0|Mux4~2_combout\)))) # 
-- (!\main_processor|dat|MuxIm2|Mux4~0_combout\ & (\main_processor|dat|ALU0|Mux4~2_combout\ & (\main_processor|control_unit|ALU_op[1]~4_combout\ $ (\main_processor|control_unit|ALU_op[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux4~0_combout\,
	datab => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|ALU0|Mux4~2_combout\,
	combout => \main_processor|dat|ALU0|Mux4~3_combout\);

-- Location: LCCOMB_X54_Y22_N0
\main_processor|dat|MuxB|f[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[28]~28_combout\ = (!\main_processor|control_unit|B_Mux~1_combout\ & ((\main_processor|dat|MuxData|Mux3~0_combout\) # ((\main_processor|dat|MuxData|Mux31~2_combout\ & \main_processor|dat|ALU0|Mux3~4_Duplicate_6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|B_Mux~1_combout\,
	datab => \main_processor|dat|MuxData|Mux31~2_combout\,
	datac => \main_processor|dat|MuxData|Mux3~0_combout\,
	datad => \main_processor|dat|ALU0|Mux3~4_Duplicate_6\,
	combout => \main_processor|dat|MuxB|f[28]~28_combout\);

-- Location: FF_X54_Y22_N1
\main_processor|dat|B|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[28]~28_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(28));

-- Location: LCCOMB_X56_Y23_N20
\main_processor|dat|MuxIm2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux3~0_combout\ = (\main_processor|dat|B|q\(28) & (((!\main_processor|control_unit|Im_Mux2[1]~1_combout\ & !\main_processor|control_unit|Mux7~0_combout\)) # (!\main_processor|control_unit|ALU_op[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux2[1]~1_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datac => \main_processor|control_unit|Mux7~0_combout\,
	datad => \main_processor|dat|B|q\(28),
	combout => \main_processor|dat|MuxIm2|Mux3~0_combout\);

-- Location: LCCOMB_X55_Y23_N0
\main_processor|dat|ALU0|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux3~2_combout\ = (\main_processor|dat|MuxIm1|f[28]~28_combout\ & ((\main_processor|dat|MuxIm2|Mux3~0_combout\) # ((!\main_processor|control_unit|ALU_op[1]~4_combout\ & \main_processor|control_unit|ALU_op[0]~6_combout\)))) # 
-- (!\main_processor|dat|MuxIm1|f[28]~28_combout\ & ((\main_processor|dat|MuxIm2|Mux3~0_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\))) # (!\main_processor|dat|MuxIm2|Mux3~0_combout\ & (\main_processor|control_unit|ALU_op[1]~4_combout\ & 
-- !\main_processor|control_unit|ALU_op[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[28]~28_combout\,
	datab => \main_processor|dat|MuxIm2|Mux3~0_combout\,
	datac => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datad => \main_processor|control_unit|ALU_op[0]~6_combout\,
	combout => \main_processor|dat|ALU0|Mux3~2_combout\);

-- Location: LCCOMB_X56_Y24_N4
\main_processor|dat|ALU0|add|cycle1|cycle2|cycle3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle1|cycle2|cycle3|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux4~0_combout\ & ((\main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|Cout~0_combout\) # ((\main_processor|dat|MuxIm1|f[27]~27_combout\) # 
-- (\main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|Cout~2_combout\)))) # (!\main_processor|dat|MuxIm2|Mux4~0_combout\ & (\main_processor|dat|MuxIm1|f[27]~27_combout\ & ((\main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux4~0_combout\,
	datab => \main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|Cout~0_combout\,
	datac => \main_processor|dat|MuxIm1|f[27]~27_combout\,
	datad => \main_processor|dat|ALU0|add|cycle1|cycle2|cycle2|Cout~2_combout\,
	combout => \main_processor|dat|ALU0|add|cycle1|cycle2|cycle3|Cout~0_combout\);

-- Location: LCCOMB_X55_Y24_N16
\main_processor|dat|ALU0|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux3~3_combout\ = \main_processor|dat|ALU0|Mux3~2_combout\ $ (((\main_processor|control_unit|ALU_op[1]~4_combout\ & (!\main_processor|control_unit|ALU_op[0]~6_combout\ & 
-- !\main_processor|dat|ALU0|add|cycle1|cycle2|cycle3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|dat|ALU0|Mux3~2_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|ALU0|add|cycle1|cycle2|cycle3|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|Mux3~3_combout\);

-- Location: LCCOMB_X56_Y23_N26
\main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|s~0_combout\ = \main_processor|dat|MuxIm2|Mux3~0_combout\ $ (((\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|IR|q\(12))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- ((\main_processor|dat|A|q\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(12),
	datab => \main_processor|dat|MuxIm2|Mux3~0_combout\,
	datac => \main_processor|control_unit|Im_Mux1~0_combout\,
	datad => \main_processor|dat|A|q\(28),
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|s~0_combout\);

-- Location: LCCOMB_X55_Y26_N14
\main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|Cout~0_combout\ = (!\main_processor|dat|MuxIm2|Mux6~0_combout\ & ((\main_processor|control_unit|Im_Mux1~0_combout\ & ((\main_processor|dat|IR|q\(9)))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- (\main_processor|dat|A|q\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|A|q\(25),
	datac => \main_processor|dat|IR|q\(9),
	datad => \main_processor|dat|MuxIm2|Mux6~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|Cout~0_combout\);

-- Location: LCCOMB_X55_Y26_N8
\main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|Cout~1_combout\ = ((\main_processor|control_unit|Im_Mux1~0_combout\ & ((\main_processor|dat|IR|q\(9)))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|A|q\(25)))) # 
-- (!\main_processor|dat|MuxIm2|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|A|q\(25),
	datac => \main_processor|dat|IR|q\(9),
	datad => \main_processor|dat|MuxIm2|Mux6~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|Cout~1_combout\);

-- Location: LCCOMB_X58_Y25_N8
\main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|Cout~0_combout\ = (!\main_processor|dat|MuxIm2|Mux9~0_combout\ & ((\main_processor|control_unit|Im_Mux1~0_combout\ & ((\main_processor|dat|IR|q\(6)))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- (\main_processor|dat|A|q\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|MuxIm2|Mux9~0_combout\,
	datac => \main_processor|dat|A|q\(22),
	datad => \main_processor|dat|IR|q\(6),
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|Cout~0_combout\);

-- Location: LCCOMB_X58_Y25_N14
\main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|Cout~1_combout\ = ((\main_processor|control_unit|Im_Mux1~0_combout\ & ((\main_processor|dat|IR|q\(6)))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|A|q\(22)))) # 
-- (!\main_processor|dat|MuxIm2|Mux9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|MuxIm2|Mux9~0_combout\,
	datac => \main_processor|dat|A|q\(22),
	datad => \main_processor|dat|IR|q\(6),
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|Cout~1_combout\);

-- Location: LCCOMB_X58_Y24_N10
\main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|Cout~2_combout\ = (\main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|Cout~1_combout\ & ((\main_processor|dat|MuxIm1|f[21]~21_combout\ & ((\main_processor|dat|ALU0|sub|cycle1|cycle1|cycle0|Cout~0_combout\) 
-- # (!\main_processor|dat|MuxIm2|Mux10~0_combout\))) # (!\main_processor|dat|MuxIm1|f[21]~21_combout\ & (!\main_processor|dat|MuxIm2|Mux10~0_combout\ & \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle0|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|Cout~1_combout\,
	datab => \main_processor|dat|MuxIm1|f[21]~21_combout\,
	datac => \main_processor|dat|MuxIm2|Mux10~0_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle0|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|Cout~2_combout\);

-- Location: LCCOMB_X58_Y24_N2
\main_processor|dat|ALU0|sub|cycle1|cycle1|cycle3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle3|Cout~0_combout\ = (\main_processor|dat|MuxIm1|f[23]~23_combout\ & ((\main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|Cout~0_combout\) # ((\main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|Cout~2_combout\) 
-- # (!\main_processor|dat|MuxIm2|Mux8~0_combout\)))) # (!\main_processor|dat|MuxIm1|f[23]~23_combout\ & (!\main_processor|dat|MuxIm2|Mux8~0_combout\ & ((\main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[23]~23_combout\,
	datab => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|Cout~0_combout\,
	datac => \main_processor|dat|MuxIm2|Mux8~0_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|Cout~2_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle3|Cout~0_combout\);

-- Location: LCCOMB_X57_Y24_N16
\main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|Cout~2_combout\ = (\main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|Cout~1_combout\ & ((\main_processor|dat|MuxIm1|f[24]~24_combout\ & ((\main_processor|dat|ALU0|sub|cycle1|cycle1|cycle3|Cout~0_combout\) 
-- # (!\main_processor|dat|MuxIm2|Mux7~0_combout\))) # (!\main_processor|dat|MuxIm1|f[24]~24_combout\ & (!\main_processor|dat|MuxIm2|Mux7~0_combout\ & \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[24]~24_combout\,
	datab => \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|Cout~1_combout\,
	datac => \main_processor|dat|MuxIm2|Mux7~0_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle3|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|Cout~2_combout\);

-- Location: LCCOMB_X56_Y24_N28
\main_processor|dat|ALU0|sub|cycle1|cycle2|cycle2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle2|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux5~0_combout\ & (\main_processor|dat|MuxIm1|f[26]~26_combout\ & ((\main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|Cout~2_combout\)))) # (!\main_processor|dat|MuxIm2|Mux5~0_combout\ & ((\main_processor|dat|MuxIm1|f[26]~26_combout\) # ((\main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux5~0_combout\,
	datab => \main_processor|dat|MuxIm1|f[26]~26_combout\,
	datac => \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|Cout~0_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|Cout~2_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle2|Cout~0_combout\);

-- Location: LCCOMB_X55_Y24_N10
\main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|s~combout\ = \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|s~0_combout\ $ (((\main_processor|dat|MuxIm1|f[27]~27_combout\ & ((\main_processor|dat|ALU0|sub|cycle1|cycle2|cycle2|Cout~0_combout\) # 
-- (!\main_processor|dat|MuxIm2|Mux4~0_combout\))) # (!\main_processor|dat|MuxIm1|f[27]~27_combout\ & (!\main_processor|dat|MuxIm2|Mux4~0_combout\ & \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|s~0_combout\,
	datab => \main_processor|dat|MuxIm1|f[27]~27_combout\,
	datac => \main_processor|dat|MuxIm2|Mux4~0_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle2|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|s~combout\);

-- Location: LCCOMB_X55_Y24_N24
\main_processor|dat|ALU0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux3~0_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & (((\main_processor|control_unit|ALU_op[0]~6_combout\) # (!\main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|s~combout\)))) # 
-- (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (\main_processor|dat|MuxIm1|f[27]~27_combout\ & (!\main_processor|control_unit|ALU_op[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|dat|MuxIm1|f[27]~27_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|s~combout\,
	combout => \main_processor|dat|ALU0|Mux3~0_combout\);

-- Location: LCCOMB_X55_Y24_N18
\main_processor|dat|ALU0|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux3~1_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|ALU0|Mux3~0_combout\ & (\main_processor|dat|MuxIm1|f[28]~28_combout\)) # (!\main_processor|dat|ALU0|Mux3~0_combout\ & 
-- ((\main_processor|dat|MuxIm1|f[29]~29_combout\))))) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (((\main_processor|dat|ALU0|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[28]~28_combout\,
	datab => \main_processor|dat|MuxIm1|f[29]~29_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|ALU0|Mux3~0_combout\,
	combout => \main_processor|dat|ALU0|Mux3~1_combout\);

-- Location: LCCOMB_X55_Y24_N2
\main_processor|dat|ALU0|Mux3~4_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux3~4_Duplicate_6\ = (\main_processor|control_unit|Mux3~0_combout\ & ((\main_processor|control_unit|ALU_op[0]~8_combout\ & ((\main_processor|dat|ALU0|Mux3~1_combout\))) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & 
-- (\main_processor|dat|ALU0|Mux3~3_combout\)))) # (!\main_processor|control_unit|Mux3~0_combout\ & (\main_processor|dat|ALU0|Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Mux3~0_combout\,
	datab => \main_processor|dat|ALU0|Mux3~3_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datad => \main_processor|dat|ALU0|Mux3~1_combout\,
	combout => \main_processor|dat|ALU0|Mux3~4_Duplicate_6\);

-- Location: LCCOMB_X55_Y24_N20
\main_processor|dat|MuxA|f[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[28]~28_combout\ = (!\main_processor|control_unit|A_Mux~0_combout\ & ((\main_processor|dat|MuxData|Mux3~0_combout\) # ((\main_processor|dat|MuxData|Mux31~2_combout\ & \main_processor|dat|ALU0|Mux3~4_Duplicate_6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux31~2_combout\,
	datab => \main_processor|dat|MuxData|Mux3~0_combout\,
	datac => \main_processor|control_unit|A_Mux~0_combout\,
	datad => \main_processor|dat|ALU0|Mux3~4_Duplicate_6\,
	combout => \main_processor|dat|MuxA|f[28]~28_combout\);

-- Location: FF_X55_Y24_N21
\main_processor|dat|A|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[28]~28_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(28));

-- Location: LCCOMB_X56_Y23_N2
\main_processor|dat|MuxIm1|f[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[28]~28_combout\ = (\main_processor|control_unit|ALU_op[0]~2_combout\ & ((\main_processor|control_unit|Im_Mux1~1_combout\ & (\main_processor|dat|IR|q\(12))) # (!\main_processor|control_unit|Im_Mux1~1_combout\ & 
-- ((\main_processor|dat|A|q\(28)))))) # (!\main_processor|control_unit|ALU_op[0]~2_combout\ & (((\main_processor|dat|A|q\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(12),
	datab => \main_processor|control_unit|ALU_op[0]~2_combout\,
	datac => \main_processor|control_unit|Im_Mux1~1_combout\,
	datad => \main_processor|dat|A|q\(28),
	combout => \main_processor|dat|MuxIm1|f[28]~28_combout\);

-- Location: LCCOMB_X55_Y20_N24
\main_processor|dat|ALU0|sub|cycle1|cycle2|cycle3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle3|s~combout\ = \main_processor|dat|MuxIm1|f[27]~27_combout\ $ (\main_processor|dat|MuxIm2|Mux4~0_combout\ $ (\main_processor|dat|ALU0|sub|cycle1|cycle2|cycle2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|MuxIm1|f[27]~27_combout\,
	datac => \main_processor|dat|MuxIm2|Mux4~0_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle2|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle3|s~combout\);

-- Location: LCCOMB_X55_Y20_N2
\main_processor|dat|ALU0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux4~0_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & (((\main_processor|control_unit|ALU_op[0]~6_combout\) # (!\main_processor|dat|ALU0|sub|cycle1|cycle2|cycle3|s~combout\)))) # 
-- (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (\main_processor|dat|MuxIm1|f[26]~26_combout\ & (!\main_processor|control_unit|ALU_op[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[26]~26_combout\,
	datab => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle3|s~combout\,
	combout => \main_processor|dat|ALU0|Mux4~0_combout\);

-- Location: LCCOMB_X55_Y20_N12
\main_processor|dat|ALU0|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux4~1_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|ALU0|Mux4~0_combout\ & ((\main_processor|dat|MuxIm1|f[27]~27_combout\))) # (!\main_processor|dat|ALU0|Mux4~0_combout\ & 
-- (\main_processor|dat|MuxIm1|f[28]~28_combout\)))) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (((\main_processor|dat|ALU0|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[28]~28_combout\,
	datab => \main_processor|dat|MuxIm1|f[27]~27_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|ALU0|Mux4~0_combout\,
	combout => \main_processor|dat|ALU0|Mux4~1_combout\);

-- Location: LCCOMB_X55_Y20_N28
\main_processor|dat|ALU0|Mux4~4_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux4~4_Duplicate_6\ = (\main_processor|control_unit|ALU_op[0]~8_combout\ & ((\main_processor|control_unit|Mux3~0_combout\ & ((\main_processor|dat|ALU0|Mux4~1_combout\))) # (!\main_processor|control_unit|Mux3~0_combout\ & 
-- (\main_processor|dat|ALU0|Mux4~3_combout\)))) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & (((\main_processor|dat|ALU0|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datab => \main_processor|control_unit|Mux3~0_combout\,
	datac => \main_processor|dat|ALU0|Mux4~3_combout\,
	datad => \main_processor|dat|ALU0|Mux4~1_combout\,
	combout => \main_processor|dat|ALU0|Mux4~4_Duplicate_6\);

-- Location: LCCOMB_X55_Y20_N14
\main_processor|dat|MuxA|f[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[27]~27_combout\ = (!\main_processor|control_unit|A_Mux~0_combout\ & ((\main_processor|dat|MuxData|Mux4~0_combout\) # ((\main_processor|dat|MuxData|Mux31~2_combout\ & \main_processor|dat|ALU0|Mux4~4_Duplicate_6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|A_Mux~0_combout\,
	datab => \main_processor|dat|MuxData|Mux4~0_combout\,
	datac => \main_processor|dat|MuxData|Mux31~2_combout\,
	datad => \main_processor|dat|ALU0|Mux4~4_Duplicate_6\,
	combout => \main_processor|dat|MuxA|f[27]~27_combout\);

-- Location: FF_X55_Y20_N15
\main_processor|dat|A|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[27]~27_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(27));

-- Location: LCCOMB_X55_Y20_N16
\main_processor|dat|MuxIm1|f[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[27]~27_combout\ = (\main_processor|control_unit|ALU_op[0]~2_combout\ & ((\main_processor|control_unit|Im_Mux1~1_combout\ & ((\main_processor|dat|IR|q\(11)))) # (!\main_processor|control_unit|Im_Mux1~1_combout\ & 
-- (\main_processor|dat|A|q\(27))))) # (!\main_processor|control_unit|ALU_op[0]~2_combout\ & (((\main_processor|dat|A|q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~2_combout\,
	datab => \main_processor|control_unit|Im_Mux1~1_combout\,
	datac => \main_processor|dat|A|q\(27),
	datad => \main_processor|dat|IR|q\(11),
	combout => \main_processor|dat|MuxIm1|f[27]~27_combout\);

-- Location: LCCOMB_X56_Y24_N0
\main_processor|dat|ALU0|sub|cycle1|cycle2|cycle2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle2|s~combout\ = \main_processor|dat|MuxIm2|Mux5~0_combout\ $ (\main_processor|dat|MuxIm1|f[26]~26_combout\ $ (((\main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux5~0_combout\,
	datab => \main_processor|dat|MuxIm1|f[26]~26_combout\,
	datac => \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|Cout~0_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|Cout~2_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle2|s~combout\);

-- Location: LCCOMB_X56_Y24_N22
\main_processor|dat|ALU0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux5~0_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & (\main_processor|control_unit|ALU_op[1]~4_combout\)) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & 
-- ((\main_processor|control_unit|ALU_op[1]~4_combout\ & ((!\main_processor|dat|ALU0|sub|cycle1|cycle2|cycle2|s~combout\))) # (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (\main_processor|dat|MuxIm1|f[25]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datab => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|dat|MuxIm1|f[25]~25_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle2|s~combout\,
	combout => \main_processor|dat|ALU0|Mux5~0_combout\);

-- Location: LCCOMB_X56_Y24_N24
\main_processor|dat|ALU0|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux5~1_combout\ = (\main_processor|dat|ALU0|Mux5~0_combout\ & (((\main_processor|dat|MuxIm1|f[26]~26_combout\) # (!\main_processor|control_unit|ALU_op[0]~6_combout\)))) # (!\main_processor|dat|ALU0|Mux5~0_combout\ & 
-- (\main_processor|dat|MuxIm1|f[27]~27_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[27]~27_combout\,
	datab => \main_processor|dat|MuxIm1|f[26]~26_combout\,
	datac => \main_processor|dat|ALU0|Mux5~0_combout\,
	datad => \main_processor|control_unit|ALU_op[0]~6_combout\,
	combout => \main_processor|dat|ALU0|Mux5~1_combout\);

-- Location: LCCOMB_X56_Y24_N14
\main_processor|dat|ALU0|Mux5~4_Duplicate_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux5~4_Duplicate_6_Duplicate\ = (\main_processor|control_unit|Mux3~0_combout\ & ((\main_processor|control_unit|ALU_op[0]~8_combout\ & ((\main_processor|dat|ALU0|Mux5~1_combout\))) # 
-- (!\main_processor|control_unit|ALU_op[0]~8_combout\ & (\main_processor|dat|ALU0|Mux5~3_combout\)))) # (!\main_processor|control_unit|Mux3~0_combout\ & (((\main_processor|dat|ALU0|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Mux3~0_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datac => \main_processor|dat|ALU0|Mux5~3_combout\,
	datad => \main_processor|dat|ALU0|Mux5~1_combout\,
	combout => \main_processor|dat|ALU0|Mux5~4_Duplicate_6_Duplicate\);

-- Location: LCCOMB_X57_Y23_N16
\main_processor|dat|MuxB|f[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[26]~26_combout\ = (!\main_processor|control_unit|B_Mux~1_combout\ & ((\main_processor|dat|MuxData|Mux5~0_combout\) # ((\main_processor|dat|MuxData|Mux31~2_combout\ & \main_processor|dat|ALU0|Mux5~4_Duplicate_6_Duplicate\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux5~0_combout\,
	datab => \main_processor|dat|MuxData|Mux31~2_combout\,
	datac => \main_processor|control_unit|B_Mux~1_combout\,
	datad => \main_processor|dat|ALU0|Mux5~4_Duplicate_6_Duplicate\,
	combout => \main_processor|dat|MuxB|f[26]~26_combout\);

-- Location: FF_X57_Y23_N17
\main_processor|dat|B|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[26]~26_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(26));

-- Location: LCCOMB_X57_Y23_N0
\main_processor|dat|MuxReg|f[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[26]~26_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|B|q\(26)))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|A|q\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Reg_Mux~1_combout\,
	datac => \main_processor|dat|A|q\(26),
	datad => \main_processor|dat|B|q\(26),
	combout => \main_processor|dat|MuxReg|f[26]~26_combout\);

-- Location: LCCOMB_X55_Y20_N6
\main_processor|dat|MuxReg|f[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[27]~27_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|B|q\(27)))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|A|q\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|A|q\(27),
	datac => \main_processor|dat|B|q\(27),
	datad => \main_processor|control_unit|Reg_Mux~1_combout\,
	combout => \main_processor|dat|MuxReg|f[27]~27_combout\);

-- Location: LCCOMB_X56_Y23_N28
\main_processor|dat|MuxReg|f[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[28]~28_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|B|q\(28)))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|A|q\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|A|q\(28),
	datab => \main_processor|dat|B|q\(28),
	datad => \main_processor|control_unit|Reg_Mux~1_combout\,
	combout => \main_processor|dat|MuxReg|f[28]~28_combout\);

-- Location: LCCOMB_X57_Y23_N14
\main_processor|dat|MuxB|f[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[29]~29_combout\ = (!\main_processor|control_unit|B_Mux~1_combout\ & ((\main_processor|dat|MuxData|Mux2~0_combout\) # ((\main_processor|dat|MuxData|Mux31~2_combout\ & \main_processor|dat|ALU0|Mux2~4_Duplicate_6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|B_Mux~1_combout\,
	datab => \main_processor|dat|MuxData|Mux31~2_combout\,
	datac => \main_processor|dat|MuxData|Mux2~0_combout\,
	datad => \main_processor|dat|ALU0|Mux2~4_Duplicate_6\,
	combout => \main_processor|dat|MuxB|f[29]~29_combout\);

-- Location: FF_X57_Y23_N15
\main_processor|dat|B|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[29]~29_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(29));

-- Location: LCCOMB_X54_Y23_N30
\main_processor|dat|MuxReg|f[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[29]~29_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|B|q\(29)))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|A|q\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|A|q\(29),
	datab => \main_processor|control_unit|Reg_Mux~1_combout\,
	datad => \main_processor|dat|B|q\(29),
	combout => \main_processor|dat|MuxReg|f[29]~29_combout\);

-- Location: LCCOMB_X55_Y23_N20
\main_processor|dat|MuxIm2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux1~0_combout\ = (\main_processor|dat|B|q\(30) & (((!\main_processor|control_unit|Mux7~0_combout\ & !\main_processor|control_unit|Im_Mux2[1]~1_combout\)) # (!\main_processor|control_unit|ALU_op[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Mux7~0_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datac => \main_processor|control_unit|Im_Mux2[1]~1_combout\,
	datad => \main_processor|dat|B|q\(30),
	combout => \main_processor|dat|MuxIm2|Mux1~0_combout\);

-- Location: LCCOMB_X57_Y23_N28
\main_processor|dat|MuxIm2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux2~0_combout\ = (\main_processor|dat|B|q\(29) & (((!\main_processor|control_unit|Im_Mux2[1]~1_combout\ & !\main_processor|control_unit|Mux7~0_combout\)) # (!\main_processor|control_unit|ALU_op[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux2[1]~1_combout\,
	datab => \main_processor|dat|B|q\(29),
	datac => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datad => \main_processor|control_unit|Mux7~0_combout\,
	combout => \main_processor|dat|MuxIm2|Mux2~0_combout\);

-- Location: LCCOMB_X55_Y24_N8
\main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux2~0_combout\ & ((\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|IR|q\(13))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- ((\main_processor|dat|A|q\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux2~0_combout\,
	datab => \main_processor|dat|IR|q\(13),
	datac => \main_processor|control_unit|Im_Mux1~0_combout\,
	datad => \main_processor|dat|A|q\(29),
	combout => \main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~0_combout\);

-- Location: LCCOMB_X55_Y24_N26
\main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~1_combout\ = (\main_processor|dat|MuxIm2|Mux2~0_combout\) # ((\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|IR|q\(13))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- ((\main_processor|dat|A|q\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux2~0_combout\,
	datab => \main_processor|dat|IR|q\(13),
	datac => \main_processor|control_unit|Im_Mux1~0_combout\,
	datad => \main_processor|dat|A|q\(29),
	combout => \main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~1_combout\);

-- Location: LCCOMB_X55_Y24_N12
\main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~2_combout\ = (\main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~1_combout\ & ((\main_processor|dat|MuxIm1|f[28]~28_combout\ & ((\main_processor|dat|MuxIm2|Mux3~0_combout\) # 
-- (\main_processor|dat|ALU0|add|cycle1|cycle2|cycle3|Cout~0_combout\))) # (!\main_processor|dat|MuxIm1|f[28]~28_combout\ & (\main_processor|dat|MuxIm2|Mux3~0_combout\ & \main_processor|dat|ALU0|add|cycle1|cycle2|cycle3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[28]~28_combout\,
	datab => \main_processor|dat|MuxIm2|Mux3~0_combout\,
	datac => \main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~1_combout\,
	datad => \main_processor|dat|ALU0|add|cycle1|cycle2|cycle3|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~2_combout\);

-- Location: LCCOMB_X55_Y24_N6
\main_processor|dat|ALU0|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux1~2_combout\ = \main_processor|dat|MuxIm1|f[30]~30_combout\ $ (((\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~0_combout\,
	datac => \main_processor|dat|MuxIm1|f[30]~30_combout\,
	datad => \main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~2_combout\,
	combout => \main_processor|dat|ALU0|Mux1~2_combout\);

-- Location: LCCOMB_X55_Y24_N28
\main_processor|dat|ALU0|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux1~3_combout\ = (\main_processor|dat|MuxIm2|Mux1~0_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # (\main_processor|control_unit|ALU_op[1]~4_combout\ $ (\main_processor|dat|ALU0|Mux1~2_combout\)))) # 
-- (!\main_processor|dat|MuxIm2|Mux1~0_combout\ & (\main_processor|dat|ALU0|Mux1~2_combout\ & (\main_processor|control_unit|ALU_op[0]~6_combout\ $ (\main_processor|control_unit|ALU_op[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux1~0_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datad => \main_processor|dat|ALU0|Mux1~2_combout\,
	combout => \main_processor|dat|ALU0|Mux1~3_combout\);

-- Location: LCCOMB_X56_Y21_N22
\main_processor|dat|ALU0|Mux31~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux31~9_combout\ = (\main_processor|control_unit|ALU_op[0]~2_combout\ & (\main_processor|control_unit|ALU_op[0]~5_combout\ & (\main_processor|dat|MuxIm1|f[31]~31_combout\ & !\main_processor|control_unit|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~2_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~5_combout\,
	datac => \main_processor|dat|MuxIm1|f[31]~31_combout\,
	datad => \main_processor|control_unit|Mux4~0_combout\,
	combout => \main_processor|dat|ALU0|Mux31~9_combout\);

-- Location: LCCOMB_X56_Y21_N12
\main_processor|dat|ALU0|Mux31~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux31~7_combout\ = (\main_processor|dat|MuxIm2|Mux0~0_combout\) # ((\main_processor|dat|MuxIm1|f[31]~31_combout\ & ((\main_processor|control_unit|Mux4~0_combout\) # (!\main_processor|control_unit|ALU_op[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[31]~31_combout\,
	datab => \main_processor|control_unit|Mux4~0_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datad => \main_processor|dat|MuxIm2|Mux0~0_combout\,
	combout => \main_processor|dat|ALU0|Mux31~7_combout\);

-- Location: LCCOMB_X55_Y24_N4
\main_processor|dat|ALU0|add|cycle1|cycle3|cycle2|Cout~0_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle1|cycle3|cycle2|Cout~0_Duplicate_2\ = (\main_processor|dat|MuxIm2|Mux1~0_combout\ & ((\main_processor|dat|MuxIm1|f[30]~30_combout\) # ((\main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~2_combout\)))) # (!\main_processor|dat|MuxIm2|Mux1~0_combout\ & (\main_processor|dat|MuxIm1|f[30]~30_combout\ & ((\main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux1~0_combout\,
	datab => \main_processor|dat|MuxIm1|f[30]~30_combout\,
	datac => \main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~0_combout\,
	datad => \main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~2_combout\,
	combout => \main_processor|dat|ALU0|add|cycle1|cycle3|cycle2|Cout~0_Duplicate_2\);

-- Location: LCCOMB_X56_Y21_N18
\main_processor|dat|ALU0|Mux31~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux31~8_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & (\main_processor|dat|MuxIm2|Mux0~0_combout\ $ (\main_processor|dat|MuxIm1|f[31]~31_combout\ $ 
-- (\main_processor|dat|ALU0|add|cycle1|cycle3|cycle2|Cout~0_Duplicate_2\)))) # (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (\main_processor|dat|MuxIm2|Mux0~0_combout\ & (\main_processor|dat|MuxIm1|f[31]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|dat|MuxIm2|Mux0~0_combout\,
	datac => \main_processor|dat|MuxIm1|f[31]~31_combout\,
	datad => \main_processor|dat|ALU0|add|cycle1|cycle3|cycle2|Cout~0_Duplicate_2\,
	combout => \main_processor|dat|ALU0|Mux31~8_combout\);

-- Location: LCCOMB_X56_Y21_N0
\main_processor|dat|ALU0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux0~0_combout\ = (\main_processor|control_unit|ALU_op[2]~3_combout\ & (((\main_processor|control_unit|ALU_op[0]~6_combout\)))) # (!\main_processor|control_unit|ALU_op[2]~3_combout\ & 
-- ((\main_processor|control_unit|ALU_op[0]~6_combout\ & (\main_processor|dat|ALU0|Mux31~7_combout\)) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|ALU0|Mux31~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux31~7_combout\,
	datab => \main_processor|control_unit|ALU_op[2]~3_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|ALU0|Mux31~8_combout\,
	combout => \main_processor|dat|ALU0|Mux0~0_combout\);

-- Location: LCCOMB_X56_Y21_N24
\main_processor|dat|ALU0|Mux0~1_Duplicate_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux0~1_Duplicate_3_Duplicate\ = (\main_processor|control_unit|ALU_op[2]~3_combout\ & ((\main_processor|dat|ALU0|Mux0~0_combout\ & (\main_processor|dat|ALU0|Mux31~9_combout\)) # (!\main_processor|dat|ALU0|Mux0~0_combout\ & 
-- ((\main_processor|dat|ALU0|Mux31~6_Duplicate_11\))))) # (!\main_processor|control_unit|ALU_op[2]~3_combout\ & (((\main_processor|dat|ALU0|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux31~9_combout\,
	datab => \main_processor|dat|ALU0|Mux31~6_Duplicate_11\,
	datac => \main_processor|control_unit|ALU_op[2]~3_combout\,
	datad => \main_processor|dat|ALU0|Mux0~0_combout\,
	combout => \main_processor|dat|ALU0|Mux0~1_Duplicate_3_Duplicate\);

-- Location: LCCOMB_X56_Y21_N20
\main_processor|dat|MuxB|f[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[31]~31_combout\ = (!\main_processor|control_unit|B_Mux~1_combout\ & ((\main_processor|dat|MuxData|Mux0~0_combout\) # ((\main_processor|dat|MuxData|Mux31~2_combout\ & \main_processor|dat|ALU0|Mux0~1_Duplicate_3_Duplicate\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|B_Mux~1_combout\,
	datab => \main_processor|dat|MuxData|Mux31~2_combout\,
	datac => \main_processor|dat|MuxData|Mux0~0_combout\,
	datad => \main_processor|dat|ALU0|Mux0~1_Duplicate_3_Duplicate\,
	combout => \main_processor|dat|MuxB|f[31]~31_combout\);

-- Location: FF_X56_Y21_N21
\main_processor|dat|B|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[31]~31_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(31));

-- Location: LCCOMB_X56_Y21_N28
\main_processor|dat|MuxIm2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux0~0_combout\ = (\main_processor|dat|B|q\(31) & (((!\main_processor|control_unit|Mux7~0_combout\ & !\main_processor|control_unit|Im_Mux2[1]~1_combout\)) # (!\main_processor|control_unit|ALU_op[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Mux7~0_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datac => \main_processor|control_unit|Im_Mux2[1]~1_combout\,
	datad => \main_processor|dat|B|q\(31),
	combout => \main_processor|dat|MuxIm2|Mux0~0_combout\);

-- Location: LCCOMB_X56_Y20_N2
\main_processor|dat|ALU0|sub|cycle1|cycle3|cycle3|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle3|s~0_combout\ = \main_processor|dat|MuxIm2|Mux0~0_combout\ $ (((\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|IR|q\(15))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- ((\main_processor|dat|A|q\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(15),
	datab => \main_processor|dat|A|q\(31),
	datac => \main_processor|dat|MuxIm2|Mux0~0_combout\,
	datad => \main_processor|control_unit|Im_Mux1~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle3|s~0_combout\);

-- Location: LCCOMB_X56_Y23_N24
\main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|Cout~0_combout\ = (!\main_processor|dat|MuxIm2|Mux3~0_combout\ & ((\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|IR|q\(12))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- ((\main_processor|dat|A|q\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(12),
	datab => \main_processor|dat|MuxIm2|Mux3~0_combout\,
	datac => \main_processor|control_unit|Im_Mux1~0_combout\,
	datad => \main_processor|dat|A|q\(28),
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|Cout~0_combout\);

-- Location: LCCOMB_X56_Y23_N14
\main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|Cout~1_combout\ = ((\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|IR|q\(12))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & ((\main_processor|dat|A|q\(28))))) # 
-- (!\main_processor|dat|MuxIm2|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(12),
	datab => \main_processor|dat|MuxIm2|Mux3~0_combout\,
	datac => \main_processor|control_unit|Im_Mux1~0_combout\,
	datad => \main_processor|dat|A|q\(28),
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|Cout~1_combout\);

-- Location: LCCOMB_X56_Y24_N30
\main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|Cout~2_combout\ = (\main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|Cout~1_combout\ & ((\main_processor|dat|MuxIm2|Mux4~0_combout\ & (\main_processor|dat|MuxIm1|f[27]~27_combout\ & 
-- \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle2|Cout~0_combout\)) # (!\main_processor|dat|MuxIm2|Mux4~0_combout\ & ((\main_processor|dat|MuxIm1|f[27]~27_combout\) # (\main_processor|dat|ALU0|sub|cycle1|cycle2|cycle2|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|Cout~1_combout\,
	datab => \main_processor|dat|MuxIm2|Mux4~0_combout\,
	datac => \main_processor|dat|MuxIm1|f[27]~27_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle2|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|Cout~2_combout\);

-- Location: LCCOMB_X55_Y23_N2
\main_processor|dat|ALU0|sub|cycle1|cycle3|cycle1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle1|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux2~0_combout\ & (\main_processor|dat|MuxIm1|f[29]~29_combout\ & ((\main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|Cout~2_combout\)))) # (!\main_processor|dat|MuxIm2|Mux2~0_combout\ & ((\main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|Cout~0_combout\) # 
-- ((\main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|Cout~2_combout\) # (\main_processor|dat|MuxIm1|f[29]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|Cout~0_combout\,
	datab => \main_processor|dat|MuxIm2|Mux2~0_combout\,
	datac => \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|Cout~2_combout\,
	datad => \main_processor|dat|MuxIm1|f[29]~29_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle1|Cout~0_combout\);

-- Location: LCCOMB_X55_Y23_N24
\main_processor|dat|ALU0|sub|cycle1|cycle3|cycle2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle2|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux1~0_combout\ & (\main_processor|dat|MuxIm1|f[30]~30_combout\ & \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle1|Cout~0_combout\)) # 
-- (!\main_processor|dat|MuxIm2|Mux1~0_combout\ & ((\main_processor|dat|MuxIm1|f[30]~30_combout\) # (\main_processor|dat|ALU0|sub|cycle1|cycle3|cycle1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|MuxIm2|Mux1~0_combout\,
	datac => \main_processor|dat|MuxIm1|f[30]~30_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle1|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle2|Cout~0_combout\);

-- Location: LCCOMB_X55_Y23_N26
\main_processor|dat|ALU0|Mux31~6_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux31~6_Duplicate_11\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & (\main_processor|dat|ALU0|sub|cycle1|cycle3|cycle3|s~0_combout\ $ (((!\main_processor|dat|ALU0|sub|cycle1|cycle3|cycle2|Cout~0_combout\))))) # 
-- (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (((\main_processor|dat|MuxIm1|f[30]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle3|s~0_combout\,
	datab => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|dat|MuxIm1|f[30]~30_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle2|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|Mux31~6_Duplicate_11\);

-- Location: LCCOMB_X56_Y23_N16
\main_processor|dat|ALU0|Mux0~1_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux0~1_Duplicate_3\ = (\main_processor|control_unit|ALU_op[2]~3_combout\ & ((\main_processor|dat|ALU0|Mux0~0_combout\ & (\main_processor|dat|ALU0|Mux31~9_combout\)) # (!\main_processor|dat|ALU0|Mux0~0_combout\ & 
-- ((\main_processor|dat|ALU0|Mux31~6_Duplicate_11\))))) # (!\main_processor|control_unit|ALU_op[2]~3_combout\ & (((\main_processor|dat|ALU0|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[2]~3_combout\,
	datab => \main_processor|dat|ALU0|Mux31~9_combout\,
	datac => \main_processor|dat|ALU0|Mux31~6_Duplicate_11\,
	datad => \main_processor|dat|ALU0|Mux0~0_combout\,
	combout => \main_processor|dat|ALU0|Mux0~1_Duplicate_3\);

-- Location: LCCOMB_X56_Y23_N8
\main_processor|dat|MuxA|f[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[31]~31_combout\ = (!\main_processor|control_unit|A_Mux~0_combout\ & ((\main_processor|dat|MuxData|Mux0~0_combout\) # ((\main_processor|dat|MuxData|Mux31~2_combout\ & \main_processor|dat|ALU0|Mux0~1_Duplicate_3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|A_Mux~0_combout\,
	datab => \main_processor|dat|MuxData|Mux31~2_combout\,
	datac => \main_processor|dat|MuxData|Mux0~0_combout\,
	datad => \main_processor|dat|ALU0|Mux0~1_Duplicate_3\,
	combout => \main_processor|dat|MuxA|f[31]~31_combout\);

-- Location: FF_X56_Y23_N9
\main_processor|dat|A|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[31]~31_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(31));

-- Location: LCCOMB_X56_Y20_N0
\main_processor|dat|MuxIm1|f[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[31]~31_combout\ = (\main_processor|control_unit|Im_Mux1~1_combout\ & ((\main_processor|control_unit|ALU_op[0]~2_combout\ & (\main_processor|dat|IR|q\(15))) # (!\main_processor|control_unit|ALU_op[0]~2_combout\ & 
-- ((\main_processor|dat|A|q\(31)))))) # (!\main_processor|control_unit|Im_Mux1~1_combout\ & (((\main_processor|dat|A|q\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(15),
	datab => \main_processor|control_unit|Im_Mux1~1_combout\,
	datac => \main_processor|dat|A|q\(31),
	datad => \main_processor|control_unit|ALU_op[0]~2_combout\,
	combout => \main_processor|dat|MuxIm1|f[31]~31_combout\);

-- Location: LCCOMB_X55_Y23_N18
\main_processor|dat|ALU0|sub|cycle1|cycle3|cycle2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle2|s~combout\ = \main_processor|dat|MuxIm2|Mux1~0_combout\ $ (\main_processor|dat|MuxIm1|f[30]~30_combout\ $ (\main_processor|dat|ALU0|sub|cycle1|cycle3|cycle1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|MuxIm2|Mux1~0_combout\,
	datac => \main_processor|dat|MuxIm1|f[30]~30_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle1|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle2|s~combout\);

-- Location: LCCOMB_X55_Y23_N16
\main_processor|dat|ALU0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux1~0_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & (((\main_processor|control_unit|ALU_op[1]~4_combout\)))) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & 
-- ((\main_processor|control_unit|ALU_op[1]~4_combout\ & ((!\main_processor|dat|ALU0|sub|cycle1|cycle3|cycle2|s~combout\))) # (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (\main_processor|dat|MuxIm1|f[29]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datab => \main_processor|dat|MuxIm1|f[29]~29_combout\,
	datac => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle2|s~combout\,
	combout => \main_processor|dat|ALU0|Mux1~0_combout\);

-- Location: LCCOMB_X55_Y23_N30
\main_processor|dat|ALU0|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux1~1_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|ALU0|Mux1~0_combout\ & ((\main_processor|dat|MuxIm1|f[30]~30_combout\))) # (!\main_processor|dat|ALU0|Mux1~0_combout\ & 
-- (\main_processor|dat|MuxIm1|f[31]~31_combout\)))) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (((\main_processor|dat|ALU0|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datab => \main_processor|dat|MuxIm1|f[31]~31_combout\,
	datac => \main_processor|dat|MuxIm1|f[30]~30_combout\,
	datad => \main_processor|dat|ALU0|Mux1~0_combout\,
	combout => \main_processor|dat|ALU0|Mux1~1_combout\);

-- Location: LCCOMB_X56_Y22_N10
\main_processor|dat|ALU0|Mux1~4_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux1~4_Duplicate_6\ = (\main_processor|control_unit|ALU_op[0]~8_combout\ & ((\main_processor|control_unit|Mux3~0_combout\ & ((\main_processor|dat|ALU0|Mux1~1_combout\))) # (!\main_processor|control_unit|Mux3~0_combout\ & 
-- (\main_processor|dat|ALU0|Mux1~3_combout\)))) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & (((\main_processor|dat|ALU0|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datab => \main_processor|control_unit|Mux3~0_combout\,
	datac => \main_processor|dat|ALU0|Mux1~3_combout\,
	datad => \main_processor|dat|ALU0|Mux1~1_combout\,
	combout => \main_processor|dat|ALU0|Mux1~4_Duplicate_6\);

-- Location: LCCOMB_X55_Y23_N6
\main_processor|dat|MuxB|f[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[30]~30_combout\ = (!\main_processor|control_unit|B_Mux~1_combout\ & ((\main_processor|dat|MuxData|Mux1~0_combout\) # ((\main_processor|dat|MuxData|Mux31~2_combout\ & \main_processor|dat|ALU0|Mux1~4_Duplicate_6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux1~0_combout\,
	datab => \main_processor|control_unit|B_Mux~1_combout\,
	datac => \main_processor|dat|MuxData|Mux31~2_combout\,
	datad => \main_processor|dat|ALU0|Mux1~4_Duplicate_6\,
	combout => \main_processor|dat|MuxB|f[30]~30_combout\);

-- Location: FF_X55_Y23_N7
\main_processor|dat|B|q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[30]~30_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(30));

-- Location: LCCOMB_X55_Y23_N8
\main_processor|dat|MuxReg|f[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[30]~30_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|B|q\(30))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|A|q\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|B|q\(30),
	datac => \main_processor|dat|A|q\(30),
	datad => \main_processor|control_unit|Reg_Mux~1_combout\,
	combout => \main_processor|dat|MuxReg|f[30]~30_combout\);

-- Location: LCCOMB_X56_Y23_N22
\main_processor|dat|MuxReg|f[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[31]~31_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|B|q\(31))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|A|q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|control_unit|Reg_Mux~1_combout\,
	datac => \main_processor|dat|B|q\(31),
	datad => \main_processor|dat|A|q\(31),
	combout => \main_processor|dat|MuxReg|f[31]~31_combout\);

-- Location: M9K_X51_Y24_N0
\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
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
	logical_ram_name => "cpu1:main_processor|datapath:dat|data_memory:DataMemory|altsyncram:memory_rtl_0|altsyncram_s8j1:auto_generated|ALTSYNCRAM",
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
	portawe => \main_processor|dat|DataMemory|memory~41_combout\,
	portbre => VCC,
	portbaddrstall => \main_processor|control_unit|ALT_INV_Ld_IR~0_wirecell_combout\,
	clk0 => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	clk1 => \cpuClk~inputclkctrl_outclk\,
	ena0 => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0~RAM_ENABLE_AND_combout\,
	portadatain => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X52_Y23_N6
\main_processor|dat|DataMemory|data_out~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~26_combout\ = (\main_processor|control_unit|en~q\ & (\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a26\ & !\main_processor|control_unit|wen~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|en~q\,
	datac => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a26\,
	datad => \main_processor|control_unit|wen~q\,
	combout => \main_processor|dat|DataMemory|data_out~26_combout\);

-- Location: FF_X53_Y23_N15
\main_processor|dat|DataMemory|data_out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|DataMemory|data_out~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(26));

-- Location: LCCOMB_X54_Y23_N16
\main_processor|dat|MuxData|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux5~0_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_processor|dat|DataMemory|data_out\(26)))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_memory|altsyncram_component|auto_generated|q_a\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datab => \main_memory|altsyncram_component|auto_generated|q_a\(26),
	datac => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datad => \main_processor|dat|DataMemory|data_out\(26),
	combout => \main_processor|dat|MuxData|Mux5~0_combout\);

-- Location: LCCOMB_X55_Y20_N18
\main_processor|dat|ALU0|Mux5~4_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux5~4_Duplicate_6\ = (\main_processor|control_unit|ALU_op[0]~8_combout\ & ((\main_processor|control_unit|Mux3~0_combout\ & ((\main_processor|dat|ALU0|Mux5~1_combout\))) # (!\main_processor|control_unit|Mux3~0_combout\ & 
-- (\main_processor|dat|ALU0|Mux5~3_combout\)))) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & (((\main_processor|dat|ALU0|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datab => \main_processor|control_unit|Mux3~0_combout\,
	datac => \main_processor|dat|ALU0|Mux5~3_combout\,
	datad => \main_processor|dat|ALU0|Mux5~1_combout\,
	combout => \main_processor|dat|ALU0|Mux5~4_Duplicate_6\);

-- Location: LCCOMB_X55_Y20_N4
\main_processor|dat|MuxA|f[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[26]~26_combout\ = (!\main_processor|control_unit|A_Mux~0_combout\ & ((\main_processor|dat|MuxData|Mux5~0_combout\) # ((\main_processor|dat|MuxData|Mux31~2_combout\ & \main_processor|dat|ALU0|Mux5~4_Duplicate_6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|A_Mux~0_combout\,
	datab => \main_processor|dat|MuxData|Mux5~0_combout\,
	datac => \main_processor|dat|MuxData|Mux31~2_combout\,
	datad => \main_processor|dat|ALU0|Mux5~4_Duplicate_6\,
	combout => \main_processor|dat|MuxA|f[26]~26_combout\);

-- Location: FF_X55_Y20_N5
\main_processor|dat|A|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[26]~26_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(26));

-- Location: LCCOMB_X57_Y23_N8
\main_processor|dat|MuxIm1|f[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[26]~26_combout\ = (\main_processor|control_unit|ALU_op[0]~2_combout\ & ((\main_processor|control_unit|Im_Mux1~1_combout\ & (\main_processor|dat|IR|q\(10))) # (!\main_processor|control_unit|Im_Mux1~1_combout\ & 
-- ((\main_processor|dat|A|q\(26)))))) # (!\main_processor|control_unit|ALU_op[0]~2_combout\ & (((\main_processor|dat|A|q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(10),
	datab => \main_processor|control_unit|ALU_op[0]~2_combout\,
	datac => \main_processor|dat|A|q\(26),
	datad => \main_processor|control_unit|Im_Mux1~1_combout\,
	combout => \main_processor|dat|MuxIm1|f[26]~26_combout\);

-- Location: LCCOMB_X55_Y26_N4
\main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|s~0_combout\ = \main_processor|dat|MuxIm2|Mux6~0_combout\ $ (((\main_processor|control_unit|Im_Mux1~0_combout\ & ((\main_processor|dat|IR|q\(9)))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- (\main_processor|dat|A|q\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|A|q\(25),
	datac => \main_processor|dat|IR|q\(9),
	datad => \main_processor|dat|MuxIm2|Mux6~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|s~0_combout\);

-- Location: LCCOMB_X57_Y24_N24
\main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|s~combout\ = \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|s~0_combout\ $ (((\main_processor|dat|MuxIm1|f[24]~24_combout\ & ((\main_processor|dat|ALU0|sub|cycle1|cycle1|cycle3|Cout~0_combout\) # 
-- (!\main_processor|dat|MuxIm2|Mux7~0_combout\))) # (!\main_processor|dat|MuxIm1|f[24]~24_combout\ & (!\main_processor|dat|MuxIm2|Mux7~0_combout\ & \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[24]~24_combout\,
	datab => \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|s~0_combout\,
	datac => \main_processor|dat|MuxIm2|Mux7~0_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle3|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|s~combout\);

-- Location: LCCOMB_X57_Y24_N2
\main_processor|dat|ALU0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux6~0_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & (((\main_processor|control_unit|ALU_op[0]~6_combout\) # (!\main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|s~combout\)))) # 
-- (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (\main_processor|dat|MuxIm1|f[24]~24_combout\ & (!\main_processor|control_unit|ALU_op[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[24]~24_combout\,
	datab => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle1|s~combout\,
	combout => \main_processor|dat|ALU0|Mux6~0_combout\);

-- Location: LCCOMB_X57_Y24_N4
\main_processor|dat|ALU0|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux6~1_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|ALU0|Mux6~0_combout\ & ((\main_processor|dat|MuxIm1|f[25]~25_combout\))) # (!\main_processor|dat|ALU0|Mux6~0_combout\ & 
-- (\main_processor|dat|MuxIm1|f[26]~26_combout\)))) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (((\main_processor|dat|ALU0|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[26]~26_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|MuxIm1|f[25]~25_combout\,
	datad => \main_processor|dat|ALU0|Mux6~0_combout\,
	combout => \main_processor|dat|ALU0|Mux6~1_combout\);

-- Location: LCCOMB_X57_Y24_N18
\main_processor|dat|ALU0|add|cycle1|cycle2|cycle0|Cout~0_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle1|cycle2|cycle0|Cout~0_Duplicate_2\ = (\main_processor|dat|MuxIm1|f[24]~24_combout\ & ((\main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~0_combout\) # 
-- ((\main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~2_combout\) # (\main_processor|dat|MuxIm2|Mux7~0_combout\)))) # (!\main_processor|dat|MuxIm1|f[24]~24_combout\ & (\main_processor|dat|MuxIm2|Mux7~0_combout\ & 
-- ((\main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~0_combout\) # (\main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[24]~24_combout\,
	datab => \main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~0_combout\,
	datac => \main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|Cout~2_combout\,
	datad => \main_processor|dat|MuxIm2|Mux7~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle1|cycle2|cycle0|Cout~0_Duplicate_2\);

-- Location: LCCOMB_X57_Y24_N10
\main_processor|dat|ALU0|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux6~2_combout\ = \main_processor|dat|MuxIm1|f[25]~25_combout\ $ (((\main_processor|control_unit|ALU_op[1]~4_combout\ & \main_processor|dat|ALU0|add|cycle1|cycle2|cycle0|Cout~0_Duplicate_2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|dat|MuxIm1|f[25]~25_combout\,
	datad => \main_processor|dat|ALU0|add|cycle1|cycle2|cycle0|Cout~0_Duplicate_2\,
	combout => \main_processor|dat|ALU0|Mux6~2_combout\);

-- Location: LCCOMB_X57_Y24_N12
\main_processor|dat|ALU0|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux6~3_combout\ = (\main_processor|dat|MuxIm2|Mux6~0_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # (\main_processor|control_unit|ALU_op[1]~4_combout\ $ (\main_processor|dat|ALU0|Mux6~2_combout\)))) # 
-- (!\main_processor|dat|MuxIm2|Mux6~0_combout\ & (\main_processor|dat|ALU0|Mux6~2_combout\ & (\main_processor|control_unit|ALU_op[0]~6_combout\ $ (\main_processor|control_unit|ALU_op[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datab => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|dat|MuxIm2|Mux6~0_combout\,
	datad => \main_processor|dat|ALU0|Mux6~2_combout\,
	combout => \main_processor|dat|ALU0|Mux6~3_combout\);

-- Location: LCCOMB_X57_Y24_N30
\main_processor|dat|ALU0|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux6~4_combout\ = (\main_processor|control_unit|ALU_op[0]~8_combout\ & ((\main_processor|control_unit|Mux3~0_combout\ & (\main_processor|dat|ALU0|Mux6~1_combout\)) # (!\main_processor|control_unit|Mux3~0_combout\ & 
-- ((\main_processor|dat|ALU0|Mux6~3_combout\))))) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & (((\main_processor|dat|ALU0|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datab => \main_processor|control_unit|Mux3~0_combout\,
	datac => \main_processor|dat|ALU0|Mux6~1_combout\,
	datad => \main_processor|dat|ALU0|Mux6~3_combout\,
	combout => \main_processor|dat|ALU0|Mux6~4_combout\);

-- Location: LCCOMB_X56_Y24_N12
\main_processor|dat|MuxA|f[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[25]~25_combout\ = (!\main_processor|control_unit|A_Mux~0_combout\ & ((\main_processor|dat|MuxData|Mux6~0_combout\) # ((\main_processor|dat|MuxData|Mux31~2_combout\ & \main_processor|dat|ALU0|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux31~2_combout\,
	datab => \main_processor|control_unit|A_Mux~0_combout\,
	datac => \main_processor|dat|MuxData|Mux6~0_combout\,
	datad => \main_processor|dat|ALU0|Mux6~4_combout\,
	combout => \main_processor|dat|MuxA|f[25]~25_combout\);

-- Location: FF_X56_Y24_N13
\main_processor|dat|A|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[25]~25_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(25));

-- Location: LCCOMB_X55_Y26_N24
\main_processor|dat|MuxIm1|f[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[25]~25_combout\ = (\main_processor|control_unit|ALU_op[0]~2_combout\ & ((\main_processor|control_unit|Im_Mux1~1_combout\ & (\main_processor|dat|IR|q\(9))) # (!\main_processor|control_unit|Im_Mux1~1_combout\ & 
-- ((\main_processor|dat|A|q\(25)))))) # (!\main_processor|control_unit|ALU_op[0]~2_combout\ & (((\main_processor|dat|A|q\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(9),
	datab => \main_processor|control_unit|ALU_op[0]~2_combout\,
	datac => \main_processor|dat|A|q\(25),
	datad => \main_processor|control_unit|Im_Mux1~1_combout\,
	combout => \main_processor|dat|MuxIm1|f[25]~25_combout\);

-- Location: LCCOMB_X58_Y24_N0
\main_processor|dat|ALU0|sub|cycle1|cycle2|cycle0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle0|s~combout\ = \main_processor|dat|MuxIm2|Mux7~0_combout\ $ (\main_processor|dat|MuxIm1|f[24]~24_combout\ $ (\main_processor|dat|ALU0|sub|cycle1|cycle1|cycle3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|MuxIm2|Mux7~0_combout\,
	datac => \main_processor|dat|MuxIm1|f[24]~24_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle3|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle0|s~combout\);

-- Location: LCCOMB_X58_Y24_N22
\main_processor|dat|ALU0|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux7~0_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # ((!\main_processor|dat|ALU0|sub|cycle1|cycle2|cycle0|s~combout\)))) # 
-- (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (\main_processor|dat|MuxIm1|f[23]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|MuxIm1|f[23]~23_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle2|cycle0|s~combout\,
	combout => \main_processor|dat|ALU0|Mux7~0_combout\);

-- Location: LCCOMB_X57_Y24_N20
\main_processor|dat|ALU0|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux7~1_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|ALU0|Mux7~0_combout\ & (\main_processor|dat|MuxIm1|f[24]~24_combout\)) # (!\main_processor|dat|ALU0|Mux7~0_combout\ & 
-- ((\main_processor|dat|MuxIm1|f[25]~25_combout\))))) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (((\main_processor|dat|ALU0|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[24]~24_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|MuxIm1|f[25]~25_combout\,
	datad => \main_processor|dat|ALU0|Mux7~0_combout\,
	combout => \main_processor|dat|ALU0|Mux7~1_combout\);

-- Location: LCCOMB_X57_Y24_N22
\main_processor|dat|ALU0|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux7~4_combout\ = (\main_processor|control_unit|ALU_op[0]~8_combout\ & ((\main_processor|control_unit|Mux3~0_combout\ & ((\main_processor|dat|ALU0|Mux7~1_combout\))) # (!\main_processor|control_unit|Mux3~0_combout\ & 
-- (\main_processor|dat|ALU0|Mux7~3_combout\)))) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & (((\main_processor|dat|ALU0|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datab => \main_processor|control_unit|Mux3~0_combout\,
	datac => \main_processor|dat|ALU0|Mux7~3_combout\,
	datad => \main_processor|dat|ALU0|Mux7~1_combout\,
	combout => \main_processor|dat|ALU0|Mux7~4_combout\);

-- Location: LCCOMB_X57_Y24_N0
\main_processor|dat|MuxB|f[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[24]~24_combout\ = (!\main_processor|control_unit|B_Mux~1_combout\ & ((\main_processor|dat|MuxData|Mux7~0_combout\) # ((\main_processor|dat|MuxData|Mux31~2_combout\ & \main_processor|dat|ALU0|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|B_Mux~1_combout\,
	datab => \main_processor|dat|MuxData|Mux31~2_combout\,
	datac => \main_processor|dat|ALU0|Mux7~4_combout\,
	datad => \main_processor|dat|MuxData|Mux7~0_combout\,
	combout => \main_processor|dat|MuxB|f[24]~24_combout\);

-- Location: FF_X57_Y24_N1
\main_processor|dat|B|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[24]~24_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(24));

-- Location: LCCOMB_X58_Y23_N30
\main_processor|dat|MuxReg|f[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[24]~24_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|B|q\(24))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|A|q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Reg_Mux~1_combout\,
	datac => \main_processor|dat|B|q\(24),
	datad => \main_processor|dat|A|q\(24),
	combout => \main_processor|dat|MuxReg|f[24]~24_combout\);

-- Location: LCCOMB_X52_Y23_N18
\main_processor|dat|DataMemory|data_out~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~30_combout\ = (\main_processor|control_unit|en~q\ & (!\main_processor|control_unit|wen~q\ & \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|en~q\,
	datab => \main_processor|control_unit|wen~q\,
	datac => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a30\,
	combout => \main_processor|dat|DataMemory|data_out~30_combout\);

-- Location: FF_X52_Y23_N19
\main_processor|dat|DataMemory|data_out[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|DataMemory|data_out~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(30));

-- Location: LCCOMB_X52_Y23_N20
\main_processor|dat|MuxData|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux1~0_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_processor|dat|DataMemory|data_out\(30)))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_memory|altsyncram_component|auto_generated|q_a\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datab => \main_memory|altsyncram_component|auto_generated|q_a\(30),
	datac => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datad => \main_processor|dat|DataMemory|data_out\(30),
	combout => \main_processor|dat|MuxData|Mux1~0_combout\);

-- Location: LCCOMB_X56_Y22_N12
\main_processor|dat|MuxA|f[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[30]~30_combout\ = (!\main_processor|control_unit|A_Mux~0_combout\ & ((\main_processor|dat|MuxData|Mux1~0_combout\) # ((\main_processor|dat|MuxData|Mux31~2_combout\ & \main_processor|dat|ALU0|Mux1~4_Duplicate_6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux31~2_combout\,
	datab => \main_processor|dat|MuxData|Mux1~0_combout\,
	datac => \main_processor|control_unit|A_Mux~0_combout\,
	datad => \main_processor|dat|ALU0|Mux1~4_Duplicate_6\,
	combout => \main_processor|dat|MuxA|f[30]~30_combout\);

-- Location: FF_X56_Y22_N13
\main_processor|dat|A|q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[30]~30_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(30));

-- Location: LCCOMB_X55_Y23_N22
\main_processor|dat|MuxIm1|f[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[30]~30_combout\ = (\main_processor|control_unit|ALU_op[0]~2_combout\ & ((\main_processor|control_unit|Im_Mux1~1_combout\ & (\main_processor|dat|IR|q\(14))) # (!\main_processor|control_unit|Im_Mux1~1_combout\ & 
-- ((\main_processor|dat|A|q\(30)))))) # (!\main_processor|control_unit|ALU_op[0]~2_combout\ & (((\main_processor|dat|A|q\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(14),
	datab => \main_processor|control_unit|ALU_op[0]~2_combout\,
	datac => \main_processor|dat|A|q\(30),
	datad => \main_processor|control_unit|Im_Mux1~1_combout\,
	combout => \main_processor|dat|MuxIm1|f[30]~30_combout\);

-- Location: LCCOMB_X55_Y23_N12
\main_processor|dat|ALU0|sub|cycle1|cycle3|cycle1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle1|s~combout\ = \main_processor|dat|MuxIm2|Mux2~0_combout\ $ (\main_processor|dat|MuxIm1|f[29]~29_combout\ $ (((\main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|Cout~0_combout\,
	datab => \main_processor|dat|MuxIm2|Mux2~0_combout\,
	datac => \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle0|Cout~2_combout\,
	datad => \main_processor|dat|MuxIm1|f[29]~29_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle1|s~combout\);

-- Location: LCCOMB_X55_Y23_N10
\main_processor|dat|ALU0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux2~0_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & (\main_processor|control_unit|ALU_op[1]~4_combout\)) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & 
-- ((\main_processor|control_unit|ALU_op[1]~4_combout\ & ((!\main_processor|dat|ALU0|sub|cycle1|cycle3|cycle1|s~combout\))) # (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (\main_processor|dat|MuxIm1|f[28]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datab => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|dat|MuxIm1|f[28]~28_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle1|s~combout\,
	combout => \main_processor|dat|ALU0|Mux2~0_combout\);

-- Location: LCCOMB_X55_Y23_N4
\main_processor|dat|ALU0|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux2~1_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|ALU0|Mux2~0_combout\ & (\main_processor|dat|MuxIm1|f[29]~29_combout\)) # (!\main_processor|dat|ALU0|Mux2~0_combout\ & 
-- ((\main_processor|dat|MuxIm1|f[30]~30_combout\))))) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (((\main_processor|dat|ALU0|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datab => \main_processor|dat|MuxIm1|f[29]~29_combout\,
	datac => \main_processor|dat|MuxIm1|f[30]~30_combout\,
	datad => \main_processor|dat|ALU0|Mux2~0_combout\,
	combout => \main_processor|dat|ALU0|Mux2~1_combout\);

-- Location: LCCOMB_X58_Y23_N4
\main_processor|dat|ALU0|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux2~2_combout\ = (\main_processor|dat|MuxIm1|f[29]~29_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # ((!\main_processor|control_unit|ALU_op[1]~4_combout\ & \main_processor|dat|MuxIm2|Mux2~0_combout\)))) # 
-- (!\main_processor|dat|MuxIm1|f[29]~29_combout\ & (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|control_unit|ALU_op[1]~4_combout\) # (\main_processor|dat|MuxIm2|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[29]~29_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datad => \main_processor|dat|MuxIm2|Mux2~0_combout\,
	combout => \main_processor|dat|ALU0|Mux2~2_combout\);

-- Location: LCCOMB_X57_Y22_N18
\main_processor|dat|ALU0|sub|cycle1|cycle3|cycle1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle1|s~0_combout\ = \main_processor|dat|MuxIm2|Mux2~0_combout\ $ (((\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|IR|q\(13))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- ((\main_processor|dat|A|q\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|IR|q\(13),
	datac => \main_processor|dat|A|q\(29),
	datad => \main_processor|dat|MuxIm2|Mux2~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle1|s~0_combout\);

-- Location: LCCOMB_X57_Y27_N20
\main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|s~combout\ = \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle1|s~0_combout\ $ (((\main_processor|dat|MuxIm1|f[28]~28_combout\ & ((\main_processor|dat|MuxIm2|Mux3~0_combout\) # 
-- (\main_processor|dat|ALU0|add|cycle1|cycle2|cycle3|Cout~0_combout\))) # (!\main_processor|dat|MuxIm1|f[28]~28_combout\ & (\main_processor|dat|MuxIm2|Mux3~0_combout\ & \main_processor|dat|ALU0|add|cycle1|cycle2|cycle3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[28]~28_combout\,
	datab => \main_processor|dat|MuxIm2|Mux3~0_combout\,
	datac => \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle1|s~0_combout\,
	datad => \main_processor|dat|ALU0|add|cycle1|cycle2|cycle3|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|s~combout\);

-- Location: LCCOMB_X58_Y23_N2
\main_processor|dat|ALU0|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux2~3_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|dat|ALU0|Mux2~2_combout\ & (\main_processor|dat|MuxIm2|Mux2~0_combout\)) # (!\main_processor|dat|ALU0|Mux2~2_combout\ & 
-- ((\main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|s~combout\))))) # (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (((\main_processor|dat|ALU0|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|dat|MuxIm2|Mux2~0_combout\,
	datac => \main_processor|dat|ALU0|Mux2~2_combout\,
	datad => \main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|s~combout\,
	combout => \main_processor|dat|ALU0|Mux2~3_combout\);

-- Location: LCCOMB_X58_Y23_N8
\main_processor|dat|ALU0|Mux2~4_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux2~4_Duplicate_6\ = (\main_processor|control_unit|ALU_op[0]~8_combout\ & ((\main_processor|control_unit|Mux3~0_combout\ & (\main_processor|dat|ALU0|Mux2~1_combout\)) # (!\main_processor|control_unit|Mux3~0_combout\ & 
-- ((\main_processor|dat|ALU0|Mux2~3_combout\))))) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & (((\main_processor|dat|ALU0|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datab => \main_processor|control_unit|Mux3~0_combout\,
	datac => \main_processor|dat|ALU0|Mux2~1_combout\,
	datad => \main_processor|dat|ALU0|Mux2~3_combout\,
	combout => \main_processor|dat|ALU0|Mux2~4_Duplicate_6\);

-- Location: LCCOMB_X58_Y23_N24
\main_processor|dat|MuxData|Mux2~1_Duplicate_4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux2~1_Duplicate_5\ = (\main_processor|dat|MuxData|Mux2~0_combout\) # ((!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|control_unit|Data_Mux[1]~1_combout\ & 
-- \main_processor|dat|ALU0|Mux2~4_Duplicate_6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datab => \main_processor|dat|MuxData|Mux2~0_combout\,
	datac => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datad => \main_processor|dat|ALU0|Mux2~4_Duplicate_6\,
	combout => \main_processor|dat|MuxData|Mux2~1_Duplicate_5\);

-- Location: LCCOMB_X56_Y26_N12
\main_processor|dat|DataMemory|data_out~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~22_combout\ = (!\main_processor|control_unit|wen~q\ & (\main_processor|control_unit|en~q\ & \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|wen~q\,
	datab => \main_processor|control_unit|en~q\,
	datad => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a22\,
	combout => \main_processor|dat|DataMemory|data_out~22_combout\);

-- Location: FF_X56_Y26_N13
\main_processor|dat|DataMemory|data_out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|DataMemory|data_out~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(22));

-- Location: LCCOMB_X56_Y26_N22
\main_processor|dat|MuxData|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux9~0_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_processor|dat|DataMemory|data_out\(22)))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_memory|altsyncram_component|auto_generated|q_a\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datab => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datac => \main_memory|altsyncram_component|auto_generated|q_a\(22),
	datad => \main_processor|dat|DataMemory|data_out\(22),
	combout => \main_processor|dat|MuxData|Mux9~0_combout\);

-- Location: LCCOMB_X57_Y26_N26
\main_processor|dat|MuxA|f[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[22]~22_combout\ = (!\main_processor|control_unit|A_Mux~0_combout\ & ((\main_processor|dat|MuxData|Mux9~0_combout\) # ((\main_processor|dat|MuxData|Mux31~2_combout\ & \main_processor|dat|ALU0|Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux31~2_combout\,
	datab => \main_processor|dat|MuxData|Mux9~0_combout\,
	datac => \main_processor|control_unit|A_Mux~0_combout\,
	datad => \main_processor|dat|ALU0|Mux9~4_combout\,
	combout => \main_processor|dat|MuxA|f[22]~22_combout\);

-- Location: FF_X57_Y26_N27
\main_processor|dat|A|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[22]~22_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(22));

-- Location: LCCOMB_X57_Y26_N10
\main_processor|dat|MuxReg|f[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[22]~22_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|B|q\(22)))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|A|q\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Reg_Mux~1_combout\,
	datac => \main_processor|dat|A|q\(22),
	datad => \main_processor|dat|B|q\(22),
	combout => \main_processor|dat|MuxReg|f[22]~22_combout\);

-- Location: LCCOMB_X52_Y26_N2
\main_processor|dat|DataMemory|data_out~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~21_combout\ = (!\main_processor|control_unit|wen~q\ & (\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a21\ & \main_processor|control_unit|en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|wen~q\,
	datac => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a21\,
	datad => \main_processor|control_unit|en~q\,
	combout => \main_processor|dat|DataMemory|data_out~21_combout\);

-- Location: FF_X56_Y26_N15
\main_processor|dat|DataMemory|data_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|DataMemory|data_out~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(21));

-- Location: LCCOMB_X56_Y26_N14
\main_processor|dat|MuxData|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux10~0_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|dat|DataMemory|data_out\(21))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_memory|altsyncram_component|auto_generated|q_a\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datab => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datac => \main_processor|dat|DataMemory|data_out\(21),
	datad => \main_memory|altsyncram_component|auto_generated|q_a\(21),
	combout => \main_processor|dat|MuxData|Mux10~0_combout\);

-- Location: LCCOMB_X56_Y26_N26
\main_processor|dat|MuxB|f[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[21]~21_combout\ = (!\main_processor|control_unit|B_Mux~1_combout\ & ((\main_processor|dat|MuxData|Mux10~0_combout\) # ((\main_processor|dat|ALU0|Mux10~4_combout\ & \main_processor|dat|MuxData|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux10~0_combout\,
	datab => \main_processor|control_unit|B_Mux~1_combout\,
	datac => \main_processor|dat|ALU0|Mux10~4_combout\,
	datad => \main_processor|dat|MuxData|Mux31~2_combout\,
	combout => \main_processor|dat|MuxB|f[21]~21_combout\);

-- Location: FF_X56_Y26_N27
\main_processor|dat|B|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[21]~21_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(21));

-- Location: LCCOMB_X58_Y26_N16
\main_processor|dat|MuxIm2|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux10~0_combout\ = (\main_processor|dat|B|q\(21) & (((!\main_processor|control_unit|Im_Mux2[1]~1_combout\ & !\main_processor|control_unit|Mux7~0_combout\)) # (!\main_processor|control_unit|ALU_op[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datab => \main_processor|control_unit|Im_Mux2[1]~1_combout\,
	datac => \main_processor|dat|B|q\(21),
	datad => \main_processor|control_unit|Mux7~0_combout\,
	combout => \main_processor|dat|MuxIm2|Mux10~0_combout\);

-- Location: LCCOMB_X58_Y24_N26
\main_processor|dat|ALU0|sub|cycle1|cycle1|cycle1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle1|s~combout\ = \main_processor|dat|MuxIm1|f[21]~21_combout\ $ (\main_processor|dat|MuxIm2|Mux10~0_combout\ $ (\main_processor|dat|ALU0|sub|cycle1|cycle1|cycle0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[21]~21_combout\,
	datac => \main_processor|dat|MuxIm2|Mux10~0_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle0|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle1|s~combout\);

-- Location: LCCOMB_X58_Y24_N8
\main_processor|dat|ALU0|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux10~0_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # ((!\main_processor|dat|ALU0|sub|cycle1|cycle1|cycle1|s~combout\)))) # 
-- (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (!\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|MuxIm1|f[20]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle1|s~combout\,
	datad => \main_processor|dat|MuxIm1|f[20]~20_combout\,
	combout => \main_processor|dat|ALU0|Mux10~0_combout\);

-- Location: LCCOMB_X58_Y24_N30
\main_processor|dat|ALU0|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux10~1_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|ALU0|Mux10~0_combout\ & (\main_processor|dat|MuxIm1|f[21]~21_combout\)) # (!\main_processor|dat|ALU0|Mux10~0_combout\ & 
-- ((\main_processor|dat|MuxIm1|f[22]~22_combout\))))) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (((\main_processor|dat|ALU0|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[21]~21_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|ALU0|Mux10~0_combout\,
	datad => \main_processor|dat|MuxIm1|f[22]~22_combout\,
	combout => \main_processor|dat|ALU0|Mux10~1_combout\);

-- Location: LCCOMB_X58_Y26_N2
\main_processor|dat|ALU0|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux10~2_combout\ = \main_processor|dat|MuxIm1|f[21]~21_combout\ $ (((\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|Cout~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|dat|MuxIm1|f[21]~21_combout\,
	datac => \main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|Cout~0_combout\,
	datad => \main_processor|dat|ALU0|add|cycle1|cycle1|cycle0|Cout~2_combout\,
	combout => \main_processor|dat|ALU0|Mux10~2_combout\);

-- Location: LCCOMB_X58_Y26_N24
\main_processor|dat|ALU0|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux10~3_combout\ = (\main_processor|dat|MuxIm2|Mux10~0_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # (\main_processor|control_unit|ALU_op[1]~4_combout\ $ (\main_processor|dat|ALU0|Mux10~2_combout\)))) # 
-- (!\main_processor|dat|MuxIm2|Mux10~0_combout\ & (\main_processor|dat|ALU0|Mux10~2_combout\ & (\main_processor|control_unit|ALU_op[1]~4_combout\ $ (\main_processor|control_unit|ALU_op[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|dat|MuxIm2|Mux10~0_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|ALU0|Mux10~2_combout\,
	combout => \main_processor|dat|ALU0|Mux10~3_combout\);

-- Location: LCCOMB_X57_Y26_N22
\main_processor|dat|ALU0|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux10~4_combout\ = (\main_processor|control_unit|Mux3~0_combout\ & ((\main_processor|control_unit|ALU_op[0]~8_combout\ & (\main_processor|dat|ALU0|Mux10~1_combout\)) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & 
-- ((\main_processor|dat|ALU0|Mux10~3_combout\))))) # (!\main_processor|control_unit|Mux3~0_combout\ & (((\main_processor|dat|ALU0|Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Mux3~0_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datac => \main_processor|dat|ALU0|Mux10~1_combout\,
	datad => \main_processor|dat|ALU0|Mux10~3_combout\,
	combout => \main_processor|dat|ALU0|Mux10~4_combout\);

-- Location: LCCOMB_X57_Y26_N0
\main_processor|dat|MuxA|f[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[21]~21_combout\ = (!\main_processor|control_unit|A_Mux~0_combout\ & ((\main_processor|dat|MuxData|Mux10~0_combout\) # ((\main_processor|dat|MuxData|Mux31~2_combout\ & \main_processor|dat|ALU0|Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|A_Mux~0_combout\,
	datab => \main_processor|dat|MuxData|Mux31~2_combout\,
	datac => \main_processor|dat|ALU0|Mux10~4_combout\,
	datad => \main_processor|dat|MuxData|Mux10~0_combout\,
	combout => \main_processor|dat|MuxA|f[21]~21_combout\);

-- Location: FF_X57_Y26_N1
\main_processor|dat|A|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[21]~21_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(21));

-- Location: LCCOMB_X57_Y25_N20
\main_processor|dat|MuxIm1|f[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[21]~21_combout\ = (\main_processor|control_unit|ALU_op[0]~2_combout\ & ((\main_processor|control_unit|Im_Mux1~1_combout\ & (\main_processor|dat|IR|q\(5))) # (!\main_processor|control_unit|Im_Mux1~1_combout\ & 
-- ((\main_processor|dat|A|q\(21)))))) # (!\main_processor|control_unit|ALU_op[0]~2_combout\ & (((\main_processor|dat|A|q\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~2_combout\,
	datab => \main_processor|dat|IR|q\(5),
	datac => \main_processor|control_unit|Im_Mux1~1_combout\,
	datad => \main_processor|dat|A|q\(21),
	combout => \main_processor|dat|MuxIm1|f[21]~21_combout\);

-- Location: LCCOMB_X58_Y24_N28
\main_processor|dat|ALU0|sub|cycle1|cycle1|cycle0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle0|s~combout\ = \main_processor|dat|MuxIm2|Mux11~0_combout\ $ (\main_processor|dat|MuxIm1|f[20]~20_combout\ $ (((\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux11~0_combout\,
	datab => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|Cout~0_combout\,
	datac => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle3|Cout~2_combout\,
	datad => \main_processor|dat|MuxIm1|f[20]~20_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle0|s~combout\);

-- Location: LCCOMB_X58_Y24_N14
\main_processor|dat|ALU0|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux11~0_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # ((!\main_processor|dat|ALU0|sub|cycle1|cycle1|cycle0|s~combout\)))) # 
-- (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (\main_processor|dat|MuxIm1|f[19]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|MuxIm1|f[19]~19_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle0|s~combout\,
	combout => \main_processor|dat|ALU0|Mux11~0_combout\);

-- Location: LCCOMB_X58_Y24_N4
\main_processor|dat|ALU0|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux11~1_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|ALU0|Mux11~0_combout\ & ((\main_processor|dat|MuxIm1|f[20]~20_combout\))) # (!\main_processor|dat|ALU0|Mux11~0_combout\ & 
-- (\main_processor|dat|MuxIm1|f[21]~21_combout\)))) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (((\main_processor|dat|ALU0|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[21]~21_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|ALU0|Mux11~0_combout\,
	datad => \main_processor|dat|MuxIm1|f[20]~20_combout\,
	combout => \main_processor|dat|ALU0|Mux11~1_combout\);

-- Location: LCCOMB_X57_Y26_N8
\main_processor|dat|ALU0|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux11~4_combout\ = (\main_processor|control_unit|Mux3~0_combout\ & ((\main_processor|control_unit|ALU_op[0]~8_combout\ & ((\main_processor|dat|ALU0|Mux11~1_combout\))) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & 
-- (\main_processor|dat|ALU0|Mux11~3_combout\)))) # (!\main_processor|control_unit|Mux3~0_combout\ & (((\main_processor|dat|ALU0|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Mux3~0_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datac => \main_processor|dat|ALU0|Mux11~3_combout\,
	datad => \main_processor|dat|ALU0|Mux11~1_combout\,
	combout => \main_processor|dat|ALU0|Mux11~4_combout\);

-- Location: LCCOMB_X57_Y26_N14
\main_processor|dat|MuxData|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux11~1_combout\ = (\main_processor|dat|MuxData|Mux11~0_combout\) # ((!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|control_unit|Data_Mux[1]~1_combout\ & \main_processor|dat|ALU0|Mux11~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datab => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datac => \main_processor|dat|ALU0|Mux11~4_combout\,
	datad => \main_processor|dat|MuxData|Mux11~0_combout\,
	combout => \main_processor|dat|MuxData|Mux11~1_combout\);

-- Location: LCCOMB_X56_Y26_N0
\main_processor|dat|DataMemory|data_out~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~20_combout\ = (\main_processor|control_unit|en~q\ & (!\main_processor|control_unit|wen~q\ & \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|control_unit|en~q\,
	datac => \main_processor|control_unit|wen~q\,
	datad => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a20\,
	combout => \main_processor|dat|DataMemory|data_out~20_combout\);

-- Location: FF_X56_Y26_N1
\main_processor|dat|DataMemory|data_out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|DataMemory|data_out~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(20));

-- Location: LCCOMB_X56_Y26_N18
\main_processor|dat|MuxData|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux11~0_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_processor|dat|DataMemory|data_out\(20)))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_memory|altsyncram_component|auto_generated|q_a\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datab => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datac => \main_memory|altsyncram_component|auto_generated|q_a\(20),
	datad => \main_processor|dat|DataMemory|data_out\(20),
	combout => \main_processor|dat|MuxData|Mux11~0_combout\);

-- Location: LCCOMB_X57_Y26_N6
\main_processor|dat|MuxA|f[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[20]~20_combout\ = (!\main_processor|control_unit|A_Mux~0_combout\ & ((\main_processor|dat|MuxData|Mux11~0_combout\) # ((\main_processor|dat|ALU0|Mux11~4_combout\ & \main_processor|dat|MuxData|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|A_Mux~0_combout\,
	datab => \main_processor|dat|MuxData|Mux11~0_combout\,
	datac => \main_processor|dat|ALU0|Mux11~4_combout\,
	datad => \main_processor|dat|MuxData|Mux31~2_combout\,
	combout => \main_processor|dat|MuxA|f[20]~20_combout\);

-- Location: FF_X57_Y26_N7
\main_processor|dat|A|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[20]~20_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(20));

-- Location: LCCOMB_X59_Y24_N6
\main_processor|dat|MuxIm1|f[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[20]~20_combout\ = (\main_processor|control_unit|ALU_op[0]~2_combout\ & ((\main_processor|control_unit|Im_Mux1~1_combout\ & (\main_processor|dat|IR|q\(4))) # (!\main_processor|control_unit|Im_Mux1~1_combout\ & 
-- ((\main_processor|dat|A|q\(20)))))) # (!\main_processor|control_unit|ALU_op[0]~2_combout\ & (((\main_processor|dat|A|q\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~2_combout\,
	datab => \main_processor|control_unit|Im_Mux1~1_combout\,
	datac => \main_processor|dat|IR|q\(4),
	datad => \main_processor|dat|A|q\(20),
	combout => \main_processor|dat|MuxIm1|f[20]~20_combout\);

-- Location: LCCOMB_X58_Y25_N0
\main_processor|dat|ALU0|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux12~1_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|ALU0|Mux12~0_combout\ & (\main_processor|dat|MuxIm1|f[19]~19_combout\)) # (!\main_processor|dat|ALU0|Mux12~0_combout\ & 
-- ((\main_processor|dat|MuxIm1|f[20]~20_combout\))))) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (\main_processor|dat|ALU0|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datab => \main_processor|dat|ALU0|Mux12~0_combout\,
	datac => \main_processor|dat|MuxIm1|f[19]~19_combout\,
	datad => \main_processor|dat|MuxIm1|f[20]~20_combout\,
	combout => \main_processor|dat|ALU0|Mux12~1_combout\);

-- Location: LCCOMB_X57_Y25_N12
\main_processor|dat|ALU0|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux12~2_combout\ = \main_processor|dat|MuxIm1|f[19]~19_combout\ $ (((\main_processor|control_unit|ALU_op[1]~4_combout\ & \main_processor|dat|ALU0|add|cycle1|cycle0|cycle2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|dat|MuxIm1|f[19]~19_combout\,
	datad => \main_processor|dat|ALU0|add|cycle1|cycle0|cycle2|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|Mux12~2_combout\);

-- Location: LCCOMB_X57_Y25_N10
\main_processor|dat|ALU0|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux12~3_combout\ = (\main_processor|dat|MuxIm2|Mux12~0_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # (\main_processor|dat|ALU0|Mux12~2_combout\ $ (\main_processor|control_unit|ALU_op[1]~4_combout\)))) # 
-- (!\main_processor|dat|MuxIm2|Mux12~0_combout\ & (\main_processor|dat|ALU0|Mux12~2_combout\ & (\main_processor|control_unit|ALU_op[0]~6_combout\ $ (\main_processor|control_unit|ALU_op[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux12~2_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|MuxIm2|Mux12~0_combout\,
	datad => \main_processor|control_unit|ALU_op[1]~4_combout\,
	combout => \main_processor|dat|ALU0|Mux12~3_combout\);

-- Location: LCCOMB_X57_Y26_N18
\main_processor|dat|ALU0|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux12~4_combout\ = (\main_processor|control_unit|Mux3~0_combout\ & ((\main_processor|control_unit|ALU_op[0]~8_combout\ & (\main_processor|dat|ALU0|Mux12~1_combout\)) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & 
-- ((\main_processor|dat|ALU0|Mux12~3_combout\))))) # (!\main_processor|control_unit|Mux3~0_combout\ & (((\main_processor|dat|ALU0|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Mux3~0_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datac => \main_processor|dat|ALU0|Mux12~1_combout\,
	datad => \main_processor|dat|ALU0|Mux12~3_combout\,
	combout => \main_processor|dat|ALU0|Mux12~4_combout\);

-- Location: LCCOMB_X57_Y26_N16
\main_processor|dat|MuxData|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux12~1_combout\ = (\main_processor|dat|MuxData|Mux12~0_combout\) # ((!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|dat|ALU0|Mux12~4_combout\ & \main_processor|control_unit|Data_Mux[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datab => \main_processor|dat|ALU0|Mux12~4_combout\,
	datac => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datad => \main_processor|dat|MuxData|Mux12~0_combout\,
	combout => \main_processor|dat|MuxData|Mux12~1_combout\);

-- Location: LCCOMB_X52_Y26_N16
\main_processor|dat|DataMemory|data_out~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~18_combout\ = (!\main_processor|control_unit|wen~q\ & (\main_processor|control_unit|en~q\ & \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|wen~q\,
	datab => \main_processor|control_unit|en~q\,
	datad => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a18\,
	combout => \main_processor|dat|DataMemory|data_out~18_combout\);

-- Location: FF_X54_Y26_N5
\main_processor|dat|DataMemory|data_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|DataMemory|data_out~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(18));

-- Location: LCCOMB_X54_Y26_N4
\main_processor|dat|MuxData|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux13~0_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_processor|dat|DataMemory|data_out\(18)))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_memory|altsyncram_component|auto_generated|q_a\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_memory|altsyncram_component|auto_generated|q_a\(18),
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_processor|dat|DataMemory|data_out\(18),
	datad => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	combout => \main_processor|dat|MuxData|Mux13~0_combout\);

-- Location: LCCOMB_X55_Y25_N14
\main_processor|dat|MuxData|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux13~1_combout\ = (\main_processor|dat|MuxData|Mux13~0_combout\) # ((\main_processor|control_unit|Data_Mux[1]~1_combout\ & (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & \main_processor|dat|ALU0|Mux13~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_processor|dat|ALU0|Mux13~4_combout\,
	datad => \main_processor|dat|MuxData|Mux13~0_combout\,
	combout => \main_processor|dat|MuxData|Mux13~1_combout\);

-- Location: LCCOMB_X56_Y26_N6
\main_processor|dat|DataMemory|data_out~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~19_combout\ = (!\main_processor|control_unit|wen~q\ & (\main_processor|control_unit|en~q\ & \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|wen~q\,
	datab => \main_processor|control_unit|en~q\,
	datad => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a19\,
	combout => \main_processor|dat|DataMemory|data_out~19_combout\);

-- Location: FF_X56_Y26_N7
\main_processor|dat|DataMemory|data_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|DataMemory|data_out~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(19));

-- Location: LCCOMB_X56_Y26_N24
\main_processor|dat|MuxData|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux12~0_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_processor|dat|DataMemory|data_out\(19)))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_memory|altsyncram_component|auto_generated|q_a\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datab => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datac => \main_memory|altsyncram_component|auto_generated|q_a\(19),
	datad => \main_processor|dat|DataMemory|data_out\(19),
	combout => \main_processor|dat|MuxData|Mux12~0_combout\);

-- Location: LCCOMB_X57_Y26_N24
\main_processor|dat|MuxA|f[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[19]~19_combout\ = (!\main_processor|control_unit|A_Mux~0_combout\ & ((\main_processor|dat|MuxData|Mux12~0_combout\) # ((\main_processor|dat|MuxData|Mux31~2_combout\ & \main_processor|dat|ALU0|Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|A_Mux~0_combout\,
	datab => \main_processor|dat|MuxData|Mux12~0_combout\,
	datac => \main_processor|dat|MuxData|Mux31~2_combout\,
	datad => \main_processor|dat|ALU0|Mux12~4_combout\,
	combout => \main_processor|dat|MuxA|f[19]~19_combout\);

-- Location: FF_X57_Y26_N25
\main_processor|dat|A|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[19]~19_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(19));

-- Location: LCCOMB_X59_Y24_N16
\main_processor|dat|MuxIm1|f[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[19]~19_combout\ = (\main_processor|control_unit|ALU_op[0]~2_combout\ & ((\main_processor|control_unit|Im_Mux1~1_combout\ & (\main_processor|dat|IR|q\(3))) # (!\main_processor|control_unit|Im_Mux1~1_combout\ & 
-- ((\main_processor|dat|A|q\(19)))))) # (!\main_processor|control_unit|ALU_op[0]~2_combout\ & (((\main_processor|dat|A|q\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~2_combout\,
	datab => \main_processor|control_unit|Im_Mux1~1_combout\,
	datac => \main_processor|dat|IR|q\(3),
	datad => \main_processor|dat|A|q\(19),
	combout => \main_processor|dat|MuxIm1|f[19]~19_combout\);

-- Location: LCCOMB_X55_Y25_N20
\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle2|s~combout\ = \main_processor|dat|MuxIm1|f[18]~18_combout\ $ (\main_processor|dat|MuxIm2|Mux13~0_combout\ $ (\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[18]~18_combout\,
	datac => \main_processor|dat|MuxIm2|Mux13~0_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle1|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle2|s~combout\);

-- Location: LCCOMB_X55_Y25_N10
\main_processor|dat|ALU0|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux13~0_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & (((\main_processor|control_unit|ALU_op[0]~6_combout\) # (!\main_processor|dat|ALU0|sub|cycle1|cycle0|cycle2|s~combout\)))) # 
-- (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (\main_processor|dat|MuxIm1|f[17]~17_combout\ & (!\main_processor|control_unit|ALU_op[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|dat|MuxIm1|f[17]~17_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle0|cycle2|s~combout\,
	combout => \main_processor|dat|ALU0|Mux13~0_combout\);

-- Location: LCCOMB_X55_Y25_N24
\main_processor|dat|ALU0|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux13~1_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|ALU0|Mux13~0_combout\ & (\main_processor|dat|MuxIm1|f[18]~18_combout\)) # (!\main_processor|dat|ALU0|Mux13~0_combout\ & 
-- ((\main_processor|dat|MuxIm1|f[19]~19_combout\))))) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (((\main_processor|dat|ALU0|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[18]~18_combout\,
	datab => \main_processor|dat|MuxIm1|f[19]~19_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|ALU0|Mux13~0_combout\,
	combout => \main_processor|dat|ALU0|Mux13~1_combout\);

-- Location: LCCOMB_X56_Y25_N16
\main_processor|dat|ALU0|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux13~2_combout\ = \main_processor|dat|MuxIm1|f[18]~18_combout\ $ (((\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|Cout~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|Cout~0_combout\,
	datab => \main_processor|dat|MuxIm1|f[18]~18_combout\,
	datac => \main_processor|dat|ALU0|add|cycle1|cycle0|cycle1|Cout~2_combout\,
	datad => \main_processor|control_unit|ALU_op[1]~4_combout\,
	combout => \main_processor|dat|ALU0|Mux13~2_combout\);

-- Location: LCCOMB_X55_Y25_N18
\main_processor|dat|ALU0|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux13~3_combout\ = (\main_processor|dat|MuxIm2|Mux13~0_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # (\main_processor|control_unit|ALU_op[1]~4_combout\ $ (\main_processor|dat|ALU0|Mux13~2_combout\)))) # 
-- (!\main_processor|dat|MuxIm2|Mux13~0_combout\ & (\main_processor|dat|ALU0|Mux13~2_combout\ & (\main_processor|control_unit|ALU_op[1]~4_combout\ $ (\main_processor|control_unit|ALU_op[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|dat|MuxIm2|Mux13~0_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|ALU0|Mux13~2_combout\,
	combout => \main_processor|dat|ALU0|Mux13~3_combout\);

-- Location: LCCOMB_X55_Y25_N8
\main_processor|dat|ALU0|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux13~4_combout\ = (\main_processor|control_unit|ALU_op[0]~8_combout\ & ((\main_processor|control_unit|Mux3~0_combout\ & (\main_processor|dat|ALU0|Mux13~1_combout\)) # (!\main_processor|control_unit|Mux3~0_combout\ & 
-- ((\main_processor|dat|ALU0|Mux13~3_combout\))))) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & (((\main_processor|dat|ALU0|Mux13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datab => \main_processor|dat|ALU0|Mux13~1_combout\,
	datac => \main_processor|control_unit|Mux3~0_combout\,
	datad => \main_processor|dat|ALU0|Mux13~3_combout\,
	combout => \main_processor|dat|ALU0|Mux13~4_combout\);

-- Location: LCCOMB_X55_Y25_N12
\main_processor|dat|MuxA|f[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[18]~18_combout\ = (!\main_processor|control_unit|A_Mux~0_combout\ & ((\main_processor|dat|MuxData|Mux13~0_combout\) # ((\main_processor|dat|MuxData|Mux31~2_combout\ & \main_processor|dat|ALU0|Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux31~2_combout\,
	datab => \main_processor|dat|ALU0|Mux13~4_combout\,
	datac => \main_processor|control_unit|A_Mux~0_combout\,
	datad => \main_processor|dat|MuxData|Mux13~0_combout\,
	combout => \main_processor|dat|MuxA|f[18]~18_combout\);

-- Location: FF_X55_Y25_N13
\main_processor|dat|A|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[18]~18_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(18));

-- Location: LCCOMB_X57_Y26_N30
\main_processor|dat|MuxReg|f[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[18]~18_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|B|q\(18)))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|A|q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Reg_Mux~1_combout\,
	datac => \main_processor|dat|A|q\(18),
	datad => \main_processor|dat|B|q\(18),
	combout => \main_processor|dat|MuxReg|f[18]~18_combout\);

-- Location: LCCOMB_X49_Y24_N30
\main_processor|dat|DataMemory|data_out~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~17_combout\ = (!\main_processor|control_unit|wen~q\ & (\main_processor|control_unit|en~q\ & \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|control_unit|wen~q\,
	datac => \main_processor|control_unit|en~q\,
	datad => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a17\,
	combout => \main_processor|dat|DataMemory|data_out~17_combout\);

-- Location: FF_X56_Y25_N3
\main_processor|dat|DataMemory|data_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|DataMemory|data_out~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(17));

-- Location: LCCOMB_X56_Y25_N2
\main_processor|dat|MuxData|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux14~0_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|dat|DataMemory|data_out\(17))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_memory|altsyncram_component|auto_generated|q_a\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datab => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datac => \main_processor|dat|DataMemory|data_out\(17),
	datad => \main_memory|altsyncram_component|auto_generated|q_a\(17),
	combout => \main_processor|dat|MuxData|Mux14~0_combout\);

-- Location: LCCOMB_X56_Y23_N4
\main_processor|dat|MuxA|f[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[17]~17_combout\ = (!\main_processor|control_unit|A_Mux~0_combout\ & ((\main_processor|dat|MuxData|Mux14~0_combout\) # ((\main_processor|dat|ALU0|Mux14~4_combout\ & \main_processor|dat|MuxData|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|A_Mux~0_combout\,
	datab => \main_processor|dat|MuxData|Mux14~0_combout\,
	datac => \main_processor|dat|ALU0|Mux14~4_combout\,
	datad => \main_processor|dat|MuxData|Mux31~2_combout\,
	combout => \main_processor|dat|MuxA|f[17]~17_combout\);

-- Location: FF_X56_Y23_N5
\main_processor|dat|A|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[17]~17_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(17));

-- Location: LCCOMB_X56_Y23_N10
\main_processor|dat|MuxReg|f[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[17]~17_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|B|q\(17)))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|A|q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|control_unit|Reg_Mux~1_combout\,
	datac => \main_processor|dat|A|q\(17),
	datad => \main_processor|dat|B|q\(17),
	combout => \main_processor|dat|MuxReg|f[17]~17_combout\);

-- Location: LCCOMB_X50_Y25_N8
\main_processor|dat|DataMemory|data_out~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~16_combout\ = (!\main_processor|control_unit|wen~q\ & (\main_processor|control_unit|en~q\ & \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|wen~q\,
	datab => \main_processor|control_unit|en~q\,
	datad => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a16\,
	combout => \main_processor|dat|DataMemory|data_out~16_combout\);

-- Location: FF_X56_Y25_N19
\main_processor|dat|DataMemory|data_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|DataMemory|data_out~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(16));

-- Location: LCCOMB_X56_Y25_N18
\main_processor|dat|MuxData|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux15~0_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|dat|DataMemory|data_out\(16))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_memory|altsyncram_component|auto_generated|q_a\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datab => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datac => \main_processor|dat|DataMemory|data_out\(16),
	datad => \main_memory|altsyncram_component|auto_generated|q_a\(16),
	combout => \main_processor|dat|MuxData|Mux15~0_combout\);

-- Location: LCCOMB_X54_Y23_N8
\main_processor|dat|MuxA|f[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[16]~16_combout\ = (!\main_processor|control_unit|A_Mux~0_combout\ & ((\main_processor|dat|MuxData|Mux15~0_combout\) # ((\main_processor|dat|MuxData|Mux31~2_combout\ & \main_processor|dat|ALU0|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux31~2_combout\,
	datab => \main_processor|control_unit|A_Mux~0_combout\,
	datac => \main_processor|dat|MuxData|Mux15~0_combout\,
	datad => \main_processor|dat|ALU0|Mux15~4_combout\,
	combout => \main_processor|dat|MuxA|f[16]~16_combout\);

-- Location: FF_X54_Y23_N9
\main_processor|dat|A|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[16]~16_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(16));

-- Location: LCCOMB_X58_Y21_N8
\main_processor|dat|MuxReg|f[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[16]~16_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|B|q\(16)))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|A|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Reg_Mux~1_combout\,
	datac => \main_processor|dat|A|q\(16),
	datad => \main_processor|dat|B|q\(16),
	combout => \main_processor|dat|MuxReg|f[16]~16_combout\);

-- Location: LCCOMB_X52_Y21_N16
\main_processor|dat|DataMemory|data_out~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~15_combout\ = (\main_processor|control_unit|en~q\ & (\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a15\ & !\main_processor|control_unit|wen~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|en~q\,
	datab => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a15\,
	datac => \main_processor|control_unit|wen~q\,
	combout => \main_processor|dat|DataMemory|data_out~15_combout\);

-- Location: FF_X54_Y21_N15
\main_processor|dat|DataMemory|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|DataMemory|data_out~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(15));

-- Location: LCCOMB_X54_Y21_N14
\main_processor|dat|MuxData|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux16~0_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|dat|DataMemory|data_out\(15))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_memory|altsyncram_component|auto_generated|q_a\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datab => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datac => \main_processor|dat|DataMemory|data_out\(15),
	datad => \main_memory|altsyncram_component|auto_generated|q_a\(15),
	combout => \main_processor|dat|MuxData|Mux16~0_combout\);

-- Location: LCCOMB_X55_Y21_N14
\main_processor|dat|MuxA|f[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[15]~15_combout\ = (\main_processor|control_unit|A_Mux~0_combout\ & (((\main_processor|dat|IR|q\(15))))) # (!\main_processor|control_unit|A_Mux~0_combout\ & ((\main_processor|dat|MuxData|Mux16~0_combout\) # 
-- ((\main_processor|dat|MuxData|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux16~0_combout\,
	datab => \main_processor|control_unit|A_Mux~0_combout\,
	datac => \main_processor|dat|IR|q\(15),
	datad => \main_processor|dat|MuxData|Mux16~2_combout\,
	combout => \main_processor|dat|MuxA|f[15]~15_combout\);

-- Location: FF_X55_Y21_N15
\main_processor|dat|A|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[15]~15_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(15));

-- Location: LCCOMB_X58_Y21_N22
\main_processor|dat|MuxReg|f[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[15]~15_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|B|q\(15)))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|A|q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Reg_Mux~1_combout\,
	datac => \main_processor|dat|A|q\(15),
	datad => \main_processor|dat|B|q\(15),
	combout => \main_processor|dat|MuxReg|f[15]~15_combout\);

-- Location: LCCOMB_X52_Y21_N30
\main_processor|dat|DataMemory|data_out~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~14_combout\ = (!\main_processor|control_unit|wen~q\ & (\main_processor|control_unit|en~q\ & \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|wen~q\,
	datac => \main_processor|control_unit|en~q\,
	datad => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a14\,
	combout => \main_processor|dat|DataMemory|data_out~14_combout\);

-- Location: FF_X54_Y20_N23
\main_processor|dat|DataMemory|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|DataMemory|data_out~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(14));

-- Location: LCCOMB_X54_Y20_N22
\main_processor|dat|MuxData|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux17~1_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|dat|DataMemory|data_out\(14))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_memory|altsyncram_component|auto_generated|q_a\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_processor|dat|DataMemory|data_out\(14),
	datad => \main_memory|altsyncram_component|auto_generated|q_a\(14),
	combout => \main_processor|dat|MuxData|Mux17~1_combout\);

-- Location: LCCOMB_X55_Y21_N8
\main_processor|dat|MuxA|f[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[14]~14_combout\ = (\main_processor|control_unit|A_Mux~0_combout\ & (\main_processor|dat|IR|q\(14))) # (!\main_processor|control_unit|A_Mux~0_combout\ & (((\main_processor|dat|MuxData|Mux17~0_combout\) # 
-- (\main_processor|dat|MuxData|Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(14),
	datab => \main_processor|control_unit|A_Mux~0_combout\,
	datac => \main_processor|dat|MuxData|Mux17~0_combout\,
	datad => \main_processor|dat|MuxData|Mux17~1_combout\,
	combout => \main_processor|dat|MuxA|f[14]~14_combout\);

-- Location: FF_X55_Y21_N9
\main_processor|dat|A|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[14]~14_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(14));

-- Location: LCCOMB_X55_Y21_N16
\main_processor|dat|MuxIm1|f[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[14]~14_combout\ = (\main_processor|dat|A|q\(14) & ((\main_processor|dat|IR|q\(29)) # ((\main_processor|dat|IR|q\(28)) # (!\main_processor|control_unit|ALU_op[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(29),
	datab => \main_processor|dat|IR|q\(28),
	datac => \main_processor|dat|A|q\(14),
	datad => \main_processor|control_unit|ALU_op[0]~2_combout\,
	combout => \main_processor|dat|MuxIm1|f[14]~14_combout\);

-- Location: LCCOMB_X55_Y22_N20
\main_processor|dat|ALU0|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux18~1_combout\ = (\main_processor|dat|ALU0|Mux18~0_combout\ & (((\main_processor|dat|MuxIm1|f[13]~13_combout\)) # (!\main_processor|control_unit|ALU_op[0]~6_combout\))) # (!\main_processor|dat|ALU0|Mux18~0_combout\ & 
-- (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|MuxIm1|f[14]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux18~0_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|MuxIm1|f[13]~13_combout\,
	datad => \main_processor|dat|MuxIm1|f[14]~14_combout\,
	combout => \main_processor|dat|ALU0|Mux18~1_combout\);

-- Location: LCCOMB_X55_Y22_N4
\main_processor|dat|MuxData|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux18~2_combout\ = (\main_processor|dat|MuxData|Mux31~2_combout\ & ((\main_processor|control_unit|ALU_op[2]~3_combout\ & ((\main_processor|dat|ALU0|Mux18~1_combout\))) # (!\main_processor|control_unit|ALU_op[2]~3_combout\ & 
-- (\main_processor|dat|ALU0|Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux18~3_combout\,
	datab => \main_processor|control_unit|ALU_op[2]~3_combout\,
	datac => \main_processor|dat|MuxData|Mux31~2_combout\,
	datad => \main_processor|dat|ALU0|Mux18~1_combout\,
	combout => \main_processor|dat|MuxData|Mux18~2_combout\);

-- Location: LCCOMB_X55_Y22_N8
\main_processor|dat|MuxA|f[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[13]~13_combout\ = (\main_processor|control_unit|A_Mux~0_combout\ & (\main_processor|dat|IR|q\(13))) # (!\main_processor|control_unit|A_Mux~0_combout\ & (((\main_processor|dat|MuxData|Mux18~2_combout\) # 
-- (\main_processor|dat|MuxData|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|A_Mux~0_combout\,
	datab => \main_processor|dat|IR|q\(13),
	datac => \main_processor|dat|MuxData|Mux18~2_combout\,
	datad => \main_processor|dat|MuxData|Mux18~0_combout\,
	combout => \main_processor|dat|MuxA|f[13]~13_combout\);

-- Location: FF_X55_Y22_N9
\main_processor|dat|A|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[13]~13_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(13));

-- Location: LCCOMB_X54_Y21_N10
\main_processor|dat|MuxIm1|f[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[13]~13_combout\ = (\main_processor|dat|A|q\(13) & ((\main_processor|dat|IR|q\(28)) # ((\main_processor|dat|IR|q\(29)) # (!\main_processor|control_unit|ALU_op[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(28),
	datab => \main_processor|dat|IR|q\(29),
	datac => \main_processor|dat|A|q\(13),
	datad => \main_processor|control_unit|ALU_op[0]~2_combout\,
	combout => \main_processor|dat|MuxIm1|f[13]~13_combout\);

-- Location: LCCOMB_X54_Y21_N4
\main_processor|dat|ALU0|sub|cycle0|cycle3|cycle0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle0|s~combout\ = \main_processor|dat|MuxIm2|Mux19~0_combout\ $ (\main_processor|dat|ALU0|sub|cycle0|cycle2|cycle3|Cout~0_combout\ $ (((\main_processor|dat|A|q\(12) & 
-- !\main_processor|control_unit|Im_Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux19~0_combout\,
	datab => \main_processor|dat|A|q\(12),
	datac => \main_processor|control_unit|Im_Mux1~0_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle3|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle0|s~combout\);

-- Location: LCCOMB_X54_Y21_N30
\main_processor|dat|ALU0|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux19~0_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & (((\main_processor|control_unit|ALU_op[1]~4_combout\)))) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & 
-- ((\main_processor|control_unit|ALU_op[1]~4_combout\ & ((!\main_processor|dat|ALU0|sub|cycle0|cycle3|cycle0|s~combout\))) # (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (\main_processor|dat|MuxIm1|f[11]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[11]~11_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle0|s~combout\,
	datad => \main_processor|control_unit|ALU_op[1]~4_combout\,
	combout => \main_processor|dat|ALU0|Mux19~0_combout\);

-- Location: LCCOMB_X54_Y21_N8
\main_processor|dat|ALU0|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux19~1_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|ALU0|Mux19~0_combout\ & ((\main_processor|dat|MuxIm1|f[12]~12_combout\))) # (!\main_processor|dat|ALU0|Mux19~0_combout\ & 
-- (\main_processor|dat|MuxIm1|f[13]~13_combout\)))) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (((\main_processor|dat|ALU0|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[13]~13_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|ALU0|Mux19~0_combout\,
	datad => \main_processor|dat|MuxIm1|f[12]~12_combout\,
	combout => \main_processor|dat|ALU0|Mux19~1_combout\);

-- Location: LCCOMB_X54_Y25_N24
\main_processor|dat|MuxData|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux19~2_combout\ = (\main_processor|dat|MuxData|Mux31~2_combout\ & ((\main_processor|control_unit|ALU_op[2]~3_combout\ & ((\main_processor|dat|ALU0|Mux19~1_combout\))) # (!\main_processor|control_unit|ALU_op[2]~3_combout\ & 
-- (\main_processor|dat|ALU0|Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux19~3_combout\,
	datab => \main_processor|control_unit|ALU_op[2]~3_combout\,
	datac => \main_processor|dat|ALU0|Mux19~1_combout\,
	datad => \main_processor|dat|MuxData|Mux31~2_combout\,
	combout => \main_processor|dat|MuxData|Mux19~2_combout\);

-- Location: LCCOMB_X54_Y25_N28
\main_processor|dat|MuxB|f[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[12]~12_combout\ = (\main_processor|control_unit|B_Mux~1_combout\ & (\main_processor|dat|IR|q\(12))) # (!\main_processor|control_unit|B_Mux~1_combout\ & (((\main_processor|dat|MuxData|Mux19~0_combout\) # 
-- (\main_processor|dat|MuxData|Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(12),
	datab => \main_processor|dat|MuxData|Mux19~0_combout\,
	datac => \main_processor|control_unit|B_Mux~1_combout\,
	datad => \main_processor|dat|MuxData|Mux19~2_combout\,
	combout => \main_processor|dat|MuxB|f[12]~12_combout\);

-- Location: FF_X54_Y25_N29
\main_processor|dat|B|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[12]~12_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(12));

-- Location: LCCOMB_X54_Y25_N30
\main_processor|dat|MuxReg|f[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[12]~12_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|B|q\(12))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|A|q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|B|q\(12),
	datac => \main_processor|control_unit|Reg_Mux~1_combout\,
	datad => \main_processor|dat|A|q\(12),
	combout => \main_processor|dat|MuxReg|f[12]~12_combout\);

-- Location: LCCOMB_X52_Y26_N4
\main_processor|dat|DataMemory|data_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~8_combout\ = (\main_processor|control_unit|en~q\ & (!\main_processor|control_unit|wen~q\ & \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|control_unit|en~q\,
	datac => \main_processor|control_unit|wen~q\,
	datad => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a8\,
	combout => \main_processor|dat|DataMemory|data_out~8_combout\);

-- Location: FF_X54_Y26_N19
\main_processor|dat|DataMemory|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|DataMemory|data_out~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(8));

-- Location: M9K_X51_Y23_N0
\main_memory|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F00EEEC2AAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "system_memory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "system_memory:main_memory|altsyncram:altsyncram_component|altsyncram_04d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 6,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \memClk~inputclkctrl_outclk\,
	portadatain => \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y26_N18
\main_processor|dat|MuxData|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux23~1_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|dat|DataMemory|data_out\(8))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_memory|altsyncram_component|auto_generated|q_a\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_processor|dat|DataMemory|data_out\(8),
	datad => \main_memory|altsyncram_component|auto_generated|q_a\(8),
	combout => \main_processor|dat|MuxData|Mux23~1_combout\);

-- Location: LCCOMB_X52_Y22_N14
\main_processor|dat|MuxA|f[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[8]~8_combout\ = (\main_processor|control_unit|A_Mux~0_combout\ & (((\main_processor|dat|IR|q\(8))))) # (!\main_processor|control_unit|A_Mux~0_combout\ & ((\main_processor|dat|MuxData|Mux23~1_combout\) # 
-- ((\main_processor|dat|MuxData|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|A_Mux~0_combout\,
	datab => \main_processor|dat|MuxData|Mux23~1_combout\,
	datac => \main_processor|dat|MuxData|Mux23~0_combout\,
	datad => \main_processor|dat|IR|q\(8),
	combout => \main_processor|dat|MuxA|f[8]~8_combout\);

-- Location: FF_X52_Y22_N15
\main_processor|dat|A|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[8]~8_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(8));

-- Location: LCCOMB_X52_Y22_N10
\main_processor|dat|MuxReg|f[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[8]~8_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|B|q\(8)))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|A|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Reg_Mux~1_combout\,
	datac => \main_processor|dat|A|q\(8),
	datad => \main_processor|dat|B|q\(8),
	combout => \main_processor|dat|MuxReg|f[8]~8_combout\);

-- Location: LCCOMB_X56_Y22_N4
\main_processor|dat|DataMemory|data_out~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~13_combout\ = (!\main_processor|control_unit|wen~q\ & (\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a13\ & \main_processor|control_unit|en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|control_unit|wen~q\,
	datac => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a13\,
	datad => \main_processor|control_unit|en~q\,
	combout => \main_processor|dat|DataMemory|data_out~13_combout\);

-- Location: FF_X56_Y22_N27
\main_processor|dat|DataMemory|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|DataMemory|data_out~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(13));

-- Location: LCCOMB_X56_Y22_N26
\main_processor|dat|MuxData|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux18~0_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|dat|DataMemory|data_out\(13))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_memory|altsyncram_component|auto_generated|q_a\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_processor|dat|DataMemory|data_out\(13),
	datad => \main_memory|altsyncram_component|auto_generated|q_a\(13),
	combout => \main_processor|dat|MuxData|Mux18~0_combout\);

-- Location: LCCOMB_X54_Y22_N12
\main_processor|dat|MuxB|f[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[13]~13_combout\ = (\main_processor|control_unit|B_Mux~1_combout\ & (\main_processor|dat|IR|q\(13))) # (!\main_processor|control_unit|B_Mux~1_combout\ & (((\main_processor|dat|MuxData|Mux18~0_combout\) # 
-- (\main_processor|dat|MuxData|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|B_Mux~1_combout\,
	datab => \main_processor|dat|IR|q\(13),
	datac => \main_processor|dat|MuxData|Mux18~0_combout\,
	datad => \main_processor|dat|MuxData|Mux18~2_combout\,
	combout => \main_processor|dat|MuxB|f[13]~13_combout\);

-- Location: FF_X54_Y22_N13
\main_processor|dat|B|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[13]~13_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(13));

-- Location: LCCOMB_X54_Y22_N8
\main_processor|dat|MuxIm2|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux18~0_combout\ = (!\main_processor|control_unit|Im_Mux2[1]~3_combout\ & ((\main_processor|control_unit|Im_Mux2[0]~0_combout\ & (\main_processor|dat|B|q\(13))) # (!\main_processor|control_unit|Im_Mux2[0]~0_combout\ & 
-- ((\main_processor|dat|IR|q\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|B|q\(13),
	datab => \main_processor|dat|IR|q\(13),
	datac => \main_processor|control_unit|Im_Mux2[1]~3_combout\,
	datad => \main_processor|control_unit|Im_Mux2[0]~0_combout\,
	combout => \main_processor|dat|MuxIm2|Mux18~0_combout\);

-- Location: LCCOMB_X54_Y21_N28
\main_processor|dat|ALU0|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux18~2_combout\ = (\main_processor|dat|MuxIm1|f[13]~13_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # ((\main_processor|dat|MuxIm2|Mux18~0_combout\ & !\main_processor|control_unit|ALU_op[1]~4_combout\)))) # 
-- (!\main_processor|dat|MuxIm1|f[13]~13_combout\ & (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|MuxIm2|Mux18~0_combout\) # (\main_processor|control_unit|ALU_op[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[13]~13_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|MuxIm2|Mux18~0_combout\,
	datad => \main_processor|control_unit|ALU_op[1]~4_combout\,
	combout => \main_processor|dat|ALU0|Mux18~2_combout\);

-- Location: LCCOMB_X54_Y21_N18
\main_processor|dat|ALU0|add|cycle0|cycle3|cycle1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle3|cycle1|s~combout\ = \main_processor|dat|MuxIm2|Mux18~0_combout\ $ (\main_processor|dat|ALU0|add|cycle0|cycle3|cycle0|Cout~0_combout\ $ (((\main_processor|dat|A|q\(13) & 
-- !\main_processor|control_unit|Im_Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|A|q\(13),
	datab => \main_processor|control_unit|Im_Mux1~0_combout\,
	datac => \main_processor|dat|MuxIm2|Mux18~0_combout\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle3|cycle0|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle0|cycle3|cycle1|s~combout\);

-- Location: LCCOMB_X54_Y21_N22
\main_processor|dat|ALU0|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux18~3_combout\ = (\main_processor|dat|ALU0|Mux18~2_combout\ & ((\main_processor|dat|MuxIm2|Mux18~0_combout\) # ((!\main_processor|control_unit|ALU_op[1]~4_combout\)))) # (!\main_processor|dat|ALU0|Mux18~2_combout\ & 
-- (((\main_processor|control_unit|ALU_op[1]~4_combout\ & \main_processor|dat|ALU0|add|cycle0|cycle3|cycle1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux18~0_combout\,
	datab => \main_processor|dat|ALU0|Mux18~2_combout\,
	datac => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle3|cycle1|s~combout\,
	combout => \main_processor|dat|ALU0|Mux18~3_combout\);

-- Location: LCCOMB_X55_Y22_N10
\main_processor|dat|ALU0|Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux18~4_combout\ = (\main_processor|control_unit|Mux3~0_combout\ & ((\main_processor|control_unit|ALU_op[0]~8_combout\ & ((\main_processor|dat|ALU0|Mux18~1_combout\))) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & 
-- (\main_processor|dat|ALU0|Mux18~3_combout\)))) # (!\main_processor|control_unit|Mux3~0_combout\ & (\main_processor|dat|ALU0|Mux18~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux18~3_combout\,
	datab => \main_processor|control_unit|Mux3~0_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datad => \main_processor|dat|ALU0|Mux18~1_combout\,
	combout => \main_processor|dat|ALU0|Mux18~4_combout\);

-- Location: LCCOMB_X55_Y22_N28
\main_processor|dat|MuxData|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux18~1_combout\ = (\main_processor|dat|MuxData|Mux18~0_combout\) # ((\main_processor|dat|ALU0|Mux18~4_combout\ & (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & \main_processor|control_unit|Data_Mux[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux18~4_combout\,
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datad => \main_processor|dat|MuxData|Mux18~0_combout\,
	combout => \main_processor|dat|MuxData|Mux18~1_combout\);

-- Location: LCCOMB_X49_Y24_N4
\main_processor|dat|DataMemory|data_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~1_combout\ = (\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a1\ & (\main_processor|control_unit|en~q\ & !\main_processor|control_unit|wen~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a1\,
	datab => \main_processor|control_unit|en~q\,
	datad => \main_processor|control_unit|wen~q\,
	combout => \main_processor|dat|DataMemory|data_out~1_combout\);

-- Location: FF_X49_Y24_N3
\main_processor|dat|DataMemory|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|DataMemory|data_out~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(1));

-- Location: LCCOMB_X49_Y24_N2
\main_processor|dat|MuxData|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux30~0_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_processor|dat|DataMemory|data_out\(1)))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_memory|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_memory|altsyncram_component|auto_generated|q_a\(1),
	datab => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datac => \main_processor|dat|DataMemory|data_out\(1),
	datad => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	combout => \main_processor|dat|MuxData|Mux30~0_combout\);

-- Location: LCCOMB_X54_Y22_N10
\main_processor|dat|MuxA|f[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[1]~1_combout\ = (\main_processor|control_unit|A_Mux~0_combout\ & (((\main_processor|dat|IR|q\(1))))) # (!\main_processor|control_unit|A_Mux~0_combout\ & ((\main_processor|dat|MuxData|Mux30~0_combout\) # 
-- ((\main_processor|dat|MuxData|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux30~0_combout\,
	datab => \main_processor|dat|MuxData|Mux30~2_combout\,
	datac => \main_processor|dat|IR|q\(1),
	datad => \main_processor|control_unit|A_Mux~0_combout\,
	combout => \main_processor|dat|MuxA|f[1]~1_combout\);

-- Location: FF_X54_Y22_N11
\main_processor|dat|A|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[1]~1_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(1));

-- Location: LCCOMB_X53_Y22_N10
\main_processor|dat|MuxIm1|f[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[1]~2_combout\ = (\main_processor|dat|A|q\(1) & (((\main_processor|dat|IR|q\(28)) # (\main_processor|dat|IR|q\(29))) # (!\main_processor|control_unit|ALU_op[0]~2_Duplicate_14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~2_Duplicate_14\,
	datab => \main_processor|dat|A|q\(1),
	datac => \main_processor|dat|IR|q\(28),
	datad => \main_processor|dat|IR|q\(29),
	combout => \main_processor|dat|MuxIm1|f[1]~2_combout\);

-- Location: LCCOMB_X53_Y22_N24
\main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|s~0_combout\ = \main_processor|dat|MuxIm1|f[1]~2_combout\ $ (((!\main_processor|control_unit|Im_Mux2[1]~3_Duplicate_8\ & ((\main_processor|dat|MuxIm2|Mux30~1_combout\) # 
-- (\main_processor|dat|MuxIm2|Mux30~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux2[1]~3_Duplicate_8\,
	datab => \main_processor|dat|MuxIm2|Mux30~1_combout\,
	datac => \main_processor|dat|MuxIm2|Mux30~0_combout\,
	datad => \main_processor|dat|MuxIm1|f[1]~2_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|s~0_combout\);

-- Location: LCCOMB_X53_Y20_N2
\main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|s~combout\ = \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|s~0_combout\ $ (((\main_processor|dat|MuxIm1|f[0]~0_combout\ & ((\main_processor|control_unit|ALU_op[2]~3_combout\) # 
-- (!\main_processor|dat|MuxIm2|Mux31~0_combout\))) # (!\main_processor|dat|MuxIm1|f[0]~0_combout\ & (!\main_processor|dat|MuxIm2|Mux31~0_combout\ & \main_processor|control_unit|ALU_op[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|s~0_combout\,
	datab => \main_processor|dat|MuxIm1|f[0]~0_combout\,
	datac => \main_processor|dat|MuxIm2|Mux31~0_combout\,
	datad => \main_processor|control_unit|ALU_op[2]~3_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|s~combout\);

-- Location: LCCOMB_X53_Y20_N24
\main_processor|dat|ALU0|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux30~0_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & (\main_processor|control_unit|ALU_op[1]~4_combout\)) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & 
-- ((\main_processor|control_unit|ALU_op[1]~4_combout\ & (!\main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|s~combout\)) # (!\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|dat|MuxIm1|f[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datab => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|s~combout\,
	datad => \main_processor|dat|MuxIm1|f[0]~0_combout\,
	combout => \main_processor|dat|ALU0|Mux30~0_combout\);

-- Location: LCCOMB_X53_Y22_N6
\main_processor|dat|ALU0|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux30~1_combout\ = (\main_processor|dat|ALU0|Mux30~0_combout\ & ((\main_processor|dat|MuxIm1|f[1]~2_combout\) # ((!\main_processor|control_unit|ALU_op[0]~6_combout\)))) # (!\main_processor|dat|ALU0|Mux30~0_combout\ & 
-- (((\main_processor|control_unit|ALU_op[0]~6_combout\ & \main_processor|dat|MuxIm1|f[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[1]~2_combout\,
	datab => \main_processor|dat|ALU0|Mux30~0_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|MuxIm1|f[2]~1_combout\,
	combout => \main_processor|dat|ALU0|Mux30~1_combout\);

-- Location: LCCOMB_X53_Y22_N28
\main_processor|dat|MuxData|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux30~2_combout\ = (\main_processor|dat|MuxData|Mux31~2_combout\ & ((\main_processor|control_unit|ALU_op[2]~3_combout\ & ((\main_processor|dat|ALU0|Mux30~1_combout\))) # (!\main_processor|control_unit|ALU_op[2]~3_combout\ & 
-- (\main_processor|dat|ALU0|Mux30~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[2]~3_combout\,
	datab => \main_processor|dat|ALU0|Mux30~3_combout\,
	datac => \main_processor|dat|ALU0|Mux30~1_combout\,
	datad => \main_processor|dat|MuxData|Mux31~2_combout\,
	combout => \main_processor|dat|MuxData|Mux30~2_combout\);

-- Location: LCCOMB_X54_Y22_N14
\main_processor|dat|MuxB|f[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[1]~1_combout\ = (\main_processor|control_unit|B_Mux~1_combout\ & (((\main_processor|dat|IR|q\(1))))) # (!\main_processor|control_unit|B_Mux~1_combout\ & ((\main_processor|dat|MuxData|Mux30~2_combout\) # 
-- ((\main_processor|dat|MuxData|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|B_Mux~1_combout\,
	datab => \main_processor|dat|MuxData|Mux30~2_combout\,
	datac => \main_processor|dat|IR|q\(1),
	datad => \main_processor|dat|MuxData|Mux30~0_combout\,
	combout => \main_processor|dat|MuxB|f[1]~1_combout\);

-- Location: FF_X54_Y22_N15
\main_processor|dat|B|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[1]~1_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(1));

-- Location: LCCOMB_X53_Y24_N6
\main_processor|dat|MuxReg|f[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[1]~1_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|B|q\(1))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|A|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|B|q\(1),
	datab => \main_processor|dat|A|q\(1),
	datad => \main_processor|control_unit|Reg_Mux~1_combout\,
	combout => \main_processor|dat|MuxReg|f[1]~1_combout\);

-- Location: LCCOMB_X52_Y26_N14
\main_processor|dat|DataMemory|data_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~12_combout\ = (\main_processor|control_unit|en~q\ & (!\main_processor|control_unit|wen~q\ & \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|control_unit|en~q\,
	datac => \main_processor|control_unit|wen~q\,
	datad => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a12\,
	combout => \main_processor|dat|DataMemory|data_out~12_combout\);

-- Location: FF_X54_Y26_N7
\main_processor|dat|DataMemory|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|DataMemory|data_out~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(12));

-- Location: LCCOMB_X54_Y26_N6
\main_processor|dat|MuxData|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux19~0_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|dat|DataMemory|data_out\(12))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_memory|altsyncram_component|auto_generated|q_a\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_processor|dat|DataMemory|data_out\(12),
	datad => \main_memory|altsyncram_component|auto_generated|q_a\(12),
	combout => \main_processor|dat|MuxData|Mux19~0_combout\);

-- Location: LCCOMB_X54_Y25_N2
\main_processor|dat|MuxA|f[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[12]~12_combout\ = (\main_processor|control_unit|A_Mux~0_combout\ & (\main_processor|dat|IR|q\(12))) # (!\main_processor|control_unit|A_Mux~0_combout\ & (((\main_processor|dat|MuxData|Mux19~0_combout\) # 
-- (\main_processor|dat|MuxData|Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(12),
	datab => \main_processor|dat|MuxData|Mux19~0_combout\,
	datac => \main_processor|control_unit|A_Mux~0_combout\,
	datad => \main_processor|dat|MuxData|Mux19~2_combout\,
	combout => \main_processor|dat|MuxA|f[12]~12_combout\);

-- Location: FF_X54_Y25_N3
\main_processor|dat|A|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[12]~12_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(12));

-- Location: LCCOMB_X54_Y21_N16
\main_processor|dat|MuxIm1|f[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[12]~12_combout\ = (\main_processor|dat|A|q\(12) & ((\main_processor|dat|IR|q\(28)) # ((\main_processor|dat|IR|q\(29)) # (!\main_processor|control_unit|ALU_op[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(28),
	datab => \main_processor|dat|IR|q\(29),
	datac => \main_processor|dat|A|q\(12),
	datad => \main_processor|control_unit|ALU_op[0]~2_combout\,
	combout => \main_processor|dat|MuxIm1|f[12]~12_combout\);

-- Location: LCCOMB_X54_Y21_N12
\main_processor|dat|ALU0|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux19~2_combout\ = (\main_processor|dat|MuxIm1|f[12]~12_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # ((\main_processor|dat|MuxIm2|Mux19~0_combout\ & !\main_processor|control_unit|ALU_op[1]~4_combout\)))) # 
-- (!\main_processor|dat|MuxIm1|f[12]~12_combout\ & (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|MuxIm2|Mux19~0_combout\) # (\main_processor|control_unit|ALU_op[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[12]~12_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|MuxIm2|Mux19~0_combout\,
	datad => \main_processor|control_unit|ALU_op[1]~4_combout\,
	combout => \main_processor|dat|ALU0|Mux19~2_combout\);

-- Location: LCCOMB_X54_Y21_N6
\main_processor|dat|ALU0|add|cycle0|cycle3|cycle0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle3|cycle0|s~combout\ = \main_processor|dat|MuxIm2|Mux19~0_combout\ $ (\main_processor|dat|ALU0|add|cycle0|cycle2|cycle3|Cout~0_combout\ $ (((!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- \main_processor|dat|A|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|A|q\(12),
	datac => \main_processor|dat|MuxIm2|Mux19~0_combout\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle2|cycle3|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle0|cycle3|cycle0|s~combout\);

-- Location: LCCOMB_X54_Y21_N26
\main_processor|dat|ALU0|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux19~3_combout\ = (\main_processor|dat|ALU0|Mux19~2_combout\ & (((\main_processor|dat|MuxIm2|Mux19~0_combout\)) # (!\main_processor|control_unit|ALU_op[1]~4_combout\))) # (!\main_processor|dat|ALU0|Mux19~2_combout\ & 
-- (\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|dat|ALU0|add|cycle0|cycle3|cycle0|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux19~2_combout\,
	datab => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|dat|MuxIm2|Mux19~0_combout\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle3|cycle0|s~combout\,
	combout => \main_processor|dat|ALU0|Mux19~3_combout\);

-- Location: LCCOMB_X54_Y26_N8
\main_processor|dat|ALU0|Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux19~4_combout\ = (\main_processor|control_unit|ALU_op[0]~8_combout\ & ((\main_processor|control_unit|Mux3~0_combout\ & ((\main_processor|dat|ALU0|Mux19~1_combout\))) # (!\main_processor|control_unit|Mux3~0_combout\ & 
-- (\main_processor|dat|ALU0|Mux19~3_combout\)))) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & (\main_processor|dat|ALU0|Mux19~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux19~3_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datac => \main_processor|dat|ALU0|Mux19~1_combout\,
	datad => \main_processor|control_unit|Mux3~0_combout\,
	combout => \main_processor|dat|ALU0|Mux19~4_combout\);

-- Location: LCCOMB_X54_Y26_N22
\main_processor|dat|MuxData|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux19~1_combout\ = (\main_processor|dat|MuxData|Mux19~0_combout\) # ((\main_processor|control_unit|Data_Mux[1]~1_combout\ & (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & \main_processor|dat|ALU0|Mux19~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_processor|dat|ALU0|Mux19~4_combout\,
	datad => \main_processor|dat|MuxData|Mux19~0_combout\,
	combout => \main_processor|dat|MuxData|Mux19~1_combout\);

-- Location: LCCOMB_X52_Y26_N12
\main_processor|dat|DataMemory|data_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~11_combout\ = (!\main_processor|control_unit|wen~q\ & (\main_processor|control_unit|en~q\ & \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|wen~q\,
	datab => \main_processor|control_unit|en~q\,
	datad => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a11\,
	combout => \main_processor|dat|DataMemory|data_out~11_combout\);

-- Location: FF_X54_Y26_N17
\main_processor|dat|DataMemory|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|DataMemory|data_out~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(11));

-- Location: LCCOMB_X54_Y26_N16
\main_processor|dat|MuxData|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux20~0_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_processor|dat|DataMemory|data_out\(11)))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_memory|altsyncram_component|auto_generated|q_a\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_memory|altsyncram_component|auto_generated|q_a\(11),
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_processor|dat|DataMemory|data_out\(11),
	datad => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	combout => \main_processor|dat|MuxData|Mux20~0_combout\);

-- Location: LCCOMB_X54_Y22_N6
\main_processor|dat|MuxB|f[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[11]~11_combout\ = (\main_processor|control_unit|B_Mux~1_combout\ & (\main_processor|dat|IR|q\(11))) # (!\main_processor|control_unit|B_Mux~1_combout\ & (((\main_processor|dat|MuxData|Mux20~2_combout\) # 
-- (\main_processor|dat|MuxData|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(11),
	datab => \main_processor|control_unit|B_Mux~1_combout\,
	datac => \main_processor|dat|MuxData|Mux20~2_combout\,
	datad => \main_processor|dat|MuxData|Mux20~0_combout\,
	combout => \main_processor|dat|MuxB|f[11]~11_combout\);

-- Location: FF_X54_Y22_N7
\main_processor|dat|B|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[11]~11_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(11));

-- Location: LCCOMB_X54_Y22_N30
\main_processor|dat|MuxIm2|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux20~0_combout\ = (!\main_processor|control_unit|Im_Mux2[1]~3_combout\ & ((\main_processor|control_unit|Im_Mux2[0]~0_combout\ & (\main_processor|dat|B|q\(11))) # (!\main_processor|control_unit|Im_Mux2[0]~0_combout\ & 
-- ((\main_processor|dat|IR|q\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|B|q\(11),
	datab => \main_processor|dat|IR|q\(11),
	datac => \main_processor|control_unit|Im_Mux2[1]~3_combout\,
	datad => \main_processor|control_unit|Im_Mux2[0]~0_combout\,
	combout => \main_processor|dat|MuxIm2|Mux20~0_combout\);

-- Location: LCCOMB_X50_Y22_N4
\main_processor|dat|ALU0|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux20~2_combout\ = (\main_processor|dat|MuxIm1|f[11]~11_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # ((!\main_processor|control_unit|ALU_op[1]~4_combout\ & \main_processor|dat|MuxIm2|Mux20~0_combout\)))) # 
-- (!\main_processor|dat|MuxIm1|f[11]~11_combout\ & (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|control_unit|ALU_op[1]~4_combout\) # (\main_processor|dat|MuxIm2|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[11]~11_combout\,
	datab => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|MuxIm2|Mux20~0_combout\,
	combout => \main_processor|dat|ALU0|Mux20~2_combout\);

-- Location: LCCOMB_X53_Y21_N16
\main_processor|dat|ALU0|add|cycle0|cycle2|cycle3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle2|cycle3|s~combout\ = \main_processor|dat|ALU0|add|cycle0|cycle2|cycle2|Cout~0_combout\ $ (\main_processor|dat|MuxIm2|Mux20~0_combout\ $ (((!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- \main_processor|dat|A|q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|ALU0|add|cycle0|cycle2|cycle2|Cout~0_combout\,
	datac => \main_processor|dat|MuxIm2|Mux20~0_combout\,
	datad => \main_processor|dat|A|q\(11),
	combout => \main_processor|dat|ALU0|add|cycle0|cycle2|cycle3|s~combout\);

-- Location: LCCOMB_X53_Y21_N10
\main_processor|dat|ALU0|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux20~3_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|dat|ALU0|Mux20~2_combout\ & (\main_processor|dat|MuxIm2|Mux20~0_combout\)) # (!\main_processor|dat|ALU0|Mux20~2_combout\ & 
-- ((\main_processor|dat|ALU0|add|cycle0|cycle2|cycle3|s~combout\))))) # (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (\main_processor|dat|ALU0|Mux20~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|dat|ALU0|Mux20~2_combout\,
	datac => \main_processor|dat|MuxIm2|Mux20~0_combout\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle2|cycle3|s~combout\,
	combout => \main_processor|dat|ALU0|Mux20~3_combout\);

-- Location: LCCOMB_X53_Y26_N0
\main_processor|dat|MuxData|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux20~2_combout\ = (\main_processor|dat|MuxData|Mux31~2_combout\ & ((\main_processor|control_unit|ALU_op[2]~3_combout\ & (\main_processor|dat|ALU0|Mux20~1_combout\)) # (!\main_processor|control_unit|ALU_op[2]~3_combout\ & 
-- ((\main_processor|dat|ALU0|Mux20~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux31~2_combout\,
	datab => \main_processor|control_unit|ALU_op[2]~3_combout\,
	datac => \main_processor|dat|ALU0|Mux20~1_combout\,
	datad => \main_processor|dat|ALU0|Mux20~3_combout\,
	combout => \main_processor|dat|MuxData|Mux20~2_combout\);

-- Location: LCCOMB_X54_Y22_N24
\main_processor|dat|MuxA|f[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[11]~11_combout\ = (\main_processor|control_unit|A_Mux~0_combout\ & (\main_processor|dat|IR|q\(11))) # (!\main_processor|control_unit|A_Mux~0_combout\ & (((\main_processor|dat|MuxData|Mux20~2_combout\) # 
-- (\main_processor|dat|MuxData|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(11),
	datab => \main_processor|control_unit|A_Mux~0_combout\,
	datac => \main_processor|dat|MuxData|Mux20~2_combout\,
	datad => \main_processor|dat|MuxData|Mux20~0_combout\,
	combout => \main_processor|dat|MuxA|f[11]~11_combout\);

-- Location: FF_X54_Y22_N25
\main_processor|dat|A|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[11]~11_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(11));

-- Location: LCCOMB_X53_Y21_N8
\main_processor|dat|MuxIm1|f[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[11]~11_combout\ = (\main_processor|dat|A|q\(11) & (((\main_processor|dat|IR|q\(29)) # (\main_processor|dat|IR|q\(28))) # (!\main_processor|control_unit|ALU_op[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~2_combout\,
	datab => \main_processor|dat|IR|q\(29),
	datac => \main_processor|dat|IR|q\(28),
	datad => \main_processor|dat|A|q\(11),
	combout => \main_processor|dat|MuxIm1|f[11]~11_combout\);

-- Location: LCCOMB_X50_Y22_N26
\main_processor|dat|ALU0|sub|cycle0|cycle2|cycle3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle3|s~combout\ = \main_processor|dat|MuxIm1|f[11]~11_combout\ $ (\main_processor|dat|MuxIm2|Mux20~0_combout\ $ (((\main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|Cout~2_combout\) # 
-- (\main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[11]~11_combout\,
	datab => \main_processor|dat|MuxIm2|Mux20~0_combout\,
	datac => \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|Cout~2_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle2|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle3|s~combout\);

-- Location: LCCOMB_X50_Y22_N16
\main_processor|dat|ALU0|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux20~0_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & (((\main_processor|control_unit|ALU_op[0]~6_combout\)) # (!\main_processor|dat|ALU0|sub|cycle0|cycle2|cycle3|s~combout\))) # 
-- (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (((!\main_processor|control_unit|ALU_op[0]~6_combout\ & \main_processor|dat|MuxIm1|f[10]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle3|s~combout\,
	datab => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|MuxIm1|f[10]~10_combout\,
	combout => \main_processor|dat|ALU0|Mux20~0_combout\);

-- Location: LCCOMB_X50_Y22_N10
\main_processor|dat|ALU0|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux20~1_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|ALU0|Mux20~0_combout\ & (\main_processor|dat|MuxIm1|f[11]~11_combout\)) # (!\main_processor|dat|ALU0|Mux20~0_combout\ & 
-- ((\main_processor|dat|MuxIm1|f[12]~12_combout\))))) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (((\main_processor|dat|ALU0|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[11]~11_combout\,
	datab => \main_processor|dat|MuxIm1|f[12]~12_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|ALU0|Mux20~0_combout\,
	combout => \main_processor|dat|ALU0|Mux20~1_combout\);

-- Location: LCCOMB_X53_Y26_N28
\main_processor|dat|ALU0|Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux20~4_combout\ = (\main_processor|control_unit|ALU_op[0]~8_combout\ & ((\main_processor|control_unit|Mux3~0_combout\ & (\main_processor|dat|ALU0|Mux20~1_combout\)) # (!\main_processor|control_unit|Mux3~0_combout\ & 
-- ((\main_processor|dat|ALU0|Mux20~3_combout\))))) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & (((\main_processor|dat|ALU0|Mux20~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datab => \main_processor|control_unit|Mux3~0_combout\,
	datac => \main_processor|dat|ALU0|Mux20~1_combout\,
	datad => \main_processor|dat|ALU0|Mux20~3_combout\,
	combout => \main_processor|dat|ALU0|Mux20~4_combout\);

-- Location: LCCOMB_X53_Y26_N30
\main_processor|dat|MuxData|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux20~1_combout\ = (\main_processor|dat|MuxData|Mux20~0_combout\) # ((!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|dat|ALU0|Mux20~4_combout\ & \main_processor|control_unit|Data_Mux[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datab => \main_processor|dat|ALU0|Mux20~4_combout\,
	datac => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datad => \main_processor|dat|MuxData|Mux20~0_combout\,
	combout => \main_processor|dat|MuxData|Mux20~1_combout\);

-- Location: LCCOMB_X52_Y26_N26
\main_processor|dat|DataMemory|data_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~10_combout\ = (!\main_processor|control_unit|wen~q\ & (\main_processor|control_unit|en~q\ & \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|wen~q\,
	datab => \main_processor|control_unit|en~q\,
	datad => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a10\,
	combout => \main_processor|dat|DataMemory|data_out~10_combout\);

-- Location: FF_X54_Y26_N3
\main_processor|dat|DataMemory|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|DataMemory|data_out~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(10));

-- Location: LCCOMB_X54_Y26_N2
\main_processor|dat|MuxData|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux21~0_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_processor|dat|DataMemory|data_out\(10)))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_memory|altsyncram_component|auto_generated|q_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_memory|altsyncram_component|auto_generated|q_a\(10),
	datab => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datac => \main_processor|dat|DataMemory|data_out\(10),
	datad => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	combout => \main_processor|dat|MuxData|Mux21~0_combout\);

-- Location: LCCOMB_X54_Y25_N10
\main_processor|dat|MuxB|f[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[10]~10_combout\ = (\main_processor|control_unit|B_Mux~1_combout\ & (\main_processor|dat|IR|q\(10))) # (!\main_processor|control_unit|B_Mux~1_combout\ & (((\main_processor|dat|MuxData|Mux21~0_combout\) # 
-- (\main_processor|dat|MuxData|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(10),
	datab => \main_processor|control_unit|B_Mux~1_combout\,
	datac => \main_processor|dat|MuxData|Mux21~0_combout\,
	datad => \main_processor|dat|MuxData|Mux21~2_combout\,
	combout => \main_processor|dat|MuxB|f[10]~10_combout\);

-- Location: FF_X54_Y25_N11
\main_processor|dat|B|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[10]~10_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(10));

-- Location: LCCOMB_X54_Y25_N22
\main_processor|dat|MuxIm2|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux21~0_combout\ = (!\main_processor|control_unit|Im_Mux2[1]~3_combout\ & ((\main_processor|control_unit|Im_Mux2[0]~0_combout\ & (\main_processor|dat|B|q\(10))) # (!\main_processor|control_unit|Im_Mux2[0]~0_combout\ & 
-- ((\main_processor|dat|IR|q\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|B|q\(10),
	datab => \main_processor|control_unit|Im_Mux2[1]~3_combout\,
	datac => \main_processor|dat|IR|q\(10),
	datad => \main_processor|control_unit|Im_Mux2[0]~0_combout\,
	combout => \main_processor|dat|MuxIm2|Mux21~0_combout\);

-- Location: LCCOMB_X52_Y24_N24
\main_processor|dat|ALU0|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux21~2_combout\ = (\main_processor|dat|MuxIm2|Mux21~0_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # ((\main_processor|dat|MuxIm1|f[10]~10_combout\ & !\main_processor|control_unit|ALU_op[1]~4_combout\)))) # 
-- (!\main_processor|dat|MuxIm2|Mux21~0_combout\ & (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|MuxIm1|f[10]~10_combout\) # (\main_processor|control_unit|ALU_op[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux21~0_combout\,
	datab => \main_processor|dat|MuxIm1|f[10]~10_combout\,
	datac => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datad => \main_processor|control_unit|ALU_op[0]~6_combout\,
	combout => \main_processor|dat|ALU0|Mux21~2_combout\);

-- Location: LCCOMB_X52_Y24_N2
\main_processor|dat|ALU0|add|cycle0|cycle2|cycle2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle2|cycle2|s~combout\ = \main_processor|dat|MuxIm2|Mux21~0_combout\ $ (\main_processor|dat|ALU0|add|cycle0|cycle2|cycle1|Cout~0_combout\ $ (((!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- \main_processor|dat|A|q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux21~0_combout\,
	datab => \main_processor|control_unit|Im_Mux1~0_combout\,
	datac => \main_processor|dat|ALU0|add|cycle0|cycle2|cycle1|Cout~0_combout\,
	datad => \main_processor|dat|A|q\(10),
	combout => \main_processor|dat|ALU0|add|cycle0|cycle2|cycle2|s~combout\);

-- Location: LCCOMB_X52_Y24_N22
\main_processor|dat|ALU0|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux21~3_combout\ = (\main_processor|dat|ALU0|Mux21~2_combout\ & ((\main_processor|dat|MuxIm2|Mux21~0_combout\) # ((!\main_processor|control_unit|ALU_op[1]~4_combout\)))) # (!\main_processor|dat|ALU0|Mux21~2_combout\ & 
-- (((\main_processor|control_unit|ALU_op[1]~4_combout\ & \main_processor|dat|ALU0|add|cycle0|cycle2|cycle2|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux21~0_combout\,
	datab => \main_processor|dat|ALU0|Mux21~2_combout\,
	datac => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle2|cycle2|s~combout\,
	combout => \main_processor|dat|ALU0|Mux21~3_combout\);

-- Location: LCCOMB_X53_Y26_N4
\main_processor|dat|ALU0|Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux21~4_combout\ = (\main_processor|control_unit|ALU_op[0]~8_combout\ & ((\main_processor|control_unit|Mux3~0_combout\ & ((\main_processor|dat|ALU0|Mux21~1_combout\))) # (!\main_processor|control_unit|Mux3~0_combout\ & 
-- (\main_processor|dat|ALU0|Mux21~3_combout\)))) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & (((\main_processor|dat|ALU0|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datab => \main_processor|control_unit|Mux3~0_combout\,
	datac => \main_processor|dat|ALU0|Mux21~3_combout\,
	datad => \main_processor|dat|ALU0|Mux21~1_combout\,
	combout => \main_processor|dat|ALU0|Mux21~4_combout\);

-- Location: LCCOMB_X53_Y26_N22
\main_processor|dat|MuxData|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux21~1_combout\ = (\main_processor|dat|MuxData|Mux21~0_combout\) # ((!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|control_unit|Data_Mux[1]~1_combout\ & \main_processor|dat|ALU0|Mux21~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datab => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datac => \main_processor|dat|ALU0|Mux21~4_combout\,
	datad => \main_processor|dat|MuxData|Mux21~0_combout\,
	combout => \main_processor|dat|MuxData|Mux21~1_combout\);

-- Location: LCCOMB_X50_Y26_N16
\main_processor|dat|DataMemory|data_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~9_combout\ = (!\main_processor|control_unit|wen~q\ & (\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a9\ & \main_processor|control_unit|en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|wen~q\,
	datac => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a9\,
	datad => \main_processor|control_unit|en~q\,
	combout => \main_processor|dat|DataMemory|data_out~9_combout\);

-- Location: FF_X54_Y26_N29
\main_processor|dat|DataMemory|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|DataMemory|data_out~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(9));

-- Location: LCCOMB_X54_Y26_N28
\main_processor|dat|MuxData|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux22~0_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_processor|dat|DataMemory|data_out\(9)))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_memory|altsyncram_component|auto_generated|q_a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datab => \main_memory|altsyncram_component|auto_generated|q_a\(9),
	datac => \main_processor|dat|DataMemory|data_out\(9),
	datad => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	combout => \main_processor|dat|MuxData|Mux22~0_combout\);

-- Location: LCCOMB_X54_Y22_N16
\main_processor|dat|MuxB|f[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[9]~9_combout\ = (\main_processor|control_unit|B_Mux~1_combout\ & (\main_processor|dat|IR|q\(9))) # (!\main_processor|control_unit|B_Mux~1_combout\ & (((\main_processor|dat|MuxData|Mux22~0_combout\) # 
-- (\main_processor|dat|MuxData|Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|B_Mux~1_combout\,
	datab => \main_processor|dat|IR|q\(9),
	datac => \main_processor|dat|MuxData|Mux22~0_combout\,
	datad => \main_processor|dat|MuxData|Mux22~2_combout\,
	combout => \main_processor|dat|MuxB|f[9]~9_combout\);

-- Location: FF_X54_Y22_N17
\main_processor|dat|B|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[9]~9_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(9));

-- Location: LCCOMB_X54_Y22_N28
\main_processor|dat|MuxIm2|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux22~0_combout\ = (!\main_processor|control_unit|Im_Mux2[1]~3_combout\ & ((\main_processor|control_unit|Im_Mux2[0]~0_combout\ & (\main_processor|dat|B|q\(9))) # (!\main_processor|control_unit|Im_Mux2[0]~0_combout\ & 
-- ((\main_processor|dat|IR|q\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux2[1]~3_combout\,
	datab => \main_processor|dat|B|q\(9),
	datac => \main_processor|dat|IR|q\(9),
	datad => \main_processor|control_unit|Im_Mux2[0]~0_combout\,
	combout => \main_processor|dat|MuxIm2|Mux22~0_combout\);

-- Location: LCCOMB_X50_Y22_N30
\main_processor|dat|ALU0|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux22~2_combout\ = (\main_processor|dat|MuxIm2|Mux22~0_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # ((\main_processor|dat|MuxIm1|f[9]~9_combout\ & !\main_processor|control_unit|ALU_op[1]~4_combout\)))) # 
-- (!\main_processor|dat|MuxIm2|Mux22~0_combout\ & (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|MuxIm1|f[9]~9_combout\) # (\main_processor|control_unit|ALU_op[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux22~0_combout\,
	datab => \main_processor|dat|MuxIm1|f[9]~9_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|control_unit|ALU_op[1]~4_combout\,
	combout => \main_processor|dat|ALU0|Mux22~2_combout\);

-- Location: LCCOMB_X53_Y21_N22
\main_processor|dat|ALU0|add|cycle0|cycle2|cycle1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle2|cycle1|s~combout\ = \main_processor|dat|ALU0|add|cycle0|cycle2|cycle0|Cout~0_combout\ $ (\main_processor|dat|MuxIm2|Mux22~0_combout\ $ (((\main_processor|dat|A|q\(9) & 
-- !\main_processor|control_unit|Im_Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|A|q\(9),
	datab => \main_processor|control_unit|Im_Mux1~0_combout\,
	datac => \main_processor|dat|ALU0|add|cycle0|cycle2|cycle0|Cout~0_combout\,
	datad => \main_processor|dat|MuxIm2|Mux22~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle0|cycle2|cycle1|s~combout\);

-- Location: LCCOMB_X50_Y22_N12
\main_processor|dat|ALU0|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux22~3_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|dat|ALU0|Mux22~2_combout\ & (\main_processor|dat|MuxIm2|Mux22~0_combout\)) # (!\main_processor|dat|ALU0|Mux22~2_combout\ & 
-- ((\main_processor|dat|ALU0|add|cycle0|cycle2|cycle1|s~combout\))))) # (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (((\main_processor|dat|ALU0|Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux22~0_combout\,
	datab => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|dat|ALU0|Mux22~2_combout\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle2|cycle1|s~combout\,
	combout => \main_processor|dat|ALU0|Mux22~3_combout\);

-- Location: LCCOMB_X53_Y26_N20
\main_processor|dat|ALU0|Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux22~4_combout\ = (\main_processor|control_unit|ALU_op[0]~8_combout\ & ((\main_processor|control_unit|Mux3~0_combout\ & ((\main_processor|dat|ALU0|Mux22~1_combout\))) # (!\main_processor|control_unit|Mux3~0_combout\ & 
-- (\main_processor|dat|ALU0|Mux22~3_combout\)))) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & (((\main_processor|dat|ALU0|Mux22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datab => \main_processor|control_unit|Mux3~0_combout\,
	datac => \main_processor|dat|ALU0|Mux22~3_combout\,
	datad => \main_processor|dat|ALU0|Mux22~1_combout\,
	combout => \main_processor|dat|ALU0|Mux22~4_combout\);

-- Location: LCCOMB_X53_Y26_N10
\main_processor|dat|MuxData|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux22~1_combout\ = (\main_processor|dat|MuxData|Mux22~0_combout\) # ((!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|dat|ALU0|Mux22~4_combout\ & \main_processor|control_unit|Data_Mux[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datab => \main_processor|dat|ALU0|Mux22~4_combout\,
	datac => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datad => \main_processor|dat|MuxData|Mux22~0_combout\,
	combout => \main_processor|dat|MuxData|Mux22~1_combout\);

-- Location: LCCOMB_X52_Y21_N14
\main_processor|dat|DataMemory|data_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~3_combout\ = (!\main_processor|control_unit|wen~q\ & (\main_processor|control_unit|en~q\ & \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|wen~q\,
	datac => \main_processor|control_unit|en~q\,
	datad => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a3\,
	combout => \main_processor|dat|DataMemory|data_out~3_combout\);

-- Location: FF_X49_Y24_N25
\main_processor|dat|DataMemory|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|DataMemory|data_out~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(3));

-- Location: LCCOMB_X49_Y24_N24
\main_processor|dat|MuxData|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux28~0_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_processor|dat|DataMemory|data_out\(3)))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_memory|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_memory|altsyncram_component|auto_generated|q_a\(3),
	datab => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datac => \main_processor|dat|DataMemory|data_out\(3),
	datad => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	combout => \main_processor|dat|MuxData|Mux28~0_combout\);

-- Location: LCCOMB_X49_Y24_N8
\main_processor|dat|MuxB|f[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[3]~3_combout\ = (\main_processor|control_unit|B_Mux~1_combout\ & (((\main_processor|dat|IR|q\(3))))) # (!\main_processor|control_unit|B_Mux~1_combout\ & ((\main_processor|dat|MuxData|Mux28~2_combout\) # 
-- ((\main_processor|dat|MuxData|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux28~2_combout\,
	datab => \main_processor|control_unit|B_Mux~1_combout\,
	datac => \main_processor|dat|IR|q\(3),
	datad => \main_processor|dat|MuxData|Mux28~0_combout\,
	combout => \main_processor|dat|MuxB|f[3]~3_combout\);

-- Location: FF_X52_Y21_N13
\main_processor|dat|B|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|MuxB|f[3]~3_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	sload => VCC,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(3));

-- Location: LCCOMB_X53_Y25_N4
\main_processor|dat|MuxIm2|Mux28~0_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux28~0_Duplicate_2\ = (!\main_processor|control_unit|Im_Mux2[1]~3_combout\ & ((\main_processor|control_unit|Im_Mux2[0]~0_combout\ & ((\main_processor|dat|B|q\(3)))) # (!\main_processor|control_unit|Im_Mux2[0]~0_combout\ & 
-- (\main_processor|dat|IR|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(3),
	datab => \main_processor|control_unit|Im_Mux2[0]~0_combout\,
	datac => \main_processor|dat|B|q\(3),
	datad => \main_processor|control_unit|Im_Mux2[1]~3_combout\,
	combout => \main_processor|dat|MuxIm2|Mux28~0_Duplicate_2\);

-- Location: LCCOMB_X53_Y24_N4
\main_processor|dat|MuxIm2|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux30~2_combout\ = (!\main_processor|control_unit|Im_Mux2[1]~3_Duplicate_6\ & ((\main_processor|control_unit|Im_Mux2[0]~0_combout\ & ((\main_processor|dat|B|q\(1)))) # (!\main_processor|control_unit|Im_Mux2[0]~0_combout\ & 
-- (\main_processor|dat|IR|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(1),
	datab => \main_processor|dat|B|q\(1),
	datac => \main_processor|control_unit|Im_Mux2[1]~3_Duplicate_6\,
	datad => \main_processor|control_unit|Im_Mux2[0]~0_combout\,
	combout => \main_processor|dat|MuxIm2|Mux30~2_combout\);

-- Location: LCCOMB_X53_Y24_N10
\main_processor|dat|ALU0|add|cycle0|cycle0|cycle0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle0|cycle0|Cout~0_combout\ = (\main_processor|control_unit|ALU_op[2]~3_combout\ & ((\main_processor|dat|MuxIm2|Mux31~0_combout\) # ((\main_processor|dat|A|q\(0) & !\main_processor|control_unit|Im_Mux1~0_combout\)))) 
-- # (!\main_processor|control_unit|ALU_op[2]~3_combout\ & (\main_processor|dat|A|q\(0) & (!\main_processor|control_unit|Im_Mux1~0_combout\ & \main_processor|dat|MuxIm2|Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|A|q\(0),
	datab => \main_processor|control_unit|Im_Mux1~0_combout\,
	datac => \main_processor|control_unit|ALU_op[2]~3_combout\,
	datad => \main_processor|dat|MuxIm2|Mux31~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle0|cycle0|cycle0|Cout~0_combout\);

-- Location: LCCOMB_X53_Y24_N18
\main_processor|dat|ALU0|add|cycle0|cycle0|cycle1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle0|cycle1|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux30~2_combout\ & ((\main_processor|dat|ALU0|add|cycle0|cycle0|cycle0|Cout~0_combout\) # ((\main_processor|dat|A|q\(1) & 
-- !\main_processor|control_unit|Im_Mux1~0_combout\)))) # (!\main_processor|dat|MuxIm2|Mux30~2_combout\ & (\main_processor|dat|A|q\(1) & (!\main_processor|control_unit|Im_Mux1~0_combout\ & \main_processor|dat|ALU0|add|cycle0|cycle0|cycle0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|A|q\(1),
	datab => \main_processor|control_unit|Im_Mux1~0_combout\,
	datac => \main_processor|dat|MuxIm2|Mux30~2_combout\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle0|cycle0|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle0|cycle0|cycle1|Cout~0_combout\);

-- Location: LCCOMB_X53_Y24_N2
\main_processor|dat|ALU0|add|cycle0|cycle0|cycle2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle0|cycle2|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux29~0_combout\ & ((\main_processor|dat|ALU0|add|cycle0|cycle0|cycle1|Cout~0_combout\) # ((\main_processor|dat|A|q\(2) & 
-- !\main_processor|control_unit|Im_Mux1~0_combout\)))) # (!\main_processor|dat|MuxIm2|Mux29~0_combout\ & (\main_processor|dat|A|q\(2) & (!\main_processor|control_unit|Im_Mux1~0_combout\ & \main_processor|dat|ALU0|add|cycle0|cycle0|cycle1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|A|q\(2),
	datab => \main_processor|control_unit|Im_Mux1~0_combout\,
	datac => \main_processor|dat|MuxIm2|Mux29~0_combout\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle0|cycle1|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle0|cycle0|cycle2|Cout~0_combout\);

-- Location: LCCOMB_X53_Y25_N10
\main_processor|dat|ALU0|add|cycle0|cycle0|cycle3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle0|cycle3|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux28~0_Duplicate_2\ & ((\main_processor|dat|ALU0|add|cycle0|cycle0|cycle2|Cout~0_combout\) # ((!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- \main_processor|dat|A|q\(3))))) # (!\main_processor|dat|MuxIm2|Mux28~0_Duplicate_2\ & (!\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|A|q\(3) & \main_processor|dat|ALU0|add|cycle0|cycle0|cycle2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|A|q\(3),
	datac => \main_processor|dat|MuxIm2|Mux28~0_Duplicate_2\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle0|cycle2|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle0|cycle0|cycle3|Cout~0_combout\);

-- Location: LCCOMB_X53_Y25_N6
\main_processor|dat|ALU0|add|cycle0|cycle1|cycle0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle1|cycle0|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux27~2_combout\ & ((\main_processor|dat|ALU0|add|cycle0|cycle0|cycle3|Cout~0_combout\) # ((!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- \main_processor|dat|A|q\(4))))) # (!\main_processor|dat|MuxIm2|Mux27~2_combout\ & (!\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|A|q\(4) & \main_processor|dat|ALU0|add|cycle0|cycle0|cycle3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|A|q\(4),
	datac => \main_processor|dat|MuxIm2|Mux27~2_combout\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle0|cycle3|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle0|cycle1|cycle0|Cout~0_combout\);

-- Location: LCCOMB_X53_Y25_N18
\main_processor|dat|ALU0|add|cycle0|cycle1|cycle1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle1|cycle1|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux26~0_Duplicate_2\ & ((\main_processor|dat|ALU0|add|cycle0|cycle1|cycle0|Cout~0_combout\) # ((!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- \main_processor|dat|A|q\(5))))) # (!\main_processor|dat|MuxIm2|Mux26~0_Duplicate_2\ & (!\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|A|q\(5) & \main_processor|dat|ALU0|add|cycle0|cycle1|cycle0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|A|q\(5),
	datac => \main_processor|dat|MuxIm2|Mux26~0_Duplicate_2\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle1|cycle0|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle0|cycle1|cycle1|Cout~0_combout\);

-- Location: LCCOMB_X52_Y25_N16
\main_processor|dat|ALU0|add|cycle0|cycle1|cycle2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle1|cycle2|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux25~0_Duplicate_2\ & ((\main_processor|dat|ALU0|add|cycle0|cycle1|cycle1|Cout~0_combout\) # ((\main_processor|dat|A|q\(6) & 
-- !\main_processor|control_unit|Im_Mux1~0_combout\)))) # (!\main_processor|dat|MuxIm2|Mux25~0_Duplicate_2\ & (\main_processor|dat|A|q\(6) & (!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- \main_processor|dat|ALU0|add|cycle0|cycle1|cycle1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|A|q\(6),
	datab => \main_processor|control_unit|Im_Mux1~0_combout\,
	datac => \main_processor|dat|MuxIm2|Mux25~0_Duplicate_2\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle1|cycle1|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle0|cycle1|cycle2|Cout~0_combout\);

-- Location: LCCOMB_X52_Y25_N2
\main_processor|dat|ALU0|add|cycle0|cycle1|cycle3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle1|cycle3|s~combout\ = \main_processor|dat|MuxIm2|Mux24~2_Duplicate_4\ $ (\main_processor|dat|ALU0|add|cycle0|cycle1|cycle2|Cout~0_combout\ $ (((\main_processor|dat|A|q\(7) & 
-- !\main_processor|control_unit|Im_Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|A|q\(7),
	datab => \main_processor|control_unit|Im_Mux1~0_combout\,
	datac => \main_processor|dat|MuxIm2|Mux24~2_Duplicate_4\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle1|cycle2|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle0|cycle1|cycle3|s~combout\);

-- Location: LCCOMB_X52_Y25_N20
\main_processor|dat|ALU0|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux24~3_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|dat|ALU0|Mux24~2_combout\ & (\main_processor|dat|MuxIm2|Mux24~2_Duplicate_4\)) # (!\main_processor|dat|ALU0|Mux24~2_combout\ & 
-- ((\main_processor|dat|ALU0|add|cycle0|cycle1|cycle3|s~combout\))))) # (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (\main_processor|dat|ALU0|Mux24~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|dat|ALU0|Mux24~2_combout\,
	datac => \main_processor|dat|MuxIm2|Mux24~2_Duplicate_4\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle1|cycle3|s~combout\,
	combout => \main_processor|dat|ALU0|Mux24~3_combout\);

-- Location: LCCOMB_X52_Y25_N8
\main_processor|dat|MuxData|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux24~2_combout\ = (\main_processor|dat|MuxData|Mux31~2_combout\ & ((\main_processor|control_unit|ALU_op[2]~3_combout\ & (\main_processor|dat|ALU0|Mux24~1_combout\)) # (!\main_processor|control_unit|ALU_op[2]~3_combout\ & 
-- ((\main_processor|dat|ALU0|Mux24~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[2]~3_combout\,
	datab => \main_processor|dat|MuxData|Mux31~2_combout\,
	datac => \main_processor|dat|ALU0|Mux24~1_combout\,
	datad => \main_processor|dat|ALU0|Mux24~3_combout\,
	combout => \main_processor|dat|MuxData|Mux24~2_combout\);

-- Location: LCCOMB_X52_Y22_N12
\main_processor|dat|MuxB|f[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[7]~7_combout\ = (\main_processor|control_unit|B_Mux~1_combout\ & (\main_processor|dat|IR|q\(7))) # (!\main_processor|control_unit|B_Mux~1_combout\ & (((\main_processor|dat|MuxData|Mux24~0_combout\) # 
-- (\main_processor|dat|MuxData|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|B_Mux~1_combout\,
	datab => \main_processor|dat|IR|q\(7),
	datac => \main_processor|dat|MuxData|Mux24~0_combout\,
	datad => \main_processor|dat|MuxData|Mux24~2_combout\,
	combout => \main_processor|dat|MuxB|f[7]~7_combout\);

-- Location: FF_X52_Y22_N13
\main_processor|dat|B|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[7]~7_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(7));

-- Location: LCCOMB_X50_Y21_N26
\main_processor|dat|MuxIm2|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux24~0_combout\ = (\main_processor|dat|B|q\(7) & (((!\main_processor|control_unit|ALU_op[0]~2_Duplicate_17\) # (!\main_processor|control_unit|ALU_op[0]~5_Duplicate_15\)) # (!\main_processor|control_unit|Mux7~0_Duplicate_4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|B|q\(7),
	datab => \main_processor|control_unit|Mux7~0_Duplicate_4\,
	datac => \main_processor|control_unit|ALU_op[0]~5_Duplicate_15\,
	datad => \main_processor|control_unit|ALU_op[0]~2_Duplicate_17\,
	combout => \main_processor|dat|MuxIm2|Mux24~0_combout\);

-- Location: LCCOMB_X50_Y21_N12
\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|Cout~0_combout\ = (\main_processor|dat|MuxIm1|f[7]~7_combout\ & ((\main_processor|control_unit|Im_Mux2[1]~3_Duplicate_10\) # ((!\main_processor|dat|MuxIm2|Mux24~0_combout\ & 
-- !\main_processor|dat|MuxIm2|Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[7]~7_combout\,
	datab => \main_processor|control_unit|Im_Mux2[1]~3_Duplicate_10\,
	datac => \main_processor|dat|MuxIm2|Mux24~0_combout\,
	datad => \main_processor|dat|MuxIm2|Mux24~1_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|Cout~0_combout\);

-- Location: LCCOMB_X50_Y22_N28
\main_processor|dat|ALU0|sub|cycle0|cycle2|cycle0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle0|s~combout\ = \main_processor|dat|MuxIm2|Mux23~0_combout\ $ (\main_processor|dat|MuxIm1|f[8]~8_combout\ $ (((\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|Cout~0_combout\,
	datab => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|Cout~2_combout\,
	datac => \main_processor|dat|MuxIm2|Mux23~0_combout\,
	datad => \main_processor|dat|MuxIm1|f[8]~8_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle0|s~combout\);

-- Location: LCCOMB_X50_Y22_N22
\main_processor|dat|ALU0|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux23~0_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & (\main_processor|control_unit|ALU_op[1]~4_combout\)) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & 
-- ((\main_processor|control_unit|ALU_op[1]~4_combout\ & ((!\main_processor|dat|ALU0|sub|cycle0|cycle2|cycle0|s~combout\))) # (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (\main_processor|dat|MuxIm1|f[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datab => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|dat|MuxIm1|f[7]~7_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle0|cycle2|cycle0|s~combout\,
	combout => \main_processor|dat|ALU0|Mux23~0_combout\);

-- Location: LCCOMB_X50_Y22_N20
\main_processor|dat|ALU0|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux23~1_combout\ = (\main_processor|dat|ALU0|Mux23~0_combout\ & (((\main_processor|dat|MuxIm1|f[8]~8_combout\) # (!\main_processor|control_unit|ALU_op[0]~6_combout\)))) # (!\main_processor|dat|ALU0|Mux23~0_combout\ & 
-- (\main_processor|dat|MuxIm1|f[9]~9_combout\ & (\main_processor|control_unit|ALU_op[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux23~0_combout\,
	datab => \main_processor|dat|MuxIm1|f[9]~9_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|MuxIm1|f[8]~8_combout\,
	combout => \main_processor|dat|ALU0|Mux23~1_combout\);

-- Location: LCCOMB_X50_Y22_N6
\main_processor|dat|ALU0|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux23~2_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|control_unit|ALU_op[1]~4_combout\) # ((\main_processor|dat|MuxIm2|Mux23~0_combout\) # (\main_processor|dat|MuxIm1|f[8]~8_combout\)))) # 
-- (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (\main_processor|dat|MuxIm2|Mux23~0_combout\ & \main_processor|dat|MuxIm1|f[8]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datab => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|dat|MuxIm2|Mux23~0_combout\,
	datad => \main_processor|dat|MuxIm1|f[8]~8_combout\,
	combout => \main_processor|dat|ALU0|Mux23~2_combout\);

-- Location: LCCOMB_X53_Y21_N26
\main_processor|dat|ALU0|add|cycle0|cycle2|cycle0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle2|cycle0|s~combout\ = \main_processor|dat|MuxIm2|Mux23~0_combout\ $ (\main_processor|dat|ALU0|add|cycle0|cycle1|cycle3|Cout~0_combout\ $ (((!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- \main_processor|dat|A|q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|A|q\(8),
	datac => \main_processor|dat|MuxIm2|Mux23~0_combout\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle1|cycle3|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle0|cycle2|cycle0|s~combout\);

-- Location: LCCOMB_X50_Y22_N24
\main_processor|dat|ALU0|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux23~3_combout\ = (\main_processor|dat|ALU0|Mux23~2_combout\ & (((\main_processor|dat|MuxIm2|Mux23~0_combout\)) # (!\main_processor|control_unit|ALU_op[1]~4_combout\))) # (!\main_processor|dat|ALU0|Mux23~2_combout\ & 
-- (\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|dat|ALU0|add|cycle0|cycle2|cycle0|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux23~2_combout\,
	datab => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|dat|MuxIm2|Mux23~0_combout\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle2|cycle0|s~combout\,
	combout => \main_processor|dat|ALU0|Mux23~3_combout\);

-- Location: LCCOMB_X52_Y25_N10
\main_processor|dat|MuxData|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux23~0_combout\ = (\main_processor|dat|MuxData|Mux31~2_combout\ & ((\main_processor|control_unit|ALU_op[2]~3_combout\ & (\main_processor|dat|ALU0|Mux23~1_combout\)) # (!\main_processor|control_unit|ALU_op[2]~3_combout\ & 
-- ((\main_processor|dat|ALU0|Mux23~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[2]~3_combout\,
	datab => \main_processor|dat|MuxData|Mux31~2_combout\,
	datac => \main_processor|dat|ALU0|Mux23~1_combout\,
	datad => \main_processor|dat|ALU0|Mux23~3_combout\,
	combout => \main_processor|dat|MuxData|Mux23~0_combout\);

-- Location: LCCOMB_X53_Y26_N2
\main_processor|dat|MuxData|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux23~2_combout\ = (\main_processor|dat|MuxData|Mux23~0_combout\) # (\main_processor|dat|MuxData|Mux23~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|dat|MuxData|Mux23~0_combout\,
	datad => \main_processor|dat|MuxData|Mux23~1_combout\,
	combout => \main_processor|dat|MuxData|Mux23~2_combout\);

-- Location: LCCOMB_X54_Y26_N10
\main_processor|dat|DataMemory|data_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~6_combout\ = (!\main_processor|control_unit|wen~q\ & (\main_processor|control_unit|en~q\ & \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|wen~q\,
	datab => \main_processor|control_unit|en~q\,
	datac => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a6\,
	combout => \main_processor|dat|DataMemory|data_out~6_combout\);

-- Location: FF_X54_Y26_N11
\main_processor|dat|DataMemory|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|DataMemory|data_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(6));

-- Location: LCCOMB_X54_Y26_N24
\main_processor|dat|MuxData|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux25~1_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_processor|dat|DataMemory|data_out\(6)))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_memory|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_memory|altsyncram_component|auto_generated|q_a\(6),
	datad => \main_processor|dat|DataMemory|data_out\(6),
	combout => \main_processor|dat|MuxData|Mux25~1_combout\);

-- Location: LCCOMB_X50_Y23_N28
\main_processor|dat|MuxA|f[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[6]~6_combout\ = (\main_processor|control_unit|A_Mux~0_combout\ & (((\main_processor|dat|IR|q\(6))))) # (!\main_processor|control_unit|A_Mux~0_combout\ & ((\main_processor|dat|MuxData|Mux25~0_combout\) # 
-- ((\main_processor|dat|MuxData|Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux25~0_combout\,
	datab => \main_processor|control_unit|A_Mux~0_combout\,
	datac => \main_processor|dat|IR|q\(6),
	datad => \main_processor|dat|MuxData|Mux25~1_combout\,
	combout => \main_processor|dat|MuxA|f[6]~6_combout\);

-- Location: FF_X50_Y23_N29
\main_processor|dat|A|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[6]~6_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(6));

-- Location: LCCOMB_X50_Y23_N6
\main_processor|dat|MuxIm1|f[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[6]~6_combout\ = (\main_processor|dat|A|q\(6) & (((\main_processor|dat|IR|q\(28)) # (\main_processor|dat|IR|q\(29))) # (!\main_processor|control_unit|ALU_op[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~2_combout\,
	datab => \main_processor|dat|IR|q\(28),
	datac => \main_processor|dat|IR|q\(29),
	datad => \main_processor|dat|A|q\(6),
	combout => \main_processor|dat|MuxIm1|f[6]~6_combout\);

-- Location: LCCOMB_X49_Y21_N16
\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|s~0_combout\ = \main_processor|dat|MuxIm1|f[7]~7_combout\ $ (((!\main_processor|control_unit|Im_Mux2[1]~3_Duplicate_10\ & ((\main_processor|dat|MuxIm2|Mux24~0_combout\) # 
-- (\main_processor|dat|MuxIm2|Mux24~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux24~0_combout\,
	datab => \main_processor|dat|MuxIm1|f[7]~7_combout\,
	datac => \main_processor|dat|MuxIm2|Mux24~1_combout\,
	datad => \main_processor|control_unit|Im_Mux2[1]~3_Duplicate_10\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|s~0_combout\);

-- Location: LCCOMB_X50_Y21_N2
\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|s~combout\ = \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|s~0_combout\ $ (((\main_processor|dat|MuxIm2|Mux25~0_combout\ & (\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle1|Cout~0_combout\ & 
-- \main_processor|dat|MuxIm1|f[6]~6_combout\)) # (!\main_processor|dat|MuxIm2|Mux25~0_combout\ & ((\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle1|Cout~0_combout\) # (\main_processor|dat|MuxIm1|f[6]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux25~0_combout\,
	datab => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle1|Cout~0_combout\,
	datac => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|s~0_combout\,
	datad => \main_processor|dat|MuxIm1|f[6]~6_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|s~combout\);

-- Location: LCCOMB_X50_Y22_N0
\main_processor|dat|ALU0|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux24~0_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & (((\main_processor|control_unit|ALU_op[0]~6_combout\) # (!\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|s~combout\)))) # 
-- (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (\main_processor|dat|MuxIm1|f[6]~6_combout\ & (!\main_processor|control_unit|ALU_op[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[6]~6_combout\,
	datab => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle3|s~combout\,
	combout => \main_processor|dat|ALU0|Mux24~0_combout\);

-- Location: LCCOMB_X50_Y22_N2
\main_processor|dat|ALU0|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux24~1_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|ALU0|Mux24~0_combout\ & (\main_processor|dat|MuxIm1|f[7]~7_combout\)) # (!\main_processor|dat|ALU0|Mux24~0_combout\ & 
-- ((\main_processor|dat|MuxIm1|f[8]~8_combout\))))) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (\main_processor|dat|ALU0|Mux24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datab => \main_processor|dat|ALU0|Mux24~0_combout\,
	datac => \main_processor|dat|MuxIm1|f[7]~7_combout\,
	datad => \main_processor|dat|MuxIm1|f[8]~8_combout\,
	combout => \main_processor|dat|ALU0|Mux24~1_combout\);

-- Location: LCCOMB_X52_Y25_N18
\main_processor|dat|ALU0|Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux24~4_combout\ = (\main_processor|control_unit|Mux3~0_combout\ & ((\main_processor|control_unit|ALU_op[0]~8_combout\ & (\main_processor|dat|ALU0|Mux24~1_combout\)) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & 
-- ((\main_processor|dat|ALU0|Mux24~3_combout\))))) # (!\main_processor|control_unit|Mux3~0_combout\ & (((\main_processor|dat|ALU0|Mux24~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Mux3~0_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datac => \main_processor|dat|ALU0|Mux24~1_combout\,
	datad => \main_processor|dat|ALU0|Mux24~3_combout\,
	combout => \main_processor|dat|ALU0|Mux24~4_combout\);

-- Location: LCCOMB_X56_Y25_N24
\main_processor|dat|MuxData|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux24~1_combout\ = (\main_processor|dat|MuxData|Mux24~0_combout\) # ((!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|control_unit|Data_Mux[1]~1_combout\ & \main_processor|dat|ALU0|Mux24~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datab => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datac => \main_processor|dat|ALU0|Mux24~4_combout\,
	datad => \main_processor|dat|MuxData|Mux24~0_combout\,
	combout => \main_processor|dat|MuxData|Mux24~1_combout\);

-- Location: FF_X52_Y25_N23
\main_processor|dat|IR|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|MuxData|Mux24~1_combout\,
	sload => VCC,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(7));

-- Location: LCCOMB_X52_Y21_N24
\main_processor|dat|DataMemory|data_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~7_combout\ = (!\main_processor|control_unit|wen~q\ & (\main_processor|control_unit|en~q\ & \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|wen~q\,
	datac => \main_processor|control_unit|en~q\,
	datad => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a7\,
	combout => \main_processor|dat|DataMemory|data_out~7_combout\);

-- Location: FF_X56_Y25_N11
\main_processor|dat|DataMemory|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|DataMemory|data_out~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(7));

-- Location: LCCOMB_X56_Y25_N10
\main_processor|dat|MuxData|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux24~0_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|dat|DataMemory|data_out\(7))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_memory|altsyncram_component|auto_generated|q_a\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datab => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datac => \main_processor|dat|DataMemory|data_out\(7),
	datad => \main_memory|altsyncram_component|auto_generated|q_a\(7),
	combout => \main_processor|dat|MuxData|Mux24~0_combout\);

-- Location: LCCOMB_X52_Y22_N0
\main_processor|dat|MuxA|f[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[7]~7_combout\ = (\main_processor|control_unit|A_Mux~0_combout\ & (((\main_processor|dat|IR|q\(7))))) # (!\main_processor|control_unit|A_Mux~0_combout\ & ((\main_processor|dat|MuxData|Mux24~0_combout\) # 
-- ((\main_processor|dat|MuxData|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux24~0_combout\,
	datab => \main_processor|dat|IR|q\(7),
	datac => \main_processor|control_unit|A_Mux~0_combout\,
	datad => \main_processor|dat|MuxData|Mux24~2_combout\,
	combout => \main_processor|dat|MuxA|f[7]~7_combout\);

-- Location: FF_X52_Y22_N1
\main_processor|dat|A|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[7]~7_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(7));

-- Location: LCCOMB_X50_Y23_N24
\main_processor|dat|MuxIm1|f[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[7]~7_combout\ = (\main_processor|dat|A|q\(7) & (((\main_processor|dat|IR|q\(28)) # (\main_processor|dat|IR|q\(29))) # (!\main_processor|control_unit|ALU_op[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~2_combout\,
	datab => \main_processor|dat|IR|q\(28),
	datac => \main_processor|dat|IR|q\(29),
	datad => \main_processor|dat|A|q\(7),
	combout => \main_processor|dat|MuxIm1|f[7]~7_combout\);

-- Location: LCCOMB_X50_Y23_N18
\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle2|s~combout\ = \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle1|Cout~0_combout\ $ (\main_processor|dat|MuxIm2|Mux25~0_combout\ $ (((!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- \main_processor|dat|A|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle1|Cout~0_combout\,
	datac => \main_processor|dat|MuxIm2|Mux25~0_combout\,
	datad => \main_processor|dat|A|q\(6),
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle2|s~combout\);

-- Location: LCCOMB_X50_Y23_N8
\main_processor|dat|ALU0|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux25~0_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & (((\main_processor|control_unit|ALU_op[0]~6_combout\) # (!\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle2|s~combout\)))) # 
-- (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (\main_processor|dat|MuxIm1|f[5]~5_combout\ & ((!\main_processor|control_unit|ALU_op[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[5]~5_combout\,
	datab => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle2|s~combout\,
	datac => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datad => \main_processor|control_unit|ALU_op[0]~6_combout\,
	combout => \main_processor|dat|ALU0|Mux25~0_combout\);

-- Location: LCCOMB_X50_Y23_N26
\main_processor|dat|ALU0|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux25~1_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|ALU0|Mux25~0_combout\ & ((\main_processor|dat|MuxIm1|f[6]~6_combout\))) # (!\main_processor|dat|ALU0|Mux25~0_combout\ & 
-- (\main_processor|dat|MuxIm1|f[7]~7_combout\)))) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (((\main_processor|dat|ALU0|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datab => \main_processor|dat|MuxIm1|f[7]~7_combout\,
	datac => \main_processor|dat|ALU0|Mux25~0_combout\,
	datad => \main_processor|dat|MuxIm1|f[6]~6_combout\,
	combout => \main_processor|dat|ALU0|Mux25~1_combout\);

-- Location: LCCOMB_X52_Y22_N26
\main_processor|dat|ALU0|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux25~2_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|MuxIm2|Mux25~0_combout\) # ((\main_processor|control_unit|ALU_op[1]~4_combout\) # (\main_processor|dat|MuxIm1|f[6]~6_combout\)))) # 
-- (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (\main_processor|dat|MuxIm2|Mux25~0_combout\ & (!\main_processor|control_unit|ALU_op[1]~4_combout\ & \main_processor|dat|MuxIm1|f[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datab => \main_processor|dat|MuxIm2|Mux25~0_combout\,
	datac => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datad => \main_processor|dat|MuxIm1|f[6]~6_combout\,
	combout => \main_processor|dat|ALU0|Mux25~2_combout\);

-- Location: LCCOMB_X52_Y25_N6
\main_processor|dat|ALU0|add|cycle0|cycle1|cycle2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle1|cycle2|s~combout\ = \main_processor|dat|MuxIm2|Mux25~0_Duplicate_2\ $ (\main_processor|dat|ALU0|add|cycle0|cycle1|cycle1|Cout~0_combout\ $ (((\main_processor|dat|A|q\(6) & 
-- !\main_processor|control_unit|Im_Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|A|q\(6),
	datab => \main_processor|control_unit|Im_Mux1~0_combout\,
	datac => \main_processor|dat|MuxIm2|Mux25~0_Duplicate_2\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle1|cycle1|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle0|cycle1|cycle2|s~combout\);

-- Location: LCCOMB_X52_Y25_N28
\main_processor|dat|ALU0|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux25~3_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|dat|ALU0|Mux25~2_combout\ & (\main_processor|dat|MuxIm2|Mux25~0_Duplicate_2\)) # (!\main_processor|dat|ALU0|Mux25~2_combout\ & 
-- ((\main_processor|dat|ALU0|add|cycle0|cycle1|cycle2|s~combout\))))) # (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (((\main_processor|dat|ALU0|Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|dat|MuxIm2|Mux25~0_Duplicate_2\,
	datac => \main_processor|dat|ALU0|Mux25~2_combout\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle1|cycle2|s~combout\,
	combout => \main_processor|dat|ALU0|Mux25~3_combout\);

-- Location: LCCOMB_X52_Y25_N26
\main_processor|dat|MuxData|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux25~0_combout\ = (\main_processor|dat|MuxData|Mux31~2_combout\ & ((\main_processor|control_unit|ALU_op[2]~3_combout\ & (\main_processor|dat|ALU0|Mux25~1_combout\)) # (!\main_processor|control_unit|ALU_op[2]~3_combout\ & 
-- ((\main_processor|dat|ALU0|Mux25~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[2]~3_combout\,
	datab => \main_processor|dat|MuxData|Mux31~2_combout\,
	datac => \main_processor|dat|ALU0|Mux25~1_combout\,
	datad => \main_processor|dat|ALU0|Mux25~3_combout\,
	combout => \main_processor|dat|MuxData|Mux25~0_combout\);

-- Location: LCCOMB_X52_Y25_N24
\main_processor|dat|MuxData|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux25~2_combout\ = (\main_processor|dat|MuxData|Mux25~0_combout\) # (\main_processor|dat|MuxData|Mux25~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux25~0_combout\,
	datad => \main_processor|dat|MuxData|Mux25~1_combout\,
	combout => \main_processor|dat|MuxData|Mux25~2_combout\);

-- Location: LCCOMB_X49_Y24_N20
\main_processor|dat|DataMemory|data_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~5_combout\ = (!\main_processor|control_unit|wen~q\ & (\main_processor|control_unit|en~q\ & \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|control_unit|wen~q\,
	datac => \main_processor|control_unit|en~q\,
	datad => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a5\,
	combout => \main_processor|dat|DataMemory|data_out~5_combout\);

-- Location: FF_X49_Y24_N21
\main_processor|dat|DataMemory|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|DataMemory|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(5));

-- Location: LCCOMB_X49_Y24_N18
\main_processor|dat|MuxData|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux26~0_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_processor|dat|DataMemory|data_out\(5)))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_memory|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_memory|altsyncram_component|auto_generated|q_a\(5),
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datad => \main_processor|dat|DataMemory|data_out\(5),
	combout => \main_processor|dat|MuxData|Mux26~0_combout\);

-- Location: LCCOMB_X52_Y22_N16
\main_processor|dat|MuxB|f[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[5]~5_combout\ = (\main_processor|control_unit|B_Mux~1_combout\ & (((\main_processor|dat|IR|q\(5))))) # (!\main_processor|control_unit|B_Mux~1_combout\ & ((\main_processor|dat|MuxData|Mux26~0_combout\) # 
-- ((\main_processor|dat|MuxData|Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|B_Mux~1_combout\,
	datab => \main_processor|dat|MuxData|Mux26~0_combout\,
	datac => \main_processor|dat|IR|q\(5),
	datad => \main_processor|dat|MuxData|Mux26~2_combout\,
	combout => \main_processor|dat|MuxB|f[5]~5_combout\);

-- Location: FF_X52_Y22_N17
\main_processor|dat|B|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[5]~5_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(5));

-- Location: LCCOMB_X53_Y25_N22
\main_processor|dat|MuxIm2|Mux26~0_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux26~0_Duplicate_2\ = (!\main_processor|control_unit|Im_Mux2[1]~3_combout\ & ((\main_processor|control_unit|Im_Mux2[0]~0_combout\ & (\main_processor|dat|B|q\(5))) # (!\main_processor|control_unit|Im_Mux2[0]~0_combout\ & 
-- ((\main_processor|dat|IR|q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|B|q\(5),
	datab => \main_processor|dat|IR|q\(5),
	datac => \main_processor|control_unit|Im_Mux2[1]~3_combout\,
	datad => \main_processor|control_unit|Im_Mux2[0]~0_combout\,
	combout => \main_processor|dat|MuxIm2|Mux26~0_Duplicate_2\);

-- Location: LCCOMB_X53_Y25_N26
\main_processor|dat|ALU0|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux26~2_combout\ = (\main_processor|dat|MuxIm2|Mux26~0_Duplicate_2\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # ((!\main_processor|control_unit|ALU_op[1]~4_combout\ & \main_processor|dat|MuxIm1|f[5]~5_combout\)))) # 
-- (!\main_processor|dat|MuxIm2|Mux26~0_Duplicate_2\ & (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|control_unit|ALU_op[1]~4_combout\) # (\main_processor|dat|MuxIm1|f[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux26~0_Duplicate_2\,
	datab => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|dat|MuxIm1|f[5]~5_combout\,
	datad => \main_processor|control_unit|ALU_op[0]~6_combout\,
	combout => \main_processor|dat|ALU0|Mux26~2_combout\);

-- Location: LCCOMB_X53_Y25_N20
\main_processor|dat|ALU0|add|cycle0|cycle1|cycle1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle1|cycle1|s~combout\ = \main_processor|dat|ALU0|add|cycle0|cycle1|cycle0|Cout~0_combout\ $ (\main_processor|dat|MuxIm2|Mux26~0_Duplicate_2\ $ (((\main_processor|dat|A|q\(5) & 
-- !\main_processor|control_unit|Im_Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|A|q\(5),
	datab => \main_processor|dat|ALU0|add|cycle0|cycle1|cycle0|Cout~0_combout\,
	datac => \main_processor|dat|MuxIm2|Mux26~0_Duplicate_2\,
	datad => \main_processor|control_unit|Im_Mux1~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle0|cycle1|cycle1|s~combout\);

-- Location: LCCOMB_X53_Y25_N28
\main_processor|dat|ALU0|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux26~3_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|dat|ALU0|Mux26~2_combout\ & (\main_processor|dat|MuxIm2|Mux26~0_Duplicate_2\)) # (!\main_processor|dat|ALU0|Mux26~2_combout\ & 
-- ((\main_processor|dat|ALU0|add|cycle0|cycle1|cycle1|s~combout\))))) # (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (((\main_processor|dat|ALU0|Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux26~0_Duplicate_2\,
	datab => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|dat|ALU0|Mux26~2_combout\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle1|cycle1|s~combout\,
	combout => \main_processor|dat|ALU0|Mux26~3_combout\);

-- Location: LCCOMB_X53_Y25_N16
\main_processor|dat|MuxData|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux26~2_combout\ = (\main_processor|dat|MuxData|Mux31~2_combout\ & ((\main_processor|control_unit|ALU_op[2]~3_combout\ & (\main_processor|dat|ALU0|Mux26~1_combout\)) # (!\main_processor|control_unit|ALU_op[2]~3_combout\ & 
-- ((\main_processor|dat|ALU0|Mux26~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux26~1_combout\,
	datab => \main_processor|dat|MuxData|Mux31~2_combout\,
	datac => \main_processor|control_unit|ALU_op[2]~3_combout\,
	datad => \main_processor|dat|ALU0|Mux26~3_combout\,
	combout => \main_processor|dat|MuxData|Mux26~2_combout\);

-- Location: LCCOMB_X53_Y25_N12
\main_processor|dat|MuxA|f[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[5]~5_combout\ = (\main_processor|control_unit|A_Mux~0_combout\ & (\main_processor|dat|IR|q\(5))) # (!\main_processor|control_unit|A_Mux~0_combout\ & (((\main_processor|dat|MuxData|Mux26~2_combout\) # 
-- (\main_processor|dat|MuxData|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|A_Mux~0_combout\,
	datab => \main_processor|dat|IR|q\(5),
	datac => \main_processor|dat|MuxData|Mux26~2_combout\,
	datad => \main_processor|dat|MuxData|Mux26~0_combout\,
	combout => \main_processor|dat|MuxA|f[5]~5_combout\);

-- Location: FF_X53_Y25_N13
\main_processor|dat|A|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[5]~5_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(5));

-- Location: LCCOMB_X52_Y24_N0
\main_processor|dat|MuxIm1|f[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[5]~5_combout\ = (\main_processor|dat|A|q\(5) & (((\main_processor|dat|IR|q\(29)) # (\main_processor|dat|IR|q\(28))) # (!\main_processor|control_unit|ALU_op[0]~2_Duplicate_10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~2_Duplicate_10\,
	datab => \main_processor|dat|IR|q\(29),
	datac => \main_processor|dat|IR|q\(28),
	datad => \main_processor|dat|A|q\(5),
	combout => \main_processor|dat|MuxIm1|f[5]~5_combout\);

-- Location: LCCOMB_X50_Y25_N18
\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle1|s~combout\ = \main_processor|dat|MuxIm1|f[5]~5_combout\ $ (\main_processor|dat|MuxIm2|Mux26~0_combout\ $ (((\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|Cout~2_combout\) # 
-- (\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[5]~5_combout\,
	datab => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|Cout~2_combout\,
	datac => \main_processor|dat|MuxIm2|Mux26~0_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle1|s~combout\);

-- Location: LCCOMB_X50_Y25_N12
\main_processor|dat|ALU0|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux26~0_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # ((!\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle1|s~combout\)))) # 
-- (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (\main_processor|dat|MuxIm1|f[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|MuxIm1|f[4]~4_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle1|s~combout\,
	combout => \main_processor|dat|ALU0|Mux26~0_combout\);

-- Location: LCCOMB_X50_Y25_N14
\main_processor|dat|ALU0|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux26~1_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|ALU0|Mux26~0_combout\ & (\main_processor|dat|MuxIm1|f[5]~5_combout\)) # (!\main_processor|dat|ALU0|Mux26~0_combout\ & 
-- ((\main_processor|dat|MuxIm1|f[6]~6_combout\))))) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (((\main_processor|dat|ALU0|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[5]~5_combout\,
	datab => \main_processor|dat|MuxIm1|f[6]~6_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|ALU0|Mux26~0_combout\,
	combout => \main_processor|dat|ALU0|Mux26~1_combout\);

-- Location: LCCOMB_X52_Y25_N4
\main_processor|dat|ALU0|Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux26~4_combout\ = (\main_processor|control_unit|Mux3~0_combout\ & ((\main_processor|control_unit|ALU_op[0]~8_combout\ & (\main_processor|dat|ALU0|Mux26~1_combout\)) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & 
-- ((\main_processor|dat|ALU0|Mux26~3_combout\))))) # (!\main_processor|control_unit|Mux3~0_combout\ & (((\main_processor|dat|ALU0|Mux26~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Mux3~0_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datac => \main_processor|dat|ALU0|Mux26~1_combout\,
	datad => \main_processor|dat|ALU0|Mux26~3_combout\,
	combout => \main_processor|dat|ALU0|Mux26~4_combout\);

-- Location: LCCOMB_X49_Y24_N16
\main_processor|dat|MuxData|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux26~1_combout\ = (\main_processor|dat|MuxData|Mux26~0_combout\) # ((\main_processor|dat|ALU0|Mux26~4_combout\ & (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & \main_processor|control_unit|Data_Mux[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux26~4_combout\,
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datad => \main_processor|dat|MuxData|Mux26~0_combout\,
	combout => \main_processor|dat|MuxData|Mux26~1_combout\);

-- Location: FF_X49_Y24_N27
\main_processor|dat|IR|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|MuxData|Mux26~1_combout\,
	sload => VCC,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(5));

-- Location: FF_X31_Y23_N11
\main_processor|dat|ProgramCounter|q_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[5]~42_combout\,
	asdata => \main_processor|dat|IR|q\(5),
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(5));

-- Location: LCCOMB_X50_Y25_N26
\main_processor|dat|DataMemory|data_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~4_combout\ = (\main_processor|control_unit|en~q\ & (!\main_processor|control_unit|wen~q\ & \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|control_unit|en~q\,
	datac => \main_processor|control_unit|wen~q\,
	datad => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a4\,
	combout => \main_processor|dat|DataMemory|data_out~4_combout\);

-- Location: FF_X50_Y25_N7
\main_processor|dat|DataMemory|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|DataMemory|data_out~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(4));

-- Location: LCCOMB_X50_Y25_N6
\main_processor|dat|MuxData|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux27~1_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_processor|dat|DataMemory|data_out\(4)))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_memory|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_memory|altsyncram_component|auto_generated|q_a\(4),
	datab => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datac => \main_processor|dat|DataMemory|data_out\(4),
	datad => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	combout => \main_processor|dat|MuxData|Mux27~1_combout\);

-- Location: LCCOMB_X54_Y25_N16
\main_processor|dat|MuxB|f[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[4]~4_combout\ = (\main_processor|control_unit|B_Mux~1_combout\ & (((\main_processor|dat|IR|q\(4))))) # (!\main_processor|control_unit|B_Mux~1_combout\ & ((\main_processor|dat|MuxData|Mux27~1_combout\) # 
-- ((\main_processor|dat|MuxData|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux27~1_combout\,
	datab => \main_processor|control_unit|B_Mux~1_combout\,
	datac => \main_processor|dat|IR|q\(4),
	datad => \main_processor|dat|MuxData|Mux27~0_combout\,
	combout => \main_processor|dat|MuxB|f[4]~4_combout\);

-- Location: FF_X54_Y25_N17
\main_processor|dat|B|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[4]~4_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(4));

-- Location: LCCOMB_X50_Y21_N22
\main_processor|dat|MuxIm2|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux27~0_combout\ = (\main_processor|dat|B|q\(4) & (((!\main_processor|control_unit|Mux7~0_Duplicate_4\) # (!\main_processor|control_unit|ALU_op[0]~5_Duplicate_15\)) # (!\main_processor|control_unit|ALU_op[0]~2_Duplicate_17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~2_Duplicate_17\,
	datab => \main_processor|dat|B|q\(4),
	datac => \main_processor|control_unit|ALU_op[0]~5_Duplicate_15\,
	datad => \main_processor|control_unit|Mux7~0_Duplicate_4\,
	combout => \main_processor|dat|MuxIm2|Mux27~0_combout\);

-- Location: LCCOMB_X50_Y21_N10
\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|s~0_combout\ = \main_processor|dat|MuxIm1|f[4]~4_combout\ $ (((!\main_processor|control_unit|Im_Mux2[1]~3_Duplicate_10\ & ((\main_processor|dat|MuxIm2|Mux27~0_combout\) # 
-- (\main_processor|dat|MuxIm2|Mux27~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux27~0_combout\,
	datab => \main_processor|control_unit|Im_Mux2[1]~3_Duplicate_10\,
	datac => \main_processor|dat|MuxIm2|Mux27~1_combout\,
	datad => \main_processor|dat|MuxIm1|f[4]~4_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|s~0_combout\);

-- Location: LCCOMB_X50_Y25_N28
\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|s~combout\ = \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|s~0_combout\ $ (((\main_processor|dat|ALU0|sub|cycle0|cycle0|cycle2|Cout~0_combout\ & ((\main_processor|dat|MuxIm1|f[3]~3_combout\) # 
-- (!\main_processor|dat|MuxIm2|Mux28~0_combout\))) # (!\main_processor|dat|ALU0|sub|cycle0|cycle0|cycle2|Cout~0_combout\ & (\main_processor|dat|MuxIm1|f[3]~3_combout\ & !\main_processor|dat|MuxIm2|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|s~0_combout\,
	datab => \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle2|Cout~0_combout\,
	datac => \main_processor|dat|MuxIm1|f[3]~3_combout\,
	datad => \main_processor|dat|MuxIm2|Mux28~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|s~combout\);

-- Location: LCCOMB_X50_Y25_N30
\main_processor|dat|ALU0|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux27~0_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # ((!\main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|s~combout\)))) # 
-- (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (\main_processor|dat|MuxIm1|f[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|MuxIm1|f[3]~3_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle0|cycle1|cycle0|s~combout\,
	combout => \main_processor|dat|ALU0|Mux27~0_combout\);

-- Location: LCCOMB_X50_Y25_N20
\main_processor|dat|ALU0|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux27~1_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|ALU0|Mux27~0_combout\ & (\main_processor|dat|MuxIm1|f[4]~4_combout\)) # (!\main_processor|dat|ALU0|Mux27~0_combout\ & 
-- ((\main_processor|dat|MuxIm1|f[5]~5_combout\))))) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (((\main_processor|dat|ALU0|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[4]~4_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|ALU0|Mux27~0_combout\,
	datad => \main_processor|dat|MuxIm1|f[5]~5_combout\,
	combout => \main_processor|dat|ALU0|Mux27~1_combout\);

-- Location: LCCOMB_X53_Y25_N24
\main_processor|dat|ALU0|add|cycle0|cycle1|cycle0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle1|cycle0|s~combout\ = \main_processor|dat|MuxIm2|Mux27~2_combout\ $ (\main_processor|dat|ALU0|add|cycle0|cycle0|cycle3|Cout~0_combout\ $ (((!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- \main_processor|dat|A|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|MuxIm2|Mux27~2_combout\,
	datac => \main_processor|dat|ALU0|add|cycle0|cycle0|cycle3|Cout~0_combout\,
	datad => \main_processor|dat|A|q\(4),
	combout => \main_processor|dat|ALU0|add|cycle0|cycle1|cycle0|s~combout\);

-- Location: LCCOMB_X54_Y25_N4
\main_processor|dat|ALU0|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux27~2_combout\ = (\main_processor|dat|MuxIm2|Mux27~2_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # ((\main_processor|dat|MuxIm1|f[4]~4_combout\ & !\main_processor|control_unit|ALU_op[1]~4_combout\)))) # 
-- (!\main_processor|dat|MuxIm2|Mux27~2_combout\ & (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|MuxIm1|f[4]~4_combout\) # (\main_processor|control_unit|ALU_op[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux27~2_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|MuxIm1|f[4]~4_combout\,
	datad => \main_processor|control_unit|ALU_op[1]~4_combout\,
	combout => \main_processor|dat|ALU0|Mux27~2_combout\);

-- Location: LCCOMB_X54_Y25_N18
\main_processor|dat|ALU0|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux27~3_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|dat|ALU0|Mux27~2_combout\ & ((\main_processor|dat|MuxIm2|Mux27~2_combout\))) # (!\main_processor|dat|ALU0|Mux27~2_combout\ & 
-- (\main_processor|dat|ALU0|add|cycle0|cycle1|cycle0|s~combout\)))) # (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (((\main_processor|dat|ALU0|Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|dat|ALU0|add|cycle0|cycle1|cycle0|s~combout\,
	datac => \main_processor|dat|ALU0|Mux27~2_combout\,
	datad => \main_processor|dat|MuxIm2|Mux27~2_combout\,
	combout => \main_processor|dat|ALU0|Mux27~3_combout\);

-- Location: LCCOMB_X54_Y25_N12
\main_processor|dat|MuxData|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux27~0_combout\ = (\main_processor|dat|MuxData|Mux31~2_combout\ & ((\main_processor|control_unit|ALU_op[2]~3_combout\ & (\main_processor|dat|ALU0|Mux27~1_combout\)) # (!\main_processor|control_unit|ALU_op[2]~3_combout\ & 
-- ((\main_processor|dat|ALU0|Mux27~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux27~1_combout\,
	datab => \main_processor|dat|MuxData|Mux31~2_combout\,
	datac => \main_processor|control_unit|ALU_op[2]~3_combout\,
	datad => \main_processor|dat|ALU0|Mux27~3_combout\,
	combout => \main_processor|dat|MuxData|Mux27~0_combout\);

-- Location: LCCOMB_X50_Y25_N4
\main_processor|dat|MuxData|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux27~2_combout\ = (\main_processor|dat|MuxData|Mux27~0_combout\) # (\main_processor|dat|MuxData|Mux27~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux27~0_combout\,
	datad => \main_processor|dat|MuxData|Mux27~1_combout\,
	combout => \main_processor|dat|MuxData|Mux27~2_combout\);

-- Location: FF_X53_Y25_N31
\main_processor|dat|IR|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|MuxData|Mux27~2_combout\,
	sload => VCC,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(4));

-- Location: LCCOMB_X53_Y25_N2
\main_processor|dat|MuxA|f[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[4]~4_combout\ = (\main_processor|control_unit|A_Mux~0_combout\ & (\main_processor|dat|IR|q\(4))) # (!\main_processor|control_unit|A_Mux~0_combout\ & (((\main_processor|dat|MuxData|Mux27~1_combout\) # 
-- (\main_processor|dat|MuxData|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(4),
	datab => \main_processor|dat|MuxData|Mux27~1_combout\,
	datac => \main_processor|dat|MuxData|Mux27~0_combout\,
	datad => \main_processor|control_unit|A_Mux~0_combout\,
	combout => \main_processor|dat|MuxA|f[4]~4_combout\);

-- Location: FF_X53_Y25_N3
\main_processor|dat|A|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[4]~4_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(4));

-- Location: LCCOMB_X50_Y21_N0
\main_processor|dat|MuxIm1|f[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm1|f[4]~4_combout\ = (\main_processor|dat|A|q\(4) & ((\main_processor|dat|IR|q\(29)) # ((\main_processor|dat|IR|q\(28)) # (!\main_processor|control_unit|ALU_op[0]~2_Duplicate_17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|A|q\(4),
	datab => \main_processor|dat|IR|q\(29),
	datac => \main_processor|dat|IR|q\(28),
	datad => \main_processor|control_unit|ALU_op[0]~2_Duplicate_17\,
	combout => \main_processor|dat|MuxIm1|f[4]~4_combout\);

-- Location: LCCOMB_X52_Y21_N26
\main_processor|dat|ALU0|sub|cycle0|cycle0|cycle3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle3|s~combout\ = \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle2|Cout~0_combout\ $ (\main_processor|dat|MuxIm2|Mux28~0_combout\ $ (((\main_processor|dat|A|q\(3) & 
-- !\main_processor|control_unit|Im_Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|A|q\(3),
	datab => \main_processor|control_unit|Im_Mux1~0_combout\,
	datac => \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle2|Cout~0_combout\,
	datad => \main_processor|dat|MuxIm2|Mux28~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle3|s~combout\);

-- Location: LCCOMB_X52_Y21_N20
\main_processor|dat|ALU0|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux28~0_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # ((!\main_processor|dat|ALU0|sub|cycle0|cycle0|cycle3|s~combout\)))) # 
-- (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (\main_processor|dat|MuxIm1|f[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|MuxIm1|f[2]~1_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle3|s~combout\,
	combout => \main_processor|dat|ALU0|Mux28~0_combout\);

-- Location: LCCOMB_X50_Y25_N16
\main_processor|dat|ALU0|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux28~1_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|ALU0|Mux28~0_combout\ & ((\main_processor|dat|MuxIm1|f[3]~3_combout\))) # (!\main_processor|dat|ALU0|Mux28~0_combout\ & 
-- (\main_processor|dat|MuxIm1|f[4]~4_combout\)))) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (((\main_processor|dat|ALU0|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[4]~4_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|MuxIm1|f[3]~3_combout\,
	datad => \main_processor|dat|ALU0|Mux28~0_combout\,
	combout => \main_processor|dat|ALU0|Mux28~1_combout\);

-- Location: LCCOMB_X54_Y25_N14
\main_processor|dat|MuxData|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux28~2_combout\ = (\main_processor|dat|MuxData|Mux31~2_combout\ & ((\main_processor|control_unit|ALU_op[2]~3_combout\ & (\main_processor|dat|ALU0|Mux28~1_combout\)) # (!\main_processor|control_unit|ALU_op[2]~3_combout\ & 
-- ((\main_processor|dat|ALU0|Mux28~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux28~1_combout\,
	datab => \main_processor|control_unit|ALU_op[2]~3_combout\,
	datac => \main_processor|dat|ALU0|Mux28~3_combout\,
	datad => \main_processor|dat|MuxData|Mux31~2_combout\,
	combout => \main_processor|dat|MuxData|Mux28~2_combout\);

-- Location: LCCOMB_X53_Y25_N0
\main_processor|dat|MuxA|f[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[3]~3_combout\ = (\main_processor|control_unit|A_Mux~0_combout\ & (\main_processor|dat|IR|q\(3))) # (!\main_processor|control_unit|A_Mux~0_combout\ & (((\main_processor|dat|MuxData|Mux28~2_combout\) # 
-- (\main_processor|dat|MuxData|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(3),
	datab => \main_processor|control_unit|A_Mux~0_combout\,
	datac => \main_processor|dat|MuxData|Mux28~2_combout\,
	datad => \main_processor|dat|MuxData|Mux28~0_combout\,
	combout => \main_processor|dat|MuxA|f[3]~3_combout\);

-- Location: FF_X53_Y25_N1
\main_processor|dat|A|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[3]~3_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(3));

-- Location: LCCOMB_X52_Y21_N8
\main_processor|dat|ALU0|reg_result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|reg_result~2_combout\ = (\main_processor|dat|A|q\(3) & (\main_processor|dat|MuxIm2|Mux28~0_combout\ & ((!\main_processor|control_unit|Im_Mux1~1_combout\) # (!\main_processor|control_unit|ALU_op[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|A|q\(3),
	datab => \main_processor|dat|MuxIm2|Mux28~0_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~2_combout\,
	datad => \main_processor|control_unit|Im_Mux1~1_combout\,
	combout => \main_processor|dat|ALU0|reg_result~2_combout\);

-- Location: LCCOMB_X52_Y21_N6
\main_processor|dat|ALU0|add|cycle0|cycle0|cycle3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle0|cycle3|s~combout\ = \main_processor|dat|ALU0|add|cycle0|cycle0|cycle2|Cout~0_combout\ $ (\main_processor|dat|MuxIm2|Mux28~0_combout\ $ (((\main_processor|dat|A|q\(3) & 
-- !\main_processor|control_unit|Im_Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|A|q\(3),
	datab => \main_processor|control_unit|Im_Mux1~0_combout\,
	datac => \main_processor|dat|ALU0|add|cycle0|cycle0|cycle2|Cout~0_combout\,
	datad => \main_processor|dat|MuxIm2|Mux28~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle0|cycle0|cycle3|s~combout\);

-- Location: LCCOMB_X52_Y21_N18
\main_processor|dat|ALU0|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux28~2_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & (((\main_processor|control_unit|ALU_op[1]~4_combout\)))) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & 
-- ((\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|dat|ALU0|add|cycle0|cycle0|cycle3|s~combout\))) # (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (\main_processor|dat|ALU0|reg_result~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datab => \main_processor|dat|ALU0|reg_result~2_combout\,
	datac => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle0|cycle3|s~combout\,
	combout => \main_processor|dat|ALU0|Mux28~2_combout\);

-- Location: LCCOMB_X50_Y25_N2
\main_processor|dat|ALU0|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux28~3_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|MuxIm2|Mux28~0_combout\) # ((!\main_processor|dat|ALU0|Mux28~2_combout\ & \main_processor|dat|MuxIm1|f[3]~3_combout\)))) # 
-- (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (\main_processor|dat|ALU0|Mux28~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux28~2_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|MuxIm1|f[3]~3_combout\,
	datad => \main_processor|dat|MuxIm2|Mux28~0_combout\,
	combout => \main_processor|dat|ALU0|Mux28~3_combout\);

-- Location: LCCOMB_X54_Y25_N6
\main_processor|dat|ALU0|Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux28~4_combout\ = (\main_processor|control_unit|ALU_op[0]~8_combout\ & ((\main_processor|control_unit|Mux3~0_combout\ & ((\main_processor|dat|ALU0|Mux28~1_combout\))) # (!\main_processor|control_unit|Mux3~0_combout\ & 
-- (\main_processor|dat|ALU0|Mux28~3_combout\)))) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & (\main_processor|dat|ALU0|Mux28~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux28~3_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datac => \main_processor|control_unit|Mux3~0_combout\,
	datad => \main_processor|dat|ALU0|Mux28~1_combout\,
	combout => \main_processor|dat|ALU0|Mux28~4_combout\);

-- Location: LCCOMB_X49_Y24_N6
\main_processor|dat|MuxData|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux28~1_combout\ = (\main_processor|dat|MuxData|Mux28~0_combout\) # ((\main_processor|dat|ALU0|Mux28~4_combout\ & (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & \main_processor|control_unit|Data_Mux[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux28~4_combout\,
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datad => \main_processor|dat|MuxData|Mux28~0_combout\,
	combout => \main_processor|dat|MuxData|Mux28~1_combout\);

-- Location: FF_X49_Y24_N9
\main_processor|dat|IR|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|MuxData|Mux28~1_combout\,
	sload => VCC,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(3));

-- Location: FF_X31_Y23_N7
\main_processor|dat|ProgramCounter|q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[3]~38_combout\,
	asdata => \main_processor|dat|IR|q\(3),
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(3));

-- Location: LCCOMB_X48_Y24_N6
\main_processor|dat|DataMemory|data_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~2_combout\ = (\main_processor|control_unit|en~q\ & (!\main_processor|control_unit|wen~q\ & \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|en~q\,
	datac => \main_processor|control_unit|wen~q\,
	datad => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a2\,
	combout => \main_processor|dat|DataMemory|data_out~2_combout\);

-- Location: FF_X49_Y24_N15
\main_processor|dat|DataMemory|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|DataMemory|data_out~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(2));

-- Location: LCCOMB_X49_Y24_N0
\main_processor|dat|MuxData|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux29~1_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_processor|dat|DataMemory|data_out\(2)))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_memory|altsyncram_component|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_memory|altsyncram_component|auto_generated|q_a\(2),
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_processor|dat|DataMemory|data_out\(2),
	datad => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	combout => \main_processor|dat|MuxData|Mux29~1_combout\);

-- Location: LCCOMB_X53_Y24_N22
\main_processor|dat|MuxB|f[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[2]~2_combout\ = (\main_processor|control_unit|B_Mux~1_combout\ & (((\main_processor|dat|IR|q\(2))))) # (!\main_processor|control_unit|B_Mux~1_combout\ & ((\main_processor|dat|MuxData|Mux29~1_combout\) # 
-- ((\main_processor|dat|MuxData|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux29~1_combout\,
	datab => \main_processor|control_unit|B_Mux~1_combout\,
	datac => \main_processor|dat|MuxData|Mux29~0_combout\,
	datad => \main_processor|dat|IR|q\(2),
	combout => \main_processor|dat|MuxB|f[2]~2_combout\);

-- Location: FF_X53_Y24_N23
\main_processor|dat|B|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[2]~2_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(2));

-- Location: LCCOMB_X53_Y24_N8
\main_processor|dat|MuxIm2|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux29~0_combout\ = (!\main_processor|control_unit|Im_Mux2[1]~3_Duplicate_6\ & ((\main_processor|control_unit|Im_Mux2[0]~0_combout\ & (\main_processor|dat|B|q\(2))) # (!\main_processor|control_unit|Im_Mux2[0]~0_combout\ & 
-- ((\main_processor|dat|IR|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|B|q\(2),
	datab => \main_processor|control_unit|Im_Mux2[1]~3_Duplicate_6\,
	datac => \main_processor|dat|IR|q\(2),
	datad => \main_processor|control_unit|Im_Mux2[0]~0_combout\,
	combout => \main_processor|dat|MuxIm2|Mux29~0_combout\);

-- Location: LCCOMB_X53_Y20_N14
\main_processor|dat|ALU0|reg_result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|reg_result~1_combout\ = (\main_processor|dat|MuxIm2|Mux29~0_combout\ & (\main_processor|dat|A|q\(2) & ((!\main_processor|control_unit|ALU_op[0]~2_combout\) # (!\main_processor|control_unit|Im_Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~1_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~2_combout\,
	datac => \main_processor|dat|MuxIm2|Mux29~0_combout\,
	datad => \main_processor|dat|A|q\(2),
	combout => \main_processor|dat|ALU0|reg_result~1_combout\);

-- Location: LCCOMB_X53_Y24_N16
\main_processor|dat|ALU0|add|cycle0|cycle0|cycle2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle0|cycle2|s~combout\ = \main_processor|dat|ALU0|add|cycle0|cycle0|cycle1|Cout~0_combout\ $ (\main_processor|dat|MuxIm2|Mux29~0_combout\ $ (((!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- \main_processor|dat|A|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|add|cycle0|cycle0|cycle1|Cout~0_combout\,
	datab => \main_processor|control_unit|Im_Mux1~0_combout\,
	datac => \main_processor|dat|MuxIm2|Mux29~0_combout\,
	datad => \main_processor|dat|A|q\(2),
	combout => \main_processor|dat|ALU0|add|cycle0|cycle0|cycle2|s~combout\);

-- Location: LCCOMB_X53_Y20_N28
\main_processor|dat|ALU0|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux29~2_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & (((\main_processor|control_unit|ALU_op[0]~6_combout\) # (\main_processor|dat|ALU0|add|cycle0|cycle0|cycle2|s~combout\)))) # 
-- (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (\main_processor|dat|ALU0|reg_result~1_combout\ & (!\main_processor|control_unit|ALU_op[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|dat|ALU0|reg_result~1_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle0|cycle2|s~combout\,
	combout => \main_processor|dat|ALU0|Mux29~2_combout\);

-- Location: LCCOMB_X53_Y20_N22
\main_processor|dat|ALU0|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux29~3_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|MuxIm2|Mux29~0_combout\) # ((\main_processor|dat|MuxIm1|f[2]~1_combout\ & !\main_processor|dat|ALU0|Mux29~2_combout\)))) # 
-- (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (((\main_processor|dat|ALU0|Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datab => \main_processor|dat|MuxIm2|Mux29~0_combout\,
	datac => \main_processor|dat|MuxIm1|f[2]~1_combout\,
	datad => \main_processor|dat|ALU0|Mux29~2_combout\,
	combout => \main_processor|dat|ALU0|Mux29~3_combout\);

-- Location: LCCOMB_X52_Y21_N4
\main_processor|dat|ALU0|sub|cycle0|cycle0|cycle2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle2|s~combout\ = \main_processor|dat|MuxIm2|Mux29~0_combout\ $ (\main_processor|dat|MuxIm1|f[2]~1_combout\ $ (((\main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|Cout~0_combout\,
	datab => \main_processor|dat|MuxIm2|Mux29~0_combout\,
	datac => \main_processor|dat|MuxIm1|f[2]~1_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle1|Cout~2_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle2|s~combout\);

-- Location: LCCOMB_X53_Y20_N6
\main_processor|dat|ALU0|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux29~0_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & (((\main_processor|control_unit|ALU_op[0]~6_combout\)) # (!\main_processor|dat|ALU0|sub|cycle0|cycle0|cycle2|s~combout\))) # 
-- (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (((!\main_processor|control_unit|ALU_op[0]~6_combout\ & \main_processor|dat|MuxIm1|f[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|sub|cycle0|cycle0|cycle2|s~combout\,
	datab => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|MuxIm1|f[1]~2_combout\,
	combout => \main_processor|dat|ALU0|Mux29~0_combout\);

-- Location: LCCOMB_X53_Y20_N12
\main_processor|dat|ALU0|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux29~1_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|ALU0|Mux29~0_combout\ & (\main_processor|dat|MuxIm1|f[2]~1_combout\)) # (!\main_processor|dat|ALU0|Mux29~0_combout\ & 
-- ((\main_processor|dat|MuxIm1|f[3]~3_combout\))))) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (((\main_processor|dat|ALU0|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datab => \main_processor|dat|MuxIm1|f[2]~1_combout\,
	datac => \main_processor|dat|MuxIm1|f[3]~3_combout\,
	datad => \main_processor|dat|ALU0|Mux29~0_combout\,
	combout => \main_processor|dat|ALU0|Mux29~1_combout\);

-- Location: LCCOMB_X53_Y20_N8
\main_processor|dat|MuxData|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux29~0_combout\ = (\main_processor|dat|MuxData|Mux31~2_combout\ & ((\main_processor|control_unit|ALU_op[2]~3_combout\ & ((\main_processor|dat|ALU0|Mux29~1_combout\))) # (!\main_processor|control_unit|ALU_op[2]~3_combout\ & 
-- (\main_processor|dat|ALU0|Mux29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[2]~3_combout\,
	datab => \main_processor|dat|ALU0|Mux29~3_combout\,
	datac => \main_processor|dat|MuxData|Mux31~2_combout\,
	datad => \main_processor|dat|ALU0|Mux29~1_combout\,
	combout => \main_processor|dat|MuxData|Mux29~0_combout\);

-- Location: LCCOMB_X49_Y24_N22
\main_processor|dat|MuxData|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux29~2_combout\ = (\main_processor|dat|MuxData|Mux29~0_combout\) # (\main_processor|dat|MuxData|Mux29~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|MuxData|Mux29~0_combout\,
	datad => \main_processor|dat|MuxData|Mux29~1_combout\,
	combout => \main_processor|dat|MuxData|Mux29~2_combout\);

-- Location: FF_X53_Y24_N9
\main_processor|dat|IR|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|MuxData|Mux29~2_combout\,
	sload => VCC,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(2));

-- Location: FF_X31_Y23_N5
\main_processor|dat|ProgramCounter|q_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[2]~36_combout\,
	asdata => \main_processor|dat|IR|q\(2),
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(2));

-- Location: LCCOMB_X56_Y22_N24
\main_processor|dat|DataMemory|data_out~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~23_combout\ = (!\main_processor|control_unit|wen~q\ & (\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a23\ & \main_processor|control_unit|en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|control_unit|wen~q\,
	datac => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a23\,
	datad => \main_processor|control_unit|en~q\,
	combout => \main_processor|dat|DataMemory|data_out~23_combout\);

-- Location: FF_X56_Y22_N25
\main_processor|dat|DataMemory|data_out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|DataMemory|data_out~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(23));

-- Location: LCCOMB_X56_Y22_N6
\main_processor|dat|MuxData|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux8~0_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_processor|dat|DataMemory|data_out\(23)))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_memory|altsyncram_component|auto_generated|q_a\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_memory|altsyncram_component|auto_generated|q_a\(23),
	datad => \main_processor|dat|DataMemory|data_out\(23),
	combout => \main_processor|dat|MuxData|Mux8~0_combout\);

-- Location: LCCOMB_X55_Y23_N28
\main_processor|dat|MuxB|f[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[23]~23_combout\ = (!\main_processor|control_unit|B_Mux~1_combout\ & ((\main_processor|dat|MuxData|Mux8~0_combout\) # ((\main_processor|dat|MuxData|Mux31~2_combout\ & \main_processor|dat|ALU0|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux31~2_combout\,
	datab => \main_processor|control_unit|B_Mux~1_combout\,
	datac => \main_processor|dat|MuxData|Mux8~0_combout\,
	datad => \main_processor|dat|ALU0|Mux8~4_combout\,
	combout => \main_processor|dat|MuxB|f[23]~23_combout\);

-- Location: FF_X55_Y23_N29
\main_processor|dat|B|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[23]~23_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(23));

-- Location: LCCOMB_X58_Y23_N16
\main_processor|dat|MuxIm2|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux8~0_combout\ = (\main_processor|dat|B|q\(23) & (((!\main_processor|control_unit|Im_Mux2[1]~1_combout\ & !\main_processor|control_unit|Mux7~0_combout\)) # (!\main_processor|control_unit|ALU_op[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datab => \main_processor|dat|B|q\(23),
	datac => \main_processor|control_unit|Im_Mux2[1]~1_combout\,
	datad => \main_processor|control_unit|Mux7~0_combout\,
	combout => \main_processor|dat|MuxIm2|Mux8~0_combout\);

-- Location: LCCOMB_X58_Y25_N24
\main_processor|dat|ALU0|sub|cycle1|cycle1|cycle3|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle3|s~0_combout\ = \main_processor|dat|MuxIm2|Mux8~0_combout\ $ (((\main_processor|control_unit|Im_Mux1~0_combout\ & (\main_processor|dat|IR|q\(7))) # (!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- ((\main_processor|dat|A|q\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|IR|q\(7),
	datac => \main_processor|dat|MuxIm2|Mux8~0_combout\,
	datad => \main_processor|dat|A|q\(23),
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle3|s~0_combout\);

-- Location: LCCOMB_X58_Y25_N22
\main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|s~combout\ = \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle3|s~0_combout\ $ (((\main_processor|dat|MuxIm1|f[22]~22_combout\ & ((\main_processor|dat|ALU0|add|cycle1|cycle1|cycle1|Cout~0_combout\) # 
-- (\main_processor|dat|MuxIm2|Mux9~0_combout\))) # (!\main_processor|dat|MuxIm1|f[22]~22_combout\ & (\main_processor|dat|ALU0|add|cycle1|cycle1|cycle1|Cout~0_combout\ & \main_processor|dat|MuxIm2|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[22]~22_combout\,
	datab => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle3|s~0_combout\,
	datac => \main_processor|dat|ALU0|add|cycle1|cycle1|cycle1|Cout~0_combout\,
	datad => \main_processor|dat|MuxIm2|Mux9~0_combout\,
	combout => \main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|s~combout\);

-- Location: LCCOMB_X58_Y25_N20
\main_processor|dat|ALU0|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux8~2_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & (((\main_processor|control_unit|ALU_op[0]~6_combout\)))) # (!\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|dat|MuxIm2|Mux8~0_combout\ & 
-- ((\main_processor|dat|MuxIm1|f[23]~23_combout\) # (\main_processor|control_unit|ALU_op[0]~6_combout\))) # (!\main_processor|dat|MuxIm2|Mux8~0_combout\ & (\main_processor|dat|MuxIm1|f[23]~23_combout\ & \main_processor|control_unit|ALU_op[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|dat|MuxIm2|Mux8~0_combout\,
	datac => \main_processor|dat|MuxIm1|f[23]~23_combout\,
	datad => \main_processor|control_unit|ALU_op[0]~6_combout\,
	combout => \main_processor|dat|ALU0|Mux8~2_combout\);

-- Location: LCCOMB_X58_Y25_N10
\main_processor|dat|ALU0|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux8~3_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|dat|ALU0|Mux8~2_combout\ & (\main_processor|dat|MuxIm2|Mux8~0_combout\)) # (!\main_processor|dat|ALU0|Mux8~2_combout\ & 
-- ((\main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|s~combout\))))) # (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (((\main_processor|dat|ALU0|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|dat|MuxIm2|Mux8~0_combout\,
	datac => \main_processor|dat|ALU0|add|cycle1|cycle1|cycle3|s~combout\,
	datad => \main_processor|dat|ALU0|Mux8~2_combout\,
	combout => \main_processor|dat|ALU0|Mux8~3_combout\);

-- Location: LCCOMB_X58_Y24_N16
\main_processor|dat|ALU0|sub|cycle1|cycle1|cycle3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle3|s~combout\ = \main_processor|dat|MuxIm1|f[23]~23_combout\ $ (\main_processor|dat|MuxIm2|Mux8~0_combout\ $ (((\main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[23]~23_combout\,
	datab => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|Cout~0_combout\,
	datac => \main_processor|dat|MuxIm2|Mux8~0_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle2|Cout~2_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle3|s~combout\);

-- Location: LCCOMB_X58_Y24_N6
\main_processor|dat|ALU0|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux8~0_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # ((!\main_processor|dat|ALU0|sub|cycle1|cycle1|cycle3|s~combout\)))) # 
-- (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (\main_processor|dat|MuxIm1|f[22]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|MuxIm1|f[22]~22_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle1|cycle3|s~combout\,
	combout => \main_processor|dat|ALU0|Mux8~0_combout\);

-- Location: LCCOMB_X58_Y24_N12
\main_processor|dat|ALU0|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux8~1_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|ALU0|Mux8~0_combout\ & ((\main_processor|dat|MuxIm1|f[23]~23_combout\))) # (!\main_processor|dat|ALU0|Mux8~0_combout\ & 
-- (\main_processor|dat|MuxIm1|f[24]~24_combout\)))) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (((\main_processor|dat|ALU0|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[24]~24_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|MuxIm1|f[23]~23_combout\,
	datad => \main_processor|dat|ALU0|Mux8~0_combout\,
	combout => \main_processor|dat|ALU0|Mux8~1_combout\);

-- Location: LCCOMB_X55_Y22_N14
\main_processor|dat|ALU0|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux8~4_combout\ = (\main_processor|control_unit|ALU_op[0]~8_combout\ & ((\main_processor|control_unit|Mux3~0_combout\ & ((\main_processor|dat|ALU0|Mux8~1_combout\))) # (!\main_processor|control_unit|Mux3~0_combout\ & 
-- (\main_processor|dat|ALU0|Mux8~3_combout\)))) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & (((\main_processor|dat|ALU0|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datab => \main_processor|control_unit|Mux3~0_combout\,
	datac => \main_processor|dat|ALU0|Mux8~3_combout\,
	datad => \main_processor|dat|ALU0|Mux8~1_combout\,
	combout => \main_processor|dat|ALU0|Mux8~4_combout\);

-- Location: LCCOMB_X56_Y26_N10
\main_processor|dat|ALU0|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Equal0~10_combout\ = (!\main_processor|dat|ALU0|Mux10~4_combout\ & ((\main_processor|control_unit|ALU_op[2]~3_combout\ & (!\main_processor|dat|ALU0|Mux9~1_combout\)) # (!\main_processor|control_unit|ALU_op[2]~3_combout\ & 
-- ((!\main_processor|dat|ALU0|Mux9~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[2]~3_combout\,
	datab => \main_processor|dat|ALU0|Mux9~1_combout\,
	datac => \main_processor|dat|ALU0|Mux10~4_combout\,
	datad => \main_processor|dat|ALU0|Mux9~3_combout\,
	combout => \main_processor|dat|ALU0|Equal0~10_combout\);

-- Location: LCCOMB_X56_Y26_N4
\main_processor|dat|ALU0|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Equal0~9_combout\ = (!\main_processor|dat|ALU0|Mux14~4_combout\ & (!\main_processor|dat|ALU0|Mux13~4_combout\ & (!\main_processor|dat|ALU0|Mux11~4_combout\ & !\main_processor|dat|ALU0|Mux12~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux14~4_combout\,
	datab => \main_processor|dat|ALU0|Mux13~4_combout\,
	datac => \main_processor|dat|ALU0|Mux11~4_combout\,
	datad => \main_processor|dat|ALU0|Mux12~4_combout\,
	combout => \main_processor|dat|ALU0|Equal0~9_combout\);

-- Location: LCCOMB_X55_Y26_N12
\main_processor|dat|ALU0|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Equal0~11_combout\ = (!\main_processor|dat|ALU0|Mux8~4_combout\ & (\main_processor|dat|ALU0|Equal0~10_combout\ & (!\main_processor|dat|ALU0|Mux7~4_combout\ & \main_processor|dat|ALU0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux8~4_combout\,
	datab => \main_processor|dat|ALU0|Equal0~10_combout\,
	datac => \main_processor|dat|ALU0|Mux7~4_combout\,
	datad => \main_processor|dat|ALU0|Equal0~9_combout\,
	combout => \main_processor|dat|ALU0|Equal0~11_combout\);

-- Location: LCCOMB_X54_Y24_N6
\main_processor|control_unit|Clr_Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Clr_Z~1_combout\ = (\main_processor|control_unit|ALU_op[0]~8_combout\ & (\main_processor|control_unit|Clr_Z~0_combout\ & (!\main_processor|dat|IR|q\(25) & !\main_processor|dat|IR|q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datab => \main_processor|control_unit|Clr_Z~0_combout\,
	datac => \main_processor|dat|IR|q\(25),
	datad => \main_processor|dat|IR|q\(26),
	combout => \main_processor|control_unit|Clr_Z~1_combout\);

-- Location: LCCOMB_X54_Y24_N18
\main_processor|control_unit|Ld_C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Ld_C~0_combout\ = (!\main_processor|control_unit|Mux2~0_combout\ & (\main_processor|control_unit|ALU_op[0]~2_Duplicate_10\ & (\main_processor|dat|IR|q\(28) & \main_processor|dat|IR|q\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Mux2~0_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~2_Duplicate_10\,
	datac => \main_processor|dat|IR|q\(28),
	datad => \main_processor|dat|IR|q\(29),
	combout => \main_processor|control_unit|Ld_C~0_combout\);

-- Location: FF_X55_Y26_N13
\main_processor|dat|Z|q_NEW_REG2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ALU0|Equal0~11_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_Z~1_combout\,
	ena => \main_processor|control_unit|Ld_C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|Z|q_OTERM3\);

-- Location: LCCOMB_X55_Y24_N14
\main_processor|dat|ALU0|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux3~4_combout\ = (\main_processor|control_unit|Mux3~0_combout\ & ((\main_processor|control_unit|ALU_op[0]~8_combout\ & (\main_processor|dat|ALU0|Mux3~1_combout\)) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & 
-- ((\main_processor|dat|ALU0|Mux3~3_combout\))))) # (!\main_processor|control_unit|Mux3~0_combout\ & (((\main_processor|dat|ALU0|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Mux3~0_combout\,
	datab => \main_processor|dat|ALU0|Mux3~1_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datad => \main_processor|dat|ALU0|Mux3~3_combout\,
	combout => \main_processor|dat|ALU0|Mux3~4_combout\);

-- Location: FF_X55_Y24_N15
\main_processor|dat|Z|q_OTERM5_NEW_REG22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ALU0|Mux3~4_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_Z~1_combout\,
	ena => \main_processor|control_unit|Ld_C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|Z|q_OTERM5_OTERM23\);

-- Location: LCCOMB_X57_Y24_N26
\main_processor|dat|ALU0|Mux6~4_RTM026\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux6~4_RTM026_combout\ = !\main_processor|dat|ALU0|Mux6~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|dat|ALU0|Mux6~4_combout\,
	combout => \main_processor|dat|ALU0|Mux6~4_RTM026_combout\);

-- Location: FF_X57_Y24_N27
\main_processor|dat|Z|q_OTERM5_NEW_REG24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ALU0|Mux6~4_RTM026_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_Z~1_combout\,
	ena => \main_processor|control_unit|Ld_C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|Z|q_OTERM5_OTERM25\);

-- Location: LCCOMB_X56_Y24_N16
\main_processor|dat|ALU0|Mux4~3_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux4~3_Duplicate_7\ = (\main_processor|dat|MuxIm2|Mux4~0_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # (\main_processor|control_unit|ALU_op[1]~4_combout\ $ (\main_processor|dat|ALU0|Mux4~2_combout\)))) # 
-- (!\main_processor|dat|MuxIm2|Mux4~0_combout\ & (\main_processor|dat|ALU0|Mux4~2_combout\ & (\main_processor|control_unit|ALU_op[0]~6_combout\ $ (\main_processor|control_unit|ALU_op[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datab => \main_processor|dat|MuxIm2|Mux4~0_combout\,
	datac => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datad => \main_processor|dat|ALU0|Mux4~2_combout\,
	combout => \main_processor|dat|ALU0|Mux4~3_Duplicate_7\);

-- Location: LCCOMB_X56_Y24_N2
\main_processor|dat|ALU0|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux4~4_combout\ = (\main_processor|control_unit|Mux3~0_combout\ & ((\main_processor|control_unit|ALU_op[0]~8_combout\ & (\main_processor|dat|ALU0|Mux4~1_combout\)) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & 
-- ((\main_processor|dat|ALU0|Mux4~3_Duplicate_7\))))) # (!\main_processor|control_unit|Mux3~0_combout\ & (((\main_processor|dat|ALU0|Mux4~3_Duplicate_7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Mux3~0_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datac => \main_processor|dat|ALU0|Mux4~1_combout\,
	datad => \main_processor|dat|ALU0|Mux4~3_Duplicate_7\,
	combout => \main_processor|dat|ALU0|Mux4~4_combout\);

-- Location: FF_X56_Y24_N3
\main_processor|dat|Z|q_OTERM5_NEW_REG20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ALU0|Mux4~4_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_Z~1_combout\,
	ena => \main_processor|control_unit|Ld_C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|Z|q_OTERM5_OTERM21\);

-- Location: LCCOMB_X56_Y24_N26
\main_processor|dat|ALU0|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux5~4_combout\ = (\main_processor|control_unit|Mux3~0_combout\ & ((\main_processor|control_unit|ALU_op[0]~8_combout\ & ((\main_processor|dat|ALU0|Mux5~1_combout\))) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & 
-- (\main_processor|dat|ALU0|Mux5~3_combout\)))) # (!\main_processor|control_unit|Mux3~0_combout\ & (((\main_processor|dat|ALU0|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Mux3~0_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datac => \main_processor|dat|ALU0|Mux5~3_combout\,
	datad => \main_processor|dat|ALU0|Mux5~1_combout\,
	combout => \main_processor|dat|ALU0|Mux5~4_combout\);

-- Location: FF_X56_Y24_N27
\main_processor|dat|Z|q_OTERM5_NEW_REG18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ALU0|Mux5~4_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_Z~1_combout\,
	ena => \main_processor|control_unit|Ld_C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|Z|q_OTERM5_OTERM19\);

-- Location: LCCOMB_X55_Y24_N0
\main_processor|dat|ALU0|Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Equal0~12_combout\ = (!\main_processor|dat|Z|q_OTERM5_OTERM23\ & (\main_processor|dat|Z|q_OTERM5_OTERM25\ & (!\main_processor|dat|Z|q_OTERM5_OTERM21\ & !\main_processor|dat|Z|q_OTERM5_OTERM19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|Z|q_OTERM5_OTERM23\,
	datab => \main_processor|dat|Z|q_OTERM5_OTERM25\,
	datac => \main_processor|dat|Z|q_OTERM5_OTERM21\,
	datad => \main_processor|dat|Z|q_OTERM5_OTERM19\,
	combout => \main_processor|dat|ALU0|Equal0~12_combout\);

-- Location: LCCOMB_X54_Y26_N12
\main_processor|dat|ALU0|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Equal0~5_combout\ = (!\main_processor|dat|ALU0|Mux19~4_combout\ & (!\main_processor|dat|ALU0|Mux20~4_combout\ & (!\main_processor|dat|ALU0|Mux21~4_combout\ & !\main_processor|dat|ALU0|Mux22~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux19~4_combout\,
	datab => \main_processor|dat|ALU0|Mux20~4_combout\,
	datac => \main_processor|dat|ALU0|Mux21~4_combout\,
	datad => \main_processor|dat|ALU0|Mux22~4_combout\,
	combout => \main_processor|dat|ALU0|Equal0~5_combout\);

-- Location: LCCOMB_X52_Y25_N12
\main_processor|dat|ALU0|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Equal0~3_combout\ = (!\main_processor|dat|ALU0|Mux24~4_combout\ & ((\main_processor|control_unit|ALU_op[2]~3_combout\ & (!\main_processor|dat|ALU0|Mux23~1_combout\)) # (!\main_processor|control_unit|ALU_op[2]~3_combout\ & 
-- ((!\main_processor|dat|ALU0|Mux23~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[2]~3_combout\,
	datab => \main_processor|dat|ALU0|Mux24~4_combout\,
	datac => \main_processor|dat|ALU0|Mux23~1_combout\,
	datad => \main_processor|dat|ALU0|Mux23~3_combout\,
	combout => \main_processor|dat|ALU0|Equal0~3_combout\);

-- Location: LCCOMB_X54_Y25_N26
\main_processor|dat|ALU0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Equal0~1_combout\ = (!\main_processor|dat|ALU0|Mux28~4_combout\ & ((\main_processor|control_unit|ALU_op[2]~3_combout\ & ((!\main_processor|dat|ALU0|Mux27~1_combout\))) # (!\main_processor|control_unit|ALU_op[2]~3_combout\ & 
-- (!\main_processor|dat|ALU0|Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[2]~3_combout\,
	datab => \main_processor|dat|ALU0|Mux27~3_combout\,
	datac => \main_processor|dat|ALU0|Mux27~1_combout\,
	datad => \main_processor|dat|ALU0|Mux28~4_combout\,
	combout => \main_processor|dat|ALU0|Equal0~1_combout\);

-- Location: LCCOMB_X53_Y20_N18
\main_processor|dat|ALU0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Equal0~0_combout\ = (!\main_processor|dat|ALU0|Mux30~4_combout\ & ((\main_processor|control_unit|ALU_op[2]~3_combout\ & (!\main_processor|dat|ALU0|Mux29~1_combout\)) # (!\main_processor|control_unit|ALU_op[2]~3_combout\ & 
-- ((!\main_processor|dat|ALU0|Mux29~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux29~1_combout\,
	datab => \main_processor|dat|ALU0|Mux30~4_combout\,
	datac => \main_processor|dat|ALU0|Mux29~3_combout\,
	datad => \main_processor|control_unit|ALU_op[2]~3_combout\,
	combout => \main_processor|dat|ALU0|Equal0~0_combout\);

-- Location: LCCOMB_X52_Y25_N30
\main_processor|dat|ALU0|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Equal0~2_combout\ = (!\main_processor|dat|ALU0|Mux26~4_combout\ & ((\main_processor|control_unit|ALU_op[2]~3_combout\ & (!\main_processor|dat|ALU0|Mux25~1_combout\)) # (!\main_processor|control_unit|ALU_op[2]~3_combout\ & 
-- ((!\main_processor|dat|ALU0|Mux25~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[2]~3_combout\,
	datab => \main_processor|dat|ALU0|Mux26~4_combout\,
	datac => \main_processor|dat|ALU0|Mux25~1_combout\,
	datad => \main_processor|dat|ALU0|Mux25~3_combout\,
	combout => \main_processor|dat|ALU0|Equal0~2_combout\);

-- Location: LCCOMB_X53_Y25_N14
\main_processor|dat|ALU0|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Equal0~4_combout\ = (\main_processor|dat|ALU0|Equal0~3_combout\ & (\main_processor|dat|ALU0|Equal0~1_combout\ & (\main_processor|dat|ALU0|Equal0~0_combout\ & \main_processor|dat|ALU0|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Equal0~3_combout\,
	datab => \main_processor|dat|ALU0|Equal0~1_combout\,
	datac => \main_processor|dat|ALU0|Equal0~0_combout\,
	datad => \main_processor|dat|ALU0|Equal0~2_combout\,
	combout => \main_processor|dat|ALU0|Equal0~4_combout\);

-- Location: LCCOMB_X55_Y25_N26
\main_processor|dat|ALU0|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Equal0~7_combout\ = (!\main_processor|dat|ALU0|Mux16~4_combout\ & ((\main_processor|control_unit|ALU_op[2]~3_combout\ & ((!\main_processor|dat|ALU0|Mux15~1_combout\))) # (!\main_processor|control_unit|ALU_op[2]~3_combout\ & 
-- (!\main_processor|dat|ALU0|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux16~4_combout\,
	datab => \main_processor|control_unit|ALU_op[2]~3_combout\,
	datac => \main_processor|dat|ALU0|Mux15~3_combout\,
	datad => \main_processor|dat|ALU0|Mux15~1_combout\,
	combout => \main_processor|dat|ALU0|Equal0~7_combout\);

-- Location: LCCOMB_X55_Y22_N24
\main_processor|dat|ALU0|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux17~2_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & (\main_processor|control_unit|ALU_op[0]~6_combout\)) # (!\main_processor|control_unit|ALU_op[1]~4_combout\ & 
-- ((\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|MuxIm2|Mux17~0_combout\) # (\main_processor|dat|MuxIm1|f[14]~14_combout\))) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (\main_processor|dat|MuxIm2|Mux17~0_combout\ & 
-- \main_processor|dat|MuxIm1|f[14]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|MuxIm2|Mux17~0_combout\,
	datad => \main_processor|dat|MuxIm1|f[14]~14_combout\,
	combout => \main_processor|dat|ALU0|Mux17~2_combout\);

-- Location: LCCOMB_X55_Y22_N6
\main_processor|dat|ALU0|add|cycle0|cycle3|cycle2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle3|cycle2|s~combout\ = \main_processor|dat|ALU0|add|cycle0|cycle3|cycle1|Cout~0_combout\ $ (\main_processor|dat|MuxIm2|Mux17~0_combout\ $ (((!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- \main_processor|dat|A|q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|add|cycle0|cycle3|cycle1|Cout~0_combout\,
	datab => \main_processor|control_unit|Im_Mux1~0_combout\,
	datac => \main_processor|dat|MuxIm2|Mux17~0_combout\,
	datad => \main_processor|dat|A|q\(14),
	combout => \main_processor|dat|ALU0|add|cycle0|cycle3|cycle2|s~combout\);

-- Location: LCCOMB_X55_Y22_N26
\main_processor|dat|ALU0|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux17~3_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|dat|ALU0|Mux17~2_combout\ & (\main_processor|dat|MuxIm2|Mux17~0_combout\)) # (!\main_processor|dat|ALU0|Mux17~2_combout\ & 
-- ((\main_processor|dat|ALU0|add|cycle0|cycle3|cycle2|s~combout\))))) # (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (\main_processor|dat|ALU0|Mux17~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|dat|ALU0|Mux17~2_combout\,
	datac => \main_processor|dat|MuxIm2|Mux17~0_combout\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle3|cycle2|s~combout\,
	combout => \main_processor|dat|ALU0|Mux17~3_combout\);

-- Location: LCCOMB_X58_Y21_N14
\main_processor|dat|ALU0|sub|cycle0|cycle3|cycle2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle2|s~combout\ = \main_processor|dat|MuxIm1|f[14]~14_combout\ $ (\main_processor|dat|MuxIm2|Mux17~0_combout\ $ (((\main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|Cout~2_combout\) # 
-- (\main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[14]~14_combout\,
	datab => \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|Cout~2_combout\,
	datac => \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle1|Cout~0_combout\,
	datad => \main_processor|dat|MuxIm2|Mux17~0_combout\,
	combout => \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle2|s~combout\);

-- Location: LCCOMB_X55_Y22_N22
\main_processor|dat|ALU0|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux17~0_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # ((!\main_processor|dat|ALU0|sub|cycle0|cycle3|cycle2|s~combout\)))) # 
-- (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (\main_processor|dat|MuxIm1|f[13]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|MuxIm1|f[13]~13_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle0|cycle3|cycle2|s~combout\,
	combout => \main_processor|dat|ALU0|Mux17~0_combout\);

-- Location: LCCOMB_X55_Y22_N0
\main_processor|dat|ALU0|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux17~1_combout\ = (\main_processor|dat|ALU0|Mux17~0_combout\ & (((\main_processor|dat|MuxIm1|f[14]~14_combout\) # (!\main_processor|control_unit|ALU_op[0]~6_combout\)))) # (!\main_processor|dat|ALU0|Mux17~0_combout\ & 
-- (\main_processor|dat|MuxIm1|f[15]~15_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[15]~15_combout\,
	datab => \main_processor|dat|MuxIm1|f[14]~14_combout\,
	datac => \main_processor|dat|ALU0|Mux17~0_combout\,
	datad => \main_processor|control_unit|ALU_op[0]~6_combout\,
	combout => \main_processor|dat|ALU0|Mux17~1_combout\);

-- Location: LCCOMB_X55_Y22_N2
\main_processor|dat|ALU0|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Equal0~6_combout\ = (!\main_processor|dat|ALU0|Mux18~4_combout\ & ((\main_processor|control_unit|ALU_op[2]~3_combout\ & ((!\main_processor|dat|ALU0|Mux17~1_combout\))) # (!\main_processor|control_unit|ALU_op[2]~3_combout\ & 
-- (!\main_processor|dat|ALU0|Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux18~4_combout\,
	datab => \main_processor|control_unit|ALU_op[2]~3_combout\,
	datac => \main_processor|dat|ALU0|Mux17~3_combout\,
	datad => \main_processor|dat|ALU0|Mux17~1_combout\,
	combout => \main_processor|dat|ALU0|Equal0~6_combout\);

-- Location: LCCOMB_X55_Y26_N26
\main_processor|dat|ALU0|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Equal0~8_combout\ = (\main_processor|dat|ALU0|Equal0~5_combout\ & (\main_processor|dat|ALU0|Equal0~4_combout\ & (\main_processor|dat|ALU0|Equal0~7_combout\ & \main_processor|dat|ALU0|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Equal0~5_combout\,
	datab => \main_processor|dat|ALU0|Equal0~4_combout\,
	datac => \main_processor|dat|ALU0|Equal0~7_combout\,
	datad => \main_processor|dat|ALU0|Equal0~6_combout\,
	combout => \main_processor|dat|ALU0|Equal0~8_combout\);

-- Location: FF_X55_Y26_N27
\main_processor|dat|Z|q_NEW_REG0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ALU0|Equal0~8_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_Z~1_combout\,
	ena => \main_processor|control_unit|Ld_C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|Z|q_OTERM1\);

-- Location: LCCOMB_X56_Y21_N6
\main_processor|dat|ALU0|Mux31~5_RTM08\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux31~5_RTM08_combout\ = !\main_processor|dat|ALU0|Mux31~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_processor|dat|ALU0|Mux31~5_combout\,
	combout => \main_processor|dat|ALU0|Mux31~5_RTM08_combout\);

-- Location: FF_X56_Y21_N7
\main_processor|dat|Z|q_OTERM7_NEW_REG6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ALU0|Mux31~5_RTM08_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_Z~1_combout\,
	ena => \main_processor|control_unit|Ld_C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|Z|q_OTERM7_OTERM7\);

-- Location: FF_X56_Y21_N31
\main_processor|dat|Z|q_OTERM7_OTERM5_NEW_REG46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|ALU0|Mux31~9_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_Z~1_combout\,
	sload => VCC,
	ena => \main_processor|control_unit|Ld_C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|Z|q_OTERM7_OTERM5_OTERM47\);

-- Location: LCCOMB_X56_Y21_N16
\main_processor|dat|Z|q_OTERM7_OTERM5_OTERM45~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|Z|q_OTERM7_OTERM5_OTERM45~feeder_combout\ = \main_processor|dat|ALU0|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_processor|dat|ALU0|Mux0~0_combout\,
	combout => \main_processor|dat|Z|q_OTERM7_OTERM5_OTERM45~feeder_combout\);

-- Location: FF_X56_Y21_N17
\main_processor|dat|Z|q_OTERM7_OTERM5_NEW_REG44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|Z|q_OTERM7_OTERM5_OTERM45~feeder_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_Z~1_combout\,
	ena => \main_processor|control_unit|Ld_C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|Z|q_OTERM7_OTERM5_OTERM45\);

-- Location: FF_X56_Y21_N9
\main_processor|dat|Z|q_OTERM7_OTERM5_NEW_REG40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|control_unit|ALU_op[2]~3_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_Z~1_combout\,
	sload => VCC,
	ena => \main_processor|control_unit|Ld_C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|Z|q_OTERM7_OTERM5_OTERM41\);

-- Location: LCCOMB_X56_Y21_N2
\main_processor|dat|ALU0|Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux31~6_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|dat|ALU0|sub|cycle1|cycle3|cycle2|Cout~0_combout\ $ (!\main_processor|dat|ALU0|sub|cycle1|cycle3|cycle3|s~0_combout\)))) # 
-- (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (\main_processor|dat|MuxIm1|f[30]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[30]~30_combout\,
	datab => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle2|Cout~0_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle3|s~0_combout\,
	combout => \main_processor|dat|ALU0|Mux31~6_combout\);

-- Location: FF_X56_Y21_N3
\main_processor|dat|Z|q_OTERM7_OTERM5_NEW_REG42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ALU0|Mux31~6_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_Z~1_combout\,
	ena => \main_processor|control_unit|Ld_C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|Z|q_OTERM7_OTERM5_OTERM43\);

-- Location: LCCOMB_X56_Y21_N8
\main_processor|dat|ALU0|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux0~1_combout\ = (\main_processor|dat|Z|q_OTERM7_OTERM5_OTERM45\ & ((\main_processor|dat|Z|q_OTERM7_OTERM5_OTERM47\) # ((!\main_processor|dat|Z|q_OTERM7_OTERM5_OTERM41\)))) # (!\main_processor|dat|Z|q_OTERM7_OTERM5_OTERM45\ & 
-- (((\main_processor|dat|Z|q_OTERM7_OTERM5_OTERM41\ & \main_processor|dat|Z|q_OTERM7_OTERM5_OTERM43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|Z|q_OTERM7_OTERM5_OTERM47\,
	datab => \main_processor|dat|Z|q_OTERM7_OTERM5_OTERM45\,
	datac => \main_processor|dat|Z|q_OTERM7_OTERM5_OTERM41\,
	datad => \main_processor|dat|Z|q_OTERM7_OTERM5_OTERM43\,
	combout => \main_processor|dat|ALU0|Mux0~1_combout\);

-- Location: LCCOMB_X56_Y21_N26
\main_processor|dat|ALU0|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux1~4_combout\ = (\main_processor|control_unit|Mux3~0_combout\ & ((\main_processor|control_unit|ALU_op[0]~8_combout\ & (\main_processor|dat|ALU0|Mux1~1_combout\)) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & 
-- ((\main_processor|dat|ALU0|Mux1~3_combout\))))) # (!\main_processor|control_unit|Mux3~0_combout\ & (((\main_processor|dat|ALU0|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Mux3~0_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datac => \main_processor|dat|ALU0|Mux1~1_combout\,
	datad => \main_processor|dat|ALU0|Mux1~3_combout\,
	combout => \main_processor|dat|ALU0|Mux1~4_combout\);

-- Location: FF_X56_Y21_N27
\main_processor|dat|Z|q_OTERM7_NEW_REG2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ALU0|Mux1~4_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_Z~1_combout\,
	ena => \main_processor|control_unit|Ld_C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|Z|q_OTERM7_OTERM3\);

-- Location: LCCOMB_X57_Y27_N30
\main_processor|dat|ALU0|Mux2~3_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux2~3_Duplicate_7\ = (\main_processor|dat|ALU0|Mux2~2_combout\ & (((\main_processor|dat|MuxIm2|Mux2~0_combout\)) # (!\main_processor|control_unit|ALU_op[1]~4_combout\))) # (!\main_processor|dat|ALU0|Mux2~2_combout\ & 
-- (\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux2~2_combout\,
	datab => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datac => \main_processor|dat|MuxIm2|Mux2~0_combout\,
	datad => \main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|s~combout\,
	combout => \main_processor|dat|ALU0|Mux2~3_Duplicate_7\);

-- Location: LCCOMB_X57_Y23_N10
\main_processor|dat|ALU0|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux2~4_combout\ = (\main_processor|control_unit|ALU_op[0]~8_combout\ & ((\main_processor|control_unit|Mux3~0_combout\ & (\main_processor|dat|ALU0|Mux2~1_combout\)) # (!\main_processor|control_unit|Mux3~0_combout\ & 
-- ((\main_processor|dat|ALU0|Mux2~3_Duplicate_7\))))) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & (((\main_processor|dat|ALU0|Mux2~3_Duplicate_7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datab => \main_processor|control_unit|Mux3~0_combout\,
	datac => \main_processor|dat|ALU0|Mux2~1_combout\,
	datad => \main_processor|dat|ALU0|Mux2~3_Duplicate_7\,
	combout => \main_processor|dat|ALU0|Mux2~4_combout\);

-- Location: FF_X57_Y23_N11
\main_processor|dat|Z|q_OTERM7_NEW_REG0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ALU0|Mux2~4_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_Z~1_combout\,
	ena => \main_processor|control_unit|Ld_C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|Z|q_OTERM7_OTERM1\);

-- Location: LCCOMB_X56_Y21_N4
\main_processor|dat|ALU0|Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Equal0~13_combout\ = (\main_processor|dat|Z|q_OTERM7_OTERM7\ & (!\main_processor|dat|ALU0|Mux0~1_combout\ & (!\main_processor|dat|Z|q_OTERM7_OTERM3\ & !\main_processor|dat|Z|q_OTERM7_OTERM1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|Z|q_OTERM7_OTERM7\,
	datab => \main_processor|dat|ALU0|Mux0~1_combout\,
	datac => \main_processor|dat|Z|q_OTERM7_OTERM3\,
	datad => \main_processor|dat|Z|q_OTERM7_OTERM1\,
	combout => \main_processor|dat|ALU0|Equal0~13_combout\);

-- Location: LCCOMB_X55_Y26_N22
\main_processor|dat|ALU0|Equal0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Equal0~14_combout\ = (\main_processor|dat|Z|q_OTERM3\ & (\main_processor|dat|ALU0|Equal0~12_combout\ & (\main_processor|dat|Z|q_OTERM1\ & \main_processor|dat|ALU0|Equal0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|Z|q_OTERM3\,
	datab => \main_processor|dat|ALU0|Equal0~12_combout\,
	datac => \main_processor|dat|Z|q_OTERM1\,
	datad => \main_processor|dat|ALU0|Equal0~13_combout\,
	combout => \main_processor|dat|ALU0|Equal0~14_combout\);

-- Location: LCCOMB_X56_Y21_N10
\main_processor|dat|ALU0|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux32~0_combout\ = (\main_processor|dat|MuxIm1|f[31]~31_combout\ & (\main_processor|control_unit|ALU_op[0]~5_combout\ & (\main_processor|control_unit|Mux3~0_combout\ & \main_processor|control_unit|ALU_op[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm1|f[31]~31_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~5_combout\,
	datac => \main_processor|control_unit|Mux3~0_combout\,
	datad => \main_processor|control_unit|ALU_op[0]~2_combout\,
	combout => \main_processor|dat|ALU0|Mux32~0_combout\);

-- Location: LCCOMB_X55_Y23_N14
\main_processor|dat|ALU0|Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux32~1_combout\ = (\main_processor|dat|ALU0|Mux32~0_combout\ & (((\main_processor|dat|ALU0|sub|cycle1|cycle3|cycle2|Cout~0_combout\) # (!\main_processor|control_unit|ALU_op[1]~4_combout\)) # 
-- (!\main_processor|dat|MuxIm2|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux32~0_combout\,
	datab => \main_processor|dat|MuxIm2|Mux0~0_combout\,
	datac => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datad => \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle2|Cout~0_combout\,
	combout => \main_processor|dat|ALU0|Mux32~1_combout\);

-- Location: LCCOMB_X54_Y23_N0
\main_processor|control_unit|Clr_C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Clr_C~1_combout\ = (\main_processor|dat|IR|q\(25) & (\main_processor|control_unit|Clr_C~0_combout\ & (!\main_processor|dat|IR|q\(27) & \main_processor|dat|IR|q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(25),
	datab => \main_processor|control_unit|Clr_C~0_combout\,
	datac => \main_processor|dat|IR|q\(27),
	datad => \main_processor|dat|IR|q\(24),
	combout => \main_processor|control_unit|Clr_C~1_combout\);

-- Location: FF_X55_Y23_N15
\main_processor|dat|C|q_NEW_REG12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ALU0|Mux32~1_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_C~1_combout\,
	ena => \main_processor|control_unit|Ld_C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|C|q_OTERM13\);

-- Location: LCCOMB_X55_Y20_N0
\main_processor|dat|C|q_OTERM9~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|C|q_OTERM9~feeder_combout\ = \main_processor|control_unit|ALU_op[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_processor|control_unit|ALU_op[1]~4_combout\,
	combout => \main_processor|dat|C|q_OTERM9~feeder_combout\);

-- Location: FF_X55_Y20_N1
\main_processor|dat|C|q_NEW_REG8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|C|q_OTERM9~feeder_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_C~1_combout\,
	ena => \main_processor|control_unit|Ld_C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|C|q_OTERM9\);

-- Location: FF_X55_Y20_N21
\main_processor|dat|C|q_NEW_REG10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|control_unit|ALU_op[0]~6_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_C~1_combout\,
	sload => VCC,
	ena => \main_processor|control_unit|Ld_C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|C|q_OTERM11\);

-- Location: LCCOMB_X55_Y24_N22
\main_processor|dat|ALU0|add|cycle1|cycle3|cycle2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle1|cycle3|cycle2|Cout~0_combout\ = (\main_processor|dat|MuxIm2|Mux1~0_combout\ & ((\main_processor|dat|MuxIm1|f[30]~30_combout\) # ((\main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~2_combout\)))) # (!\main_processor|dat|MuxIm2|Mux1~0_combout\ & (\main_processor|dat|MuxIm1|f[30]~30_combout\ & ((\main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~0_combout\) # 
-- (\main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxIm2|Mux1~0_combout\,
	datab => \main_processor|dat|MuxIm1|f[30]~30_combout\,
	datac => \main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~0_combout\,
	datad => \main_processor|dat|ALU0|add|cycle1|cycle3|cycle1|Cout~2_combout\,
	combout => \main_processor|dat|ALU0|add|cycle1|cycle3|cycle2|Cout~0_combout\);

-- Location: LCCOMB_X55_Y20_N10
\main_processor|dat|C|q_OTERM15_OTERM17_OTERM35~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|C|q_OTERM15_OTERM17_OTERM35~feeder_combout\ = \main_processor|dat|ALU0|add|cycle1|cycle3|cycle2|Cout~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_processor|dat|ALU0|add|cycle1|cycle3|cycle2|Cout~0_combout\,
	combout => \main_processor|dat|C|q_OTERM15_OTERM17_OTERM35~feeder_combout\);

-- Location: FF_X55_Y20_N11
\main_processor|dat|C|q_OTERM15_OTERM17_NEW_REG34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|C|q_OTERM15_OTERM17_OTERM35~feeder_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_C~1_combout\,
	ena => \main_processor|control_unit|Ld_C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|C|q_OTERM15_OTERM17_OTERM35\);

-- Location: FF_X56_Y20_N17
\main_processor|dat|C|q_OTERM15_OTERM17_NEW_REG28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|A|q\(31),
	clrn => \main_processor|control_unit|ALT_INV_Clr_C~1_combout\,
	sload => VCC,
	ena => \main_processor|control_unit|Ld_C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|C|q_OTERM15_OTERM17_OTERM29\);

-- Location: FF_X56_Y20_N7
\main_processor|dat|C|q_OTERM15_OTERM17_NEW_REG32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|control_unit|Im_Mux1~0_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_C~1_combout\,
	sload => VCC,
	ena => \main_processor|control_unit|Ld_C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|C|q_OTERM15_OTERM17_OTERM33\);

-- Location: LCCOMB_X56_Y20_N10
\main_processor|dat|C|q_OTERM15_OTERM17_OTERM31~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|C|q_OTERM15_OTERM17_OTERM31~feeder_combout\ = \main_processor|dat|IR|q\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_processor|dat|IR|q\(15),
	combout => \main_processor|dat|C|q_OTERM15_OTERM17_OTERM31~feeder_combout\);

-- Location: FF_X56_Y20_N11
\main_processor|dat|C|q_OTERM15_OTERM17_NEW_REG30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|C|q_OTERM15_OTERM17_OTERM31~feeder_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_C~1_combout\,
	ena => \main_processor|control_unit|Ld_C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|C|q_OTERM15_OTERM17_OTERM31\);

-- Location: LCCOMB_X56_Y20_N6
\main_processor|dat|ALU0|Mux32~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux32~3_combout\ = (\main_processor|dat|C|q_OTERM15_OTERM17_OTERM35\) # ((\main_processor|dat|C|q_OTERM15_OTERM17_OTERM33\ & ((\main_processor|dat|C|q_OTERM15_OTERM17_OTERM31\))) # 
-- (!\main_processor|dat|C|q_OTERM15_OTERM17_OTERM33\ & (\main_processor|dat|C|q_OTERM15_OTERM17_OTERM29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|C|q_OTERM15_OTERM17_OTERM35\,
	datab => \main_processor|dat|C|q_OTERM15_OTERM17_OTERM29\,
	datac => \main_processor|dat|C|q_OTERM15_OTERM17_OTERM33\,
	datad => \main_processor|dat|C|q_OTERM15_OTERM17_OTERM31\,
	combout => \main_processor|dat|ALU0|Mux32~3_combout\);

-- Location: FF_X56_Y20_N19
\main_processor|dat|C|q_OTERM15_NEW_REG10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|control_unit|ALU_op[2]~3_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_C~1_combout\,
	sload => VCC,
	ena => \main_processor|control_unit|Ld_C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|C|q_OTERM15_OTERM11\);

-- Location: FF_X56_Y20_N29
\main_processor|dat|C|q_OTERM15_NEW_REG12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|MuxIm2|Mux0~0_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_C~1_combout\,
	sload => VCC,
	ena => \main_processor|control_unit|Ld_C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|C|q_OTERM15_OTERM13\);

-- Location: FF_X56_Y20_N21
\main_processor|dat|C|q_OTERM15_OTERM15_NEW_REG38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|ALU0|sub|cycle1|cycle3|cycle2|Cout~0_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_C~1_combout\,
	sload => VCC,
	ena => \main_processor|control_unit|Ld_C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|C|q_OTERM15_OTERM15_OTERM39\);

-- Location: LCCOMB_X56_Y20_N12
\main_processor|dat|C|q_OTERM15_OTERM15_OTERM37~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|C|q_OTERM15_OTERM15_OTERM37~feeder_combout\ = \main_processor|dat|MuxIm1|f[31]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_processor|dat|MuxIm1|f[31]~31_combout\,
	combout => \main_processor|dat|C|q_OTERM15_OTERM15_OTERM37~feeder_combout\);

-- Location: FF_X56_Y20_N13
\main_processor|dat|C|q_OTERM15_OTERM15_NEW_REG36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|C|q_OTERM15_OTERM15_OTERM37~feeder_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_C~1_combout\,
	ena => \main_processor|control_unit|Ld_C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|C|q_OTERM15_OTERM15_OTERM37\);

-- Location: LCCOMB_X56_Y20_N20
\main_processor|dat|ALU0|Mux32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux32~2_combout\ = (\main_processor|dat|C|q_OTERM15_OTERM17_OTERM35\ & ((\main_processor|dat|C|q_OTERM15_OTERM15_OTERM37\) # ((\main_processor|dat|C|q_OTERM15_OTERM11\ & \main_processor|dat|C|q_OTERM15_OTERM15_OTERM39\)))) # 
-- (!\main_processor|dat|C|q_OTERM15_OTERM17_OTERM35\ & (\main_processor|dat|C|q_OTERM15_OTERM11\ & (\main_processor|dat|C|q_OTERM15_OTERM15_OTERM39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|C|q_OTERM15_OTERM17_OTERM35\,
	datab => \main_processor|dat|C|q_OTERM15_OTERM11\,
	datac => \main_processor|dat|C|q_OTERM15_OTERM15_OTERM39\,
	datad => \main_processor|dat|C|q_OTERM15_OTERM15_OTERM37\,
	combout => \main_processor|dat|ALU0|Mux32~2_combout\);

-- Location: LCCOMB_X56_Y20_N28
\main_processor|dat|ALU0|Mux32~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux32~4_combout\ = (\main_processor|dat|C|q_OTERM15_OTERM13\ & (\main_processor|dat|ALU0|Mux32~3_combout\ & (!\main_processor|dat|C|q_OTERM15_OTERM11\))) # (!\main_processor|dat|C|q_OTERM15_OTERM13\ & 
-- (((\main_processor|dat|ALU0|Mux32~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux32~3_combout\,
	datab => \main_processor|dat|C|q_OTERM15_OTERM11\,
	datac => \main_processor|dat|C|q_OTERM15_OTERM13\,
	datad => \main_processor|dat|ALU0|Mux32~2_combout\,
	combout => \main_processor|dat|ALU0|Mux32~4_combout\);

-- Location: LCCOMB_X55_Y20_N20
\main_processor|dat|ALU0|Mux32~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux32~5_combout\ = (!\main_processor|dat|C|q_OTERM11\ & ((\main_processor|dat|C|q_OTERM13\) # ((\main_processor|dat|C|q_OTERM9\ & \main_processor|dat|ALU0|Mux32~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|C|q_OTERM13\,
	datab => \main_processor|dat|C|q_OTERM9\,
	datac => \main_processor|dat|C|q_OTERM11\,
	datad => \main_processor|dat|ALU0|Mux32~4_combout\,
	combout => \main_processor|dat|ALU0|Mux32~5_combout\);

-- Location: LCCOMB_X54_Y24_N4
\main_processor|control_unit|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Mux12~0_combout\ = (\main_processor|dat|IR|q\(25) & (\main_processor|dat|ALU0|Equal0~14_combout\ & ((!\main_processor|dat|IR|q\(26))))) # (!\main_processor|dat|IR|q\(25) & (((\main_processor|dat|ALU0|Mux32~5_combout\ & 
-- \main_processor|dat|IR|q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Equal0~14_combout\,
	datab => \main_processor|dat|ALU0|Mux32~5_combout\,
	datac => \main_processor|dat|IR|q\(25),
	datad => \main_processor|dat|IR|q\(26),
	combout => \main_processor|control_unit|Mux12~0_combout\);

-- Location: LCCOMB_X54_Y24_N2
\main_processor|control_unit|Inc_PC~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Inc_PC~3_combout\ = (\main_processor|control_unit|ALU_op[0]~5_combout\ & (\main_processor|control_unit|Clr_Z~0_combout\ & (\main_processor|control_unit|Mux12~0_combout\ & \main_processor|control_unit|ALU_op[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~5_combout\,
	datab => \main_processor|control_unit|Clr_Z~0_combout\,
	datac => \main_processor|control_unit|Mux12~0_combout\,
	datad => \main_processor|control_unit|ALU_op[0]~2_combout\,
	combout => \main_processor|control_unit|Inc_PC~3_combout\);

-- Location: LCCOMB_X53_Y23_N22
\main_processor|control_unit|Inc_PC~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Inc_PC~4_combout\ = (!\main_processor|control_unit|Inc_PC~3_combout\ & ((\main_processor|reset|enable_PD~q\) # ((\main_processor|control_unit|ALU_op[0]~8_combout\) # (!\main_processor|control_unit|current_state.T1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|reset|enable_PD~q\,
	datab => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datac => \main_processor|control_unit|Inc_PC~3_combout\,
	datad => \main_processor|control_unit|current_state.T1~q\,
	combout => \main_processor|control_unit|Inc_PC~4_combout\);

-- Location: FF_X31_Y23_N3
\main_processor|dat|ProgramCounter|q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[1]~34_combout\,
	asdata => \main_processor|dat|IR|q\(1),
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(1));

-- Location: LCCOMB_X52_Y26_N24
\main_processor|dat|DataMemory|data_out~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~25_combout\ = (!\main_processor|control_unit|wen~q\ & (\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a25\ & \main_processor|control_unit|en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|wen~q\,
	datac => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a25\,
	datad => \main_processor|control_unit|en~q\,
	combout => \main_processor|dat|DataMemory|data_out~25_combout\);

-- Location: LCCOMB_X56_Y22_N28
\main_processor|dat|DataMemory|data_out[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out[25]~feeder_combout\ = \main_processor|dat|DataMemory|data_out~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_processor|dat|DataMemory|data_out~25_combout\,
	combout => \main_processor|dat|DataMemory|data_out[25]~feeder_combout\);

-- Location: FF_X56_Y22_N29
\main_processor|dat|DataMemory|data_out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|DataMemory|data_out[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(25));

-- Location: LCCOMB_X56_Y22_N18
\main_processor|dat|MuxData|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux6~0_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_processor|dat|DataMemory|data_out\(25)))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_memory|altsyncram_component|auto_generated|q_a\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datab => \main_memory|altsyncram_component|auto_generated|q_a\(25),
	datac => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datad => \main_processor|dat|DataMemory|data_out\(25),
	combout => \main_processor|dat|MuxData|Mux6~0_combout\);

-- Location: LCCOMB_X53_Y24_N24
\main_processor|dat|MuxData|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux6~1_combout\ = (\main_processor|dat|MuxData|Mux6~0_combout\) # ((\main_processor|control_unit|Data_Mux[1]~1_combout\ & (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & \main_processor|dat|ALU0|Mux6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_processor|dat|MuxData|Mux6~0_combout\,
	datad => \main_processor|dat|ALU0|Mux6~4_combout\,
	combout => \main_processor|dat|MuxData|Mux6~1_combout\);

-- Location: FF_X53_Y24_N7
\main_processor|dat|IR|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|MuxData|Mux6~1_combout\,
	sload => VCC,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(25));

-- Location: LCCOMB_X54_Y24_N20
\main_processor|control_unit|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Mux4~0_combout\ = (\main_processor|dat|IR|q\(26) & (((\main_processor|dat|IR|q\(24)) # (!\main_processor|dat|IR|q\(27))) # (!\main_processor|dat|IR|q\(25)))) # (!\main_processor|dat|IR|q\(26) & 
-- (((\main_processor|dat|IR|q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(26),
	datab => \main_processor|dat|IR|q\(25),
	datac => \main_processor|dat|IR|q\(24),
	datad => \main_processor|dat|IR|q\(27),
	combout => \main_processor|control_unit|Mux4~0_combout\);

-- Location: LCCOMB_X53_Y23_N10
\main_processor|control_unit|ALU_op[0]~2_Duplicate_11\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|ALU_op[0]~2_Duplicate_12\ = (\main_processor|dat|IR|q\(30) & (\main_processor|control_unit|current_state.T2~q\ & (!\main_processor|reset|enable_PD~q\ & !\main_processor|dat|IR|q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(30),
	datab => \main_processor|control_unit|current_state.T2~q\,
	datac => \main_processor|reset|enable_PD~q\,
	datad => \main_processor|dat|IR|q\(31),
	combout => \main_processor|control_unit|ALU_op[0]~2_Duplicate_12\);

-- Location: LCCOMB_X50_Y24_N12
\main_processor|control_unit|ALU_op[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|ALU_op[1]~4_combout\ = (!\main_processor|control_unit|Mux4~0_combout\ & (\main_processor|control_unit|ALU_op[0]~2_Duplicate_12\ & (\main_processor|dat|IR|q\(29) & \main_processor|dat|IR|q\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Mux4~0_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~2_Duplicate_12\,
	datac => \main_processor|dat|IR|q\(29),
	datad => \main_processor|dat|IR|q\(28),
	combout => \main_processor|control_unit|ALU_op[1]~4_combout\);

-- Location: LCCOMB_X53_Y22_N26
\main_processor|dat|ALU0|reg_result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|reg_result~0_combout\ = (!\main_processor|control_unit|Im_Mux2[1]~3_Duplicate_8\ & (\main_processor|dat|MuxIm1|f[1]~2_combout\ & ((\main_processor|dat|MuxIm2|Mux30~0_combout\) # (\main_processor|dat|MuxIm2|Mux30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux2[1]~3_Duplicate_8\,
	datab => \main_processor|dat|MuxIm2|Mux30~0_combout\,
	datac => \main_processor|dat|MuxIm2|Mux30~1_combout\,
	datad => \main_processor|dat|MuxIm1|f[1]~2_combout\,
	combout => \main_processor|dat|ALU0|reg_result~0_combout\);

-- Location: LCCOMB_X53_Y22_N16
\main_processor|dat|ALU0|add|cycle0|cycle0|cycle1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|add|cycle0|cycle0|cycle1|s~combout\ = \main_processor|dat|ALU0|add|cycle0|cycle0|cycle0|Cout~0_combout\ $ (\main_processor|dat|MuxIm2|Mux30~2_combout\ $ (((!\main_processor|control_unit|Im_Mux1~0_combout\ & 
-- \main_processor|dat|A|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Im_Mux1~0_combout\,
	datab => \main_processor|dat|ALU0|add|cycle0|cycle0|cycle0|Cout~0_combout\,
	datac => \main_processor|dat|A|q\(1),
	datad => \main_processor|dat|MuxIm2|Mux30~2_combout\,
	combout => \main_processor|dat|ALU0|add|cycle0|cycle0|cycle1|s~combout\);

-- Location: LCCOMB_X53_Y22_N12
\main_processor|dat|ALU0|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux30~2_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|control_unit|ALU_op[0]~6_combout\) # ((\main_processor|dat|ALU0|add|cycle0|cycle0|cycle1|s~combout\)))) # 
-- (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (\main_processor|dat|ALU0|reg_result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datac => \main_processor|dat|ALU0|reg_result~0_combout\,
	datad => \main_processor|dat|ALU0|add|cycle0|cycle0|cycle1|s~combout\,
	combout => \main_processor|dat|ALU0|Mux30~2_combout\);

-- Location: LCCOMB_X53_Y22_N22
\main_processor|dat|ALU0|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux30~3_combout\ = (\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|MuxIm2|Mux30~2_combout\) # ((!\main_processor|dat|ALU0|Mux30~2_combout\ & \main_processor|dat|MuxIm1|f[1]~2_combout\)))) # 
-- (!\main_processor|control_unit|ALU_op[0]~6_combout\ & (\main_processor|dat|ALU0|Mux30~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux30~2_combout\,
	datab => \main_processor|dat|MuxIm2|Mux30~2_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|MuxIm1|f[1]~2_combout\,
	combout => \main_processor|dat|ALU0|Mux30~3_combout\);

-- Location: LCCOMB_X52_Y20_N20
\main_processor|dat|ALU0|Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux30~4_combout\ = (\main_processor|control_unit|ALU_op[0]~8_combout\ & ((\main_processor|control_unit|Mux3~0_combout\ & ((\main_processor|dat|ALU0|Mux30~1_combout\))) # (!\main_processor|control_unit|Mux3~0_combout\ & 
-- (\main_processor|dat|ALU0|Mux30~3_combout\)))) # (!\main_processor|control_unit|ALU_op[0]~8_combout\ & (\main_processor|dat|ALU0|Mux30~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux30~3_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datac => \main_processor|control_unit|Mux3~0_combout\,
	datad => \main_processor|dat|ALU0|Mux30~1_combout\,
	combout => \main_processor|dat|ALU0|Mux30~4_combout\);

-- Location: LCCOMB_X49_Y24_N28
\main_processor|dat|MuxData|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux30~1_combout\ = (\main_processor|dat|MuxData|Mux30~0_combout\) # ((\main_processor|dat|ALU0|Mux30~4_combout\ & (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & \main_processor|control_unit|Data_Mux[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux30~4_combout\,
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datad => \main_processor|dat|MuxData|Mux30~0_combout\,
	combout => \main_processor|dat|MuxData|Mux30~1_combout\);

-- Location: FF_X53_Y24_N31
\main_processor|dat|IR|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|MuxData|Mux30~1_combout\,
	sload => VCC,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(1));

-- Location: LCCOMB_X52_Y21_N10
\main_processor|dat|DataMemory|data_out~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~27_combout\ = (\main_processor|control_unit|en~q\ & (!\main_processor|control_unit|wen~q\ & \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|en~q\,
	datac => \main_processor|control_unit|wen~q\,
	datad => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a27\,
	combout => \main_processor|dat|DataMemory|data_out~27_combout\);

-- Location: FF_X54_Y20_N25
\main_processor|dat|DataMemory|data_out[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|DataMemory|data_out~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(27));

-- Location: LCCOMB_X54_Y20_N24
\main_processor|dat|MuxData|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux4~0_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|dat|DataMemory|data_out\(27))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_memory|altsyncram_component|auto_generated|q_a\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_processor|dat|DataMemory|data_out\(27),
	datad => \main_memory|altsyncram_component|auto_generated|q_a\(27),
	combout => \main_processor|dat|MuxData|Mux4~0_combout\);

-- Location: LCCOMB_X54_Y23_N4
\main_processor|dat|MuxData|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux4~1_combout\ = (\main_processor|dat|MuxData|Mux4~0_combout\) # ((!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|control_unit|Data_Mux[1]~1_combout\ & \main_processor|dat|ALU0|Mux4~4_Duplicate_6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datab => \main_processor|dat|MuxData|Mux4~0_combout\,
	datac => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datad => \main_processor|dat|ALU0|Mux4~4_Duplicate_6\,
	combout => \main_processor|dat|MuxData|Mux4~1_combout\);

-- Location: FF_X54_Y23_N1
\main_processor|dat|IR|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|MuxData|Mux4~1_combout\,
	sload => VCC,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(27));

-- Location: LCCOMB_X54_Y23_N24
\main_processor|control_unit|Im_Mux2[1]~1_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Im_Mux2[1]~1_Duplicate_5\ = (\main_processor|dat|IR|q\(25) & ((\main_processor|dat|IR|q\(26) & (\main_processor|dat|IR|q\(27) & !\main_processor|dat|IR|q\(24))) # (!\main_processor|dat|IR|q\(26) & 
-- (!\main_processor|dat|IR|q\(27) & \main_processor|dat|IR|q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(26),
	datab => \main_processor|dat|IR|q\(27),
	datac => \main_processor|dat|IR|q\(25),
	datad => \main_processor|dat|IR|q\(24),
	combout => \main_processor|control_unit|Im_Mux2[1]~1_Duplicate_5\);

-- Location: LCCOMB_X53_Y24_N14
\main_processor|control_unit|Im_Mux2[1]~3_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Im_Mux2[1]~3_Duplicate_6\ = (!\main_processor|reset|enable_PD~q\ & (\main_processor|control_unit|Im_Mux2[1]~2_combout\ & (\main_processor|dat|IR|q\(28) & \main_processor|control_unit|Im_Mux2[1]~1_Duplicate_5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|reset|enable_PD~q\,
	datab => \main_processor|control_unit|Im_Mux2[1]~2_combout\,
	datac => \main_processor|dat|IR|q\(28),
	datad => \main_processor|control_unit|Im_Mux2[1]~1_Duplicate_5\,
	combout => \main_processor|control_unit|Im_Mux2[1]~3_Duplicate_6\);

-- Location: LCCOMB_X53_Y24_N28
\main_processor|dat|MuxIm2|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxIm2|Mux31~0_combout\ = (\main_processor|control_unit|Im_Mux2[1]~3_Duplicate_6\ & (((\main_processor|control_unit|Im_Mux2[0]~0_combout\)))) # (!\main_processor|control_unit|Im_Mux2[1]~3_Duplicate_6\ & 
-- ((\main_processor|control_unit|Im_Mux2[0]~0_combout\ & ((\main_processor|dat|B|q\(0)))) # (!\main_processor|control_unit|Im_Mux2[0]~0_combout\ & (\main_processor|dat|IR|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(0),
	datab => \main_processor|dat|B|q\(0),
	datac => \main_processor|control_unit|Im_Mux2[1]~3_Duplicate_6\,
	datad => \main_processor|control_unit|Im_Mux2[0]~0_combout\,
	combout => \main_processor|dat|MuxIm2|Mux31~0_combout\);

-- Location: LCCOMB_X53_Y20_N0
\main_processor|dat|ALU0|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux31~1_combout\ = (\main_processor|dat|MuxIm2|Mux31~0_combout\) # ((\main_processor|dat|MuxIm1|f[0]~0_combout\ & ((\main_processor|control_unit|Mux4~0_combout\) # (!\main_processor|control_unit|ALU_op[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datab => \main_processor|dat|MuxIm1|f[0]~0_combout\,
	datac => \main_processor|dat|MuxIm2|Mux31~0_combout\,
	datad => \main_processor|control_unit|Mux4~0_combout\,
	combout => \main_processor|dat|ALU0|Mux31~1_combout\);

-- Location: LCCOMB_X53_Y20_N10
\main_processor|dat|ALU0|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux31~2_combout\ = (\main_processor|control_unit|ALU_op[1]~4_combout\ & (\main_processor|dat|MuxIm1|f[0]~0_combout\ $ (\main_processor|dat|MuxIm2|Mux31~0_combout\ $ (\main_processor|control_unit|ALU_op[2]~3_combout\)))) # 
-- (!\main_processor|control_unit|ALU_op[1]~4_combout\ & (\main_processor|dat|MuxIm1|f[0]~0_combout\ & (\main_processor|dat|MuxIm2|Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|dat|MuxIm1|f[0]~0_combout\,
	datac => \main_processor|dat|MuxIm2|Mux31~0_combout\,
	datad => \main_processor|control_unit|ALU_op[2]~3_combout\,
	combout => \main_processor|dat|ALU0|Mux31~2_combout\);

-- Location: LCCOMB_X53_Y20_N20
\main_processor|dat|ALU0|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux31~3_combout\ = (\main_processor|control_unit|ALU_op[2]~3_combout\ & (((\main_processor|control_unit|ALU_op[0]~6_combout\)))) # (!\main_processor|control_unit|ALU_op[2]~3_combout\ & 
-- ((\main_processor|control_unit|ALU_op[0]~6_combout\ & (\main_processor|dat|ALU0|Mux31~1_combout\)) # (!\main_processor|control_unit|ALU_op[0]~6_combout\ & ((\main_processor|dat|ALU0|Mux31~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[2]~3_combout\,
	datab => \main_processor|dat|ALU0|Mux31~1_combout\,
	datac => \main_processor|control_unit|ALU_op[0]~6_combout\,
	datad => \main_processor|dat|ALU0|Mux31~2_combout\,
	combout => \main_processor|dat|ALU0|Mux31~3_combout\);

-- Location: LCCOMB_X53_Y20_N30
\main_processor|dat|ALU0|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux31~0_combout\ = (\main_processor|dat|MuxIm1|f[0]~0_combout\ $ (\main_processor|dat|MuxIm2|Mux31~0_combout\ $ (\main_processor|control_unit|ALU_op[2]~3_combout\))) # (!\main_processor|control_unit|ALU_op[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datab => \main_processor|dat|MuxIm1|f[0]~0_combout\,
	datac => \main_processor|dat|MuxIm2|Mux31~0_combout\,
	datad => \main_processor|control_unit|ALU_op[2]~3_combout\,
	combout => \main_processor|dat|ALU0|Mux31~0_combout\);

-- Location: LCCOMB_X54_Y22_N22
\main_processor|dat|ALU0|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux31~4_combout\ = (!\main_processor|control_unit|Im_Mux1~0_combout\ & ((\main_processor|control_unit|ALU_op[1]~4_combout\ & ((\main_processor|dat|A|q\(0)))) # (!\main_processor|control_unit|ALU_op[1]~4_combout\ & 
-- (\main_processor|dat|A|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|A|q\(1),
	datab => \main_processor|control_unit|Im_Mux1~0_combout\,
	datac => \main_processor|control_unit|ALU_op[1]~4_combout\,
	datad => \main_processor|dat|A|q\(0),
	combout => \main_processor|dat|ALU0|Mux31~4_combout\);

-- Location: LCCOMB_X53_Y20_N26
\main_processor|dat|ALU0|Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux31~5_combout\ = (\main_processor|control_unit|ALU_op[2]~3_combout\ & ((\main_processor|dat|ALU0|Mux31~3_combout\ & ((\main_processor|dat|ALU0|Mux31~4_combout\))) # (!\main_processor|dat|ALU0|Mux31~3_combout\ & 
-- (!\main_processor|dat|ALU0|Mux31~0_combout\)))) # (!\main_processor|control_unit|ALU_op[2]~3_combout\ & (\main_processor|dat|ALU0|Mux31~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[2]~3_combout\,
	datab => \main_processor|dat|ALU0|Mux31~3_combout\,
	datac => \main_processor|dat|ALU0|Mux31~0_combout\,
	datad => \main_processor|dat|ALU0|Mux31~4_combout\,
	combout => \main_processor|dat|ALU0|Mux31~5_combout\);

-- Location: LCCOMB_X48_Y24_N16
\main_processor|dat|DataMemory|data_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~0_combout\ = (\main_processor|control_unit|en~q\ & (!\main_processor|control_unit|wen~q\ & \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|en~q\,
	datac => \main_processor|control_unit|wen~q\,
	datad => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \main_processor|dat|DataMemory|data_out~0_combout\);

-- Location: FF_X49_Y24_N5
\main_processor|dat|DataMemory|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|DataMemory|data_out~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(0));

-- Location: LCCOMB_X49_Y24_N10
\main_processor|dat|MuxData|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux31~0_combout\ = (\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|dat|DataMemory|data_out\(0))) # (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & 
-- ((\main_memory|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_processor|dat|DataMemory|data_out\(0),
	datad => \main_memory|altsyncram_component|auto_generated|q_a\(0),
	combout => \main_processor|dat|MuxData|Mux31~0_combout\);

-- Location: LCCOMB_X49_Y24_N12
\main_processor|dat|MuxData|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux31~1_combout\ = (\main_processor|control_unit|Data_Mux[1]~1_combout\ & (\main_processor|dat|ALU0|Mux31~5_combout\ & (!\main_processor|control_unit|Data_Mux[0]~0_combout\))) # 
-- (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & (((\main_processor|dat|MuxData|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux31~5_combout\,
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datad => \main_processor|dat|MuxData|Mux31~0_combout\,
	combout => \main_processor|dat|MuxData|Mux31~1_combout\);

-- Location: FF_X53_Y24_N13
\main_processor|dat|IR|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|MuxData|Mux31~1_combout\,
	sload => VCC,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(0));

-- Location: FF_X31_Y23_N1
\main_processor|dat|ProgramCounter|q_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[0]~32_combout\,
	asdata => \main_processor|dat|IR|q\(0),
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(0));

-- Location: LCCOMB_X54_Y23_N18
\main_processor|dat|DataMemory|data_out~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~24_combout\ = (\main_processor|control_unit|en~q\ & (!\main_processor|control_unit|wen~q\ & \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|en~q\,
	datab => \main_processor|control_unit|wen~q\,
	datad => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a24\,
	combout => \main_processor|dat|DataMemory|data_out~24_combout\);

-- Location: FF_X54_Y24_N11
\main_processor|dat|DataMemory|data_out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|DataMemory|data_out~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(24));

-- Location: LCCOMB_X54_Y24_N12
\main_processor|dat|MuxData|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux7~0_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_processor|dat|DataMemory|data_out\(24)))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_memory|altsyncram_component|auto_generated|q_a\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_memory|altsyncram_component|auto_generated|q_a\(24),
	datab => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datac => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datad => \main_processor|dat|DataMemory|data_out\(24),
	combout => \main_processor|dat|MuxData|Mux7~0_combout\);

-- Location: LCCOMB_X54_Y24_N14
\main_processor|dat|MuxData|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux7~1_combout\ = (\main_processor|dat|MuxData|Mux7~0_combout\) # ((\main_processor|control_unit|Data_Mux[1]~1_combout\ & (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & \main_processor|dat|ALU0|Mux7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|MuxData|Mux7~0_combout\,
	datab => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datac => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datad => \main_processor|dat|ALU0|Mux7~4_combout\,
	combout => \main_processor|dat|MuxData|Mux7~1_combout\);

-- Location: FF_X54_Y24_N21
\main_processor|dat|IR|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|MuxData|Mux7~1_combout\,
	sload => VCC,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(24));

-- Location: LCCOMB_X54_Y24_N26
\main_processor|control_unit|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Mux3~0_combout\ = (\main_processor|dat|IR|q\(27) & (\main_processor|dat|IR|q\(26) & ((\main_processor|dat|IR|q\(25))))) # (!\main_processor|dat|IR|q\(27) & (!\main_processor|dat|IR|q\(24) & (\main_processor|dat|IR|q\(26) $ 
-- (\main_processor|dat|IR|q\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(26),
	datab => \main_processor|dat|IR|q\(24),
	datac => \main_processor|dat|IR|q\(25),
	datad => \main_processor|dat|IR|q\(27),
	combout => \main_processor|control_unit|Mux3~0_combout\);

-- Location: LCCOMB_X54_Y24_N8
\main_processor|control_unit|ALU_op[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|ALU_op[2]~3_combout\ = (\main_processor|dat|IR|q\(29) & (\main_processor|dat|IR|q\(28) & (\main_processor|control_unit|Mux3~0_combout\ & \main_processor|control_unit|ALU_op[0]~2_Duplicate_12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(29),
	datab => \main_processor|dat|IR|q\(28),
	datac => \main_processor|control_unit|Mux3~0_combout\,
	datad => \main_processor|control_unit|ALU_op[0]~2_Duplicate_12\,
	combout => \main_processor|control_unit|ALU_op[2]~3_combout\);

-- Location: LCCOMB_X55_Y22_N12
\main_processor|dat|MuxData|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux17~0_combout\ = (\main_processor|dat|MuxData|Mux31~2_combout\ & ((\main_processor|control_unit|ALU_op[2]~3_combout\ & ((\main_processor|dat|ALU0|Mux17~1_combout\))) # (!\main_processor|control_unit|ALU_op[2]~3_combout\ & 
-- (\main_processor|dat|ALU0|Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[2]~3_combout\,
	datab => \main_processor|dat|MuxData|Mux31~2_combout\,
	datac => \main_processor|dat|ALU0|Mux17~3_combout\,
	datad => \main_processor|dat|ALU0|Mux17~1_combout\,
	combout => \main_processor|dat|MuxData|Mux17~0_combout\);

-- Location: LCCOMB_X55_Y21_N0
\main_processor|dat|MuxData|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux17~2_combout\ = (\main_processor|dat|MuxData|Mux17~0_combout\) # (\main_processor|dat|MuxData|Mux17~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|dat|MuxData|Mux17~0_combout\,
	datad => \main_processor|dat|MuxData|Mux17~1_combout\,
	combout => \main_processor|dat|MuxData|Mux17~2_combout\);

-- Location: LCCOMB_X52_Y26_N22
\main_processor|dat|DataMemory|data_out~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~28_combout\ = (!\main_processor|control_unit|wen~q\ & (\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a28\ & \main_processor|control_unit|en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|wen~q\,
	datac => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a28\,
	datad => \main_processor|control_unit|en~q\,
	combout => \main_processor|dat|DataMemory|data_out~28_combout\);

-- Location: FF_X54_Y26_N15
\main_processor|dat|DataMemory|data_out[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|DataMemory|data_out~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(28));

-- Location: LCCOMB_X54_Y26_N14
\main_processor|dat|MuxData|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux3~0_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_processor|dat|DataMemory|data_out\(28)))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_memory|altsyncram_component|auto_generated|q_a\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_memory|altsyncram_component|auto_generated|q_a\(28),
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_processor|dat|DataMemory|data_out\(28),
	datad => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	combout => \main_processor|dat|MuxData|Mux3~0_combout\);

-- Location: LCCOMB_X54_Y23_N22
\main_processor|dat|MuxData|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux3~1_combout\ = (\main_processor|dat|MuxData|Mux3~0_combout\) # ((\main_processor|control_unit|Data_Mux[1]~1_combout\ & (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & \main_processor|dat|ALU0|Mux3~4_Duplicate_6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_processor|dat|MuxData|Mux3~0_combout\,
	datad => \main_processor|dat|ALU0|Mux3~4_Duplicate_6\,
	combout => \main_processor|dat|MuxData|Mux3~1_combout\);

-- Location: FF_X54_Y23_N31
\main_processor|dat|IR|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|MuxData|Mux3~1_combout\,
	sload => VCC,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(28));

-- Location: LCCOMB_X53_Y23_N14
\main_processor|control_unit|B_Mux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|B_Mux~0_combout\ = (\main_processor|dat|IR|q\(28) & (!\main_processor|dat|IR|q\(29) & !\main_processor|dat|IR|q\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(28),
	datab => \main_processor|dat|IR|q\(29),
	datad => \main_processor|dat|IR|q\(30),
	combout => \main_processor|control_unit|B_Mux~0_combout\);

-- Location: LCCOMB_X53_Y24_N0
\main_processor|dat|MuxB|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxB|f[0]~0_combout\ = (\main_processor|control_unit|ALU_op[0]~7_combout\ & ((\main_processor|control_unit|B_Mux~0_combout\ & ((\main_processor|dat|IR|q\(0)))) # (!\main_processor|control_unit|B_Mux~0_combout\ & 
-- (\main_processor|dat|MuxData|Mux31~1_combout\)))) # (!\main_processor|control_unit|ALU_op[0]~7_combout\ & (((\main_processor|dat|MuxData|Mux31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|ALU_op[0]~7_combout\,
	datab => \main_processor|control_unit|B_Mux~0_combout\,
	datac => \main_processor|dat|MuxData|Mux31~1_combout\,
	datad => \main_processor|dat|IR|q\(0),
	combout => \main_processor|dat|MuxB|f[0]~0_combout\);

-- Location: FF_X53_Y24_N1
\main_processor|dat|B|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxB|f[0]~0_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_B~1_combout\,
	ena => \main_processor|control_unit|Ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|B|q\(0));

-- Location: LCCOMB_X53_Y24_N12
\main_processor|dat|MuxReg|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxReg|f[0]~0_combout\ = (\main_processor|control_unit|Reg_Mux~1_combout\ & ((\main_processor|dat|B|q\(0)))) # (!\main_processor|control_unit|Reg_Mux~1_combout\ & (\main_processor|dat|A|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|A|q\(0),
	datab => \main_processor|dat|B|q\(0),
	datad => \main_processor|control_unit|Reg_Mux~1_combout\,
	combout => \main_processor|dat|MuxReg|f[0]~0_combout\);

-- Location: LCCOMB_X52_Y23_N10
\main_processor|dat|DataMemory|data_out~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~31_combout\ = (\main_processor|control_unit|en~q\ & (!\main_processor|control_unit|wen~q\ & \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|en~q\,
	datab => \main_processor|control_unit|wen~q\,
	datac => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a31\,
	combout => \main_processor|dat|DataMemory|data_out~31_combout\);

-- Location: FF_X53_Y23_N25
\main_processor|dat|DataMemory|data_out[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|DataMemory|data_out~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(31));

-- Location: LCCOMB_X53_Y23_N24
\main_processor|dat|MuxData|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux0~0_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|dat|DataMemory|data_out\(31))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_memory|altsyncram_component|auto_generated|q_a\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_processor|dat|DataMemory|data_out\(31),
	datad => \main_memory|altsyncram_component|auto_generated|q_a\(31),
	combout => \main_processor|dat|MuxData|Mux0~0_combout\);

-- Location: LCCOMB_X56_Y23_N12
\main_processor|dat|MuxData|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux0~1_combout\ = (\main_processor|dat|MuxData|Mux0~0_combout\) # ((!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|control_unit|Data_Mux[1]~1_combout\ & \main_processor|dat|ALU0|Mux0~1_Duplicate_3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datab => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datac => \main_processor|dat|MuxData|Mux0~0_combout\,
	datad => \main_processor|dat|ALU0|Mux0~1_Duplicate_3\,
	combout => \main_processor|dat|MuxData|Mux0~1_combout\);

-- Location: LCCOMB_X56_Y23_N30
\main_processor|dat|IR|q[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|IR|q[31]~feeder_combout\ = \main_processor|dat|MuxData|Mux0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_processor|dat|MuxData|Mux0~1_combout\,
	combout => \main_processor|dat|IR|q[31]~feeder_combout\);

-- Location: FF_X56_Y23_N31
\main_processor|dat|IR|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|IR|q[31]~feeder_combout\,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(31));

-- Location: LCCOMB_X52_Y23_N12
\main_processor|control_unit|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Mux33~0_combout\ = (!\main_processor|dat|IR|q\(30) & (\main_processor|dat|IR|q\(29) $ (((\main_processor|dat|IR|q\(31) & \main_processor|dat|IR|q\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(30),
	datab => \main_processor|dat|IR|q\(29),
	datac => \main_processor|dat|IR|q\(31),
	datad => \main_processor|dat|IR|q\(28),
	combout => \main_processor|control_unit|Mux33~0_combout\);

-- Location: LCCOMB_X52_Y26_N28
\main_processor|control_unit|en~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|en~1_combout\ = (\main_processor|control_unit|Mux33~0_combout\ & ((!\cpuClk~input_o\) # (!\main_processor|control_unit|current_state.T2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|current_state.T2~q\,
	datac => \cpuClk~input_o\,
	datad => \main_processor|control_unit|Mux33~0_combout\,
	combout => \main_processor|control_unit|en~1_combout\);

-- Location: FF_X52_Y26_N29
\main_processor|control_unit|en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|control_unit|en~1_combout\,
	ena => \main_processor|control_unit|wen~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|control_unit|en~q\);

-- Location: LCCOMB_X49_Y24_N14
\main_processor|dat|DataMemory|memory~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|memory~41_combout\ = (\main_processor|control_unit|en~q\ & \main_processor|control_unit|wen~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|control_unit|en~q\,
	datad => \main_processor|control_unit|wen~q\,
	combout => \main_processor|dat|DataMemory|memory~41_combout\);

-- Location: LCCOMB_X52_Y23_N24
\main_processor|dat|DataMemory|data_out~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|DataMemory|data_out~29_combout\ = (\main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a29\ & (\main_processor|control_unit|en~q\ & !\main_processor|control_unit|wen~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|DataMemory|memory_rtl_0|auto_generated|ram_block1a29\,
	datac => \main_processor|control_unit|en~q\,
	datad => \main_processor|control_unit|wen~q\,
	combout => \main_processor|dat|DataMemory|data_out~29_combout\);

-- Location: FF_X53_Y23_N13
\main_processor|dat|DataMemory|data_out[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|DataMemory|data_out~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|DataMemory|data_out\(29));

-- Location: LCCOMB_X53_Y23_N12
\main_processor|dat|MuxData|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux2~0_combout\ = (!\main_processor|control_unit|Data_Mux[1]~1_combout\ & ((\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|dat|DataMemory|data_out\(29))) # 
-- (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & ((\main_memory|altsyncram_component|auto_generated|q_a\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_processor|dat|DataMemory|data_out\(29),
	datad => \main_memory|altsyncram_component|auto_generated|q_a\(29),
	combout => \main_processor|dat|MuxData|Mux2~0_combout\);

-- Location: LCCOMB_X54_Y23_N12
\main_processor|dat|MuxData|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux2~1_combout\ = (\main_processor|dat|MuxData|Mux2~0_combout\) # ((\main_processor|control_unit|Data_Mux[1]~1_combout\ & (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & \main_processor|dat|ALU0|Mux2~4_Duplicate_6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_processor|dat|MuxData|Mux2~0_combout\,
	datad => \main_processor|dat|ALU0|Mux2~4_Duplicate_6\,
	combout => \main_processor|dat|MuxData|Mux2~1_combout\);

-- Location: FF_X54_Y23_N13
\main_processor|dat|IR|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxData|Mux2~1_combout\,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(29));

-- Location: LCCOMB_X52_Y23_N8
\main_processor|control_unit|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Mux19~0_combout\ = (\main_processor|dat|IR|q\(31) & (!\main_processor|dat|IR|q\(30) & (\main_processor|dat|IR|q\(29) $ (\main_processor|dat|IR|q\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(29),
	datab => \main_processor|dat|IR|q\(31),
	datac => \main_processor|dat|IR|q\(30),
	datad => \main_processor|dat|IR|q\(28),
	combout => \main_processor|control_unit|Mux19~0_combout\);

-- Location: LCCOMB_X52_Y23_N30
\main_processor|control_unit|Data_Mux[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Data_Mux[0]~0_combout\ = (\main_processor|control_unit|Mux19~0_combout\ & (!\main_processor|reset|enable_PD~q\ & \main_processor|control_unit|current_state.T0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|control_unit|Mux19~0_combout\,
	datac => \main_processor|reset|enable_PD~q\,
	datad => \main_processor|control_unit|current_state.T0~q\,
	combout => \main_processor|control_unit|Data_Mux[0]~0_combout\);

-- Location: LCCOMB_X54_Y23_N26
\main_processor|dat|MuxData|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux5~1_combout\ = (\main_processor|dat|MuxData|Mux5~0_combout\) # ((\main_processor|control_unit|Data_Mux[1]~1_combout\ & (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & \main_processor|dat|ALU0|Mux5~4_Duplicate_6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_processor|dat|MuxData|Mux5~0_combout\,
	datad => \main_processor|dat|ALU0|Mux5~4_Duplicate_6\,
	combout => \main_processor|dat|MuxData|Mux5~1_combout\);

-- Location: FF_X54_Y23_N7
\main_processor|dat|IR|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|MuxData|Mux5~1_combout\,
	sload => VCC,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(26));

-- Location: LCCOMB_X54_Y24_N30
\main_processor|control_unit|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Mux2~0_combout\ = (\main_processor|dat|IR|q\(26) & (\main_processor|dat|IR|q\(27) $ (((\main_processor|dat|IR|q\(25)) # (\main_processor|dat|IR|q\(24)))))) # (!\main_processor|dat|IR|q\(26) & (\main_processor|dat|IR|q\(27) & 
-- ((!\main_processor|dat|IR|q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(26),
	datab => \main_processor|dat|IR|q\(27),
	datac => \main_processor|dat|IR|q\(25),
	datad => \main_processor|dat|IR|q\(24),
	combout => \main_processor|control_unit|Mux2~0_combout\);

-- Location: LCCOMB_X54_Y24_N24
\main_processor|control_unit|Data_Mux[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|Data_Mux[1]~1_combout\ = (\main_processor|control_unit|ALU_op[0]~2_Duplicate_10\ & ((\main_processor|dat|IR|q\(28) & (!\main_processor|control_unit|Mux2~0_combout\ & \main_processor|dat|IR|q\(29))) # 
-- (!\main_processor|dat|IR|q\(28) & ((!\main_processor|dat|IR|q\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Mux2~0_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~2_Duplicate_10\,
	datac => \main_processor|dat|IR|q\(28),
	datad => \main_processor|dat|IR|q\(29),
	combout => \main_processor|control_unit|Data_Mux[1]~1_combout\);

-- Location: LCCOMB_X52_Y23_N26
\main_processor|dat|ALU0|Mux1~4_Duplicate_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ALU0|Mux1~4_Duplicate_6_Duplicate\ = (\main_processor|control_unit|Mux3~0_combout\ & ((\main_processor|control_unit|ALU_op[0]~8_combout\ & ((\main_processor|dat|ALU0|Mux1~1_combout\))) # 
-- (!\main_processor|control_unit|ALU_op[0]~8_combout\ & (\main_processor|dat|ALU0|Mux1~3_combout\)))) # (!\main_processor|control_unit|Mux3~0_combout\ & (((\main_processor|dat|ALU0|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Mux3~0_combout\,
	datab => \main_processor|control_unit|ALU_op[0]~8_combout\,
	datac => \main_processor|dat|ALU0|Mux1~3_combout\,
	datad => \main_processor|dat|ALU0|Mux1~1_combout\,
	combout => \main_processor|dat|ALU0|Mux1~4_Duplicate_6_Duplicate\);

-- Location: LCCOMB_X52_Y23_N14
\main_processor|dat|MuxData|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux1~1_combout\ = (\main_processor|dat|MuxData|Mux1~0_combout\) # ((\main_processor|control_unit|Data_Mux[1]~1_combout\ & (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & 
-- \main_processor|dat|ALU0|Mux1~4_Duplicate_6_Duplicate\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_processor|dat|ALU0|Mux1~4_Duplicate_6_Duplicate\,
	datad => \main_processor|dat|MuxData|Mux1~0_combout\,
	combout => \main_processor|dat|MuxData|Mux1~1_combout\);

-- Location: FF_X52_Y23_N9
\main_processor|dat|IR|q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|dat|MuxData|Mux1~1_combout\,
	sload => VCC,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(30));

-- Location: LCCOMB_X50_Y24_N26
\main_processor|control_unit|A_Mux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|control_unit|A_Mux~0_combout\ = (!\main_processor|dat|IR|q\(30) & (!\main_processor|dat|IR|q\(28) & (!\main_processor|dat|IR|q\(29) & \main_processor|control_unit|ALU_op[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|IR|q\(30),
	datab => \main_processor|dat|IR|q\(28),
	datac => \main_processor|dat|IR|q\(29),
	datad => \main_processor|control_unit|ALU_op[0]~7_combout\,
	combout => \main_processor|control_unit|A_Mux~0_combout\);

-- Location: LCCOMB_X54_Y22_N20
\main_processor|dat|MuxA|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxA|f[0]~0_combout\ = (\main_processor|control_unit|A_Mux~0_combout\ & (\main_processor|dat|IR|q\(0))) # (!\main_processor|control_unit|A_Mux~0_combout\ & ((\main_processor|dat|MuxData|Mux31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|A_Mux~0_combout\,
	datab => \main_processor|dat|IR|q\(0),
	datad => \main_processor|dat|MuxData|Mux31~1_combout\,
	combout => \main_processor|dat|MuxA|f[0]~0_combout\);

-- Location: FF_X54_Y22_N21
\main_processor|dat|A|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxA|f[0]~0_combout\,
	clrn => \main_processor|control_unit|ALT_INV_Clr_A~0_combout\,
	ena => \main_processor|control_unit|Ld_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|A|q\(0));

-- Location: FF_X54_Y23_N21
\main_processor|dat|IR|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxData|Mux15~1_combout\,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(16));

-- Location: FF_X56_Y25_N5
\main_processor|dat|IR|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxData|Mux14~1_combout\,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(17));

-- Location: FF_X55_Y25_N15
\main_processor|dat|IR|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxData|Mux13~1_combout\,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(18));

-- Location: FF_X57_Y26_N17
\main_processor|dat|IR|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxData|Mux12~1_combout\,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(19));

-- Location: FF_X57_Y26_N15
\main_processor|dat|IR|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxData|Mux11~1_combout\,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(20));

-- Location: FF_X57_Y26_N21
\main_processor|dat|IR|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxData|Mux10~1_combout\,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(21));

-- Location: FF_X57_Y26_N3
\main_processor|dat|IR|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxData|Mux9~1_combout\,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(22));

-- Location: FF_X55_Y22_N31
\main_processor|dat|IR|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|MuxData|Mux8~1_combout\,
	ena => \main_processor|control_unit|ALT_INV_Ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|IR|q\(23));

-- Location: LCCOMB_X31_Y23_N12
\main_processor|dat|ProgramCounter|q_reg[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[6]~44_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(6) & (\main_processor|dat|ProgramCounter|q_reg[5]~43\ $ (GND))) # (!\main_processor|dat|ProgramCounter|q_reg\(6) & 
-- (!\main_processor|dat|ProgramCounter|q_reg[5]~43\ & VCC))
-- \main_processor|dat|ProgramCounter|q_reg[6]~45\ = CARRY((\main_processor|dat|ProgramCounter|q_reg\(6) & !\main_processor|dat|ProgramCounter|q_reg[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ProgramCounter|q_reg\(6),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[5]~43\,
	combout => \main_processor|dat|ProgramCounter|q_reg[6]~44_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[6]~45\);

-- Location: FF_X31_Y23_N13
\main_processor|dat|ProgramCounter|q_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[6]~44_combout\,
	asdata => \main_processor|dat|IR|q\(6),
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(6));

-- Location: LCCOMB_X31_Y23_N14
\main_processor|dat|ProgramCounter|q_reg[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[7]~46_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(7) & (!\main_processor|dat|ProgramCounter|q_reg[6]~45\)) # (!\main_processor|dat|ProgramCounter|q_reg\(7) & 
-- ((\main_processor|dat|ProgramCounter|q_reg[6]~45\) # (GND)))
-- \main_processor|dat|ProgramCounter|q_reg[7]~47\ = CARRY((!\main_processor|dat|ProgramCounter|q_reg[6]~45\) # (!\main_processor|dat|ProgramCounter|q_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|ProgramCounter|q_reg\(7),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[6]~45\,
	combout => \main_processor|dat|ProgramCounter|q_reg[7]~46_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[7]~47\);

-- Location: FF_X31_Y23_N15
\main_processor|dat|ProgramCounter|q_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[7]~46_combout\,
	asdata => \main_processor|dat|IR|q\(7),
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(7));

-- Location: LCCOMB_X31_Y23_N16
\main_processor|dat|ProgramCounter|q_reg[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[8]~48_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(8) & (\main_processor|dat|ProgramCounter|q_reg[7]~47\ $ (GND))) # (!\main_processor|dat|ProgramCounter|q_reg\(8) & 
-- (!\main_processor|dat|ProgramCounter|q_reg[7]~47\ & VCC))
-- \main_processor|dat|ProgramCounter|q_reg[8]~49\ = CARRY((\main_processor|dat|ProgramCounter|q_reg\(8) & !\main_processor|dat|ProgramCounter|q_reg[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|ProgramCounter|q_reg\(8),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[7]~47\,
	combout => \main_processor|dat|ProgramCounter|q_reg[8]~48_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[8]~49\);

-- Location: FF_X31_Y23_N17
\main_processor|dat|ProgramCounter|q_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[8]~48_combout\,
	asdata => \main_processor|dat|IR|q\(8),
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(8));

-- Location: LCCOMB_X31_Y23_N18
\main_processor|dat|ProgramCounter|q_reg[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[9]~50_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(9) & (!\main_processor|dat|ProgramCounter|q_reg[8]~49\)) # (!\main_processor|dat|ProgramCounter|q_reg\(9) & 
-- ((\main_processor|dat|ProgramCounter|q_reg[8]~49\) # (GND)))
-- \main_processor|dat|ProgramCounter|q_reg[9]~51\ = CARRY((!\main_processor|dat|ProgramCounter|q_reg[8]~49\) # (!\main_processor|dat|ProgramCounter|q_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|ProgramCounter|q_reg\(9),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[8]~49\,
	combout => \main_processor|dat|ProgramCounter|q_reg[9]~50_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[9]~51\);

-- Location: FF_X31_Y23_N19
\main_processor|dat|ProgramCounter|q_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[9]~50_combout\,
	asdata => \main_processor|dat|IR|q\(9),
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(9));

-- Location: LCCOMB_X31_Y23_N20
\main_processor|dat|ProgramCounter|q_reg[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[10]~52_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(10) & (\main_processor|dat|ProgramCounter|q_reg[9]~51\ $ (GND))) # (!\main_processor|dat|ProgramCounter|q_reg\(10) & 
-- (!\main_processor|dat|ProgramCounter|q_reg[9]~51\ & VCC))
-- \main_processor|dat|ProgramCounter|q_reg[10]~53\ = CARRY((\main_processor|dat|ProgramCounter|q_reg\(10) & !\main_processor|dat|ProgramCounter|q_reg[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|ProgramCounter|q_reg\(10),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[9]~51\,
	combout => \main_processor|dat|ProgramCounter|q_reg[10]~52_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[10]~53\);

-- Location: FF_X31_Y23_N21
\main_processor|dat|ProgramCounter|q_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[10]~52_combout\,
	asdata => \main_processor|dat|IR|q\(10),
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(10));

-- Location: LCCOMB_X31_Y23_N22
\main_processor|dat|ProgramCounter|q_reg[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[11]~54_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(11) & (!\main_processor|dat|ProgramCounter|q_reg[10]~53\)) # (!\main_processor|dat|ProgramCounter|q_reg\(11) & 
-- ((\main_processor|dat|ProgramCounter|q_reg[10]~53\) # (GND)))
-- \main_processor|dat|ProgramCounter|q_reg[11]~55\ = CARRY((!\main_processor|dat|ProgramCounter|q_reg[10]~53\) # (!\main_processor|dat|ProgramCounter|q_reg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ProgramCounter|q_reg\(11),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[10]~53\,
	combout => \main_processor|dat|ProgramCounter|q_reg[11]~54_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[11]~55\);

-- Location: FF_X31_Y23_N23
\main_processor|dat|ProgramCounter|q_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[11]~54_combout\,
	asdata => \main_processor|dat|IR|q\(11),
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(11));

-- Location: LCCOMB_X31_Y23_N24
\main_processor|dat|ProgramCounter|q_reg[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[12]~56_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(12) & (\main_processor|dat|ProgramCounter|q_reg[11]~55\ $ (GND))) # (!\main_processor|dat|ProgramCounter|q_reg\(12) & 
-- (!\main_processor|dat|ProgramCounter|q_reg[11]~55\ & VCC))
-- \main_processor|dat|ProgramCounter|q_reg[12]~57\ = CARRY((\main_processor|dat|ProgramCounter|q_reg\(12) & !\main_processor|dat|ProgramCounter|q_reg[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|ProgramCounter|q_reg\(12),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[11]~55\,
	combout => \main_processor|dat|ProgramCounter|q_reg[12]~56_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[12]~57\);

-- Location: FF_X31_Y23_N25
\main_processor|dat|ProgramCounter|q_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[12]~56_combout\,
	asdata => \main_processor|dat|IR|q\(12),
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(12));

-- Location: LCCOMB_X31_Y23_N26
\main_processor|dat|ProgramCounter|q_reg[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[13]~58_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(13) & (!\main_processor|dat|ProgramCounter|q_reg[12]~57\)) # (!\main_processor|dat|ProgramCounter|q_reg\(13) & 
-- ((\main_processor|dat|ProgramCounter|q_reg[12]~57\) # (GND)))
-- \main_processor|dat|ProgramCounter|q_reg[13]~59\ = CARRY((!\main_processor|dat|ProgramCounter|q_reg[12]~57\) # (!\main_processor|dat|ProgramCounter|q_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ProgramCounter|q_reg\(13),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[12]~57\,
	combout => \main_processor|dat|ProgramCounter|q_reg[13]~58_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[13]~59\);

-- Location: FF_X31_Y23_N27
\main_processor|dat|ProgramCounter|q_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[13]~58_combout\,
	asdata => \main_processor|dat|IR|q\(13),
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(13));

-- Location: LCCOMB_X31_Y23_N28
\main_processor|dat|ProgramCounter|q_reg[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[14]~60_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(14) & (\main_processor|dat|ProgramCounter|q_reg[13]~59\ $ (GND))) # (!\main_processor|dat|ProgramCounter|q_reg\(14) & 
-- (!\main_processor|dat|ProgramCounter|q_reg[13]~59\ & VCC))
-- \main_processor|dat|ProgramCounter|q_reg[14]~61\ = CARRY((\main_processor|dat|ProgramCounter|q_reg\(14) & !\main_processor|dat|ProgramCounter|q_reg[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|ProgramCounter|q_reg\(14),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[13]~59\,
	combout => \main_processor|dat|ProgramCounter|q_reg[14]~60_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[14]~61\);

-- Location: FF_X31_Y23_N29
\main_processor|dat|ProgramCounter|q_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[14]~60_combout\,
	asdata => \main_processor|dat|IR|q\(14),
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(14));

-- Location: LCCOMB_X31_Y23_N30
\main_processor|dat|ProgramCounter|q_reg[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[15]~62_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(15) & (!\main_processor|dat|ProgramCounter|q_reg[14]~61\)) # (!\main_processor|dat|ProgramCounter|q_reg\(15) & 
-- ((\main_processor|dat|ProgramCounter|q_reg[14]~61\) # (GND)))
-- \main_processor|dat|ProgramCounter|q_reg[15]~63\ = CARRY((!\main_processor|dat|ProgramCounter|q_reg[14]~61\) # (!\main_processor|dat|ProgramCounter|q_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ProgramCounter|q_reg\(15),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[14]~61\,
	combout => \main_processor|dat|ProgramCounter|q_reg[15]~62_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[15]~63\);

-- Location: FF_X31_Y23_N31
\main_processor|dat|ProgramCounter|q_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[15]~62_combout\,
	asdata => \main_processor|dat|IR|q\(15),
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(15));

-- Location: LCCOMB_X31_Y22_N0
\main_processor|dat|ProgramCounter|q_reg[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[16]~64_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(16) & (\main_processor|dat|ProgramCounter|q_reg[15]~63\ $ (GND))) # (!\main_processor|dat|ProgramCounter|q_reg\(16) & 
-- (!\main_processor|dat|ProgramCounter|q_reg[15]~63\ & VCC))
-- \main_processor|dat|ProgramCounter|q_reg[16]~65\ = CARRY((\main_processor|dat|ProgramCounter|q_reg\(16) & !\main_processor|dat|ProgramCounter|q_reg[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|ProgramCounter|q_reg\(16),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[15]~63\,
	combout => \main_processor|dat|ProgramCounter|q_reg[16]~64_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[16]~65\);

-- Location: LCCOMB_X32_Y22_N12
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

-- Location: FF_X31_Y22_N1
\main_processor|dat|ProgramCounter|q_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[16]~64_combout\,
	asdata => \~GND~combout\,
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(16));

-- Location: LCCOMB_X31_Y22_N2
\main_processor|dat|ProgramCounter|q_reg[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[17]~66_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(17) & (!\main_processor|dat|ProgramCounter|q_reg[16]~65\)) # (!\main_processor|dat|ProgramCounter|q_reg\(17) & 
-- ((\main_processor|dat|ProgramCounter|q_reg[16]~65\) # (GND)))
-- \main_processor|dat|ProgramCounter|q_reg[17]~67\ = CARRY((!\main_processor|dat|ProgramCounter|q_reg[16]~65\) # (!\main_processor|dat|ProgramCounter|q_reg\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|ProgramCounter|q_reg\(17),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[16]~65\,
	combout => \main_processor|dat|ProgramCounter|q_reg[17]~66_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[17]~67\);

-- Location: FF_X31_Y22_N3
\main_processor|dat|ProgramCounter|q_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[17]~66_combout\,
	asdata => \~GND~combout\,
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(17));

-- Location: LCCOMB_X31_Y22_N4
\main_processor|dat|ProgramCounter|q_reg[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[18]~68_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(18) & (\main_processor|dat|ProgramCounter|q_reg[17]~67\ $ (GND))) # (!\main_processor|dat|ProgramCounter|q_reg\(18) & 
-- (!\main_processor|dat|ProgramCounter|q_reg[17]~67\ & VCC))
-- \main_processor|dat|ProgramCounter|q_reg[18]~69\ = CARRY((\main_processor|dat|ProgramCounter|q_reg\(18) & !\main_processor|dat|ProgramCounter|q_reg[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|ProgramCounter|q_reg\(18),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[17]~67\,
	combout => \main_processor|dat|ProgramCounter|q_reg[18]~68_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[18]~69\);

-- Location: FF_X31_Y22_N5
\main_processor|dat|ProgramCounter|q_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[18]~68_combout\,
	asdata => \~GND~combout\,
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(18));

-- Location: LCCOMB_X31_Y22_N6
\main_processor|dat|ProgramCounter|q_reg[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[19]~70_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(19) & (!\main_processor|dat|ProgramCounter|q_reg[18]~69\)) # (!\main_processor|dat|ProgramCounter|q_reg\(19) & 
-- ((\main_processor|dat|ProgramCounter|q_reg[18]~69\) # (GND)))
-- \main_processor|dat|ProgramCounter|q_reg[19]~71\ = CARRY((!\main_processor|dat|ProgramCounter|q_reg[18]~69\) # (!\main_processor|dat|ProgramCounter|q_reg\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ProgramCounter|q_reg\(19),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[18]~69\,
	combout => \main_processor|dat|ProgramCounter|q_reg[19]~70_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[19]~71\);

-- Location: FF_X31_Y22_N7
\main_processor|dat|ProgramCounter|q_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[19]~70_combout\,
	asdata => \~GND~combout\,
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(19));

-- Location: LCCOMB_X31_Y22_N8
\main_processor|dat|ProgramCounter|q_reg[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[20]~72_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(20) & (\main_processor|dat|ProgramCounter|q_reg[19]~71\ $ (GND))) # (!\main_processor|dat|ProgramCounter|q_reg\(20) & 
-- (!\main_processor|dat|ProgramCounter|q_reg[19]~71\ & VCC))
-- \main_processor|dat|ProgramCounter|q_reg[20]~73\ = CARRY((\main_processor|dat|ProgramCounter|q_reg\(20) & !\main_processor|dat|ProgramCounter|q_reg[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|ProgramCounter|q_reg\(20),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[19]~71\,
	combout => \main_processor|dat|ProgramCounter|q_reg[20]~72_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[20]~73\);

-- Location: FF_X31_Y22_N9
\main_processor|dat|ProgramCounter|q_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[20]~72_combout\,
	asdata => \~GND~combout\,
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(20));

-- Location: LCCOMB_X31_Y22_N10
\main_processor|dat|ProgramCounter|q_reg[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[21]~74_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(21) & (!\main_processor|dat|ProgramCounter|q_reg[20]~73\)) # (!\main_processor|dat|ProgramCounter|q_reg\(21) & 
-- ((\main_processor|dat|ProgramCounter|q_reg[20]~73\) # (GND)))
-- \main_processor|dat|ProgramCounter|q_reg[21]~75\ = CARRY((!\main_processor|dat|ProgramCounter|q_reg[20]~73\) # (!\main_processor|dat|ProgramCounter|q_reg\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ProgramCounter|q_reg\(21),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[20]~73\,
	combout => \main_processor|dat|ProgramCounter|q_reg[21]~74_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[21]~75\);

-- Location: FF_X31_Y22_N11
\main_processor|dat|ProgramCounter|q_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[21]~74_combout\,
	asdata => \~GND~combout\,
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(21));

-- Location: LCCOMB_X31_Y22_N12
\main_processor|dat|ProgramCounter|q_reg[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[22]~76_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(22) & (\main_processor|dat|ProgramCounter|q_reg[21]~75\ $ (GND))) # (!\main_processor|dat|ProgramCounter|q_reg\(22) & 
-- (!\main_processor|dat|ProgramCounter|q_reg[21]~75\ & VCC))
-- \main_processor|dat|ProgramCounter|q_reg[22]~77\ = CARRY((\main_processor|dat|ProgramCounter|q_reg\(22) & !\main_processor|dat|ProgramCounter|q_reg[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ProgramCounter|q_reg\(22),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[21]~75\,
	combout => \main_processor|dat|ProgramCounter|q_reg[22]~76_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[22]~77\);

-- Location: FF_X31_Y22_N13
\main_processor|dat|ProgramCounter|q_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[22]~76_combout\,
	asdata => \~GND~combout\,
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(22));

-- Location: LCCOMB_X31_Y22_N14
\main_processor|dat|ProgramCounter|q_reg[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[23]~78_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(23) & (!\main_processor|dat|ProgramCounter|q_reg[22]~77\)) # (!\main_processor|dat|ProgramCounter|q_reg\(23) & 
-- ((\main_processor|dat|ProgramCounter|q_reg[22]~77\) # (GND)))
-- \main_processor|dat|ProgramCounter|q_reg[23]~79\ = CARRY((!\main_processor|dat|ProgramCounter|q_reg[22]~77\) # (!\main_processor|dat|ProgramCounter|q_reg\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|ProgramCounter|q_reg\(23),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[22]~77\,
	combout => \main_processor|dat|ProgramCounter|q_reg[23]~78_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[23]~79\);

-- Location: FF_X31_Y22_N15
\main_processor|dat|ProgramCounter|q_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[23]~78_combout\,
	asdata => \~GND~combout\,
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(23));

-- Location: LCCOMB_X31_Y22_N16
\main_processor|dat|ProgramCounter|q_reg[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[24]~80_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(24) & (\main_processor|dat|ProgramCounter|q_reg[23]~79\ $ (GND))) # (!\main_processor|dat|ProgramCounter|q_reg\(24) & 
-- (!\main_processor|dat|ProgramCounter|q_reg[23]~79\ & VCC))
-- \main_processor|dat|ProgramCounter|q_reg[24]~81\ = CARRY((\main_processor|dat|ProgramCounter|q_reg\(24) & !\main_processor|dat|ProgramCounter|q_reg[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|ProgramCounter|q_reg\(24),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[23]~79\,
	combout => \main_processor|dat|ProgramCounter|q_reg[24]~80_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[24]~81\);

-- Location: FF_X31_Y22_N17
\main_processor|dat|ProgramCounter|q_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[24]~80_combout\,
	asdata => \~GND~combout\,
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(24));

-- Location: LCCOMB_X31_Y22_N18
\main_processor|dat|ProgramCounter|q_reg[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[25]~82_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(25) & (!\main_processor|dat|ProgramCounter|q_reg[24]~81\)) # (!\main_processor|dat|ProgramCounter|q_reg\(25) & 
-- ((\main_processor|dat|ProgramCounter|q_reg[24]~81\) # (GND)))
-- \main_processor|dat|ProgramCounter|q_reg[25]~83\ = CARRY((!\main_processor|dat|ProgramCounter|q_reg[24]~81\) # (!\main_processor|dat|ProgramCounter|q_reg\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|ProgramCounter|q_reg\(25),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[24]~81\,
	combout => \main_processor|dat|ProgramCounter|q_reg[25]~82_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[25]~83\);

-- Location: FF_X31_Y22_N19
\main_processor|dat|ProgramCounter|q_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[25]~82_combout\,
	asdata => \~GND~combout\,
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(25));

-- Location: LCCOMB_X31_Y22_N20
\main_processor|dat|ProgramCounter|q_reg[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[26]~84_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(26) & (\main_processor|dat|ProgramCounter|q_reg[25]~83\ $ (GND))) # (!\main_processor|dat|ProgramCounter|q_reg\(26) & 
-- (!\main_processor|dat|ProgramCounter|q_reg[25]~83\ & VCC))
-- \main_processor|dat|ProgramCounter|q_reg[26]~85\ = CARRY((\main_processor|dat|ProgramCounter|q_reg\(26) & !\main_processor|dat|ProgramCounter|q_reg[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|ProgramCounter|q_reg\(26),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[25]~83\,
	combout => \main_processor|dat|ProgramCounter|q_reg[26]~84_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[26]~85\);

-- Location: FF_X31_Y22_N21
\main_processor|dat|ProgramCounter|q_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[26]~84_combout\,
	asdata => \~GND~combout\,
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(26));

-- Location: LCCOMB_X31_Y22_N22
\main_processor|dat|ProgramCounter|q_reg[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[27]~86_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(27) & (!\main_processor|dat|ProgramCounter|q_reg[26]~85\)) # (!\main_processor|dat|ProgramCounter|q_reg\(27) & 
-- ((\main_processor|dat|ProgramCounter|q_reg[26]~85\) # (GND)))
-- \main_processor|dat|ProgramCounter|q_reg[27]~87\ = CARRY((!\main_processor|dat|ProgramCounter|q_reg[26]~85\) # (!\main_processor|dat|ProgramCounter|q_reg\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ProgramCounter|q_reg\(27),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[26]~85\,
	combout => \main_processor|dat|ProgramCounter|q_reg[27]~86_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[27]~87\);

-- Location: FF_X31_Y22_N23
\main_processor|dat|ProgramCounter|q_reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[27]~86_combout\,
	asdata => \~GND~combout\,
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(27));

-- Location: LCCOMB_X31_Y22_N24
\main_processor|dat|ProgramCounter|q_reg[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[28]~88_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(28) & (\main_processor|dat|ProgramCounter|q_reg[27]~87\ $ (GND))) # (!\main_processor|dat|ProgramCounter|q_reg\(28) & 
-- (!\main_processor|dat|ProgramCounter|q_reg[27]~87\ & VCC))
-- \main_processor|dat|ProgramCounter|q_reg[28]~89\ = CARRY((\main_processor|dat|ProgramCounter|q_reg\(28) & !\main_processor|dat|ProgramCounter|q_reg[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|ProgramCounter|q_reg\(28),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[27]~87\,
	combout => \main_processor|dat|ProgramCounter|q_reg[28]~88_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[28]~89\);

-- Location: FF_X31_Y22_N25
\main_processor|dat|ProgramCounter|q_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[28]~88_combout\,
	asdata => \~GND~combout\,
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(28));

-- Location: LCCOMB_X31_Y22_N26
\main_processor|dat|ProgramCounter|q_reg[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[29]~90_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(29) & (!\main_processor|dat|ProgramCounter|q_reg[28]~89\)) # (!\main_processor|dat|ProgramCounter|q_reg\(29) & 
-- ((\main_processor|dat|ProgramCounter|q_reg[28]~89\) # (GND)))
-- \main_processor|dat|ProgramCounter|q_reg[29]~91\ = CARRY((!\main_processor|dat|ProgramCounter|q_reg[28]~89\) # (!\main_processor|dat|ProgramCounter|q_reg\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ProgramCounter|q_reg\(29),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[28]~89\,
	combout => \main_processor|dat|ProgramCounter|q_reg[29]~90_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[29]~91\);

-- Location: FF_X31_Y22_N27
\main_processor|dat|ProgramCounter|q_reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[29]~90_combout\,
	asdata => \~GND~combout\,
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(29));

-- Location: LCCOMB_X31_Y22_N28
\main_processor|dat|ProgramCounter|q_reg[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[30]~92_combout\ = (\main_processor|dat|ProgramCounter|q_reg\(30) & (\main_processor|dat|ProgramCounter|q_reg[29]~91\ $ (GND))) # (!\main_processor|dat|ProgramCounter|q_reg\(30) & 
-- (!\main_processor|dat|ProgramCounter|q_reg[29]~91\ & VCC))
-- \main_processor|dat|ProgramCounter|q_reg[30]~93\ = CARRY((\main_processor|dat|ProgramCounter|q_reg\(30) & !\main_processor|dat|ProgramCounter|q_reg[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|dat|ProgramCounter|q_reg\(30),
	datad => VCC,
	cin => \main_processor|dat|ProgramCounter|q_reg[29]~91\,
	combout => \main_processor|dat|ProgramCounter|q_reg[30]~92_combout\,
	cout => \main_processor|dat|ProgramCounter|q_reg[30]~93\);

-- Location: FF_X31_Y22_N29
\main_processor|dat|ProgramCounter|q_reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[30]~92_combout\,
	asdata => \~GND~combout\,
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(30));

-- Location: LCCOMB_X31_Y22_N30
\main_processor|dat|ProgramCounter|q_reg[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|ProgramCounter|q_reg[31]~94_combout\ = \main_processor|dat|ProgramCounter|q_reg\(31) $ (\main_processor|dat|ProgramCounter|q_reg[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ProgramCounter|q_reg\(31),
	cin => \main_processor|dat|ProgramCounter|q_reg[30]~93\,
	combout => \main_processor|dat|ProgramCounter|q_reg[31]~94_combout\);

-- Location: FF_X31_Y22_N31
\main_processor|dat|ProgramCounter|q_reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|dat|ProgramCounter|q_reg[31]~94_combout\,
	asdata => \~GND~combout\,
	clrn => \main_processor|reset|ALT_INV_clr_PC~q\,
	sload => \main_processor|control_unit|Inc_PC~4_combout\,
	ena => \main_processor|control_unit|Ld_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|dat|ProgramCounter|q_reg\(31));

-- Location: LCCOMB_X54_Y26_N30
\main_processor|dat|MuxData|Mux25~2_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux25~2_Duplicate_4\ = (\main_processor|dat|MuxData|Mux25~0_combout\) # (\main_processor|dat|MuxData|Mux25~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|dat|MuxData|Mux25~0_combout\,
	datad => \main_processor|dat|MuxData|Mux25~1_combout\,
	combout => \main_processor|dat|MuxData|Mux25~2_Duplicate_4\);

-- Location: LCCOMB_X59_Y4_N16
\main_processor|dat|MuxData|Mux17~2_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux17~2_Duplicate_4\ = (\main_processor|dat|MuxData|Mux17~1_combout\) # (\main_processor|dat|MuxData|Mux17~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|dat|MuxData|Mux17~1_combout\,
	datad => \main_processor|dat|MuxData|Mux17~0_combout\,
	combout => \main_processor|dat|MuxData|Mux17~2_Duplicate_4\);

-- Location: LCCOMB_X56_Y25_N22
\main_processor|dat|MuxData|Mux15~1_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux15~1_Duplicate_3\ = (\main_processor|dat|MuxData|Mux15~0_combout\) # ((\main_processor|dat|ALU0|Mux15~4_combout\ & (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & 
-- \main_processor|control_unit|Data_Mux[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|dat|ALU0|Mux15~4_combout\,
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datad => \main_processor|dat|MuxData|Mux15~0_combout\,
	combout => \main_processor|dat|MuxData|Mux15~1_Duplicate_3\);

-- Location: LCCOMB_X57_Y24_N28
\main_processor|dat|MuxData|Mux7~1_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux7~1_Duplicate_3\ = (\main_processor|dat|MuxData|Mux7~0_combout\) # ((!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|control_unit|Data_Mux[1]~1_combout\ & \main_processor|dat|ALU0|Mux7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datab => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datac => \main_processor|dat|ALU0|Mux7~4_combout\,
	datad => \main_processor|dat|MuxData|Mux7~0_combout\,
	combout => \main_processor|dat|MuxData|Mux7~1_Duplicate_3\);

-- Location: LCCOMB_X56_Y22_N20
\main_processor|dat|MuxData|Mux6~1_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux6~1_Duplicate_3\ = (\main_processor|dat|MuxData|Mux6~0_combout\) # ((\main_processor|control_unit|Data_Mux[1]~1_combout\ & (!\main_processor|control_unit|Data_Mux[0]~0_combout\ & \main_processor|dat|ALU0|Mux6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datab => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datac => \main_processor|dat|ALU0|Mux6~4_combout\,
	datad => \main_processor|dat|MuxData|Mux6~0_combout\,
	combout => \main_processor|dat|MuxData|Mux6~1_Duplicate_3\);

-- Location: LCCOMB_X55_Y20_N8
\main_processor|dat|MuxData|Mux5~1_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux5~1_Duplicate_3\ = (\main_processor|dat|MuxData|Mux5~0_combout\) # ((\main_processor|control_unit|Data_Mux[1]~1_combout\ & (\main_processor|dat|ALU0|Mux5~4_Duplicate_6\ & 
-- !\main_processor|control_unit|Data_Mux[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datab => \main_processor|dat|ALU0|Mux5~4_Duplicate_6\,
	datac => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datad => \main_processor|dat|MuxData|Mux5~0_combout\,
	combout => \main_processor|dat|MuxData|Mux5~1_Duplicate_3\);

-- Location: LCCOMB_X55_Y20_N30
\main_processor|dat|MuxData|Mux4~1_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux4~1_Duplicate_3\ = (\main_processor|dat|MuxData|Mux4~0_combout\) # ((\main_processor|control_unit|Data_Mux[1]~1_combout\ & (\main_processor|dat|ALU0|Mux4~4_Duplicate_6\ & 
-- !\main_processor|control_unit|Data_Mux[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datab => \main_processor|dat|ALU0|Mux4~4_Duplicate_6\,
	datac => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datad => \main_processor|dat|MuxData|Mux4~0_combout\,
	combout => \main_processor|dat|MuxData|Mux4~1_Duplicate_3\);

-- Location: LCCOMB_X55_Y24_N30
\main_processor|dat|MuxData|Mux3~1_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux3~1_Duplicate_3\ = (\main_processor|dat|MuxData|Mux3~0_combout\) # ((!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|dat|ALU0|Mux3~4_Duplicate_6\ & 
-- \main_processor|control_unit|Data_Mux[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datab => \main_processor|dat|ALU0|Mux3~4_Duplicate_6\,
	datac => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datad => \main_processor|dat|MuxData|Mux3~0_combout\,
	combout => \main_processor|dat|MuxData|Mux3~1_Duplicate_3\);

-- Location: LCCOMB_X58_Y23_N22
\main_processor|dat|MuxData|Mux2~1_Duplicate\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|dat|MuxData|Mux2~1_Duplicate_3\ = (\main_processor|dat|MuxData|Mux2~0_combout\) # ((!\main_processor|control_unit|Data_Mux[0]~0_combout\ & (\main_processor|control_unit|Data_Mux[1]~1_combout\ & 
-- \main_processor|dat|ALU0|Mux2~4_Duplicate_6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|control_unit|Data_Mux[0]~0_combout\,
	datab => \main_processor|control_unit|Data_Mux[1]~1_combout\,
	datac => \main_processor|dat|ALU0|Mux2~4_Duplicate_6\,
	datad => \main_processor|dat|MuxData|Mux2~0_combout\,
	combout => \main_processor|dat|MuxData|Mux2~1_Duplicate_3\);

ww_outA(0) <= \outA[0]~output_o\;

ww_outA(1) <= \outA[1]~output_o\;

ww_outA(2) <= \outA[2]~output_o\;

ww_outA(3) <= \outA[3]~output_o\;

ww_outA(4) <= \outA[4]~output_o\;

ww_outA(5) <= \outA[5]~output_o\;

ww_outA(6) <= \outA[6]~output_o\;

ww_outA(7) <= \outA[7]~output_o\;

ww_outA(8) <= \outA[8]~output_o\;

ww_outA(9) <= \outA[9]~output_o\;

ww_outA(10) <= \outA[10]~output_o\;

ww_outA(11) <= \outA[11]~output_o\;

ww_outA(12) <= \outA[12]~output_o\;

ww_outA(13) <= \outA[13]~output_o\;

ww_outA(14) <= \outA[14]~output_o\;

ww_outA(15) <= \outA[15]~output_o\;

ww_outA(16) <= \outA[16]~output_o\;

ww_outA(17) <= \outA[17]~output_o\;

ww_outA(18) <= \outA[18]~output_o\;

ww_outA(19) <= \outA[19]~output_o\;

ww_outA(20) <= \outA[20]~output_o\;

ww_outA(21) <= \outA[21]~output_o\;

ww_outA(22) <= \outA[22]~output_o\;

ww_outA(23) <= \outA[23]~output_o\;

ww_outA(24) <= \outA[24]~output_o\;

ww_outA(25) <= \outA[25]~output_o\;

ww_outA(26) <= \outA[26]~output_o\;

ww_outA(27) <= \outA[27]~output_o\;

ww_outA(28) <= \outA[28]~output_o\;

ww_outA(29) <= \outA[29]~output_o\;

ww_outA(30) <= \outA[30]~output_o\;

ww_outA(31) <= \outA[31]~output_o\;

ww_outB(0) <= \outB[0]~output_o\;

ww_outB(1) <= \outB[1]~output_o\;

ww_outB(2) <= \outB[2]~output_o\;

ww_outB(3) <= \outB[3]~output_o\;

ww_outB(4) <= \outB[4]~output_o\;

ww_outB(5) <= \outB[5]~output_o\;

ww_outB(6) <= \outB[6]~output_o\;

ww_outB(7) <= \outB[7]~output_o\;

ww_outB(8) <= \outB[8]~output_o\;

ww_outB(9) <= \outB[9]~output_o\;

ww_outB(10) <= \outB[10]~output_o\;

ww_outB(11) <= \outB[11]~output_o\;

ww_outB(12) <= \outB[12]~output_o\;

ww_outB(13) <= \outB[13]~output_o\;

ww_outB(14) <= \outB[14]~output_o\;

ww_outB(15) <= \outB[15]~output_o\;

ww_outB(16) <= \outB[16]~output_o\;

ww_outB(17) <= \outB[17]~output_o\;

ww_outB(18) <= \outB[18]~output_o\;

ww_outB(19) <= \outB[19]~output_o\;

ww_outB(20) <= \outB[20]~output_o\;

ww_outB(21) <= \outB[21]~output_o\;

ww_outB(22) <= \outB[22]~output_o\;

ww_outB(23) <= \outB[23]~output_o\;

ww_outB(24) <= \outB[24]~output_o\;

ww_outB(25) <= \outB[25]~output_o\;

ww_outB(26) <= \outB[26]~output_o\;

ww_outB(27) <= \outB[27]~output_o\;

ww_outB(28) <= \outB[28]~output_o\;

ww_outB(29) <= \outB[29]~output_o\;

ww_outB(30) <= \outB[30]~output_o\;

ww_outB(31) <= \outB[31]~output_o\;

ww_outC <= \outC~output_o\;

ww_outZ <= \outZ~output_o\;

ww_outIR(0) <= \outIR[0]~output_o\;

ww_outIR(1) <= \outIR[1]~output_o\;

ww_outIR(2) <= \outIR[2]~output_o\;

ww_outIR(3) <= \outIR[3]~output_o\;

ww_outIR(4) <= \outIR[4]~output_o\;

ww_outIR(5) <= \outIR[5]~output_o\;

ww_outIR(6) <= \outIR[6]~output_o\;

ww_outIR(7) <= \outIR[7]~output_o\;

ww_outIR(8) <= \outIR[8]~output_o\;

ww_outIR(9) <= \outIR[9]~output_o\;

ww_outIR(10) <= \outIR[10]~output_o\;

ww_outIR(11) <= \outIR[11]~output_o\;

ww_outIR(12) <= \outIR[12]~output_o\;

ww_outIR(13) <= \outIR[13]~output_o\;

ww_outIR(14) <= \outIR[14]~output_o\;

ww_outIR(15) <= \outIR[15]~output_o\;

ww_outIR(16) <= \outIR[16]~output_o\;

ww_outIR(17) <= \outIR[17]~output_o\;

ww_outIR(18) <= \outIR[18]~output_o\;

ww_outIR(19) <= \outIR[19]~output_o\;

ww_outIR(20) <= \outIR[20]~output_o\;

ww_outIR(21) <= \outIR[21]~output_o\;

ww_outIR(22) <= \outIR[22]~output_o\;

ww_outIR(23) <= \outIR[23]~output_o\;

ww_outIR(24) <= \outIR[24]~output_o\;

ww_outIR(25) <= \outIR[25]~output_o\;

ww_outIR(26) <= \outIR[26]~output_o\;

ww_outIR(27) <= \outIR[27]~output_o\;

ww_outIR(28) <= \outIR[28]~output_o\;

ww_outIR(29) <= \outIR[29]~output_o\;

ww_outIR(30) <= \outIR[30]~output_o\;

ww_outIR(31) <= \outIR[31]~output_o\;

ww_outPC(0) <= \outPC[0]~output_o\;

ww_outPC(1) <= \outPC[1]~output_o\;

ww_outPC(2) <= \outPC[2]~output_o\;

ww_outPC(3) <= \outPC[3]~output_o\;

ww_outPC(4) <= \outPC[4]~output_o\;

ww_outPC(5) <= \outPC[5]~output_o\;

ww_outPC(6) <= \outPC[6]~output_o\;

ww_outPC(7) <= \outPC[7]~output_o\;

ww_outPC(8) <= \outPC[8]~output_o\;

ww_outPC(9) <= \outPC[9]~output_o\;

ww_outPC(10) <= \outPC[10]~output_o\;

ww_outPC(11) <= \outPC[11]~output_o\;

ww_outPC(12) <= \outPC[12]~output_o\;

ww_outPC(13) <= \outPC[13]~output_o\;

ww_outPC(14) <= \outPC[14]~output_o\;

ww_outPC(15) <= \outPC[15]~output_o\;

ww_outPC(16) <= \outPC[16]~output_o\;

ww_outPC(17) <= \outPC[17]~output_o\;

ww_outPC(18) <= \outPC[18]~output_o\;

ww_outPC(19) <= \outPC[19]~output_o\;

ww_outPC(20) <= \outPC[20]~output_o\;

ww_outPC(21) <= \outPC[21]~output_o\;

ww_outPC(22) <= \outPC[22]~output_o\;

ww_outPC(23) <= \outPC[23]~output_o\;

ww_outPC(24) <= \outPC[24]~output_o\;

ww_outPC(25) <= \outPC[25]~output_o\;

ww_outPC(26) <= \outPC[26]~output_o\;

ww_outPC(27) <= \outPC[27]~output_o\;

ww_outPC(28) <= \outPC[28]~output_o\;

ww_outPC(29) <= \outPC[29]~output_o\;

ww_outPC(30) <= \outPC[30]~output_o\;

ww_outPC(31) <= \outPC[31]~output_o\;

ww_addrOut(0) <= \addrOut[0]~output_o\;

ww_addrOut(1) <= \addrOut[1]~output_o\;

ww_addrOut(2) <= \addrOut[2]~output_o\;

ww_addrOut(3) <= \addrOut[3]~output_o\;

ww_addrOut(4) <= \addrOut[4]~output_o\;

ww_addrOut(5) <= \addrOut[5]~output_o\;

ww_wEn <= \wEn~output_o\;

ww_memDataOut(0) <= \memDataOut[0]~output_o\;

ww_memDataOut(1) <= \memDataOut[1]~output_o\;

ww_memDataOut(2) <= \memDataOut[2]~output_o\;

ww_memDataOut(3) <= \memDataOut[3]~output_o\;

ww_memDataOut(4) <= \memDataOut[4]~output_o\;

ww_memDataOut(5) <= \memDataOut[5]~output_o\;

ww_memDataOut(6) <= \memDataOut[6]~output_o\;

ww_memDataOut(7) <= \memDataOut[7]~output_o\;

ww_memDataOut(8) <= \memDataOut[8]~output_o\;

ww_memDataOut(9) <= \memDataOut[9]~output_o\;

ww_memDataOut(10) <= \memDataOut[10]~output_o\;

ww_memDataOut(11) <= \memDataOut[11]~output_o\;

ww_memDataOut(12) <= \memDataOut[12]~output_o\;

ww_memDataOut(13) <= \memDataOut[13]~output_o\;

ww_memDataOut(14) <= \memDataOut[14]~output_o\;

ww_memDataOut(15) <= \memDataOut[15]~output_o\;

ww_memDataOut(16) <= \memDataOut[16]~output_o\;

ww_memDataOut(17) <= \memDataOut[17]~output_o\;

ww_memDataOut(18) <= \memDataOut[18]~output_o\;

ww_memDataOut(19) <= \memDataOut[19]~output_o\;

ww_memDataOut(20) <= \memDataOut[20]~output_o\;

ww_memDataOut(21) <= \memDataOut[21]~output_o\;

ww_memDataOut(22) <= \memDataOut[22]~output_o\;

ww_memDataOut(23) <= \memDataOut[23]~output_o\;

ww_memDataOut(24) <= \memDataOut[24]~output_o\;

ww_memDataOut(25) <= \memDataOut[25]~output_o\;

ww_memDataOut(26) <= \memDataOut[26]~output_o\;

ww_memDataOut(27) <= \memDataOut[27]~output_o\;

ww_memDataOut(28) <= \memDataOut[28]~output_o\;

ww_memDataOut(29) <= \memDataOut[29]~output_o\;

ww_memDataOut(30) <= \memDataOut[30]~output_o\;

ww_memDataOut(31) <= \memDataOut[31]~output_o\;

ww_memDataIn(0) <= \memDataIn[0]~output_o\;

ww_memDataIn(1) <= \memDataIn[1]~output_o\;

ww_memDataIn(2) <= \memDataIn[2]~output_o\;

ww_memDataIn(3) <= \memDataIn[3]~output_o\;

ww_memDataIn(4) <= \memDataIn[4]~output_o\;

ww_memDataIn(5) <= \memDataIn[5]~output_o\;

ww_memDataIn(6) <= \memDataIn[6]~output_o\;

ww_memDataIn(7) <= \memDataIn[7]~output_o\;

ww_memDataIn(8) <= \memDataIn[8]~output_o\;

ww_memDataIn(9) <= \memDataIn[9]~output_o\;

ww_memDataIn(10) <= \memDataIn[10]~output_o\;

ww_memDataIn(11) <= \memDataIn[11]~output_o\;

ww_memDataIn(12) <= \memDataIn[12]~output_o\;

ww_memDataIn(13) <= \memDataIn[13]~output_o\;

ww_memDataIn(14) <= \memDataIn[14]~output_o\;

ww_memDataIn(15) <= \memDataIn[15]~output_o\;

ww_memDataIn(16) <= \memDataIn[16]~output_o\;

ww_memDataIn(17) <= \memDataIn[17]~output_o\;

ww_memDataIn(18) <= \memDataIn[18]~output_o\;

ww_memDataIn(19) <= \memDataIn[19]~output_o\;

ww_memDataIn(20) <= \memDataIn[20]~output_o\;

ww_memDataIn(21) <= \memDataIn[21]~output_o\;

ww_memDataIn(22) <= \memDataIn[22]~output_o\;

ww_memDataIn(23) <= \memDataIn[23]~output_o\;

ww_memDataIn(24) <= \memDataIn[24]~output_o\;

ww_memDataIn(25) <= \memDataIn[25]~output_o\;

ww_memDataIn(26) <= \memDataIn[26]~output_o\;

ww_memDataIn(27) <= \memDataIn[27]~output_o\;

ww_memDataIn(28) <= \memDataIn[28]~output_o\;

ww_memDataIn(29) <= \memDataIn[29]~output_o\;

ww_memDataIn(30) <= \memDataIn[30]~output_o\;

ww_memDataIn(31) <= \memDataIn[31]~output_o\;

ww_T_Info(0) <= \T_Info[0]~output_o\;

ww_T_Info(1) <= \T_Info[1]~output_o\;

ww_T_Info(2) <= \T_Info[2]~output_o\;

ww_wen_mem <= \wen_mem~output_o\;

ww_en_mem <= \en_mem~output_o\;
END structure;


