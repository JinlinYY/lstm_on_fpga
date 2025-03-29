set moduleName mnist_lstm_Loop_1_pr
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
set C_modelName {mnist_lstm_Loop_1_pr}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_data_V int 32 regular {axi_s 0 volatile  { in_r Data } }  }
	{ in_strb_V int 4 regular {axi_s 0 volatile  { in_r Strb } }  }
	{ in_keep_V int 4 regular {axi_s 0 volatile  { in_r Keep } }  }
	{ in_user_V int 1 regular {axi_s 0 volatile  { in_r User } }  }
	{ in_last_V int 1 regular {axi_s 0 volatile  { in_r Last } }  }
	{ in_id_V int 1 regular {axi_s 0 volatile  { in_r ID } }  }
	{ in_dest_V int 1 regular {axi_s 0 volatile  { in_r Dest } }  }
	{ img_dat float 32 regular {array 224 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "img_dat", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_r_TDATA sc_in sc_lv 32 signal 0 } 
	{ in_r_TVALID sc_in sc_logic 1 invld 6 } 
	{ in_r_TREADY sc_out sc_logic 1 inacc 0 } 
	{ in_r_TSTRB sc_in sc_lv 4 signal 1 } 
	{ in_r_TKEEP sc_in sc_lv 4 signal 2 } 
	{ in_r_TUSER sc_in sc_lv 1 signal 3 } 
	{ in_r_TLAST sc_in sc_lv 1 signal 4 } 
	{ in_r_TID sc_in sc_lv 1 signal 5 } 
	{ in_r_TDEST sc_in sc_lv 1 signal 6 } 
	{ img_dat_address0 sc_out sc_lv 8 signal 7 } 
	{ img_dat_ce0 sc_out sc_logic 1 signal 7 } 
	{ img_dat_we0 sc_out sc_logic 1 signal 7 } 
	{ img_dat_d0 sc_out sc_lv 32 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_r_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_data_V", "role": "" }} , 
 	{ "name": "in_r_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_dest_V", "role": "D" }} , 
 	{ "name": "in_r_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_data_V", "role": "Y" }} , 
 	{ "name": "in_r_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_strb_V", "role": "" }} , 
 	{ "name": "in_r_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_keep_V", "role": "" }} , 
 	{ "name": "in_r_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_user_V", "role": "" }} , 
 	{ "name": "in_r_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_last_V", "role": "" }} , 
 	{ "name": "in_r_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_id_V", "role": "" }} , 
 	{ "name": "in_r_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_dest_V", "role": "" }} , 
 	{ "name": "img_dat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_dat", "role": "address0" }} , 
 	{ "name": "img_dat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_dat", "role": "ce0" }} , 
 	{ "name": "img_dat_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_dat", "role": "we0" }} , 
 	{ "name": "img_dat_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "img_dat", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "mnist_lstm_Loop_1_pr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "241", "EstimateLatencyMax" : "241",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "img_dat", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fdiv_32nbkb_U1", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mnist_lstm_Loop_1_pr {
		in_data_V {Type I LastRead 1 FirstWrite -1}
		in_strb_V {Type I LastRead 1 FirstWrite -1}
		in_keep_V {Type I LastRead 1 FirstWrite -1}
		in_user_V {Type I LastRead 1 FirstWrite -1}
		in_last_V {Type I LastRead 1 FirstWrite -1}
		in_id_V {Type I LastRead 1 FirstWrite -1}
		in_dest_V {Type I LastRead 1 FirstWrite -1}
		img_dat {Type O LastRead -1 FirstWrite 17}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "241", "Max" : "241"}
	, {"Name" : "Interval", "Min" : "241", "Max" : "241"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in_data_V { axis {  { in_r_TDATA in_data 0 32 }  { in_r_TREADY in_acc 1 1 } } }
	in_strb_V { axis {  { in_r_TSTRB in_data 0 4 } } }
	in_keep_V { axis {  { in_r_TKEEP in_data 0 4 } } }
	in_user_V { axis {  { in_r_TUSER in_data 0 1 } } }
	in_last_V { axis {  { in_r_TLAST in_data 0 1 } } }
	in_id_V { axis {  { in_r_TID in_data 0 1 } } }
	in_dest_V { axis {  { in_r_TVALID in_vld 0 1 }  { in_r_TDEST in_data 0 1 } } }
	img_dat { ap_memory {  { img_dat_address0 mem_address 1 8 }  { img_dat_ce0 mem_ce 1 1 }  { img_dat_we0 mem_we 1 1 }  { img_dat_d0 mem_din 1 32 } } }
}
