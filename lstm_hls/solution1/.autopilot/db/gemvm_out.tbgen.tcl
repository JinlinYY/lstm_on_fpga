set moduleName gemvm_out
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
set C_modelName {gemvm_out}
set C_modelType { int 64 }
set C_modelArgList {
	{ b_0 float 32 regular {array 16 { 1 1 } 1 1 }  }
	{ b_1 float 32 regular {array 16 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "b_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ b_0_address0 sc_out sc_lv 4 signal 0 } 
	{ b_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ b_0_q0 sc_in sc_lv 32 signal 0 } 
	{ b_0_address1 sc_out sc_lv 4 signal 0 } 
	{ b_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ b_0_q1 sc_in sc_lv 32 signal 0 } 
	{ b_1_address0 sc_out sc_lv 4 signal 1 } 
	{ b_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ b_1_q0 sc_in sc_lv 32 signal 1 } 
	{ b_1_address1 sc_out sc_lv 4 signal 1 } 
	{ b_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ b_1_q1 sc_in sc_lv 32 signal 1 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "b_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_0", "role": "address0" }} , 
 	{ "name": "b_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_0", "role": "ce0" }} , 
 	{ "name": "b_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_0", "role": "q0" }} , 
 	{ "name": "b_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_0", "role": "address1" }} , 
 	{ "name": "b_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_0", "role": "ce1" }} , 
 	{ "name": "b_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_0", "role": "q1" }} , 
 	{ "name": "b_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_1", "role": "address0" }} , 
 	{ "name": "b_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_1", "role": "ce0" }} , 
 	{ "name": "b_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_1", "role": "q0" }} , 
 	{ "name": "b_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_1", "role": "address1" }} , 
 	{ "name": "b_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_1", "role": "ce1" }} , 
 	{ "name": "b_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_1", "role": "q1" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64"],
		"CDFG" : "gemvm_out",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "43", "EstimateLatencyMax" : "43",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_0_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_1_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_0_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_1_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_0_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_1_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_0_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_1_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_0_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_1_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_0_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_1_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_0_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_1_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_0_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_1_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_0_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_1_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_0_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_1_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_0_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_1_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_0_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_1_15", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_0_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_1_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_0_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_1_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_0_2_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_1_2_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_0_3_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_1_3_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_0_4_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_1_4_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_0_5_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_1_5_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_0_6_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_1_6_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_0_7_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_1_7_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_0_8_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_1_8_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_0_9_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_1_9_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_0_10_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_1_10_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_0_11_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_1_11_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_0_12_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_1_12_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_0_13_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_1_13_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_0_14_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_1_14_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_0_15_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight_lc_1_15_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fadd_32ncud_U96", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fadd_32ncud_U97", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fadd_32ncud_U98", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fadd_32ncud_U99", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fadd_32ncud_U100", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fadd_32ncud_U101", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fadd_32ncud_U102", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fadd_32ncud_U103", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fadd_32ncud_U104", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fadd_32ncud_U105", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fadd_32ncud_U106", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fadd_32ncud_U107", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fadd_32ncud_U108", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fadd_32ncud_U109", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fadd_32ncud_U110", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fadd_32ncud_U111", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fmul_32ndEe_U112", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fmul_32ndEe_U113", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fmul_32ndEe_U114", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fmul_32ndEe_U115", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fmul_32ndEe_U116", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fmul_32ndEe_U117", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fmul_32ndEe_U118", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fmul_32ndEe_U119", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fmul_32ndEe_U120", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fmul_32ndEe_U121", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fmul_32ndEe_U122", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fmul_32ndEe_U123", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fmul_32ndEe_U124", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fmul_32ndEe_U125", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fmul_32ndEe_U126", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fmul_32ndEe_U127", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	gemvm_out {
		b_0 {Type I LastRead 8 FirstWrite -1}
		b_1 {Type I LastRead 8 FirstWrite -1}
		Weight_lc_0_0 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_1_0 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_0_1 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_1_1 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_0_2 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_1_2 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_0_3 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_1_3 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_0_4 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_1_4 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_0_5 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_1_5 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_0_6 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_1_6 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_0_7 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_1_7 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_0_8 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_1_8 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_0_9 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_1_9 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_0_10 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_1_10 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_0_11 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_1_11 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_0_12 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_1_12 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_0_13 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_1_13 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_0_14 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_1_14 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_0_15 {Type I LastRead -1 FirstWrite -1}
		Weight_lc_1_15 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "43", "Max" : "43"}
	, {"Name" : "Interval", "Min" : "43", "Max" : "43"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	b_0 { ap_memory {  { b_0_address0 mem_address 1 4 }  { b_0_ce0 mem_ce 1 1 }  { b_0_q0 mem_dout 0 32 }  { b_0_address1 MemPortADDR2 1 4 }  { b_0_ce1 MemPortCE2 1 1 }  { b_0_q1 MemPortDOUT2 0 32 } } }
	b_1 { ap_memory {  { b_1_address0 mem_address 1 4 }  { b_1_ce0 mem_ce 1 1 }  { b_1_q0 mem_dout 0 32 }  { b_1_address1 MemPortADDR2 1 4 }  { b_1_ce1 MemPortCE2 1 1 }  { b_1_q1 MemPortDOUT2 0 32 } } }
}
