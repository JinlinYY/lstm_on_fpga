set moduleName gemvm_lstm
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {gemvm_lstm}
set C_modelType { void 0 }
set C_modelArgList {
	{ res_0 float 32 regular {array 16 { 0 3 } 0 1 }  }
	{ res_1 float 32 regular {array 16 { 0 3 } 0 1 }  }
	{ a_0_0 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_0_1 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_0_2 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_0_3 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_0_4 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_0_5 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_0_6 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_0_7 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_0_8 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_0_9 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_0_10 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_0_11 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_0_12 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_0_13 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_0_14 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_0_15 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_0_16 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_0_17 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_0_18 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_0_19 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_1_0 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_1_1 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_1_2 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_1_3 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_1_4 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_1_5 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_1_6 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_1_7 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_1_8 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_1_9 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_1_10 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_1_11 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_1_12 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_1_13 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_1_14 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_1_15 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_1_16 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_1_17 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_1_18 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ a_1_19 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ b_0 float 32 regular {array 20 { 1 1 } 1 1 }  }
	{ b_1 float 32 regular {array 20 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "res_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_0_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_0_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_0_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_0_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_0_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_0_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_0_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_0_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_0_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_0_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_0_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_0_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_0_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_0_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_0_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_0_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_0_16", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_0_17", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_0_18", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_0_19", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_1_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_1_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_1_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_1_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_1_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_1_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_1_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_1_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_1_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_1_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_1_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_1_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_1_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_1_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_1_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_1_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_1_16", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_1_17", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_1_18", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_1_19", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 146
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ res_0_address0 sc_out sc_lv 4 signal 0 } 
	{ res_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ res_0_we0 sc_out sc_logic 1 signal 0 } 
	{ res_0_d0 sc_out sc_lv 32 signal 0 } 
	{ res_1_address0 sc_out sc_lv 4 signal 1 } 
	{ res_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_1_we0 sc_out sc_logic 1 signal 1 } 
	{ res_1_d0 sc_out sc_lv 32 signal 1 } 
	{ a_0_0_address0 sc_out sc_lv 5 signal 2 } 
	{ a_0_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ a_0_0_q0 sc_in sc_lv 32 signal 2 } 
	{ a_0_1_address0 sc_out sc_lv 5 signal 3 } 
	{ a_0_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ a_0_1_q0 sc_in sc_lv 32 signal 3 } 
	{ a_0_2_address0 sc_out sc_lv 5 signal 4 } 
	{ a_0_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ a_0_2_q0 sc_in sc_lv 32 signal 4 } 
	{ a_0_3_address0 sc_out sc_lv 5 signal 5 } 
	{ a_0_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ a_0_3_q0 sc_in sc_lv 32 signal 5 } 
	{ a_0_4_address0 sc_out sc_lv 5 signal 6 } 
	{ a_0_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ a_0_4_q0 sc_in sc_lv 32 signal 6 } 
	{ a_0_5_address0 sc_out sc_lv 5 signal 7 } 
	{ a_0_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ a_0_5_q0 sc_in sc_lv 32 signal 7 } 
	{ a_0_6_address0 sc_out sc_lv 5 signal 8 } 
	{ a_0_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ a_0_6_q0 sc_in sc_lv 32 signal 8 } 
	{ a_0_7_address0 sc_out sc_lv 5 signal 9 } 
	{ a_0_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ a_0_7_q0 sc_in sc_lv 32 signal 9 } 
	{ a_0_8_address0 sc_out sc_lv 5 signal 10 } 
	{ a_0_8_ce0 sc_out sc_logic 1 signal 10 } 
	{ a_0_8_q0 sc_in sc_lv 32 signal 10 } 
	{ a_0_9_address0 sc_out sc_lv 5 signal 11 } 
	{ a_0_9_ce0 sc_out sc_logic 1 signal 11 } 
	{ a_0_9_q0 sc_in sc_lv 32 signal 11 } 
	{ a_0_10_address0 sc_out sc_lv 5 signal 12 } 
	{ a_0_10_ce0 sc_out sc_logic 1 signal 12 } 
	{ a_0_10_q0 sc_in sc_lv 32 signal 12 } 
	{ a_0_11_address0 sc_out sc_lv 5 signal 13 } 
	{ a_0_11_ce0 sc_out sc_logic 1 signal 13 } 
	{ a_0_11_q0 sc_in sc_lv 32 signal 13 } 
	{ a_0_12_address0 sc_out sc_lv 5 signal 14 } 
	{ a_0_12_ce0 sc_out sc_logic 1 signal 14 } 
	{ a_0_12_q0 sc_in sc_lv 32 signal 14 } 
	{ a_0_13_address0 sc_out sc_lv 5 signal 15 } 
	{ a_0_13_ce0 sc_out sc_logic 1 signal 15 } 
	{ a_0_13_q0 sc_in sc_lv 32 signal 15 } 
	{ a_0_14_address0 sc_out sc_lv 5 signal 16 } 
	{ a_0_14_ce0 sc_out sc_logic 1 signal 16 } 
	{ a_0_14_q0 sc_in sc_lv 32 signal 16 } 
	{ a_0_15_address0 sc_out sc_lv 5 signal 17 } 
	{ a_0_15_ce0 sc_out sc_logic 1 signal 17 } 
	{ a_0_15_q0 sc_in sc_lv 32 signal 17 } 
	{ a_0_16_address0 sc_out sc_lv 5 signal 18 } 
	{ a_0_16_ce0 sc_out sc_logic 1 signal 18 } 
	{ a_0_16_q0 sc_in sc_lv 32 signal 18 } 
	{ a_0_17_address0 sc_out sc_lv 5 signal 19 } 
	{ a_0_17_ce0 sc_out sc_logic 1 signal 19 } 
	{ a_0_17_q0 sc_in sc_lv 32 signal 19 } 
	{ a_0_18_address0 sc_out sc_lv 5 signal 20 } 
	{ a_0_18_ce0 sc_out sc_logic 1 signal 20 } 
	{ a_0_18_q0 sc_in sc_lv 32 signal 20 } 
	{ a_0_19_address0 sc_out sc_lv 5 signal 21 } 
	{ a_0_19_ce0 sc_out sc_logic 1 signal 21 } 
	{ a_0_19_q0 sc_in sc_lv 32 signal 21 } 
	{ a_1_0_address0 sc_out sc_lv 5 signal 22 } 
	{ a_1_0_ce0 sc_out sc_logic 1 signal 22 } 
	{ a_1_0_q0 sc_in sc_lv 32 signal 22 } 
	{ a_1_1_address0 sc_out sc_lv 5 signal 23 } 
	{ a_1_1_ce0 sc_out sc_logic 1 signal 23 } 
	{ a_1_1_q0 sc_in sc_lv 32 signal 23 } 
	{ a_1_2_address0 sc_out sc_lv 5 signal 24 } 
	{ a_1_2_ce0 sc_out sc_logic 1 signal 24 } 
	{ a_1_2_q0 sc_in sc_lv 32 signal 24 } 
	{ a_1_3_address0 sc_out sc_lv 5 signal 25 } 
	{ a_1_3_ce0 sc_out sc_logic 1 signal 25 } 
	{ a_1_3_q0 sc_in sc_lv 32 signal 25 } 
	{ a_1_4_address0 sc_out sc_lv 5 signal 26 } 
	{ a_1_4_ce0 sc_out sc_logic 1 signal 26 } 
	{ a_1_4_q0 sc_in sc_lv 32 signal 26 } 
	{ a_1_5_address0 sc_out sc_lv 5 signal 27 } 
	{ a_1_5_ce0 sc_out sc_logic 1 signal 27 } 
	{ a_1_5_q0 sc_in sc_lv 32 signal 27 } 
	{ a_1_6_address0 sc_out sc_lv 5 signal 28 } 
	{ a_1_6_ce0 sc_out sc_logic 1 signal 28 } 
	{ a_1_6_q0 sc_in sc_lv 32 signal 28 } 
	{ a_1_7_address0 sc_out sc_lv 5 signal 29 } 
	{ a_1_7_ce0 sc_out sc_logic 1 signal 29 } 
	{ a_1_7_q0 sc_in sc_lv 32 signal 29 } 
	{ a_1_8_address0 sc_out sc_lv 5 signal 30 } 
	{ a_1_8_ce0 sc_out sc_logic 1 signal 30 } 
	{ a_1_8_q0 sc_in sc_lv 32 signal 30 } 
	{ a_1_9_address0 sc_out sc_lv 5 signal 31 } 
	{ a_1_9_ce0 sc_out sc_logic 1 signal 31 } 
	{ a_1_9_q0 sc_in sc_lv 32 signal 31 } 
	{ a_1_10_address0 sc_out sc_lv 5 signal 32 } 
	{ a_1_10_ce0 sc_out sc_logic 1 signal 32 } 
	{ a_1_10_q0 sc_in sc_lv 32 signal 32 } 
	{ a_1_11_address0 sc_out sc_lv 5 signal 33 } 
	{ a_1_11_ce0 sc_out sc_logic 1 signal 33 } 
	{ a_1_11_q0 sc_in sc_lv 32 signal 33 } 
	{ a_1_12_address0 sc_out sc_lv 5 signal 34 } 
	{ a_1_12_ce0 sc_out sc_logic 1 signal 34 } 
	{ a_1_12_q0 sc_in sc_lv 32 signal 34 } 
	{ a_1_13_address0 sc_out sc_lv 5 signal 35 } 
	{ a_1_13_ce0 sc_out sc_logic 1 signal 35 } 
	{ a_1_13_q0 sc_in sc_lv 32 signal 35 } 
	{ a_1_14_address0 sc_out sc_lv 5 signal 36 } 
	{ a_1_14_ce0 sc_out sc_logic 1 signal 36 } 
	{ a_1_14_q0 sc_in sc_lv 32 signal 36 } 
	{ a_1_15_address0 sc_out sc_lv 5 signal 37 } 
	{ a_1_15_ce0 sc_out sc_logic 1 signal 37 } 
	{ a_1_15_q0 sc_in sc_lv 32 signal 37 } 
	{ a_1_16_address0 sc_out sc_lv 5 signal 38 } 
	{ a_1_16_ce0 sc_out sc_logic 1 signal 38 } 
	{ a_1_16_q0 sc_in sc_lv 32 signal 38 } 
	{ a_1_17_address0 sc_out sc_lv 5 signal 39 } 
	{ a_1_17_ce0 sc_out sc_logic 1 signal 39 } 
	{ a_1_17_q0 sc_in sc_lv 32 signal 39 } 
	{ a_1_18_address0 sc_out sc_lv 5 signal 40 } 
	{ a_1_18_ce0 sc_out sc_logic 1 signal 40 } 
	{ a_1_18_q0 sc_in sc_lv 32 signal 40 } 
	{ a_1_19_address0 sc_out sc_lv 5 signal 41 } 
	{ a_1_19_ce0 sc_out sc_logic 1 signal 41 } 
	{ a_1_19_q0 sc_in sc_lv 32 signal 41 } 
	{ b_0_address0 sc_out sc_lv 5 signal 42 } 
	{ b_0_ce0 sc_out sc_logic 1 signal 42 } 
	{ b_0_q0 sc_in sc_lv 32 signal 42 } 
	{ b_0_address1 sc_out sc_lv 5 signal 42 } 
	{ b_0_ce1 sc_out sc_logic 1 signal 42 } 
	{ b_0_q1 sc_in sc_lv 32 signal 42 } 
	{ b_1_address0 sc_out sc_lv 5 signal 43 } 
	{ b_1_ce0 sc_out sc_logic 1 signal 43 } 
	{ b_1_q0 sc_in sc_lv 32 signal 43 } 
	{ b_1_address1 sc_out sc_lv 5 signal 43 } 
	{ b_1_ce1 sc_out sc_logic 1 signal 43 } 
	{ b_1_q1 sc_in sc_lv 32 signal 43 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "res_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_0", "role": "address0" }} , 
 	{ "name": "res_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_0", "role": "ce0" }} , 
 	{ "name": "res_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_0", "role": "we0" }} , 
 	{ "name": "res_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "res_0", "role": "d0" }} , 
 	{ "name": "res_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res_1", "role": "address0" }} , 
 	{ "name": "res_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_1", "role": "ce0" }} , 
 	{ "name": "res_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_1", "role": "we0" }} , 
 	{ "name": "res_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "res_1", "role": "d0" }} , 
 	{ "name": "a_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_0_0", "role": "address0" }} , 
 	{ "name": "a_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0_0", "role": "ce0" }} , 
 	{ "name": "a_0_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_0_0", "role": "q0" }} , 
 	{ "name": "a_0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_0_1", "role": "address0" }} , 
 	{ "name": "a_0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0_1", "role": "ce0" }} , 
 	{ "name": "a_0_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_0_1", "role": "q0" }} , 
 	{ "name": "a_0_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_0_2", "role": "address0" }} , 
 	{ "name": "a_0_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0_2", "role": "ce0" }} , 
 	{ "name": "a_0_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_0_2", "role": "q0" }} , 
 	{ "name": "a_0_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_0_3", "role": "address0" }} , 
 	{ "name": "a_0_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0_3", "role": "ce0" }} , 
 	{ "name": "a_0_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_0_3", "role": "q0" }} , 
 	{ "name": "a_0_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_0_4", "role": "address0" }} , 
 	{ "name": "a_0_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0_4", "role": "ce0" }} , 
 	{ "name": "a_0_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_0_4", "role": "q0" }} , 
 	{ "name": "a_0_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_0_5", "role": "address0" }} , 
 	{ "name": "a_0_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0_5", "role": "ce0" }} , 
 	{ "name": "a_0_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_0_5", "role": "q0" }} , 
 	{ "name": "a_0_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_0_6", "role": "address0" }} , 
 	{ "name": "a_0_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0_6", "role": "ce0" }} , 
 	{ "name": "a_0_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_0_6", "role": "q0" }} , 
 	{ "name": "a_0_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_0_7", "role": "address0" }} , 
 	{ "name": "a_0_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0_7", "role": "ce0" }} , 
 	{ "name": "a_0_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_0_7", "role": "q0" }} , 
 	{ "name": "a_0_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_0_8", "role": "address0" }} , 
 	{ "name": "a_0_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0_8", "role": "ce0" }} , 
 	{ "name": "a_0_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_0_8", "role": "q0" }} , 
 	{ "name": "a_0_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_0_9", "role": "address0" }} , 
 	{ "name": "a_0_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0_9", "role": "ce0" }} , 
 	{ "name": "a_0_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_0_9", "role": "q0" }} , 
 	{ "name": "a_0_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_0_10", "role": "address0" }} , 
 	{ "name": "a_0_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0_10", "role": "ce0" }} , 
 	{ "name": "a_0_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_0_10", "role": "q0" }} , 
 	{ "name": "a_0_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_0_11", "role": "address0" }} , 
 	{ "name": "a_0_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0_11", "role": "ce0" }} , 
 	{ "name": "a_0_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_0_11", "role": "q0" }} , 
 	{ "name": "a_0_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_0_12", "role": "address0" }} , 
 	{ "name": "a_0_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0_12", "role": "ce0" }} , 
 	{ "name": "a_0_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_0_12", "role": "q0" }} , 
 	{ "name": "a_0_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_0_13", "role": "address0" }} , 
 	{ "name": "a_0_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0_13", "role": "ce0" }} , 
 	{ "name": "a_0_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_0_13", "role": "q0" }} , 
 	{ "name": "a_0_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_0_14", "role": "address0" }} , 
 	{ "name": "a_0_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0_14", "role": "ce0" }} , 
 	{ "name": "a_0_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_0_14", "role": "q0" }} , 
 	{ "name": "a_0_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_0_15", "role": "address0" }} , 
 	{ "name": "a_0_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0_15", "role": "ce0" }} , 
 	{ "name": "a_0_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_0_15", "role": "q0" }} , 
 	{ "name": "a_0_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_0_16", "role": "address0" }} , 
 	{ "name": "a_0_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0_16", "role": "ce0" }} , 
 	{ "name": "a_0_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_0_16", "role": "q0" }} , 
 	{ "name": "a_0_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_0_17", "role": "address0" }} , 
 	{ "name": "a_0_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0_17", "role": "ce0" }} , 
 	{ "name": "a_0_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_0_17", "role": "q0" }} , 
 	{ "name": "a_0_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_0_18", "role": "address0" }} , 
 	{ "name": "a_0_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0_18", "role": "ce0" }} , 
 	{ "name": "a_0_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_0_18", "role": "q0" }} , 
 	{ "name": "a_0_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_0_19", "role": "address0" }} , 
 	{ "name": "a_0_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0_19", "role": "ce0" }} , 
 	{ "name": "a_0_19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_0_19", "role": "q0" }} , 
 	{ "name": "a_1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_1_0", "role": "address0" }} , 
 	{ "name": "a_1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1_0", "role": "ce0" }} , 
 	{ "name": "a_1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_1_0", "role": "q0" }} , 
 	{ "name": "a_1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_1_1", "role": "address0" }} , 
 	{ "name": "a_1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1_1", "role": "ce0" }} , 
 	{ "name": "a_1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_1_1", "role": "q0" }} , 
 	{ "name": "a_1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_1_2", "role": "address0" }} , 
 	{ "name": "a_1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1_2", "role": "ce0" }} , 
 	{ "name": "a_1_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_1_2", "role": "q0" }} , 
 	{ "name": "a_1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_1_3", "role": "address0" }} , 
 	{ "name": "a_1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1_3", "role": "ce0" }} , 
 	{ "name": "a_1_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_1_3", "role": "q0" }} , 
 	{ "name": "a_1_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_1_4", "role": "address0" }} , 
 	{ "name": "a_1_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1_4", "role": "ce0" }} , 
 	{ "name": "a_1_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_1_4", "role": "q0" }} , 
 	{ "name": "a_1_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_1_5", "role": "address0" }} , 
 	{ "name": "a_1_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1_5", "role": "ce0" }} , 
 	{ "name": "a_1_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_1_5", "role": "q0" }} , 
 	{ "name": "a_1_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_1_6", "role": "address0" }} , 
 	{ "name": "a_1_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1_6", "role": "ce0" }} , 
 	{ "name": "a_1_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_1_6", "role": "q0" }} , 
 	{ "name": "a_1_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_1_7", "role": "address0" }} , 
 	{ "name": "a_1_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1_7", "role": "ce0" }} , 
 	{ "name": "a_1_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_1_7", "role": "q0" }} , 
 	{ "name": "a_1_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_1_8", "role": "address0" }} , 
 	{ "name": "a_1_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1_8", "role": "ce0" }} , 
 	{ "name": "a_1_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_1_8", "role": "q0" }} , 
 	{ "name": "a_1_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_1_9", "role": "address0" }} , 
 	{ "name": "a_1_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1_9", "role": "ce0" }} , 
 	{ "name": "a_1_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_1_9", "role": "q0" }} , 
 	{ "name": "a_1_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_1_10", "role": "address0" }} , 
 	{ "name": "a_1_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1_10", "role": "ce0" }} , 
 	{ "name": "a_1_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_1_10", "role": "q0" }} , 
 	{ "name": "a_1_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_1_11", "role": "address0" }} , 
 	{ "name": "a_1_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1_11", "role": "ce0" }} , 
 	{ "name": "a_1_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_1_11", "role": "q0" }} , 
 	{ "name": "a_1_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_1_12", "role": "address0" }} , 
 	{ "name": "a_1_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1_12", "role": "ce0" }} , 
 	{ "name": "a_1_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_1_12", "role": "q0" }} , 
 	{ "name": "a_1_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_1_13", "role": "address0" }} , 
 	{ "name": "a_1_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1_13", "role": "ce0" }} , 
 	{ "name": "a_1_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_1_13", "role": "q0" }} , 
 	{ "name": "a_1_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_1_14", "role": "address0" }} , 
 	{ "name": "a_1_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1_14", "role": "ce0" }} , 
 	{ "name": "a_1_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_1_14", "role": "q0" }} , 
 	{ "name": "a_1_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_1_15", "role": "address0" }} , 
 	{ "name": "a_1_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1_15", "role": "ce0" }} , 
 	{ "name": "a_1_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_1_15", "role": "q0" }} , 
 	{ "name": "a_1_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_1_16", "role": "address0" }} , 
 	{ "name": "a_1_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1_16", "role": "ce0" }} , 
 	{ "name": "a_1_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_1_16", "role": "q0" }} , 
 	{ "name": "a_1_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_1_17", "role": "address0" }} , 
 	{ "name": "a_1_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1_17", "role": "ce0" }} , 
 	{ "name": "a_1_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_1_17", "role": "q0" }} , 
 	{ "name": "a_1_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_1_18", "role": "address0" }} , 
 	{ "name": "a_1_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1_18", "role": "ce0" }} , 
 	{ "name": "a_1_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_1_18", "role": "q0" }} , 
 	{ "name": "a_1_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "a_1_19", "role": "address0" }} , 
 	{ "name": "a_1_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1_19", "role": "ce0" }} , 
 	{ "name": "a_1_19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_1_19", "role": "q0" }} , 
 	{ "name": "b_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "b_0", "role": "address0" }} , 
 	{ "name": "b_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_0", "role": "ce0" }} , 
 	{ "name": "b_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_0", "role": "q0" }} , 
 	{ "name": "b_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "b_0", "role": "address1" }} , 
 	{ "name": "b_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_0", "role": "ce1" }} , 
 	{ "name": "b_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_0", "role": "q1" }} , 
 	{ "name": "b_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "b_1", "role": "address0" }} , 
 	{ "name": "b_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_1", "role": "ce0" }} , 
 	{ "name": "b_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_1", "role": "q0" }} , 
 	{ "name": "b_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "b_1", "role": "address1" }} , 
 	{ "name": "b_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_1", "role": "ce1" }} , 
 	{ "name": "b_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_1", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "gemvm_lstm",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "355", "EstimateLatencyMax" : "355",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "res_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "res_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_0_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_0_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_0_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_0_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_0_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_0_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_0_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_0_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_0_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_0_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_0_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_0_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_0_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_0_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_0_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_0_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fadd_32ncud_U11", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fadd_32ncud_U12", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fadd_32ncud_U13", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fadd_32ncud_U14", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fmul_32ndEe_U15", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fmul_32ndEe_U16", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fmul_32ndEe_U17", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fmul_32ndEe_U18", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	gemvm_lstm {
		res_0 {Type O LastRead -1 FirstWrite 44}
		res_1 {Type O LastRead -1 FirstWrite 44}
		a_0_0 {Type I LastRead 1 FirstWrite -1}
		a_0_1 {Type I LastRead 1 FirstWrite -1}
		a_0_2 {Type I LastRead 1 FirstWrite -1}
		a_0_3 {Type I LastRead 1 FirstWrite -1}
		a_0_4 {Type I LastRead 1 FirstWrite -1}
		a_0_5 {Type I LastRead 1 FirstWrite -1}
		a_0_6 {Type I LastRead 1 FirstWrite -1}
		a_0_7 {Type I LastRead 1 FirstWrite -1}
		a_0_8 {Type I LastRead 1 FirstWrite -1}
		a_0_9 {Type I LastRead 1 FirstWrite -1}
		a_0_10 {Type I LastRead 1 FirstWrite -1}
		a_0_11 {Type I LastRead 1 FirstWrite -1}
		a_0_12 {Type I LastRead 1 FirstWrite -1}
		a_0_13 {Type I LastRead 1 FirstWrite -1}
		a_0_14 {Type I LastRead 1 FirstWrite -1}
		a_0_15 {Type I LastRead 1 FirstWrite -1}
		a_0_16 {Type I LastRead 1 FirstWrite -1}
		a_0_17 {Type I LastRead 1 FirstWrite -1}
		a_0_18 {Type I LastRead 1 FirstWrite -1}
		a_0_19 {Type I LastRead 1 FirstWrite -1}
		a_1_0 {Type I LastRead 1 FirstWrite -1}
		a_1_1 {Type I LastRead 1 FirstWrite -1}
		a_1_2 {Type I LastRead 1 FirstWrite -1}
		a_1_3 {Type I LastRead 1 FirstWrite -1}
		a_1_4 {Type I LastRead 1 FirstWrite -1}
		a_1_5 {Type I LastRead 1 FirstWrite -1}
		a_1_6 {Type I LastRead 1 FirstWrite -1}
		a_1_7 {Type I LastRead 1 FirstWrite -1}
		a_1_8 {Type I LastRead 1 FirstWrite -1}
		a_1_9 {Type I LastRead 1 FirstWrite -1}
		a_1_10 {Type I LastRead 1 FirstWrite -1}
		a_1_11 {Type I LastRead 1 FirstWrite -1}
		a_1_12 {Type I LastRead 1 FirstWrite -1}
		a_1_13 {Type I LastRead 1 FirstWrite -1}
		a_1_14 {Type I LastRead 1 FirstWrite -1}
		a_1_15 {Type I LastRead 1 FirstWrite -1}
		a_1_16 {Type I LastRead 1 FirstWrite -1}
		a_1_17 {Type I LastRead 1 FirstWrite -1}
		a_1_18 {Type I LastRead 1 FirstWrite -1}
		a_1_19 {Type I LastRead 1 FirstWrite -1}
		b_0 {Type I LastRead 11 FirstWrite -1}
		b_1 {Type I LastRead 11 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "355", "Max" : "355"}
	, {"Name" : "Interval", "Min" : "355", "Max" : "355"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	res_0 { ap_memory {  { res_0_address0 mem_address 1 4 }  { res_0_ce0 mem_ce 1 1 }  { res_0_we0 mem_we 1 1 }  { res_0_d0 mem_din 1 32 } } }
	res_1 { ap_memory {  { res_1_address0 mem_address 1 4 }  { res_1_ce0 mem_ce 1 1 }  { res_1_we0 mem_we 1 1 }  { res_1_d0 mem_din 1 32 } } }
	a_0_0 { ap_memory {  { a_0_0_address0 mem_address 1 5 }  { a_0_0_ce0 mem_ce 1 1 }  { a_0_0_q0 mem_dout 0 32 } } }
	a_0_1 { ap_memory {  { a_0_1_address0 mem_address 1 5 }  { a_0_1_ce0 mem_ce 1 1 }  { a_0_1_q0 mem_dout 0 32 } } }
	a_0_2 { ap_memory {  { a_0_2_address0 mem_address 1 5 }  { a_0_2_ce0 mem_ce 1 1 }  { a_0_2_q0 mem_dout 0 32 } } }
	a_0_3 { ap_memory {  { a_0_3_address0 mem_address 1 5 }  { a_0_3_ce0 mem_ce 1 1 }  { a_0_3_q0 mem_dout 0 32 } } }
	a_0_4 { ap_memory {  { a_0_4_address0 mem_address 1 5 }  { a_0_4_ce0 mem_ce 1 1 }  { a_0_4_q0 mem_dout 0 32 } } }
	a_0_5 { ap_memory {  { a_0_5_address0 mem_address 1 5 }  { a_0_5_ce0 mem_ce 1 1 }  { a_0_5_q0 mem_dout 0 32 } } }
	a_0_6 { ap_memory {  { a_0_6_address0 mem_address 1 5 }  { a_0_6_ce0 mem_ce 1 1 }  { a_0_6_q0 mem_dout 0 32 } } }
	a_0_7 { ap_memory {  { a_0_7_address0 mem_address 1 5 }  { a_0_7_ce0 mem_ce 1 1 }  { a_0_7_q0 mem_dout 0 32 } } }
	a_0_8 { ap_memory {  { a_0_8_address0 mem_address 1 5 }  { a_0_8_ce0 mem_ce 1 1 }  { a_0_8_q0 mem_dout 0 32 } } }
	a_0_9 { ap_memory {  { a_0_9_address0 mem_address 1 5 }  { a_0_9_ce0 mem_ce 1 1 }  { a_0_9_q0 mem_dout 0 32 } } }
	a_0_10 { ap_memory {  { a_0_10_address0 mem_address 1 5 }  { a_0_10_ce0 mem_ce 1 1 }  { a_0_10_q0 mem_dout 0 32 } } }
	a_0_11 { ap_memory {  { a_0_11_address0 mem_address 1 5 }  { a_0_11_ce0 mem_ce 1 1 }  { a_0_11_q0 mem_dout 0 32 } } }
	a_0_12 { ap_memory {  { a_0_12_address0 mem_address 1 5 }  { a_0_12_ce0 mem_ce 1 1 }  { a_0_12_q0 mem_dout 0 32 } } }
	a_0_13 { ap_memory {  { a_0_13_address0 mem_address 1 5 }  { a_0_13_ce0 mem_ce 1 1 }  { a_0_13_q0 mem_dout 0 32 } } }
	a_0_14 { ap_memory {  { a_0_14_address0 mem_address 1 5 }  { a_0_14_ce0 mem_ce 1 1 }  { a_0_14_q0 mem_dout 0 32 } } }
	a_0_15 { ap_memory {  { a_0_15_address0 mem_address 1 5 }  { a_0_15_ce0 mem_ce 1 1 }  { a_0_15_q0 mem_dout 0 32 } } }
	a_0_16 { ap_memory {  { a_0_16_address0 mem_address 1 5 }  { a_0_16_ce0 mem_ce 1 1 }  { a_0_16_q0 mem_dout 0 32 } } }
	a_0_17 { ap_memory {  { a_0_17_address0 mem_address 1 5 }  { a_0_17_ce0 mem_ce 1 1 }  { a_0_17_q0 mem_dout 0 32 } } }
	a_0_18 { ap_memory {  { a_0_18_address0 mem_address 1 5 }  { a_0_18_ce0 mem_ce 1 1 }  { a_0_18_q0 mem_dout 0 32 } } }
	a_0_19 { ap_memory {  { a_0_19_address0 mem_address 1 5 }  { a_0_19_ce0 mem_ce 1 1 }  { a_0_19_q0 mem_dout 0 32 } } }
	a_1_0 { ap_memory {  { a_1_0_address0 mem_address 1 5 }  { a_1_0_ce0 mem_ce 1 1 }  { a_1_0_q0 mem_dout 0 32 } } }
	a_1_1 { ap_memory {  { a_1_1_address0 mem_address 1 5 }  { a_1_1_ce0 mem_ce 1 1 }  { a_1_1_q0 mem_dout 0 32 } } }
	a_1_2 { ap_memory {  { a_1_2_address0 mem_address 1 5 }  { a_1_2_ce0 mem_ce 1 1 }  { a_1_2_q0 mem_dout 0 32 } } }
	a_1_3 { ap_memory {  { a_1_3_address0 mem_address 1 5 }  { a_1_3_ce0 mem_ce 1 1 }  { a_1_3_q0 mem_dout 0 32 } } }
	a_1_4 { ap_memory {  { a_1_4_address0 mem_address 1 5 }  { a_1_4_ce0 mem_ce 1 1 }  { a_1_4_q0 mem_dout 0 32 } } }
	a_1_5 { ap_memory {  { a_1_5_address0 mem_address 1 5 }  { a_1_5_ce0 mem_ce 1 1 }  { a_1_5_q0 mem_dout 0 32 } } }
	a_1_6 { ap_memory {  { a_1_6_address0 mem_address 1 5 }  { a_1_6_ce0 mem_ce 1 1 }  { a_1_6_q0 mem_dout 0 32 } } }
	a_1_7 { ap_memory {  { a_1_7_address0 mem_address 1 5 }  { a_1_7_ce0 mem_ce 1 1 }  { a_1_7_q0 mem_dout 0 32 } } }
	a_1_8 { ap_memory {  { a_1_8_address0 mem_address 1 5 }  { a_1_8_ce0 mem_ce 1 1 }  { a_1_8_q0 mem_dout 0 32 } } }
	a_1_9 { ap_memory {  { a_1_9_address0 mem_address 1 5 }  { a_1_9_ce0 mem_ce 1 1 }  { a_1_9_q0 mem_dout 0 32 } } }
	a_1_10 { ap_memory {  { a_1_10_address0 mem_address 1 5 }  { a_1_10_ce0 mem_ce 1 1 }  { a_1_10_q0 mem_dout 0 32 } } }
	a_1_11 { ap_memory {  { a_1_11_address0 mem_address 1 5 }  { a_1_11_ce0 mem_ce 1 1 }  { a_1_11_q0 mem_dout 0 32 } } }
	a_1_12 { ap_memory {  { a_1_12_address0 mem_address 1 5 }  { a_1_12_ce0 mem_ce 1 1 }  { a_1_12_q0 mem_dout 0 32 } } }
	a_1_13 { ap_memory {  { a_1_13_address0 mem_address 1 5 }  { a_1_13_ce0 mem_ce 1 1 }  { a_1_13_q0 mem_dout 0 32 } } }
	a_1_14 { ap_memory {  { a_1_14_address0 mem_address 1 5 }  { a_1_14_ce0 mem_ce 1 1 }  { a_1_14_q0 mem_dout 0 32 } } }
	a_1_15 { ap_memory {  { a_1_15_address0 mem_address 1 5 }  { a_1_15_ce0 mem_ce 1 1 }  { a_1_15_q0 mem_dout 0 32 } } }
	a_1_16 { ap_memory {  { a_1_16_address0 mem_address 1 5 }  { a_1_16_ce0 mem_ce 1 1 }  { a_1_16_q0 mem_dout 0 32 } } }
	a_1_17 { ap_memory {  { a_1_17_address0 mem_address 1 5 }  { a_1_17_ce0 mem_ce 1 1 }  { a_1_17_q0 mem_dout 0 32 } } }
	a_1_18 { ap_memory {  { a_1_18_address0 mem_address 1 5 }  { a_1_18_ce0 mem_ce 1 1 }  { a_1_18_q0 mem_dout 0 32 } } }
	a_1_19 { ap_memory {  { a_1_19_address0 mem_address 1 5 }  { a_1_19_ce0 mem_ce 1 1 }  { a_1_19_q0 mem_dout 0 32 } } }
	b_0 { ap_memory {  { b_0_address0 mem_address 1 5 }  { b_0_ce0 mem_ce 1 1 }  { b_0_q0 mem_dout 0 32 }  { b_0_address1 MemPortADDR2 1 5 }  { b_0_ce1 MemPortCE2 1 1 }  { b_0_q1 MemPortDOUT2 0 32 } } }
	b_1 { ap_memory {  { b_1_address0 mem_address 1 5 }  { b_1_ce0 mem_ce 1 1 }  { b_1_q0 mem_dout 0 32 }  { b_1_address1 MemPortADDR2 1 5 }  { b_1_ce1 MemPortCE2 1 1 }  { b_1_q1 MemPortDOUT2 0 32 } } }
}
