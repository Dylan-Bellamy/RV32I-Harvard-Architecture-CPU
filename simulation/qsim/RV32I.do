onerror {exit -code 1}
vlib work
vlog -work work RV32I.vo
vlog -work work datapath.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.datapath_vlg_vec_tst -voptargs="+acc"
vcd file -direction RV32I.msim.vcd
vcd add -internal datapath_vlg_vec_tst/*
vcd add -internal datapath_vlg_vec_tst/i1/*
run -all
quit -f
