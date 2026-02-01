library verilog;
use verilog.vl_types.all;
entity datapath_vlg_check_tst is
    port(
        Addr_Out        : in     vl_logic_vector(31 downto 0);
        Data_Out        : in     vl_logic_vector(31 downto 0);
        Mem_Addr        : in     vl_logic_vector(7 downto 0);
        Mem_In          : in     vl_logic_vector(31 downto 0);
        Mem_Out         : in     vl_logic_vector(31 downto 0);
        Out_A           : in     vl_logic_vector(31 downto 0);
        Out_B           : in     vl_logic_vector(31 downto 0);
        Out_C           : in     vl_logic;
        Out_IR          : in     vl_logic_vector(31 downto 0);
        Out_PC          : in     vl_logic_vector(31 downto 0);
        Out_Z           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end datapath_vlg_check_tst;
