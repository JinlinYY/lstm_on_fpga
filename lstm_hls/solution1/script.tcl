############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project lstm_hls
set_top LSTM_Top
add_files mcc5_lstm_binary.h
add_files lstm_hls/rnn.cpp
add_files lstm_hls/rnn.h
add_files lstm_hls/rnn_top.cpp
add_files lstm_hls/utils.h
add_files weight.h
add_files weight_256.h
add_files weight_32_mcc5.h
add_files lstm_hls/weight_32_mcc5_200.h
add_files weight_32_mcc5_28.h
add_files lstm_hls/weight_32_mnist.h
add_files weight_64.h
add_files weight_96.h
add_files weight_LSTM.h
add_files -tb lstm_hls/main.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
config_compile -no_signed_zeros=0 -unsafe_math_optimizations=0
config_schedule -effort medium -enable_dsp_full_reg=0 -relax_ii_for_timing=0 -verbose=0
config_export -format ip_catalog -rtl verilog -vivado_phys_opt place -vivado_report_level 0
config_bind -effort medium
config_sdx -optimization_level none -target none
set_clock_uncertainty 12.5%
#source "./lstm_hls/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
