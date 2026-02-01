library verilog;
use verilog.vl_types.all;
entity datapath_vlg_sample_tst is
    port(
        A_Mux           : in     vl_logic;
        Alu_Opcode      : in     vl_logic_vector(2 downto 0);
        B_Mux           : in     vl_logic;
        Clk             : in     vl_logic;
        Clr_A           : in     vl_logic;
        Clr_B           : in     vl_logic;
        Clr_C           : in     vl_logic;
        Clr_IR          : in     vl_logic;
        Clr_PC          : in     vl_logic;
        Clr_Z           : in     vl_logic;
        Data_In         : in     vl_logic_vector(31 downto 0);
        Data_Mux        : in     vl_logic_vector(1 downto 0);
        en              : in     vl_logic;
        Im_Mux1         : in     vl_logic;
        Im_Mux2         : in     vl_logic_vector(1 downto 0);
        Inc_PC          : in     vl_logic;
        Ld_A            : in     vl_logic;
        Ld_B            : in     vl_logic;
        Ld_C            : in     vl_logic;
        Ld_IR           : in     vl_logic;
        Ld_PC           : in     vl_logic;
        Ld_Z            : in     vl_logic;
        mClk            : in     vl_logic;
        Reg_Mux         : in     vl_logic;
        wen             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end datapath_vlg_sample_tst;
