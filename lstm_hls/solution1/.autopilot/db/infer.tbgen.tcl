set moduleName infer
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
set C_modelName {infer}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_r float 32 regular {array 224 { 1 3 } 1 1 }  }
	{ res_0_out float 32 regular {fifo 1}  }
	{ res_1_out float 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_r", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "res_0_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_1_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ input_r_address0 sc_out sc_lv 8 signal 0 } 
	{ input_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_r_q0 sc_in sc_lv 32 signal 0 } 
	{ res_0_out_din sc_out sc_lv 32 signal 1 } 
	{ res_0_out_full_n sc_in sc_logic 1 signal 1 } 
	{ res_0_out_write sc_out sc_logic 1 signal 1 } 
	{ res_1_out_din sc_out sc_lv 32 signal 2 } 
	{ res_1_out_full_n sc_in sc_logic 1 signal 2 } 
	{ res_1_out_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "input_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_r", "role": "address0" }} , 
 	{ "name": "input_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce0" }} , 
 	{ "name": "input_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_r", "role": "q0" }} , 
 	{ "name": "res_0_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "res_0_out", "role": "din" }} , 
 	{ "name": "res_0_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_0_out", "role": "full_n" }} , 
 	{ "name": "res_0_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_0_out", "role": "write" }} , 
 	{ "name": "res_1_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "res_1_out", "role": "din" }} , 
 	{ "name": "res_1_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_1_out", "role": "full_n" }} , 
 	{ "name": "res_1_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_1_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "250", "270", "279", "280", "281", "282", "283", "284", "285", "286", "287"],
		"CDFG" : "infer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16738", "EstimateLatencyMax" : "16738",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state301", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_gemvm_out_fu_1519"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_gemvm_lstm_fu_1604"},
			{"State" : "ap_ST_fsm_state54", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_gemvm_lstm_fu_1604"},
			{"State" : "ap_ST_fsm_state96", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_gemvm_lstm_fu_1604"},
			{"State" : "ap_ST_fsm_state169", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_gemvm_lstm_fu_1604"}],
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "res_0_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "res_0_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "res_1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Weight0_f_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_0"}]},
			{"Name" : "Weight0_f_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_1"}]},
			{"Name" : "Weight0_f_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_2"}]},
			{"Name" : "Weight0_f_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_3"}]},
			{"Name" : "Weight0_f_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_4"}]},
			{"Name" : "Weight0_f_0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_5"}]},
			{"Name" : "Weight0_f_0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_6"}]},
			{"Name" : "Weight0_f_0_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_7"}]},
			{"Name" : "Weight0_f_0_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_8"}]},
			{"Name" : "Weight0_f_0_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_9"}]},
			{"Name" : "Weight0_f_0_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_10"}]},
			{"Name" : "Weight0_f_0_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_11"}]},
			{"Name" : "Weight0_f_0_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_12"}]},
			{"Name" : "Weight0_f_0_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_13"}]},
			{"Name" : "Weight0_f_0_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_14"}]},
			{"Name" : "Weight0_f_0_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_15"}]},
			{"Name" : "Weight0_f_0_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_16"}]},
			{"Name" : "Weight0_f_0_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_17"}]},
			{"Name" : "Weight0_f_0_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_18"}]},
			{"Name" : "Weight0_f_0_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_19"}]},
			{"Name" : "Weight0_f_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_0"}]},
			{"Name" : "Weight0_f_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_1"}]},
			{"Name" : "Weight0_f_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_2"}]},
			{"Name" : "Weight0_f_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_3"}]},
			{"Name" : "Weight0_f_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_4"}]},
			{"Name" : "Weight0_f_1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_5"}]},
			{"Name" : "Weight0_f_1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_6"}]},
			{"Name" : "Weight0_f_1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_7"}]},
			{"Name" : "Weight0_f_1_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_8"}]},
			{"Name" : "Weight0_f_1_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_9"}]},
			{"Name" : "Weight0_f_1_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_10"}]},
			{"Name" : "Weight0_f_1_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_11"}]},
			{"Name" : "Weight0_f_1_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_12"}]},
			{"Name" : "Weight0_f_1_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_13"}]},
			{"Name" : "Weight0_f_1_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_14"}]},
			{"Name" : "Weight0_f_1_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_15"}]},
			{"Name" : "Weight0_f_1_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_16"}]},
			{"Name" : "Weight0_f_1_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_17"}]},
			{"Name" : "Weight0_f_1_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_18"}]},
			{"Name" : "Weight0_f_1_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_19"}]},
			{"Name" : "Bias0_f_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bias0_f_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight0_i_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_0"}]},
			{"Name" : "Weight0_i_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_1"}]},
			{"Name" : "Weight0_i_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_2"}]},
			{"Name" : "Weight0_i_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_3"}]},
			{"Name" : "Weight0_i_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_4"}]},
			{"Name" : "Weight0_i_0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_5"}]},
			{"Name" : "Weight0_i_0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_6"}]},
			{"Name" : "Weight0_i_0_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_7"}]},
			{"Name" : "Weight0_i_0_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_8"}]},
			{"Name" : "Weight0_i_0_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_9"}]},
			{"Name" : "Weight0_i_0_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_10"}]},
			{"Name" : "Weight0_i_0_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_11"}]},
			{"Name" : "Weight0_i_0_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_12"}]},
			{"Name" : "Weight0_i_0_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_13"}]},
			{"Name" : "Weight0_i_0_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_14"}]},
			{"Name" : "Weight0_i_0_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_15"}]},
			{"Name" : "Weight0_i_0_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_16"}]},
			{"Name" : "Weight0_i_0_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_17"}]},
			{"Name" : "Weight0_i_0_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_18"}]},
			{"Name" : "Weight0_i_0_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_19"}]},
			{"Name" : "Weight0_i_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_0"}]},
			{"Name" : "Weight0_i_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_1"}]},
			{"Name" : "Weight0_i_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_2"}]},
			{"Name" : "Weight0_i_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_3"}]},
			{"Name" : "Weight0_i_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_4"}]},
			{"Name" : "Weight0_i_1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_5"}]},
			{"Name" : "Weight0_i_1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_6"}]},
			{"Name" : "Weight0_i_1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_7"}]},
			{"Name" : "Weight0_i_1_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_8"}]},
			{"Name" : "Weight0_i_1_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_9"}]},
			{"Name" : "Weight0_i_1_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_10"}]},
			{"Name" : "Weight0_i_1_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_11"}]},
			{"Name" : "Weight0_i_1_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_12"}]},
			{"Name" : "Weight0_i_1_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_13"}]},
			{"Name" : "Weight0_i_1_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_14"}]},
			{"Name" : "Weight0_i_1_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_15"}]},
			{"Name" : "Weight0_i_1_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_16"}]},
			{"Name" : "Weight0_i_1_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_17"}]},
			{"Name" : "Weight0_i_1_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_18"}]},
			{"Name" : "Weight0_i_1_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_19"}]},
			{"Name" : "Bias0_i_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bias0_i_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight0_c_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_0"}]},
			{"Name" : "Weight0_c_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_1"}]},
			{"Name" : "Weight0_c_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_2"}]},
			{"Name" : "Weight0_c_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_3"}]},
			{"Name" : "Weight0_c_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_4"}]},
			{"Name" : "Weight0_c_0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_5"}]},
			{"Name" : "Weight0_c_0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_6"}]},
			{"Name" : "Weight0_c_0_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_7"}]},
			{"Name" : "Weight0_c_0_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_8"}]},
			{"Name" : "Weight0_c_0_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_9"}]},
			{"Name" : "Weight0_c_0_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_10"}]},
			{"Name" : "Weight0_c_0_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_11"}]},
			{"Name" : "Weight0_c_0_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_12"}]},
			{"Name" : "Weight0_c_0_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_13"}]},
			{"Name" : "Weight0_c_0_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_14"}]},
			{"Name" : "Weight0_c_0_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_15"}]},
			{"Name" : "Weight0_c_0_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_16"}]},
			{"Name" : "Weight0_c_0_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_17"}]},
			{"Name" : "Weight0_c_0_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_18"}]},
			{"Name" : "Weight0_c_0_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_19"}]},
			{"Name" : "Weight0_c_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_0"}]},
			{"Name" : "Weight0_c_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_1"}]},
			{"Name" : "Weight0_c_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_2"}]},
			{"Name" : "Weight0_c_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_3"}]},
			{"Name" : "Weight0_c_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_4"}]},
			{"Name" : "Weight0_c_1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_5"}]},
			{"Name" : "Weight0_c_1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_6"}]},
			{"Name" : "Weight0_c_1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_7"}]},
			{"Name" : "Weight0_c_1_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_8"}]},
			{"Name" : "Weight0_c_1_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_9"}]},
			{"Name" : "Weight0_c_1_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_10"}]},
			{"Name" : "Weight0_c_1_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_11"}]},
			{"Name" : "Weight0_c_1_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_12"}]},
			{"Name" : "Weight0_c_1_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_13"}]},
			{"Name" : "Weight0_c_1_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_14"}]},
			{"Name" : "Weight0_c_1_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_15"}]},
			{"Name" : "Weight0_c_1_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_16"}]},
			{"Name" : "Weight0_c_1_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_17"}]},
			{"Name" : "Weight0_c_1_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_18"}]},
			{"Name" : "Weight0_c_1_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_19"}]},
			{"Name" : "Bias0_c_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bias0_c_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "table_exp_Z1_array_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "250", "SubInstance" : "grp_generic_tanh_float_s_fu_1589", "Port" : "table_exp_Z1_array_s"}]},
			{"Name" : "table_f_Z3_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "250", "SubInstance" : "grp_generic_tanh_float_s_fu_1589", "Port" : "table_f_Z3_array_V"}]},
			{"Name" : "table_f_Z2_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "250", "SubInstance" : "grp_generic_tanh_float_s_fu_1589", "Port" : "table_f_Z2_array_V"}]},
			{"Name" : "Weight0_o_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_0"}]},
			{"Name" : "Weight0_o_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_1"}]},
			{"Name" : "Weight0_o_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_2"}]},
			{"Name" : "Weight0_o_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_3"}]},
			{"Name" : "Weight0_o_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_4"}]},
			{"Name" : "Weight0_o_0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_5"}]},
			{"Name" : "Weight0_o_0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_6"}]},
			{"Name" : "Weight0_o_0_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_7"}]},
			{"Name" : "Weight0_o_0_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_8"}]},
			{"Name" : "Weight0_o_0_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_9"}]},
			{"Name" : "Weight0_o_0_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_10"}]},
			{"Name" : "Weight0_o_0_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_11"}]},
			{"Name" : "Weight0_o_0_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_12"}]},
			{"Name" : "Weight0_o_0_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_13"}]},
			{"Name" : "Weight0_o_0_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_14"}]},
			{"Name" : "Weight0_o_0_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_15"}]},
			{"Name" : "Weight0_o_0_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_16"}]},
			{"Name" : "Weight0_o_0_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_17"}]},
			{"Name" : "Weight0_o_0_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_18"}]},
			{"Name" : "Weight0_o_0_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_0_19"}]},
			{"Name" : "Weight0_o_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_0"}]},
			{"Name" : "Weight0_o_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_1"}]},
			{"Name" : "Weight0_o_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_2"}]},
			{"Name" : "Weight0_o_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_3"}]},
			{"Name" : "Weight0_o_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_4"}]},
			{"Name" : "Weight0_o_1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_5"}]},
			{"Name" : "Weight0_o_1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_6"}]},
			{"Name" : "Weight0_o_1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_7"}]},
			{"Name" : "Weight0_o_1_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_8"}]},
			{"Name" : "Weight0_o_1_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_9"}]},
			{"Name" : "Weight0_o_1_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_10"}]},
			{"Name" : "Weight0_o_1_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_11"}]},
			{"Name" : "Weight0_o_1_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_12"}]},
			{"Name" : "Weight0_o_1_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_13"}]},
			{"Name" : "Weight0_o_1_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_14"}]},
			{"Name" : "Weight0_o_1_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_15"}]},
			{"Name" : "Weight0_o_1_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_16"}]},
			{"Name" : "Weight0_o_1_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_17"}]},
			{"Name" : "Weight0_o_1_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_18"}]},
			{"Name" : "Weight0_o_1_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_gemvm_lstm_fu_1604", "Port" : "a_1_19"}]},
			{"Name" : "Bias0_o_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bias0_o_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weight_lc_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_0_0"}]},
			{"Name" : "Weight_lc_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_1_0"}]},
			{"Name" : "Weight_lc_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_0_1"}]},
			{"Name" : "Weight_lc_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_1_1"}]},
			{"Name" : "Weight_lc_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_0_2"}]},
			{"Name" : "Weight_lc_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_1_2"}]},
			{"Name" : "Weight_lc_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_0_3"}]},
			{"Name" : "Weight_lc_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_1_3"}]},
			{"Name" : "Weight_lc_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_0_4"}]},
			{"Name" : "Weight_lc_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_1_4"}]},
			{"Name" : "Weight_lc_0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_0_5"}]},
			{"Name" : "Weight_lc_1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_1_5"}]},
			{"Name" : "Weight_lc_0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_0_6"}]},
			{"Name" : "Weight_lc_1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_1_6"}]},
			{"Name" : "Weight_lc_0_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_0_7"}]},
			{"Name" : "Weight_lc_1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_1_7"}]},
			{"Name" : "Weight_lc_0_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_0_8"}]},
			{"Name" : "Weight_lc_1_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_1_8"}]},
			{"Name" : "Weight_lc_0_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_0_9"}]},
			{"Name" : "Weight_lc_1_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_1_9"}]},
			{"Name" : "Weight_lc_0_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_0_10"}]},
			{"Name" : "Weight_lc_1_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_1_10"}]},
			{"Name" : "Weight_lc_0_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_0_11"}]},
			{"Name" : "Weight_lc_1_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_1_11"}]},
			{"Name" : "Weight_lc_0_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_0_12"}]},
			{"Name" : "Weight_lc_1_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_1_12"}]},
			{"Name" : "Weight_lc_0_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_0_13"}]},
			{"Name" : "Weight_lc_1_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_1_13"}]},
			{"Name" : "Weight_lc_0_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_0_14"}]},
			{"Name" : "Weight_lc_1_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_1_14"}]},
			{"Name" : "Weight_lc_0_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_0_15"}]},
			{"Name" : "Weight_lc_1_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_gemvm_out_fu_1519", "Port" : "Weight_lc_1_15"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_0_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_0_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_0_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_0_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_0_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_0_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_0_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_0_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_0_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_0_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_0_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_0_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_0_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_0_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_0_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_0_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_0_16_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_0_17_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_0_18_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_0_19_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_1_0_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_1_1_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_1_2_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_1_3_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_1_4_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_1_5_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_1_6_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_1_7_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_1_8_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_1_9_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_1_10_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_1_11_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_1_12_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_1_13_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_1_14_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_1_15_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_1_16_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_1_17_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_1_18_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_f_1_19_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Bias0_f_0_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Bias0_f_1_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_0_0_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_0_1_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_0_2_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_0_3_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_0_4_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_0_5_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_0_6_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_0_7_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_0_8_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_0_9_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_0_10_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_0_11_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_0_12_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_0_13_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_0_14_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_0_15_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_0_16_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_0_17_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_0_18_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_0_19_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_1_0_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_1_1_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_1_2_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_1_3_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_1_4_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_1_5_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_1_6_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_1_7_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_1_8_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_1_9_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_1_10_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_1_11_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_1_12_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_1_13_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_1_14_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_1_15_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_1_16_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_1_17_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_1_18_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_i_1_19_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Bias0_i_0_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Bias0_i_1_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_0_0_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_0_1_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_0_2_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_0_3_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_0_4_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_0_5_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_0_6_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_0_7_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_0_8_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_0_9_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_0_10_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_0_11_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_0_12_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_0_13_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_0_14_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_0_15_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_0_16_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_0_17_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_0_18_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_0_19_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_1_0_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_1_1_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_1_2_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_1_3_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_1_4_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_1_5_U", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_1_6_U", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_1_7_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_1_8_U", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_1_9_U", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_1_10_U", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_1_11_U", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_1_12_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_1_13_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_1_14_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_1_15_U", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_1_16_U", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_1_17_U", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_1_18_U", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_c_1_19_U", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Bias0_c_0_U", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Bias0_c_1_U", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_0_0_U", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_0_1_U", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_0_2_U", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_0_3_U", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_0_4_U", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_0_5_U", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_0_6_U", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_0_7_U", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_0_8_U", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_0_9_U", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_0_10_U", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_0_11_U", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_0_12_U", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_0_13_U", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_0_14_U", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_0_15_U", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_0_16_U", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_0_17_U", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_0_18_U", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_0_19_U", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_1_0_U", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_1_1_U", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_1_2_U", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_1_3_U", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_1_4_U", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_1_5_U", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_1_6_U", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_1_7_U", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_1_8_U", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_1_9_U", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_1_10_U", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_1_11_U", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_1_12_U", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_1_13_U", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_1_14_U", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_1_15_U", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_1_16_U", "Parent" : "0"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_1_17_U", "Parent" : "0"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_1_18_U", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Weight0_o_1_19_U", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Bias0_o_0_U", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Bias0_o_1_U", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gate_f_0_U", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gate_f_1_U", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gate_i_0_U", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gate_i_1_U", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gate_o_0_U", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gate_o_1_U", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stat_C_0_U", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stat_C_1_U", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_t_0_U", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_t_1_U", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_t_0_U", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_t_1_U", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vec_i_0_U", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vec_i_1_U", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vec_tmp_0_U", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vec_tmp_1_U", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519", "Parent" : "0", "Child" : ["186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249"],
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
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_0_0_U", "Parent" : "185"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_1_0_U", "Parent" : "185"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_0_1_U", "Parent" : "185"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_1_1_U", "Parent" : "185"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_0_2_U", "Parent" : "185"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_1_2_U", "Parent" : "185"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_0_3_U", "Parent" : "185"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_1_3_U", "Parent" : "185"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_0_4_U", "Parent" : "185"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_1_4_U", "Parent" : "185"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_0_5_U", "Parent" : "185"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_1_5_U", "Parent" : "185"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_0_6_U", "Parent" : "185"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_1_6_U", "Parent" : "185"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_0_7_U", "Parent" : "185"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_1_7_U", "Parent" : "185"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_0_8_U", "Parent" : "185"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_1_8_U", "Parent" : "185"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_0_9_U", "Parent" : "185"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_1_9_U", "Parent" : "185"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_0_10_U", "Parent" : "185"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_1_10_U", "Parent" : "185"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_0_11_U", "Parent" : "185"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_1_11_U", "Parent" : "185"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_0_12_U", "Parent" : "185"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_1_12_U", "Parent" : "185"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_0_13_U", "Parent" : "185"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_1_13_U", "Parent" : "185"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_0_14_U", "Parent" : "185"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_1_14_U", "Parent" : "185"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_0_15_U", "Parent" : "185"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.Weight_lc_1_15_U", "Parent" : "185"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fadd_32ncud_U96", "Parent" : "185"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fadd_32ncud_U97", "Parent" : "185"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fadd_32ncud_U98", "Parent" : "185"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fadd_32ncud_U99", "Parent" : "185"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fadd_32ncud_U100", "Parent" : "185"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fadd_32ncud_U101", "Parent" : "185"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fadd_32ncud_U102", "Parent" : "185"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fadd_32ncud_U103", "Parent" : "185"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fadd_32ncud_U104", "Parent" : "185"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fadd_32ncud_U105", "Parent" : "185"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fadd_32ncud_U106", "Parent" : "185"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fadd_32ncud_U107", "Parent" : "185"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fadd_32ncud_U108", "Parent" : "185"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fadd_32ncud_U109", "Parent" : "185"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fadd_32ncud_U110", "Parent" : "185"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fadd_32ncud_U111", "Parent" : "185"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fmul_32ndEe_U112", "Parent" : "185"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fmul_32ndEe_U113", "Parent" : "185"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fmul_32ndEe_U114", "Parent" : "185"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fmul_32ndEe_U115", "Parent" : "185"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fmul_32ndEe_U116", "Parent" : "185"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fmul_32ndEe_U117", "Parent" : "185"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fmul_32ndEe_U118", "Parent" : "185"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fmul_32ndEe_U119", "Parent" : "185"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fmul_32ndEe_U120", "Parent" : "185"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fmul_32ndEe_U121", "Parent" : "185"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fmul_32ndEe_U122", "Parent" : "185"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fmul_32ndEe_U123", "Parent" : "185"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fmul_32ndEe_U124", "Parent" : "185"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fmul_32ndEe_U125", "Parent" : "185"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fmul_32ndEe_U126", "Parent" : "185"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_out_fu_1519.LSTM_Top_fmul_32ndEe_U127", "Parent" : "185"},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_float_s_fu_1589", "Parent" : "0", "Child" : ["251", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269"],
		"CDFG" : "generic_tanh_float_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "58", "EstimateLatencyMin" : "58", "EstimateLatencyMax" : "58",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "table_exp_Z1_array_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_exp_generic_double_s_fu_89", "Port" : "table_exp_Z1_array_s"}]},
			{"Name" : "table_f_Z3_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_exp_generic_double_s_fu_89", "Port" : "table_f_Z3_array_V"}]},
			{"Name" : "table_f_Z2_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_exp_generic_double_s_fu_89", "Port" : "table_f_Z2_array_V"}]}]},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_float_s_fu_1589.grp_exp_generic_double_s_fu_89", "Parent" : "250", "Child" : ["252", "253", "254", "255", "256", "257", "258", "259"],
		"CDFG" : "exp_generic_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "19", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "table_exp_Z1_array_s", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "table_f_Z3_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "table_f_Z2_array_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "252", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_float_s_fu_1589.grp_exp_generic_double_s_fu_89.table_exp_Z1_array_s_U", "Parent" : "251"},
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_float_s_fu_1589.grp_exp_generic_double_s_fu_89.table_f_Z3_array_V_U", "Parent" : "251"},
	{"ID" : "254", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_float_s_fu_1589.grp_exp_generic_double_s_fu_89.table_f_Z2_array_V_U", "Parent" : "251"},
	{"ID" : "255", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_float_s_fu_1589.grp_exp_generic_double_s_fu_89.LSTM_Top_mul_72nshbi_U65", "Parent" : "251"},
	{"ID" : "256", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_float_s_fu_1589.grp_exp_generic_double_s_fu_89.LSTM_Top_mul_36nsibs_U66", "Parent" : "251"},
	{"ID" : "257", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_float_s_fu_1589.grp_exp_generic_double_s_fu_89.LSTM_Top_mul_44nsjbC_U67", "Parent" : "251"},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_float_s_fu_1589.grp_exp_generic_double_s_fu_89.LSTM_Top_mul_50nskbM_U68", "Parent" : "251"},
	{"ID" : "259", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_float_s_fu_1589.grp_exp_generic_double_s_fu_89.LSTM_Top_mac_mulalbW_U69", "Parent" : "251"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_float_s_fu_1589.LSTM_Top_faddfsubmb6_U79", "Parent" : "250"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_float_s_fu_1589.LSTM_Top_fadd_32ncud_U80", "Parent" : "250"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_float_s_fu_1589.LSTM_Top_fadd_32ncud_U81", "Parent" : "250"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_float_s_fu_1589.LSTM_Top_fsub_32nncg_U82", "Parent" : "250"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_float_s_fu_1589.LSTM_Top_fmul_32ndEe_U83", "Parent" : "250"},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_float_s_fu_1589.LSTM_Top_fdiv_32nbkb_U84", "Parent" : "250"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_float_s_fu_1589.LSTM_Top_fptrunc_ocq_U85", "Parent" : "250"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_float_s_fu_1589.LSTM_Top_fpext_32pcA_U86", "Parent" : "250"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_float_s_fu_1589.LSTM_Top_fcmp_32nqcK_U87", "Parent" : "250"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_float_s_fu_1589.LSTM_Top_dadd_64nrcU_U88", "Parent" : "250"},
	{"ID" : "270", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_lstm_fu_1604", "Parent" : "0", "Child" : ["271", "272", "273", "274", "275", "276", "277", "278"],
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
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_lstm_fu_1604.LSTM_Top_fadd_32ncud_U11", "Parent" : "270"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_lstm_fu_1604.LSTM_Top_fadd_32ncud_U12", "Parent" : "270"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_lstm_fu_1604.LSTM_Top_fadd_32ncud_U13", "Parent" : "270"},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_lstm_fu_1604.LSTM_Top_fadd_32ncud_U14", "Parent" : "270"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_lstm_fu_1604.LSTM_Top_fmul_32ndEe_U15", "Parent" : "270"},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_lstm_fu_1604.LSTM_Top_fmul_32ndEe_U16", "Parent" : "270"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_lstm_fu_1604.LSTM_Top_fmul_32ndEe_U17", "Parent" : "270"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemvm_lstm_fu_1604.LSTM_Top_fmul_32ndEe_U18", "Parent" : "270"},
	{"ID" : "279", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fadd_32ncud_U162", "Parent" : "0"},
	{"ID" : "280", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fadd_32ncud_U163", "Parent" : "0"},
	{"ID" : "281", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fmul_32ndEe_U164", "Parent" : "0"},
	{"ID" : "282", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fmul_32ndEe_U165", "Parent" : "0"},
	{"ID" : "283", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fptrunc_ocq_U166", "Parent" : "0"},
	{"ID" : "284", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fpext_32pcA_U167", "Parent" : "0"},
	{"ID" : "285", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fexp_32ncgu_U168", "Parent" : "0"},
	{"ID" : "286", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_dadd_64nrcU_U169", "Parent" : "0"},
	{"ID" : "287", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_drecip_6chv_U170", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	infer {
		input_r {Type I LastRead 8 FirstWrite -1}
		res_0_out {Type O LastRead -1 FirstWrite 13}
		res_1_out {Type O LastRead -1 FirstWrite 13}
		Weight0_f_0_0 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_0_1 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_0_2 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_0_3 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_0_4 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_0_5 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_0_6 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_0_7 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_0_8 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_0_9 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_0_10 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_0_11 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_0_12 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_0_13 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_0_14 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_0_15 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_0_16 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_0_17 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_0_18 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_0_19 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_1_0 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_1_1 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_1_2 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_1_3 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_1_4 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_1_5 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_1_6 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_1_7 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_1_8 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_1_9 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_1_10 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_1_11 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_1_12 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_1_13 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_1_14 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_1_15 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_1_16 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_1_17 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_1_18 {Type I LastRead -1 FirstWrite -1}
		Weight0_f_1_19 {Type I LastRead -1 FirstWrite -1}
		Bias0_f_0 {Type I LastRead -1 FirstWrite -1}
		Bias0_f_1 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_0_0 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_0_1 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_0_2 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_0_3 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_0_4 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_0_5 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_0_6 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_0_7 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_0_8 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_0_9 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_0_10 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_0_11 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_0_12 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_0_13 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_0_14 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_0_15 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_0_16 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_0_17 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_0_18 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_0_19 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_1_0 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_1_1 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_1_2 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_1_3 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_1_4 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_1_5 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_1_6 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_1_7 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_1_8 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_1_9 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_1_10 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_1_11 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_1_12 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_1_13 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_1_14 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_1_15 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_1_16 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_1_17 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_1_18 {Type I LastRead -1 FirstWrite -1}
		Weight0_i_1_19 {Type I LastRead -1 FirstWrite -1}
		Bias0_i_0 {Type I LastRead -1 FirstWrite -1}
		Bias0_i_1 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_0_0 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_0_1 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_0_2 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_0_3 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_0_4 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_0_5 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_0_6 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_0_7 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_0_8 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_0_9 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_0_10 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_0_11 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_0_12 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_0_13 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_0_14 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_0_15 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_0_16 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_0_17 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_0_18 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_0_19 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_1_0 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_1_1 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_1_2 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_1_3 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_1_4 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_1_5 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_1_6 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_1_7 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_1_8 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_1_9 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_1_10 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_1_11 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_1_12 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_1_13 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_1_14 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_1_15 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_1_16 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_1_17 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_1_18 {Type I LastRead -1 FirstWrite -1}
		Weight0_c_1_19 {Type I LastRead -1 FirstWrite -1}
		Bias0_c_0 {Type I LastRead -1 FirstWrite -1}
		Bias0_c_1 {Type I LastRead -1 FirstWrite -1}
		table_exp_Z1_array_s {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_array_V {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_array_V {Type I LastRead -1 FirstWrite -1}
		Weight0_o_0_0 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_0_1 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_0_2 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_0_3 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_0_4 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_0_5 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_0_6 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_0_7 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_0_8 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_0_9 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_0_10 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_0_11 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_0_12 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_0_13 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_0_14 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_0_15 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_0_16 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_0_17 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_0_18 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_0_19 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_1_0 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_1_1 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_1_2 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_1_3 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_1_4 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_1_5 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_1_6 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_1_7 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_1_8 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_1_9 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_1_10 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_1_11 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_1_12 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_1_13 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_1_14 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_1_15 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_1_16 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_1_17 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_1_18 {Type I LastRead -1 FirstWrite -1}
		Weight0_o_1_19 {Type I LastRead -1 FirstWrite -1}
		Bias0_o_0 {Type I LastRead -1 FirstWrite -1}
		Bias0_o_1 {Type I LastRead -1 FirstWrite -1}
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
		Weight_lc_1_15 {Type I LastRead -1 FirstWrite -1}}
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
		Weight_lc_1_15 {Type I LastRead -1 FirstWrite -1}}
	generic_tanh_float_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		table_exp_Z1_array_s {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_array_V {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_array_V {Type I LastRead -1 FirstWrite -1}}
	exp_generic_double_s {
		x {Type I LastRead 0 FirstWrite -1}
		table_exp_Z1_array_s {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_array_V {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_array_V {Type I LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "16738", "Max" : "16738"}
	, {"Name" : "Interval", "Min" : "16738", "Max" : "16738"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
	{"Pipeline" : "4", "EnableSignal" : "ap_enable_pp4"}
	{"Pipeline" : "5", "EnableSignal" : "ap_enable_pp5"}
	{"Pipeline" : "6", "EnableSignal" : "ap_enable_pp6"}
	{"Pipeline" : "7", "EnableSignal" : "ap_enable_pp7"}
	{"Pipeline" : "8", "EnableSignal" : "ap_enable_pp8"}
	{"Pipeline" : "9", "EnableSignal" : "ap_enable_pp9"}
	{"Pipeline" : "10", "EnableSignal" : "ap_enable_pp10"}
	{"Pipeline" : "11", "EnableSignal" : "ap_enable_pp11"}
	{"Pipeline" : "12", "EnableSignal" : "ap_enable_pp12"}
	{"Pipeline" : "13", "EnableSignal" : "ap_enable_pp13"}
]}

set Spec2ImplPortList { 
	input_r { ap_memory {  { input_r_address0 mem_address 1 8 }  { input_r_ce0 mem_ce 1 1 }  { input_r_q0 mem_dout 0 32 } } }
	res_0_out { ap_fifo {  { res_0_out_din fifo_data 1 32 }  { res_0_out_full_n fifo_status 0 1 }  { res_0_out_write fifo_update 1 1 } } }
	res_1_out { ap_fifo {  { res_1_out_din fifo_data 1 32 }  { res_1_out_full_n fifo_status 0 1 }  { res_1_out_write fifo_update 1 1 } } }
}
