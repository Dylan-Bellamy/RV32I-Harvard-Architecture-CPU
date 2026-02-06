# 1. Define Clocks
# Assuming 50MHz for both. Adjust the -period (in nanoseconds) as needed.
# Period 20.0 = 50MHz | Period 10.0 = 100MHz
create_clock -name main_cpu_clk -period 20.000 [get_ports {cpuClk}]
create_clock -name main_mem_clk -period 20.000 [get_ports {memClk}]

# 2. Derive PLL Clocks (If you use any internal PLLs, this handles them automatically)
derive_pll_clocks
derive_clock_uncertainty

# 3. Constrain Input Ports
# Tell the tool that the 'rst' button is asynchronous or has a delay.
set_input_delay -clock { main_cpu_clk } -max 3.0 [get_ports {rst}]
set_input_delay -clock { main_cpu_clk } -min 1.0 [get_ports {rst}]

# 4. Constrain Output Ports (Debug/Interface pins)
# We apply a generic delay to all output vectors and bits.
set_output_delay -clock { main_cpu_clk } -max 3.0 [get_ports {outA[*] outB[*] outC outZ outIR[*] outPC[*] T_Info[*]}]
set_output_delay -clock { main_cpu_clk } -min 1.0 [get_ports {outA[*] outB[*] outC outZ outIR[*] outPC[*] T_Info[*]}]

# Memory Interface Outputs (Related to memClk)
set_output_delay -clock { main_mem_clk } -max 3.0 [get_ports {addrOut[*] wEn memDataOut[*] memDataIn[*] wen_mem en_mem}]
set_output_delay -clock { main_mem_clk } -min 1.0 [get_ports {addrOut[*] wEn memDataOut[*] memDataIn[*] wen_mem en_mem}]

# 5. Handle the Clock Crossing (Optional but recommended)
# If cpuClk and memClk are the same frequency and phase, you can leave them.
# If they are unrelated, you might need to cut the path to avoid "false" timing failures:
# set_false_path -from [get_clocks {main_cpu_clk}] -to [get_clocks {main_mem_clk}]