library ieee;
use ieee.std_logic_1164.all;

entity control is
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
end control;

architecture logic of control is
	type state_type is (T0, T1, T2);
	signal current_state, next_state : state_type;
begin
	----------OPERATION DECODER----------
	process(current_state, next_state, inst, statusC, statusZ, enable)
	begin
		Clr_A <= '0';
		Ld_A <= '0';
		Clr_B <= '0';
		Ld_B <= '0';
		Clr_C <= '0';
		Ld_C <= '0';
		Clr_Z <= '0';
		Ld_Z <= '0';
		Inc_PC <= '0';
		Ld_PC <= '0';
		Clr_IR <= '0';
		Ld_IR <= '0';
		A_Mux <= '0';
		B_Mux <= '0';
		Reg_Mux <= '0';
		Im_Mux1 <= '0';
		Im_Mux2 <= "00";
		Data_Mux <= "00";
		ALU_op <= "000";
		
		if enable = '1' then
			----------FETCH NEXT INSTRUCTION----------
			if current_state = T0 then
				Ld_IR <= '1';
			----------INCREMENT PC----------
			elsif current_state = T1 then
				Inc_PC <= '1';
				Ld_PC <= '1';
				case inst(31 downto 28) is
					when x"2" => -- STA
						Reg_Mux <= '0'; -- REG A
						Data_Mux <= "00"; 
					when x"3" => -- STB
						Reg_Mux <= '1'; -- REG B
						Data_Mux <= "00"; 
					when x"9" => -- LDA
						Ld_A <= '1'; 
						A_Mux <= '0'; -- REG A
						Data_Mux <= "01";
					when x"A" => -- LDB
						Ld_B <= '1';
						B_Mux <= '0'; -- REG B
						Data_Mux <= "01";
					when others =>
						null;
				end case;
				
			elsif current_state = T2 then
				case inst(31 downto 28) is
					when x"0" => -- LDAI
						Ld_A <= '1';
						A_Mux <= '1';
					when x"1" => -- LDBI
						Ld_B <= '1';
						B_Mux <= '1';
					when x"2" => -- STA
						A_Mux <= '0';
						Reg_Mux <= '0';
					when x"3" => -- STB
						B_Mux <= '0';
						Reg_Mux <= '1';
					when x"9" => -- LDA
						Ld_A <= '1'; 
						A_Mux <= '0'; -- REG A
						Data_Mux <= "01";
					when x"A" => -- LDB
						Ld_B <= '1';
						B_Mux <= '0'; -- REG B
						Data_Mux <= "01";
					when x"4" => -- LUI
						Ld_A <= '1';
						Clr_B <= '1';
						A_Mux <= '0';
						Im_Mux1 <= '1';
						ALU_op <= "001";
						Data_Mux <= "10";
					when x"5" => -- JMP
						Ld_PC <= '1';
					when x"6" => -- BEQ 
						Ld_PC <= '1';
					when x"8" => -- BNE
						Ld_PC <= '1';
					when x"7" => -- ALU INSTRUCTIONS
						case inst(27 downto 24) is
							when x"0" => -- ADD
								Ld_A <= '1';
								Ld_C <= '1';
								Ld_Z <= '1';
								Data_Mux <= "10";
								ALU_op <= "010";
							when x"1" => -- ADDI
								Ld_A <= '1';
								Ld_C <= '1';
								Ld_Z <= '1';
								Data_Mux <= "10";
								ALU_op <= "010";
								Im_Mux2 <= "01";
							when x"2" => -- SUB
								Ld_A <= '1';
								Ld_C <= '1';
								Ld_Z <= '1';
								Data_Mux <= "10";
								ALU_op <= "110";
							when x"3" => -- INCA
								Ld_A <= '1';
								Ld_C <= '1';
								Ld_Z <= '1';
								Data_Mux <= "10";
								ALU_op <= "010";
								Im_Mux2 <= "10";
							when x"4" => -- ROL
								Ld_A <= '1';
								Ld_C <= '1';
								Ld_Z <= '1';
								ALU_op <= "100";
								Data_Mux <= "10";
							when x"5" => -- CLRA
								Clr_A <= '1';
							when x"6" => -- CLRB
								Clr_B <= '1';
							when x"7" => -- CLRC
								Clr_C <= '1';
							when x"8" => -- CLRZ
								Clr_Z <= '1';
							when x"9" => -- ANDI
								Ld_A <= '1';
								Ld_C <= '1';
								Ld_Z <= '1';
								Data_Mux <= "10";
								ALU_op <= "000";
								Im_Mux2 <= "01";
							when x"A" => -- TSTZ
								if statusZ = '1' then
									Ld_PC <= '1';
									Inc_PC <= '1';
								end if;
							when x"B" => -- AND
								Ld_A <= '1';
								Ld_C <= '1';
								Ld_Z <= '1';
								ALU_op <= "000";
								Data_Mux <= "10";
							when x"C" => -- TSTC
								if statusC = '1' then
									Ld_PC <= '1';
									Inc_PC <= '1';
								end if;
							when x"D" => -- ORI
								Ld_A <= '1';
								Ld_C <= '1';
								Ld_Z <= '1';
								ALU_op <= "001";
								Im_Mux2 <= "01";
								Data_Mux <= "10";
							when x"E" => -- DECA
								Ld_A <= '1';
								Ld_C <= '1';
								Ld_Z <= '1';
								ALU_op <= "110";
								Im_Mux2 <= "10";
								Data_Mux <= "10";
							when x"F" => -- ROR
								Ld_A <= '1';
								Ld_C <= '1';
								Ld_Z <= '1';
								ALU_op <= "101";
								Data_Mux <= "10";
						end case;
					when others => 
						null;
				end case;					
			end if;
		end if;
	end process;
	
	------------STATE MACHINE------------
	process(Clk, enable) 					
	begin
		case enable is
			when '1' =>
				if rising_edge(Clk) then
					-- Note: If you are using Quartus II's simulation tool instead of modelsim 
					-- Remove the comment below and change the current_states to next_states in this process below
					-- current_state <= next_state;
					case current_state is
						when T0 =>
							current_state <= T1;
						when T1 => 
							current_state <= T2;
						when T2 =>
							current_state <= T0;
					end case;
				end if;
			when '0' =>
				current_state <= T0;
		end case;
	end process;
	
	T <= "001" when current_state = T0 else
		  "010" when current_state = T1 else
		  "100" when current_state = T2 else
        "000";
	
	-------DATA MEMORY INSTRUCTIONS------
	process(mClk, Clk, inst) 
	begin
		if falling_edge(mClk) then
			if (current_state = T1 and Clk = '0') then
				case inst(31 downto 28) is
					when x"2" => -- STA
						en <= '1';
						wen <= '1'; -- WRITE TO MEM
					when x"3" => -- STB
						en <= '1';
						wen <= '1'; -- WRITE TO MEM
					when x"9" => -- LDA
						en <= '1';
						wen <= '0'; -- READ FROM MEM
					when x"A" => -- LDB
						en <= '1';
						wen <= '0'; -- READ FROM MEM
					when others =>
						en <= '0';
						wen <= '0';
				end case;
			elsif (current_state = T2 and Clk = '1') then
				case inst(31 downto 28) is
					when x"2" => -- STA
						en <= '0';
						wen <= '0'; -- WRITE TO MEM
					when x"3" => -- STB
						en <= '0';
						wen <= '0'; -- WRITE TO MEM
					when x"9" => -- LDA
						en <= '0';
						wen <= '0'; -- READ FROM MEM
					when x"A" => -- LDB
						en <= '0';
						wen <= '0'; -- READ FROM MEM
					when others =>
						en <= '0';
						wen <= '0';
				end case;
			elsif (current_state = T1) then
				case inst(31 downto 28) is
					when x"2" => -- STA
						en <= '1';
						wen <= '1'; -- WRITE TO MEM
					when x"3" => -- STB
						en <= '1';
						wen <= '1'; -- WRITE TO MEM
					when x"9" => -- LDA
						en <= '1';
						wen <= '0'; -- READ FROM MEM
					when x"A" => -- LDB
						en <= '1';
						wen <= '0'; -- READ FROM MEM
					when others =>
						en <= '0';
						wen <= '0';
				end case;
			end if;
		end if;
	end process;
end logic;