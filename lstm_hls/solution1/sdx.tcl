# ==============================================================
# File generated on Fri Mar 28 13:00:29 +0800 2025
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../main.cpp -cflags { -Wno-unknown-pragmas}
add_files lstm_hls/mcc5_lstm_binary.h
add_files lstm_hls/rnn.cpp
add_files lstm_hls/rnn.h
add_files lstm_hls/rnn_top.cpp
add_files lstm_hls/utils.h
add_files lstm_hls/weight.h
add_files lstm_hls/weight_256.h
add_files lstm_hls/weight_32_mcc5.h
add_files lstm_hls/weight_32_mcc5_200.h
add_files lstm_hls/weight_32_mcc5_28.h
add_files lstm_hls/weight_32_mnist.h
add_files lstm_hls/weight_64.h
add_files lstm_hls/weight_96.h
add_files lstm_hls/weight_LSTM.h
set_part xc7z020clg400-1
create_clock -name default -period 10
set_clock_uncertainty 12.5% default
config_compile -no_signed_zeros=0
config_compile -unsafe_math_optimizations=0
config_schedule -effort=medium
config_schedule -enable_dsp_full_reg=0
config_schedule -relax_ii_for_timing=0
config_schedule -verbose=0
config_export -format=ip_catalog
config_export -rtl=verilog
config_export -vivado_phys_opt=place
config_export -vivado_report_level=0
config_bind -effort=medium
config_sdx -optimization_level=none
config_sdx -target=none
