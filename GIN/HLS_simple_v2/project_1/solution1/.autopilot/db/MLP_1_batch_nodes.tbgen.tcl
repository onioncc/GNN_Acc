set moduleName MLP_1_batch_nodes
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {MLP_1_batch_nodes}
set C_modelType { void 0 }
set C_modelArgList {
	{ d_out int 10 regular  }
	{ mlp_1_weights_V int 32 regular {array 180000 { 1 3 } 1 1 } {global 0}  }
	{ mlp_1_bias_V int 32 regular {array 600 { 1 3 } 1 1 } {global 0}  }
	{ mlp_in_V_0 int 32 regular {array 600 { 1 3 } 1 1 } {global 0}  }
	{ mlp_out_V_0 int 32 regular {array 600 { 3 0 } 0 1 } {global 1}  }
	{ mlp_in_V_1 int 32 regular {array 600 { 1 3 } 1 1 } {global 0}  }
	{ mlp_in_V_2 int 32 regular {array 600 { 1 3 } 1 1 } {global 0}  }
	{ mlp_in_V_3 int 32 regular {array 600 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "d_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_1_weights_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mlp_1_weights.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 599,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "mlp_1_bias_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mlp_1_bias.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 599,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "mlp_in_V_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mlp_in.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2},{"low" : 0,"up" : 599,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "mlp_out_V_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mlp_out.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2},{"low" : 0,"up" : 599,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "mlp_in_V_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mlp_in.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2},{"low" : 0,"up" : 599,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "mlp_in_V_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mlp_in.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2},{"low" : 0,"up" : 599,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "mlp_in_V_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mlp_in.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 3,"up" : 3,"step" : 2},{"low" : 0,"up" : 599,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 79
set portList { 
	{ d_out sc_in sc_lv 10 signal 0 } 
	{ mlp_1_weights_V_address0 sc_out sc_lv 18 signal 1 } 
	{ mlp_1_weights_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ mlp_1_weights_V_d0 sc_out sc_lv 32 signal 1 } 
	{ mlp_1_weights_V_q0 sc_in sc_lv 32 signal 1 } 
	{ mlp_1_weights_V_we0 sc_out sc_logic 1 signal 1 } 
	{ mlp_1_weights_V_address1 sc_out sc_lv 18 signal 1 } 
	{ mlp_1_weights_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ mlp_1_weights_V_d1 sc_out sc_lv 32 signal 1 } 
	{ mlp_1_weights_V_q1 sc_in sc_lv 32 signal 1 } 
	{ mlp_1_weights_V_we1 sc_out sc_logic 1 signal 1 } 
	{ mlp_1_bias_V_address0 sc_out sc_lv 10 signal 2 } 
	{ mlp_1_bias_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ mlp_1_bias_V_d0 sc_out sc_lv 32 signal 2 } 
	{ mlp_1_bias_V_q0 sc_in sc_lv 32 signal 2 } 
	{ mlp_1_bias_V_we0 sc_out sc_logic 1 signal 2 } 
	{ mlp_1_bias_V_address1 sc_out sc_lv 10 signal 2 } 
	{ mlp_1_bias_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ mlp_1_bias_V_d1 sc_out sc_lv 32 signal 2 } 
	{ mlp_1_bias_V_q1 sc_in sc_lv 32 signal 2 } 
	{ mlp_1_bias_V_we1 sc_out sc_logic 1 signal 2 } 
	{ mlp_in_V_0_address0 sc_out sc_lv 10 signal 3 } 
	{ mlp_in_V_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ mlp_in_V_0_d0 sc_out sc_lv 32 signal 3 } 
	{ mlp_in_V_0_q0 sc_in sc_lv 32 signal 3 } 
	{ mlp_in_V_0_we0 sc_out sc_logic 1 signal 3 } 
	{ mlp_in_V_0_address1 sc_out sc_lv 10 signal 3 } 
	{ mlp_in_V_0_ce1 sc_out sc_logic 1 signal 3 } 
	{ mlp_in_V_0_d1 sc_out sc_lv 32 signal 3 } 
	{ mlp_in_V_0_q1 sc_in sc_lv 32 signal 3 } 
	{ mlp_in_V_0_we1 sc_out sc_logic 1 signal 3 } 
	{ mlp_out_V_0_address0 sc_out sc_lv 10 signal 4 } 
	{ mlp_out_V_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ mlp_out_V_0_d0 sc_out sc_lv 32 signal 4 } 
	{ mlp_out_V_0_q0 sc_in sc_lv 32 signal 4 } 
	{ mlp_out_V_0_we0 sc_out sc_logic 1 signal 4 } 
	{ mlp_out_V_0_address1 sc_out sc_lv 10 signal 4 } 
	{ mlp_out_V_0_ce1 sc_out sc_logic 1 signal 4 } 
	{ mlp_out_V_0_d1 sc_out sc_lv 32 signal 4 } 
	{ mlp_out_V_0_q1 sc_in sc_lv 32 signal 4 } 
	{ mlp_out_V_0_we1 sc_out sc_logic 1 signal 4 } 
	{ mlp_in_V_1_address0 sc_out sc_lv 10 signal 5 } 
	{ mlp_in_V_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ mlp_in_V_1_d0 sc_out sc_lv 32 signal 5 } 
	{ mlp_in_V_1_q0 sc_in sc_lv 32 signal 5 } 
	{ mlp_in_V_1_we0 sc_out sc_logic 1 signal 5 } 
	{ mlp_in_V_1_address1 sc_out sc_lv 10 signal 5 } 
	{ mlp_in_V_1_ce1 sc_out sc_logic 1 signal 5 } 
	{ mlp_in_V_1_d1 sc_out sc_lv 32 signal 5 } 
	{ mlp_in_V_1_q1 sc_in sc_lv 32 signal 5 } 
	{ mlp_in_V_1_we1 sc_out sc_logic 1 signal 5 } 
	{ mlp_in_V_2_address0 sc_out sc_lv 10 signal 6 } 
	{ mlp_in_V_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ mlp_in_V_2_d0 sc_out sc_lv 32 signal 6 } 
	{ mlp_in_V_2_q0 sc_in sc_lv 32 signal 6 } 
	{ mlp_in_V_2_we0 sc_out sc_logic 1 signal 6 } 
	{ mlp_in_V_2_address1 sc_out sc_lv 10 signal 6 } 
	{ mlp_in_V_2_ce1 sc_out sc_logic 1 signal 6 } 
	{ mlp_in_V_2_d1 sc_out sc_lv 32 signal 6 } 
	{ mlp_in_V_2_q1 sc_in sc_lv 32 signal 6 } 
	{ mlp_in_V_2_we1 sc_out sc_logic 1 signal 6 } 
	{ mlp_in_V_3_address0 sc_out sc_lv 10 signal 7 } 
	{ mlp_in_V_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ mlp_in_V_3_d0 sc_out sc_lv 32 signal 7 } 
	{ mlp_in_V_3_q0 sc_in sc_lv 32 signal 7 } 
	{ mlp_in_V_3_we0 sc_out sc_logic 1 signal 7 } 
	{ mlp_in_V_3_address1 sc_out sc_lv 10 signal 7 } 
	{ mlp_in_V_3_ce1 sc_out sc_logic 1 signal 7 } 
	{ mlp_in_V_3_d1 sc_out sc_lv 32 signal 7 } 
	{ mlp_in_V_3_q1 sc_in sc_lv 32 signal 7 } 
	{ mlp_in_V_3_we1 sc_out sc_logic 1 signal 7 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ d_out_ap_vld sc_in sc_logic 1 invld 0 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "d_out", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "d_out", "role": "default" }} , 
 	{ "name": "mlp_1_weights_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "address0" }} , 
 	{ "name": "mlp_1_weights_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "ce0" }} , 
 	{ "name": "mlp_1_weights_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "d0" }} , 
 	{ "name": "mlp_1_weights_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "q0" }} , 
 	{ "name": "mlp_1_weights_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "we0" }} , 
 	{ "name": "mlp_1_weights_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "address1" }} , 
 	{ "name": "mlp_1_weights_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "ce1" }} , 
 	{ "name": "mlp_1_weights_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "d1" }} , 
 	{ "name": "mlp_1_weights_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "q1" }} , 
 	{ "name": "mlp_1_weights_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "we1" }} , 
 	{ "name": "mlp_1_bias_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "address0" }} , 
 	{ "name": "mlp_1_bias_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "ce0" }} , 
 	{ "name": "mlp_1_bias_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "d0" }} , 
 	{ "name": "mlp_1_bias_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "q0" }} , 
 	{ "name": "mlp_1_bias_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "we0" }} , 
 	{ "name": "mlp_1_bias_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "address1" }} , 
 	{ "name": "mlp_1_bias_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "ce1" }} , 
 	{ "name": "mlp_1_bias_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "d1" }} , 
 	{ "name": "mlp_1_bias_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "q1" }} , 
 	{ "name": "mlp_1_bias_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "we1" }} , 
 	{ "name": "mlp_in_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_V_0", "role": "address0" }} , 
 	{ "name": "mlp_in_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_0", "role": "ce0" }} , 
 	{ "name": "mlp_in_V_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_0", "role": "d0" }} , 
 	{ "name": "mlp_in_V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_0", "role": "q0" }} , 
 	{ "name": "mlp_in_V_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_0", "role": "we0" }} , 
 	{ "name": "mlp_in_V_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_V_0", "role": "address1" }} , 
 	{ "name": "mlp_in_V_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_0", "role": "ce1" }} , 
 	{ "name": "mlp_in_V_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_0", "role": "d1" }} , 
 	{ "name": "mlp_in_V_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_0", "role": "q1" }} , 
 	{ "name": "mlp_in_V_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_0", "role": "we1" }} , 
 	{ "name": "mlp_out_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_out_V_0", "role": "address0" }} , 
 	{ "name": "mlp_out_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_V_0", "role": "ce0" }} , 
 	{ "name": "mlp_out_V_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_V_0", "role": "d0" }} , 
 	{ "name": "mlp_out_V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_V_0", "role": "q0" }} , 
 	{ "name": "mlp_out_V_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_V_0", "role": "we0" }} , 
 	{ "name": "mlp_out_V_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_out_V_0", "role": "address1" }} , 
 	{ "name": "mlp_out_V_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_V_0", "role": "ce1" }} , 
 	{ "name": "mlp_out_V_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_V_0", "role": "d1" }} , 
 	{ "name": "mlp_out_V_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_V_0", "role": "q1" }} , 
 	{ "name": "mlp_out_V_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_V_0", "role": "we1" }} , 
 	{ "name": "mlp_in_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_V_1", "role": "address0" }} , 
 	{ "name": "mlp_in_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_1", "role": "ce0" }} , 
 	{ "name": "mlp_in_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_1", "role": "d0" }} , 
 	{ "name": "mlp_in_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_1", "role": "q0" }} , 
 	{ "name": "mlp_in_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_1", "role": "we0" }} , 
 	{ "name": "mlp_in_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_V_1", "role": "address1" }} , 
 	{ "name": "mlp_in_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_1", "role": "ce1" }} , 
 	{ "name": "mlp_in_V_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_1", "role": "d1" }} , 
 	{ "name": "mlp_in_V_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_1", "role": "q1" }} , 
 	{ "name": "mlp_in_V_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_1", "role": "we1" }} , 
 	{ "name": "mlp_in_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_V_2", "role": "address0" }} , 
 	{ "name": "mlp_in_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_2", "role": "ce0" }} , 
 	{ "name": "mlp_in_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_2", "role": "d0" }} , 
 	{ "name": "mlp_in_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_2", "role": "q0" }} , 
 	{ "name": "mlp_in_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_2", "role": "we0" }} , 
 	{ "name": "mlp_in_V_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_V_2", "role": "address1" }} , 
 	{ "name": "mlp_in_V_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_2", "role": "ce1" }} , 
 	{ "name": "mlp_in_V_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_2", "role": "d1" }} , 
 	{ "name": "mlp_in_V_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_2", "role": "q1" }} , 
 	{ "name": "mlp_in_V_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_2", "role": "we1" }} , 
 	{ "name": "mlp_in_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_V_3", "role": "address0" }} , 
 	{ "name": "mlp_in_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_3", "role": "ce0" }} , 
 	{ "name": "mlp_in_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_3", "role": "d0" }} , 
 	{ "name": "mlp_in_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_3", "role": "q0" }} , 
 	{ "name": "mlp_in_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_3", "role": "we0" }} , 
 	{ "name": "mlp_in_V_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_V_3", "role": "address1" }} , 
 	{ "name": "mlp_in_V_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_3", "role": "ce1" }} , 
 	{ "name": "mlp_in_V_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_3", "role": "d1" }} , 
 	{ "name": "mlp_in_V_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_3", "role": "q1" }} , 
 	{ "name": "mlp_in_V_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_3", "role": "we1" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "d_out_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "d_out", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "5", "7", "10", "13", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29"],
		"CDFG" : "MLP_1_batch_nodes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "310", "EstimateLatencyMax" : "310",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "MLP_1_batch_nodes_entry45_U0"},
			{"ID" : "2", "Name" : "load_mlp_weight_vector_U0"},
			{"ID" : "4", "Name" : "MLP_1_batch_nodes_Block_split13_proc_U0"},
			{"ID" : "5", "Name" : "MLP_PE32_U0"},
			{"ID" : "7", "Name" : "MLP_PE33_U0"},
			{"ID" : "10", "Name" : "MLP_PE34_U0"},
			{"ID" : "13", "Name" : "MLP_PE35_U0"}],
		"OutputProcess" : [
			{"ID" : "5", "Name" : "MLP_PE32_U0"},
			{"ID" : "13", "Name" : "MLP_PE35_U0"}],
		"Port" : [
			{"Name" : "d_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_1_weights_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "load_mlp_weight_vector_U0", "Port" : "mlp_1_weights_V"}]},
			{"Name" : "mlp_1_bias_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "MLP_1_batch_nodes_Block_split13_proc_U0", "Port" : "mlp_1_bias_V"}]},
			{"Name" : "mlp_in_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "MLP_PE32_U0", "Port" : "mlp_in_V_0"}]},
			{"Name" : "mlp_out_V_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "MLP_PE32_U0", "Port" : "mlp_out_V_0"}]},
			{"Name" : "mlp_out_V_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "MLP_PE33_U0", "Port" : "mlp_out_V_1"}]},
			{"Name" : "mlp_in_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "MLP_PE33_U0", "Port" : "mlp_in_V_1"}]},
			{"Name" : "mlp_out_V_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "MLP_PE34_U0", "Port" : "mlp_out_V_2"}]},
			{"Name" : "mlp_in_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "MLP_PE34_U0", "Port" : "mlp_in_V_2"}]},
			{"Name" : "mlp_out_V_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "MLP_PE35_U0", "Port" : "mlp_out_V_3"}]},
			{"Name" : "mlp_in_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "MLP_PE35_U0", "Port" : "mlp_in_V_3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_1_batch_nodes_entry45_U0", "Parent" : "0",
		"CDFG" : "MLP_1_batch_nodes_entry45",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "d_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "16", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "17", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.load_mlp_weight_vector_U0", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "load_mlp_weight_vector",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "305", "EstimateLatencyMax" : "305",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_1_weight_vector", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "18", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_1_weight_vector_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "16", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "19", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_weights_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.load_mlp_weight_vector_U0.mul_mul_10ns_10ns_18_4_1_U62", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_1_batch_nodes_Block_split13_proc_U0", "Parent" : "0",
		"CDFG" : "MLP_1_batch_nodes_Block_split13_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "17", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "20", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_PE32_U0", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "MLP_PE32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_1_weight_fifo_0_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "18", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_1_weight_fifo_0_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_weight_fifo_1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "21", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_1_weight_fifo_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "20", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_V_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "19", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "22", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE32_U0.mul_32s_32s_54_1_1_U71", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_PE33_U0", "Parent" : "0", "Child" : ["8", "9"],
		"CDFG" : "MLP_PE33",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_1_weight_fifo_1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "21", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_1_weight_fifo_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_weight_fifo_2_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_1_weight_fifo_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "22", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "25", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "26", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_out_V_1", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE33_U0.mlp_out_V_1_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE33_U0.mul_32s_32s_54_1_1_U81", "Parent" : "7"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_PE34_U0", "Parent" : "0", "Child" : ["11", "12"],
		"CDFG" : "MLP_PE34",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_1_weight_fifo_2_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_1_weight_fifo_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_weight_fifo_3_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "27", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_1_weight_fifo_3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "25", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "26", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_out_V_2", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE34_U0.mlp_out_V_2_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE34_U0.mul_32s_32s_54_1_1_U90", "Parent" : "10"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_PE35_U0", "Parent" : "0", "Child" : ["14", "15"],
		"CDFG" : "MLP_PE35",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_1_weight_fifo_3_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "27", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_1_weight_fifo_3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_out_V_3", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE35_U0.mlp_out_V_3_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE35_U0.mul_32s_32s_54_1_1_U98", "Parent" : "13"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c14_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_1_weight_fifo_0_V_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c15_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_1_bias_V_load_loc_c_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_1_weight_fifo_1_V_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_1_bias_V_load_loc_c16_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c17_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_1_weight_fifo_2_V_V_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_1_bias_V_load_loc_c18_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c19_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_1_weight_fifo_3_V_V_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_1_bias_V_load_loc_c20_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c21_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MLP_1_batch_nodes {
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_weights_V {Type I LastRead 4 FirstWrite -1}
		mlp_1_bias_V {Type I LastRead 0 FirstWrite -1}
		mlp_in_V_0 {Type I LastRead 1 FirstWrite -1}
		mlp_out_V_0 {Type O LastRead -1 FirstWrite 2}
		mlp_out_V_1 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_1 {Type I LastRead 1 FirstWrite -1}
		mlp_out_V_2 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_2 {Type I LastRead 1 FirstWrite -1}
		mlp_out_V_3 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_3 {Type I LastRead 1 FirstWrite -1}}
	MLP_1_batch_nodes_entry45 {
		d_out {Type I LastRead 0 FirstWrite -1}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		d_out_out1 {Type O LastRead -1 FirstWrite 0}}
	load_mlp_weight_vector {
		mlp_1_weight_vector {Type O LastRead -1 FirstWrite 5}
		d_out {Type I LastRead 0 FirstWrite -1}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		mlp_1_weights_V {Type I LastRead 4 FirstWrite -1}}
	MLP_1_batch_nodes_Block_split13_proc {
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_out_out {Type O LastRead -1 FirstWrite 1}
		mlp_1_bias_V {Type I LastRead 0 FirstWrite -1}}
	MLP_PE32 {
		mlp_1_weight_fifo_0_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_1_weight_fifo_1_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_V_0 {Type I LastRead 1 FirstWrite -1}
		mlp_out_V_0 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE33 {
		mlp_1_weight_fifo_1_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_1_weight_fifo_2_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_V_1 {Type I LastRead 1 FirstWrite -1}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		mlp_out_V_1 {Type O LastRead -1 FirstWrite -1}}
	MLP_PE34 {
		mlp_1_weight_fifo_2_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_1_weight_fifo_3_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_V_2 {Type I LastRead 1 FirstWrite -1}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		mlp_out_V_2 {Type O LastRead -1 FirstWrite -1}}
	MLP_PE35 {
		mlp_1_weight_fifo_3_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_V_3 {Type I LastRead 1 FirstWrite -1}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_out_V_3 {Type O LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "310", "Max" : "310"}
	, {"Name" : "Interval", "Min" : "306", "Max" : "306"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	d_out { ap_none {  { d_out in_data 0 10 }  { d_out_ap_vld in_vld 0 1 } } }
	mlp_1_weights_V { ap_memory {  { mlp_1_weights_V_address0 mem_address 1 18 }  { mlp_1_weights_V_ce0 mem_ce 1 1 }  { mlp_1_weights_V_d0 mem_din 1 32 }  { mlp_1_weights_V_q0 mem_dout 0 32 }  { mlp_1_weights_V_we0 mem_we 1 1 }  { mlp_1_weights_V_address1 mem_address 1 18 }  { mlp_1_weights_V_ce1 mem_ce 1 1 }  { mlp_1_weights_V_d1 mem_din 1 32 }  { mlp_1_weights_V_q1 mem_dout 0 32 }  { mlp_1_weights_V_we1 mem_we 1 1 } } }
	mlp_1_bias_V { ap_memory {  { mlp_1_bias_V_address0 mem_address 1 10 }  { mlp_1_bias_V_ce0 mem_ce 1 1 }  { mlp_1_bias_V_d0 mem_din 1 32 }  { mlp_1_bias_V_q0 mem_dout 0 32 }  { mlp_1_bias_V_we0 mem_we 1 1 }  { mlp_1_bias_V_address1 mem_address 1 10 }  { mlp_1_bias_V_ce1 mem_ce 1 1 }  { mlp_1_bias_V_d1 mem_din 1 32 }  { mlp_1_bias_V_q1 mem_dout 0 32 }  { mlp_1_bias_V_we1 mem_we 1 1 } } }
	mlp_in_V_0 { ap_memory {  { mlp_in_V_0_address0 mem_address 1 10 }  { mlp_in_V_0_ce0 mem_ce 1 1 }  { mlp_in_V_0_d0 mem_din 1 32 }  { mlp_in_V_0_q0 mem_dout 0 32 }  { mlp_in_V_0_we0 mem_we 1 1 }  { mlp_in_V_0_address1 mem_address 1 10 }  { mlp_in_V_0_ce1 mem_ce 1 1 }  { mlp_in_V_0_d1 mem_din 1 32 }  { mlp_in_V_0_q1 mem_dout 0 32 }  { mlp_in_V_0_we1 mem_we 1 1 } } }
	mlp_out_V_0 { ap_memory {  { mlp_out_V_0_address0 mem_address 1 10 }  { mlp_out_V_0_ce0 mem_ce 1 1 }  { mlp_out_V_0_d0 mem_din 1 32 }  { mlp_out_V_0_q0 mem_dout 0 32 }  { mlp_out_V_0_we0 mem_we 1 1 }  { mlp_out_V_0_address1 MemPortADDR2 1 10 }  { mlp_out_V_0_ce1 MemPortCE2 1 1 }  { mlp_out_V_0_d1 MemPortDIN2 1 32 }  { mlp_out_V_0_q1 mem_dout 0 32 }  { mlp_out_V_0_we1 MemPortWE2 1 1 } } }
	mlp_in_V_1 { ap_memory {  { mlp_in_V_1_address0 mem_address 1 10 }  { mlp_in_V_1_ce0 mem_ce 1 1 }  { mlp_in_V_1_d0 mem_din 1 32 }  { mlp_in_V_1_q0 mem_dout 0 32 }  { mlp_in_V_1_we0 mem_we 1 1 }  { mlp_in_V_1_address1 mem_address 1 10 }  { mlp_in_V_1_ce1 mem_ce 1 1 }  { mlp_in_V_1_d1 mem_din 1 32 }  { mlp_in_V_1_q1 mem_dout 0 32 }  { mlp_in_V_1_we1 mem_we 1 1 } } }
	mlp_in_V_2 { ap_memory {  { mlp_in_V_2_address0 mem_address 1 10 }  { mlp_in_V_2_ce0 mem_ce 1 1 }  { mlp_in_V_2_d0 mem_din 1 32 }  { mlp_in_V_2_q0 mem_dout 0 32 }  { mlp_in_V_2_we0 mem_we 1 1 }  { mlp_in_V_2_address1 mem_address 1 10 }  { mlp_in_V_2_ce1 mem_ce 1 1 }  { mlp_in_V_2_d1 mem_din 1 32 }  { mlp_in_V_2_q1 mem_dout 0 32 }  { mlp_in_V_2_we1 mem_we 1 1 } } }
	mlp_in_V_3 { ap_memory {  { mlp_in_V_3_address0 mem_address 1 10 }  { mlp_in_V_3_ce0 mem_ce 1 1 }  { mlp_in_V_3_d0 mem_din 1 32 }  { mlp_in_V_3_q0 mem_dout 0 32 }  { mlp_in_V_3_we0 mem_we 1 1 }  { mlp_in_V_3_address1 mem_address 1 10 }  { mlp_in_V_3_ce1 mem_ce 1 1 }  { mlp_in_V_3_d1 mem_din 1 32 }  { mlp_in_V_3_q1 mem_dout 0 32 }  { mlp_in_V_3_we1 mem_we 1 1 } } }
}
set moduleName MLP_1_batch_nodes
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {MLP_1_batch_nodes}
set C_modelType { void 0 }
set C_modelArgList {
	{ d_out int 10 regular  }
	{ mlp_1_weights_V int 32 regular {array 180000 { 1 3 } 1 1 } {global 0}  }
	{ mlp_1_bias_V int 32 regular {array 600 { 1 3 } 1 1 } {global 0}  }
	{ mlp_in_V_0 int 32 regular {array 600 { 1 3 } 1 1 } {global 0}  }
	{ mlp_out_V_0 int 32 regular {array 600 { 3 0 } 0 1 } {global 1}  }
	{ mlp_in_V_1 int 32 regular {array 600 { 1 3 } 1 1 } {global 0}  }
	{ mlp_in_V_2 int 32 regular {array 600 { 1 3 } 1 1 } {global 0}  }
	{ mlp_in_V_3 int 32 regular {array 600 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "d_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_1_weights_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mlp_1_weights.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 599,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "mlp_1_bias_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mlp_1_bias.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 599,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "mlp_in_V_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mlp_in.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2},{"low" : 0,"up" : 599,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "mlp_out_V_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mlp_out.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2},{"low" : 0,"up" : 599,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "mlp_in_V_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mlp_in.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2},{"low" : 0,"up" : 599,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "mlp_in_V_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mlp_in.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2},{"low" : 0,"up" : 599,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "mlp_in_V_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mlp_in.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 3,"up" : 3,"step" : 2},{"low" : 0,"up" : 599,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 79
set portList { 
	{ d_out sc_in sc_lv 10 signal 0 } 
	{ mlp_1_weights_V_address0 sc_out sc_lv 18 signal 1 } 
	{ mlp_1_weights_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ mlp_1_weights_V_d0 sc_out sc_lv 32 signal 1 } 
	{ mlp_1_weights_V_q0 sc_in sc_lv 32 signal 1 } 
	{ mlp_1_weights_V_we0 sc_out sc_logic 1 signal 1 } 
	{ mlp_1_weights_V_address1 sc_out sc_lv 18 signal 1 } 
	{ mlp_1_weights_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ mlp_1_weights_V_d1 sc_out sc_lv 32 signal 1 } 
	{ mlp_1_weights_V_q1 sc_in sc_lv 32 signal 1 } 
	{ mlp_1_weights_V_we1 sc_out sc_logic 1 signal 1 } 
	{ mlp_1_bias_V_address0 sc_out sc_lv 10 signal 2 } 
	{ mlp_1_bias_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ mlp_1_bias_V_d0 sc_out sc_lv 32 signal 2 } 
	{ mlp_1_bias_V_q0 sc_in sc_lv 32 signal 2 } 
	{ mlp_1_bias_V_we0 sc_out sc_logic 1 signal 2 } 
	{ mlp_1_bias_V_address1 sc_out sc_lv 10 signal 2 } 
	{ mlp_1_bias_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ mlp_1_bias_V_d1 sc_out sc_lv 32 signal 2 } 
	{ mlp_1_bias_V_q1 sc_in sc_lv 32 signal 2 } 
	{ mlp_1_bias_V_we1 sc_out sc_logic 1 signal 2 } 
	{ mlp_in_V_0_address0 sc_out sc_lv 10 signal 3 } 
	{ mlp_in_V_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ mlp_in_V_0_d0 sc_out sc_lv 32 signal 3 } 
	{ mlp_in_V_0_q0 sc_in sc_lv 32 signal 3 } 
	{ mlp_in_V_0_we0 sc_out sc_logic 1 signal 3 } 
	{ mlp_in_V_0_address1 sc_out sc_lv 10 signal 3 } 
	{ mlp_in_V_0_ce1 sc_out sc_logic 1 signal 3 } 
	{ mlp_in_V_0_d1 sc_out sc_lv 32 signal 3 } 
	{ mlp_in_V_0_q1 sc_in sc_lv 32 signal 3 } 
	{ mlp_in_V_0_we1 sc_out sc_logic 1 signal 3 } 
	{ mlp_out_V_0_address0 sc_out sc_lv 10 signal 4 } 
	{ mlp_out_V_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ mlp_out_V_0_d0 sc_out sc_lv 32 signal 4 } 
	{ mlp_out_V_0_q0 sc_in sc_lv 32 signal 4 } 
	{ mlp_out_V_0_we0 sc_out sc_logic 1 signal 4 } 
	{ mlp_out_V_0_address1 sc_out sc_lv 10 signal 4 } 
	{ mlp_out_V_0_ce1 sc_out sc_logic 1 signal 4 } 
	{ mlp_out_V_0_d1 sc_out sc_lv 32 signal 4 } 
	{ mlp_out_V_0_q1 sc_in sc_lv 32 signal 4 } 
	{ mlp_out_V_0_we1 sc_out sc_logic 1 signal 4 } 
	{ mlp_in_V_1_address0 sc_out sc_lv 10 signal 5 } 
	{ mlp_in_V_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ mlp_in_V_1_d0 sc_out sc_lv 32 signal 5 } 
	{ mlp_in_V_1_q0 sc_in sc_lv 32 signal 5 } 
	{ mlp_in_V_1_we0 sc_out sc_logic 1 signal 5 } 
	{ mlp_in_V_1_address1 sc_out sc_lv 10 signal 5 } 
	{ mlp_in_V_1_ce1 sc_out sc_logic 1 signal 5 } 
	{ mlp_in_V_1_d1 sc_out sc_lv 32 signal 5 } 
	{ mlp_in_V_1_q1 sc_in sc_lv 32 signal 5 } 
	{ mlp_in_V_1_we1 sc_out sc_logic 1 signal 5 } 
	{ mlp_in_V_2_address0 sc_out sc_lv 10 signal 6 } 
	{ mlp_in_V_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ mlp_in_V_2_d0 sc_out sc_lv 32 signal 6 } 
	{ mlp_in_V_2_q0 sc_in sc_lv 32 signal 6 } 
	{ mlp_in_V_2_we0 sc_out sc_logic 1 signal 6 } 
	{ mlp_in_V_2_address1 sc_out sc_lv 10 signal 6 } 
	{ mlp_in_V_2_ce1 sc_out sc_logic 1 signal 6 } 
	{ mlp_in_V_2_d1 sc_out sc_lv 32 signal 6 } 
	{ mlp_in_V_2_q1 sc_in sc_lv 32 signal 6 } 
	{ mlp_in_V_2_we1 sc_out sc_logic 1 signal 6 } 
	{ mlp_in_V_3_address0 sc_out sc_lv 10 signal 7 } 
	{ mlp_in_V_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ mlp_in_V_3_d0 sc_out sc_lv 32 signal 7 } 
	{ mlp_in_V_3_q0 sc_in sc_lv 32 signal 7 } 
	{ mlp_in_V_3_we0 sc_out sc_logic 1 signal 7 } 
	{ mlp_in_V_3_address1 sc_out sc_lv 10 signal 7 } 
	{ mlp_in_V_3_ce1 sc_out sc_logic 1 signal 7 } 
	{ mlp_in_V_3_d1 sc_out sc_lv 32 signal 7 } 
	{ mlp_in_V_3_q1 sc_in sc_lv 32 signal 7 } 
	{ mlp_in_V_3_we1 sc_out sc_logic 1 signal 7 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ d_out_ap_vld sc_in sc_logic 1 invld 0 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "d_out", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "d_out", "role": "default" }} , 
 	{ "name": "mlp_1_weights_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "address0" }} , 
 	{ "name": "mlp_1_weights_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "ce0" }} , 
 	{ "name": "mlp_1_weights_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "d0" }} , 
 	{ "name": "mlp_1_weights_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "q0" }} , 
 	{ "name": "mlp_1_weights_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "we0" }} , 
 	{ "name": "mlp_1_weights_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "address1" }} , 
 	{ "name": "mlp_1_weights_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "ce1" }} , 
 	{ "name": "mlp_1_weights_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "d1" }} , 
 	{ "name": "mlp_1_weights_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "q1" }} , 
 	{ "name": "mlp_1_weights_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "we1" }} , 
 	{ "name": "mlp_1_bias_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "address0" }} , 
 	{ "name": "mlp_1_bias_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "ce0" }} , 
 	{ "name": "mlp_1_bias_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "d0" }} , 
 	{ "name": "mlp_1_bias_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "q0" }} , 
 	{ "name": "mlp_1_bias_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "we0" }} , 
 	{ "name": "mlp_1_bias_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "address1" }} , 
 	{ "name": "mlp_1_bias_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "ce1" }} , 
 	{ "name": "mlp_1_bias_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "d1" }} , 
 	{ "name": "mlp_1_bias_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "q1" }} , 
 	{ "name": "mlp_1_bias_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "we1" }} , 
 	{ "name": "mlp_in_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_V_0", "role": "address0" }} , 
 	{ "name": "mlp_in_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_0", "role": "ce0" }} , 
 	{ "name": "mlp_in_V_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_0", "role": "d0" }} , 
 	{ "name": "mlp_in_V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_0", "role": "q0" }} , 
 	{ "name": "mlp_in_V_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_0", "role": "we0" }} , 
 	{ "name": "mlp_in_V_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_V_0", "role": "address1" }} , 
 	{ "name": "mlp_in_V_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_0", "role": "ce1" }} , 
 	{ "name": "mlp_in_V_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_0", "role": "d1" }} , 
 	{ "name": "mlp_in_V_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_0", "role": "q1" }} , 
 	{ "name": "mlp_in_V_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_0", "role": "we1" }} , 
 	{ "name": "mlp_out_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_out_V_0", "role": "address0" }} , 
 	{ "name": "mlp_out_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_V_0", "role": "ce0" }} , 
 	{ "name": "mlp_out_V_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_V_0", "role": "d0" }} , 
 	{ "name": "mlp_out_V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_V_0", "role": "q0" }} , 
 	{ "name": "mlp_out_V_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_V_0", "role": "we0" }} , 
 	{ "name": "mlp_out_V_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_out_V_0", "role": "address1" }} , 
 	{ "name": "mlp_out_V_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_V_0", "role": "ce1" }} , 
 	{ "name": "mlp_out_V_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_V_0", "role": "d1" }} , 
 	{ "name": "mlp_out_V_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_V_0", "role": "q1" }} , 
 	{ "name": "mlp_out_V_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_V_0", "role": "we1" }} , 
 	{ "name": "mlp_in_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_V_1", "role": "address0" }} , 
 	{ "name": "mlp_in_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_1", "role": "ce0" }} , 
 	{ "name": "mlp_in_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_1", "role": "d0" }} , 
 	{ "name": "mlp_in_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_1", "role": "q0" }} , 
 	{ "name": "mlp_in_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_1", "role": "we0" }} , 
 	{ "name": "mlp_in_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_V_1", "role": "address1" }} , 
 	{ "name": "mlp_in_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_1", "role": "ce1" }} , 
 	{ "name": "mlp_in_V_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_1", "role": "d1" }} , 
 	{ "name": "mlp_in_V_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_1", "role": "q1" }} , 
 	{ "name": "mlp_in_V_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_1", "role": "we1" }} , 
 	{ "name": "mlp_in_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_V_2", "role": "address0" }} , 
 	{ "name": "mlp_in_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_2", "role": "ce0" }} , 
 	{ "name": "mlp_in_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_2", "role": "d0" }} , 
 	{ "name": "mlp_in_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_2", "role": "q0" }} , 
 	{ "name": "mlp_in_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_2", "role": "we0" }} , 
 	{ "name": "mlp_in_V_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_V_2", "role": "address1" }} , 
 	{ "name": "mlp_in_V_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_2", "role": "ce1" }} , 
 	{ "name": "mlp_in_V_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_2", "role": "d1" }} , 
 	{ "name": "mlp_in_V_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_2", "role": "q1" }} , 
 	{ "name": "mlp_in_V_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_2", "role": "we1" }} , 
 	{ "name": "mlp_in_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_V_3", "role": "address0" }} , 
 	{ "name": "mlp_in_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_3", "role": "ce0" }} , 
 	{ "name": "mlp_in_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_3", "role": "d0" }} , 
 	{ "name": "mlp_in_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_3", "role": "q0" }} , 
 	{ "name": "mlp_in_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_3", "role": "we0" }} , 
 	{ "name": "mlp_in_V_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_V_3", "role": "address1" }} , 
 	{ "name": "mlp_in_V_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_3", "role": "ce1" }} , 
 	{ "name": "mlp_in_V_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_3", "role": "d1" }} , 
 	{ "name": "mlp_in_V_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_3", "role": "q1" }} , 
 	{ "name": "mlp_in_V_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_3", "role": "we1" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "d_out_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "d_out", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "5", "7", "10", "13", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29"],
		"CDFG" : "MLP_1_batch_nodes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "310", "EstimateLatencyMax" : "310",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "MLP_1_batch_nodes_entry45_U0"},
			{"ID" : "2", "Name" : "load_mlp_weight_vector_U0"},
			{"ID" : "4", "Name" : "MLP_1_batch_nodes_Block_split13_proc_U0"},
			{"ID" : "5", "Name" : "MLP_PE32_U0"},
			{"ID" : "7", "Name" : "MLP_PE33_U0"},
			{"ID" : "10", "Name" : "MLP_PE34_U0"},
			{"ID" : "13", "Name" : "MLP_PE35_U0"}],
		"OutputProcess" : [
			{"ID" : "5", "Name" : "MLP_PE32_U0"},
			{"ID" : "13", "Name" : "MLP_PE35_U0"}],
		"Port" : [
			{"Name" : "d_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_1_weights_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "load_mlp_weight_vector_U0", "Port" : "mlp_1_weights_V"}]},
			{"Name" : "mlp_1_bias_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "MLP_1_batch_nodes_Block_split13_proc_U0", "Port" : "mlp_1_bias_V"}]},
			{"Name" : "mlp_in_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "MLP_PE32_U0", "Port" : "mlp_in_V_0"}]},
			{"Name" : "mlp_out_V_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "MLP_PE32_U0", "Port" : "mlp_out_V_0"}]},
			{"Name" : "mlp_out_V_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "MLP_PE33_U0", "Port" : "mlp_out_V_1"}]},
			{"Name" : "mlp_in_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "MLP_PE33_U0", "Port" : "mlp_in_V_1"}]},
			{"Name" : "mlp_out_V_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "MLP_PE34_U0", "Port" : "mlp_out_V_2"}]},
			{"Name" : "mlp_in_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "MLP_PE34_U0", "Port" : "mlp_in_V_2"}]},
			{"Name" : "mlp_out_V_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "MLP_PE35_U0", "Port" : "mlp_out_V_3"}]},
			{"Name" : "mlp_in_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "MLP_PE35_U0", "Port" : "mlp_in_V_3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_1_batch_nodes_entry45_U0", "Parent" : "0",
		"CDFG" : "MLP_1_batch_nodes_entry45",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "d_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "16", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "17", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.load_mlp_weight_vector_U0", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "load_mlp_weight_vector",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "305", "EstimateLatencyMax" : "305",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_1_weight_vector", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "18", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_1_weight_vector_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "16", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "19", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_weights_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.load_mlp_weight_vector_U0.mul_mul_10ns_10ns_18_4_1_U62", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_1_batch_nodes_Block_split13_proc_U0", "Parent" : "0",
		"CDFG" : "MLP_1_batch_nodes_Block_split13_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "17", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "20", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_PE32_U0", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "MLP_PE32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_1_weight_fifo_0_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "18", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_1_weight_fifo_0_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_weight_fifo_1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "21", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_1_weight_fifo_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "20", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_V_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "19", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "22", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE32_U0.mul_32s_32s_54_1_1_U71", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_PE33_U0", "Parent" : "0", "Child" : ["8", "9"],
		"CDFG" : "MLP_PE33",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_1_weight_fifo_1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "21", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_1_weight_fifo_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_weight_fifo_2_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_1_weight_fifo_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "22", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "25", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "26", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_out_V_1", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE33_U0.mlp_out_V_1_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE33_U0.mul_32s_32s_54_1_1_U81", "Parent" : "7"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_PE34_U0", "Parent" : "0", "Child" : ["11", "12"],
		"CDFG" : "MLP_PE34",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_1_weight_fifo_2_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_1_weight_fifo_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_weight_fifo_3_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "27", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_1_weight_fifo_3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "25", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "26", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_out_V_2", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE34_U0.mlp_out_V_2_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE34_U0.mul_32s_32s_54_1_1_U90", "Parent" : "10"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_PE35_U0", "Parent" : "0", "Child" : ["14", "15"],
		"CDFG" : "MLP_PE35",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_1_weight_fifo_3_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "27", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_1_weight_fifo_3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_out_V_3", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE35_U0.mlp_out_V_3_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE35_U0.mul_32s_32s_54_1_1_U98", "Parent" : "13"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c14_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_1_weight_fifo_0_V_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c15_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_1_bias_V_load_loc_c_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_1_weight_fifo_1_V_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_1_bias_V_load_loc_c16_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c17_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_1_weight_fifo_2_V_V_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_1_bias_V_load_loc_c18_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c19_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_1_weight_fifo_3_V_V_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_1_bias_V_load_loc_c20_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c21_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MLP_1_batch_nodes {
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_weights_V {Type I LastRead 4 FirstWrite -1}
		mlp_1_bias_V {Type I LastRead 0 FirstWrite -1}
		mlp_in_V_0 {Type I LastRead 1 FirstWrite -1}
		mlp_out_V_0 {Type O LastRead -1 FirstWrite 2}
		mlp_out_V_1 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_1 {Type I LastRead 1 FirstWrite -1}
		mlp_out_V_2 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_2 {Type I LastRead 1 FirstWrite -1}
		mlp_out_V_3 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_3 {Type I LastRead 1 FirstWrite -1}}
	MLP_1_batch_nodes_entry45 {
		d_out {Type I LastRead 0 FirstWrite -1}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		d_out_out1 {Type O LastRead -1 FirstWrite 0}}
	load_mlp_weight_vector {
		mlp_1_weight_vector {Type O LastRead -1 FirstWrite 5}
		d_out {Type I LastRead 0 FirstWrite -1}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		mlp_1_weights_V {Type I LastRead 4 FirstWrite -1}}
	MLP_1_batch_nodes_Block_split13_proc {
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_out_out {Type O LastRead -1 FirstWrite 1}
		mlp_1_bias_V {Type I LastRead 0 FirstWrite -1}}
	MLP_PE32 {
		mlp_1_weight_fifo_0_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_1_weight_fifo_1_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_V_0 {Type I LastRead 1 FirstWrite -1}
		mlp_out_V_0 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE33 {
		mlp_1_weight_fifo_1_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_1_weight_fifo_2_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_V_1 {Type I LastRead 1 FirstWrite -1}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		mlp_out_V_1 {Type O LastRead -1 FirstWrite -1}}
	MLP_PE34 {
		mlp_1_weight_fifo_2_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_1_weight_fifo_3_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_V_2 {Type I LastRead 1 FirstWrite -1}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		mlp_out_V_2 {Type O LastRead -1 FirstWrite -1}}
	MLP_PE35 {
		mlp_1_weight_fifo_3_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_V_3 {Type I LastRead 1 FirstWrite -1}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_out_V_3 {Type O LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "310", "Max" : "310"}
	, {"Name" : "Interval", "Min" : "306", "Max" : "306"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	d_out { ap_none {  { d_out in_data 0 10 }  { d_out_ap_vld in_vld 0 1 } } }
	mlp_1_weights_V { ap_memory {  { mlp_1_weights_V_address0 mem_address 1 18 }  { mlp_1_weights_V_ce0 mem_ce 1 1 }  { mlp_1_weights_V_d0 mem_din 1 32 }  { mlp_1_weights_V_q0 mem_dout 0 32 }  { mlp_1_weights_V_we0 mem_we 1 1 }  { mlp_1_weights_V_address1 mem_address 1 18 }  { mlp_1_weights_V_ce1 mem_ce 1 1 }  { mlp_1_weights_V_d1 mem_din 1 32 }  { mlp_1_weights_V_q1 mem_dout 0 32 }  { mlp_1_weights_V_we1 mem_we 1 1 } } }
	mlp_1_bias_V { ap_memory {  { mlp_1_bias_V_address0 mem_address 1 10 }  { mlp_1_bias_V_ce0 mem_ce 1 1 }  { mlp_1_bias_V_d0 mem_din 1 32 }  { mlp_1_bias_V_q0 mem_dout 0 32 }  { mlp_1_bias_V_we0 mem_we 1 1 }  { mlp_1_bias_V_address1 mem_address 1 10 }  { mlp_1_bias_V_ce1 mem_ce 1 1 }  { mlp_1_bias_V_d1 mem_din 1 32 }  { mlp_1_bias_V_q1 mem_dout 0 32 }  { mlp_1_bias_V_we1 mem_we 1 1 } } }
	mlp_in_V_0 { ap_memory {  { mlp_in_V_0_address0 mem_address 1 10 }  { mlp_in_V_0_ce0 mem_ce 1 1 }  { mlp_in_V_0_d0 mem_din 1 32 }  { mlp_in_V_0_q0 mem_dout 0 32 }  { mlp_in_V_0_we0 mem_we 1 1 }  { mlp_in_V_0_address1 mem_address 1 10 }  { mlp_in_V_0_ce1 mem_ce 1 1 }  { mlp_in_V_0_d1 mem_din 1 32 }  { mlp_in_V_0_q1 mem_dout 0 32 }  { mlp_in_V_0_we1 mem_we 1 1 } } }
	mlp_out_V_0 { ap_memory {  { mlp_out_V_0_address0 mem_address 1 10 }  { mlp_out_V_0_ce0 mem_ce 1 1 }  { mlp_out_V_0_d0 mem_din 1 32 }  { mlp_out_V_0_q0 mem_dout 0 32 }  { mlp_out_V_0_we0 mem_we 1 1 }  { mlp_out_V_0_address1 MemPortADDR2 1 10 }  { mlp_out_V_0_ce1 MemPortCE2 1 1 }  { mlp_out_V_0_d1 MemPortDIN2 1 32 }  { mlp_out_V_0_q1 mem_dout 0 32 }  { mlp_out_V_0_we1 MemPortWE2 1 1 } } }
	mlp_in_V_1 { ap_memory {  { mlp_in_V_1_address0 mem_address 1 10 }  { mlp_in_V_1_ce0 mem_ce 1 1 }  { mlp_in_V_1_d0 mem_din 1 32 }  { mlp_in_V_1_q0 mem_dout 0 32 }  { mlp_in_V_1_we0 mem_we 1 1 }  { mlp_in_V_1_address1 mem_address 1 10 }  { mlp_in_V_1_ce1 mem_ce 1 1 }  { mlp_in_V_1_d1 mem_din 1 32 }  { mlp_in_V_1_q1 mem_dout 0 32 }  { mlp_in_V_1_we1 mem_we 1 1 } } }
	mlp_in_V_2 { ap_memory {  { mlp_in_V_2_address0 mem_address 1 10 }  { mlp_in_V_2_ce0 mem_ce 1 1 }  { mlp_in_V_2_d0 mem_din 1 32 }  { mlp_in_V_2_q0 mem_dout 0 32 }  { mlp_in_V_2_we0 mem_we 1 1 }  { mlp_in_V_2_address1 mem_address 1 10 }  { mlp_in_V_2_ce1 mem_ce 1 1 }  { mlp_in_V_2_d1 mem_din 1 32 }  { mlp_in_V_2_q1 mem_dout 0 32 }  { mlp_in_V_2_we1 mem_we 1 1 } } }
	mlp_in_V_3 { ap_memory {  { mlp_in_V_3_address0 mem_address 1 10 }  { mlp_in_V_3_ce0 mem_ce 1 1 }  { mlp_in_V_3_d0 mem_din 1 32 }  { mlp_in_V_3_q0 mem_dout 0 32 }  { mlp_in_V_3_we0 mem_we 1 1 }  { mlp_in_V_3_address1 mem_address 1 10 }  { mlp_in_V_3_ce1 mem_ce 1 1 }  { mlp_in_V_3_d1 mem_din 1 32 }  { mlp_in_V_3_q1 mem_dout 0 32 }  { mlp_in_V_3_we1 mem_we 1 1 } } }
}
set moduleName MLP_1_batch_nodes
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {MLP_1_batch_nodes}
set C_modelType { void 0 }
set C_modelArgList {
	{ mlp_in_local int 32 regular {array 600 { 1 3 } 1 1 }  }
	{ mlp_in_local1 int 32 regular {array 600 { 1 3 } 1 1 }  }
	{ mlp_in_local2 int 32 regular {array 600 { 1 3 } 1 1 }  }
	{ mlp_in_local3 int 32 regular {array 600 { 1 3 } 1 1 }  }
	{ mlp_out_local int 31 regular {pointer 1}  }
	{ mlp_out_local4 int 31 regular {pointer 1}  }
	{ mlp_out_local5 int 31 regular {pointer 1}  }
	{ mlp_out_local6 int 31 regular {pointer 1}  }
	{ d_out int 10 regular  }
	{ mlp_1_weights_V int 32 regular {array 180000 { 1 3 } 1 1 } {global 0}  }
	{ mlp_1_bias_V int 32 regular {array 600 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mlp_in_local", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_in_local1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_in_local2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_in_local3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_out_local", "interface" : "wire", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mlp_out_local4", "interface" : "wire", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mlp_out_local5", "interface" : "wire", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mlp_out_local6", "interface" : "wire", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_out", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_1_weights_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mlp_1_weights.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 599,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "mlp_1_bias_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mlp_1_bias.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 599,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 77
set portList { 
	{ mlp_in_local_address0 sc_out sc_lv 10 signal 0 } 
	{ mlp_in_local_ce0 sc_out sc_logic 1 signal 0 } 
	{ mlp_in_local_d0 sc_out sc_lv 32 signal 0 } 
	{ mlp_in_local_q0 sc_in sc_lv 32 signal 0 } 
	{ mlp_in_local_we0 sc_out sc_logic 1 signal 0 } 
	{ mlp_in_local_address1 sc_out sc_lv 10 signal 0 } 
	{ mlp_in_local_ce1 sc_out sc_logic 1 signal 0 } 
	{ mlp_in_local_d1 sc_out sc_lv 32 signal 0 } 
	{ mlp_in_local_q1 sc_in sc_lv 32 signal 0 } 
	{ mlp_in_local_we1 sc_out sc_logic 1 signal 0 } 
	{ mlp_in_local1_address0 sc_out sc_lv 10 signal 1 } 
	{ mlp_in_local1_ce0 sc_out sc_logic 1 signal 1 } 
	{ mlp_in_local1_d0 sc_out sc_lv 32 signal 1 } 
	{ mlp_in_local1_q0 sc_in sc_lv 32 signal 1 } 
	{ mlp_in_local1_we0 sc_out sc_logic 1 signal 1 } 
	{ mlp_in_local1_address1 sc_out sc_lv 10 signal 1 } 
	{ mlp_in_local1_ce1 sc_out sc_logic 1 signal 1 } 
	{ mlp_in_local1_d1 sc_out sc_lv 32 signal 1 } 
	{ mlp_in_local1_q1 sc_in sc_lv 32 signal 1 } 
	{ mlp_in_local1_we1 sc_out sc_logic 1 signal 1 } 
	{ mlp_in_local2_address0 sc_out sc_lv 10 signal 2 } 
	{ mlp_in_local2_ce0 sc_out sc_logic 1 signal 2 } 
	{ mlp_in_local2_d0 sc_out sc_lv 32 signal 2 } 
	{ mlp_in_local2_q0 sc_in sc_lv 32 signal 2 } 
	{ mlp_in_local2_we0 sc_out sc_logic 1 signal 2 } 
	{ mlp_in_local2_address1 sc_out sc_lv 10 signal 2 } 
	{ mlp_in_local2_ce1 sc_out sc_logic 1 signal 2 } 
	{ mlp_in_local2_d1 sc_out sc_lv 32 signal 2 } 
	{ mlp_in_local2_q1 sc_in sc_lv 32 signal 2 } 
	{ mlp_in_local2_we1 sc_out sc_logic 1 signal 2 } 
	{ mlp_in_local3_address0 sc_out sc_lv 10 signal 3 } 
	{ mlp_in_local3_ce0 sc_out sc_logic 1 signal 3 } 
	{ mlp_in_local3_d0 sc_out sc_lv 32 signal 3 } 
	{ mlp_in_local3_q0 sc_in sc_lv 32 signal 3 } 
	{ mlp_in_local3_we0 sc_out sc_logic 1 signal 3 } 
	{ mlp_in_local3_address1 sc_out sc_lv 10 signal 3 } 
	{ mlp_in_local3_ce1 sc_out sc_logic 1 signal 3 } 
	{ mlp_in_local3_d1 sc_out sc_lv 32 signal 3 } 
	{ mlp_in_local3_q1 sc_in sc_lv 32 signal 3 } 
	{ mlp_in_local3_we1 sc_out sc_logic 1 signal 3 } 
	{ mlp_out_local sc_out sc_lv 31 signal 4 } 
	{ mlp_out_local4 sc_out sc_lv 31 signal 5 } 
	{ mlp_out_local5 sc_out sc_lv 31 signal 6 } 
	{ mlp_out_local6 sc_out sc_lv 31 signal 7 } 
	{ d_out sc_in sc_lv 10 signal 8 } 
	{ mlp_1_weights_V_address0 sc_out sc_lv 18 signal 9 } 
	{ mlp_1_weights_V_ce0 sc_out sc_logic 1 signal 9 } 
	{ mlp_1_weights_V_d0 sc_out sc_lv 32 signal 9 } 
	{ mlp_1_weights_V_q0 sc_in sc_lv 32 signal 9 } 
	{ mlp_1_weights_V_we0 sc_out sc_logic 1 signal 9 } 
	{ mlp_1_weights_V_address1 sc_out sc_lv 18 signal 9 } 
	{ mlp_1_weights_V_ce1 sc_out sc_logic 1 signal 9 } 
	{ mlp_1_weights_V_d1 sc_out sc_lv 32 signal 9 } 
	{ mlp_1_weights_V_q1 sc_in sc_lv 32 signal 9 } 
	{ mlp_1_weights_V_we1 sc_out sc_logic 1 signal 9 } 
	{ mlp_1_bias_V_address0 sc_out sc_lv 10 signal 10 } 
	{ mlp_1_bias_V_ce0 sc_out sc_logic 1 signal 10 } 
	{ mlp_1_bias_V_d0 sc_out sc_lv 32 signal 10 } 
	{ mlp_1_bias_V_q0 sc_in sc_lv 32 signal 10 } 
	{ mlp_1_bias_V_we0 sc_out sc_logic 1 signal 10 } 
	{ mlp_1_bias_V_address1 sc_out sc_lv 10 signal 10 } 
	{ mlp_1_bias_V_ce1 sc_out sc_logic 1 signal 10 } 
	{ mlp_1_bias_V_d1 sc_out sc_lv 32 signal 10 } 
	{ mlp_1_bias_V_q1 sc_in sc_lv 32 signal 10 } 
	{ mlp_1_bias_V_we1 sc_out sc_logic 1 signal 10 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ d_out_ap_vld sc_in sc_logic 1 invld 8 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ mlp_out_local_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ mlp_out_local4_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ mlp_out_local5_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ mlp_out_local6_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "mlp_in_local_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local", "role": "address0" }} , 
 	{ "name": "mlp_in_local_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local", "role": "ce0" }} , 
 	{ "name": "mlp_in_local_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_local", "role": "d0" }} , 
 	{ "name": "mlp_in_local_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_local", "role": "q0" }} , 
 	{ "name": "mlp_in_local_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local", "role": "we0" }} , 
 	{ "name": "mlp_in_local_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local", "role": "address1" }} , 
 	{ "name": "mlp_in_local_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local", "role": "ce1" }} , 
 	{ "name": "mlp_in_local_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_local", "role": "d1" }} , 
 	{ "name": "mlp_in_local_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_local", "role": "q1" }} , 
 	{ "name": "mlp_in_local_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local", "role": "we1" }} , 
 	{ "name": "mlp_in_local1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local1", "role": "address0" }} , 
 	{ "name": "mlp_in_local1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local1", "role": "ce0" }} , 
 	{ "name": "mlp_in_local1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_local1", "role": "d0" }} , 
 	{ "name": "mlp_in_local1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_local1", "role": "q0" }} , 
 	{ "name": "mlp_in_local1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local1", "role": "we0" }} , 
 	{ "name": "mlp_in_local1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local1", "role": "address1" }} , 
 	{ "name": "mlp_in_local1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local1", "role": "ce1" }} , 
 	{ "name": "mlp_in_local1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_local1", "role": "d1" }} , 
 	{ "name": "mlp_in_local1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_local1", "role": "q1" }} , 
 	{ "name": "mlp_in_local1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local1", "role": "we1" }} , 
 	{ "name": "mlp_in_local2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local2", "role": "address0" }} , 
 	{ "name": "mlp_in_local2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local2", "role": "ce0" }} , 
 	{ "name": "mlp_in_local2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_local2", "role": "d0" }} , 
 	{ "name": "mlp_in_local2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_local2", "role": "q0" }} , 
 	{ "name": "mlp_in_local2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local2", "role": "we0" }} , 
 	{ "name": "mlp_in_local2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local2", "role": "address1" }} , 
 	{ "name": "mlp_in_local2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local2", "role": "ce1" }} , 
 	{ "name": "mlp_in_local2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_local2", "role": "d1" }} , 
 	{ "name": "mlp_in_local2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_local2", "role": "q1" }} , 
 	{ "name": "mlp_in_local2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local2", "role": "we1" }} , 
 	{ "name": "mlp_in_local3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local3", "role": "address0" }} , 
 	{ "name": "mlp_in_local3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local3", "role": "ce0" }} , 
 	{ "name": "mlp_in_local3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_local3", "role": "d0" }} , 
 	{ "name": "mlp_in_local3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_local3", "role": "q0" }} , 
 	{ "name": "mlp_in_local3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local3", "role": "we0" }} , 
 	{ "name": "mlp_in_local3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local3", "role": "address1" }} , 
 	{ "name": "mlp_in_local3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local3", "role": "ce1" }} , 
 	{ "name": "mlp_in_local3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_local3", "role": "d1" }} , 
 	{ "name": "mlp_in_local3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_local3", "role": "q1" }} , 
 	{ "name": "mlp_in_local3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local3", "role": "we1" }} , 
 	{ "name": "mlp_out_local", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_out_local", "role": "default" }} , 
 	{ "name": "mlp_out_local4", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_out_local4", "role": "default" }} , 
 	{ "name": "mlp_out_local5", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_out_local5", "role": "default" }} , 
 	{ "name": "mlp_out_local6", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_out_local6", "role": "default" }} , 
 	{ "name": "d_out", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "d_out", "role": "default" }} , 
 	{ "name": "mlp_1_weights_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "address0" }} , 
 	{ "name": "mlp_1_weights_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "ce0" }} , 
 	{ "name": "mlp_1_weights_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "d0" }} , 
 	{ "name": "mlp_1_weights_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "q0" }} , 
 	{ "name": "mlp_1_weights_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "we0" }} , 
 	{ "name": "mlp_1_weights_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "address1" }} , 
 	{ "name": "mlp_1_weights_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "ce1" }} , 
 	{ "name": "mlp_1_weights_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "d1" }} , 
 	{ "name": "mlp_1_weights_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "q1" }} , 
 	{ "name": "mlp_1_weights_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "we1" }} , 
 	{ "name": "mlp_1_bias_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "address0" }} , 
 	{ "name": "mlp_1_bias_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "ce0" }} , 
 	{ "name": "mlp_1_bias_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "d0" }} , 
 	{ "name": "mlp_1_bias_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "q0" }} , 
 	{ "name": "mlp_1_bias_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "we0" }} , 
 	{ "name": "mlp_1_bias_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "address1" }} , 
 	{ "name": "mlp_1_bias_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "ce1" }} , 
 	{ "name": "mlp_1_bias_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "d1" }} , 
 	{ "name": "mlp_1_bias_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "q1" }} , 
 	{ "name": "mlp_1_bias_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "we1" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "d_out_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "d_out", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "mlp_out_local_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mlp_out_local", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "mlp_out_local4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mlp_out_local4", "role": "ap_vld" }} , 
 	{ "name": "mlp_out_local5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mlp_out_local5", "role": "ap_vld" }} , 
 	{ "name": "mlp_out_local6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mlp_out_local6", "role": "ap_vld" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "5", "7", "9", "12", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24"],
		"CDFG" : "MLP_1_batch_nodes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "323", "EstimateLatencyMax" : "323",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "MLP_1_batch_nodes_entry59_U0"},
			{"ID" : "2", "Name" : "load_mlp_weight_vector_U0"},
			{"ID" : "4", "Name" : "MLP_1_batch_nodes_Block_split13_proc_U0"},
			{"ID" : "5", "Name" : "MLP_PE45_U0"},
			{"ID" : "7", "Name" : "MLP_PE_146_U0"},
			{"ID" : "9", "Name" : "MLP_PE_147_U0"},
			{"ID" : "12", "Name" : "MLP_PE_148_U0"}],
		"OutputProcess" : [
			{"ID" : "5", "Name" : "MLP_PE45_U0"},
			{"ID" : "7", "Name" : "MLP_PE_146_U0"},
			{"ID" : "9", "Name" : "MLP_PE_147_U0"},
			{"ID" : "12", "Name" : "MLP_PE_148_U0"}],
		"Port" : [
			{"Name" : "mlp_in_local", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "MLP_PE45_U0", "Port" : "mlp_in_local"}]},
			{"Name" : "mlp_in_local1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "MLP_PE_146_U0", "Port" : "mlp_in_local1"}]},
			{"Name" : "mlp_in_local2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "MLP_PE_147_U0", "Port" : "mlp_in_local2"}]},
			{"Name" : "mlp_in_local3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "MLP_PE_148_U0", "Port" : "mlp_in_local3"}]},
			{"Name" : "mlp_out_local", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "MLP_PE45_U0", "Port" : "mlp_out_local"}]},
			{"Name" : "mlp_out_local4", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "MLP_PE_146_U0", "Port" : "mlp_out_local4"}]},
			{"Name" : "mlp_out_local5", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "MLP_PE_147_U0", "Port" : "mlp_out_local5"}]},
			{"Name" : "mlp_out_local6", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "MLP_PE_148_U0", "Port" : "mlp_out_local6"}]},
			{"Name" : "d_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_1_weights_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "load_mlp_weight_vector_U0", "Port" : "mlp_1_weights_V"}]},
			{"Name" : "mlp_1_bias_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "MLP_1_batch_nodes_Block_split13_proc_U0", "Port" : "mlp_1_bias_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_1_batch_nodes_entry59_U0", "Parent" : "0",
		"CDFG" : "MLP_1_batch_nodes_entry59",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "d_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "15", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "16", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.load_mlp_weight_vector_U0", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "load_mlp_weight_vector",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "305", "EstimateLatencyMax" : "305",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_1_weight_vector", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "17", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_1_weight_vector_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "15", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_weights_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.load_mlp_weight_vector_U0.mul_mul_10ns_10ns_18_4_1_U62", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_1_batch_nodes_Block_split13_proc_U0", "Parent" : "0",
		"CDFG" : "MLP_1_batch_nodes_Block_split13_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "16", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "18", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_PE45_U0", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "MLP_PE45",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_in_local", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_1_weight_fifo_0_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "17", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_1_weight_fifo_0_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_weight_fifo_1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "19", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_1_weight_fifo_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "18", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_out_local", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "20", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE45_U0.mul_32s_32s_54_1_1_U70", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_PE_146_U0", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "MLP_PE_146",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_in_local1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_1_weight_fifo_1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "19", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_1_weight_fifo_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_weight_fifo_2_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "21", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_1_weight_fifo_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "20", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_out_local4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "22", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE_146_U0.mul_32s_32s_54_1_1_U78", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_PE_147_U0", "Parent" : "0", "Child" : ["10", "11"],
		"CDFG" : "MLP_PE_147",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "316", "EstimateLatencyMax" : "316",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_in_local2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_1_weight_fifo_2_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "21", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_1_weight_fifo_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_weight_fifo_3_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_1_weight_fifo_3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "22", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_out_local5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE_147_U0.urem_11ns_11ns_11_15_1_U85", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE_147_U0.mul_32s_32s_54_1_1_U86", "Parent" : "9"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_PE_148_U0", "Parent" : "0", "Child" : ["13", "14"],
		"CDFG" : "MLP_PE_148",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "317", "EstimateLatencyMax" : "317",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_in_local3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_1_weight_fifo_3_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_1_weight_fifo_3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_out_local6", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE_148_U0.urem_12ns_11ns_12_16_1_U94", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE_148_U0.mul_32s_32s_54_1_1_U95", "Parent" : "12"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c14_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_1_weight_fifo_0_V_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_1_bias_V_load_loc_c_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_1_weight_fifo_1_V_V_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_1_bias_V_load_loc_c15_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_1_weight_fifo_2_V_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_1_bias_V_load_loc_c16_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_1_weight_fifo_3_V_V_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_1_bias_V_load_loc_c17_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MLP_1_batch_nodes {
		mlp_in_local {Type I LastRead 1 FirstWrite -1}
		mlp_in_local1 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local2 {Type I LastRead 15 FirstWrite -1}
		mlp_in_local3 {Type I LastRead 16 FirstWrite -1}
		mlp_out_local {Type O LastRead -1 FirstWrite 2}
		mlp_out_local4 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local5 {Type O LastRead -1 FirstWrite 16}
		mlp_out_local6 {Type O LastRead -1 FirstWrite 17}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_weights_V {Type I LastRead 4 FirstWrite -1}
		mlp_1_bias_V {Type I LastRead 0 FirstWrite -1}}
	MLP_1_batch_nodes_entry59 {
		d_out {Type I LastRead 0 FirstWrite -1}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		d_out_out1 {Type O LastRead -1 FirstWrite 0}}
	load_mlp_weight_vector {
		mlp_1_weight_vector {Type O LastRead -1 FirstWrite 5}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_weights_V {Type I LastRead 4 FirstWrite -1}}
	MLP_1_batch_nodes_Block_split13_proc {
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_out_out {Type O LastRead -1 FirstWrite 1}
		mlp_1_bias_V {Type I LastRead 0 FirstWrite -1}}
	MLP_PE45 {
		mlp_in_local {Type I LastRead 1 FirstWrite -1}
		mlp_1_weight_fifo_0_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_1_weight_fifo_1_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_out_local {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_146 {
		mlp_in_local1 {Type I LastRead 1 FirstWrite -1}
		mlp_1_weight_fifo_1_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_1_weight_fifo_2_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_out_local4 {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_147 {
		mlp_in_local2 {Type I LastRead 15 FirstWrite -1}
		mlp_1_weight_fifo_2_V_V {Type I LastRead 16 FirstWrite -1}
		mlp_1_weight_fifo_3_V_V {Type O LastRead -1 FirstWrite 16}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_out_local5 {Type O LastRead -1 FirstWrite 16}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_148 {
		mlp_in_local3 {Type I LastRead 16 FirstWrite -1}
		mlp_1_weight_fifo_3_V_V {Type I LastRead 17 FirstWrite -1}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_out_local6 {Type O LastRead -1 FirstWrite 17}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "323", "Max" : "323"}
	, {"Name" : "Interval", "Min" : "318", "Max" : "318"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mlp_in_local { ap_memory {  { mlp_in_local_address0 mem_address 1 10 }  { mlp_in_local_ce0 mem_ce 1 1 }  { mlp_in_local_d0 mem_din 1 32 }  { mlp_in_local_q0 mem_dout 0 32 }  { mlp_in_local_we0 mem_we 1 1 }  { mlp_in_local_address1 mem_address 1 10 }  { mlp_in_local_ce1 mem_ce 1 1 }  { mlp_in_local_d1 mem_din 1 32 }  { mlp_in_local_q1 mem_dout 0 32 }  { mlp_in_local_we1 mem_we 1 1 } } }
	mlp_in_local1 { ap_memory {  { mlp_in_local1_address0 mem_address 1 10 }  { mlp_in_local1_ce0 mem_ce 1 1 }  { mlp_in_local1_d0 mem_din 1 32 }  { mlp_in_local1_q0 mem_dout 0 32 }  { mlp_in_local1_we0 mem_we 1 1 }  { mlp_in_local1_address1 mem_address 1 10 }  { mlp_in_local1_ce1 mem_ce 1 1 }  { mlp_in_local1_d1 mem_din 1 32 }  { mlp_in_local1_q1 mem_dout 0 32 }  { mlp_in_local1_we1 mem_we 1 1 } } }
	mlp_in_local2 { ap_memory {  { mlp_in_local2_address0 mem_address 1 10 }  { mlp_in_local2_ce0 mem_ce 1 1 }  { mlp_in_local2_d0 mem_din 1 32 }  { mlp_in_local2_q0 mem_dout 0 32 }  { mlp_in_local2_we0 mem_we 1 1 }  { mlp_in_local2_address1 mem_address 1 10 }  { mlp_in_local2_ce1 mem_ce 1 1 }  { mlp_in_local2_d1 mem_din 1 32 }  { mlp_in_local2_q1 mem_dout 0 32 }  { mlp_in_local2_we1 mem_we 1 1 } } }
	mlp_in_local3 { ap_memory {  { mlp_in_local3_address0 mem_address 1 10 }  { mlp_in_local3_ce0 mem_ce 1 1 }  { mlp_in_local3_d0 mem_din 1 32 }  { mlp_in_local3_q0 mem_dout 0 32 }  { mlp_in_local3_we0 mem_we 1 1 }  { mlp_in_local3_address1 mem_address 1 10 }  { mlp_in_local3_ce1 mem_ce 1 1 }  { mlp_in_local3_d1 mem_din 1 32 }  { mlp_in_local3_q1 mem_dout 0 32 }  { mlp_in_local3_we1 mem_we 1 1 } } }
	mlp_out_local { ap_vld {  { mlp_out_local out_data 1 31 }  { mlp_out_local_ap_vld out_vld 1 1 } } }
	mlp_out_local4 { ap_vld {  { mlp_out_local4 out_data 1 31 }  { mlp_out_local4_ap_vld out_vld 1 1 } } }
	mlp_out_local5 { ap_vld {  { mlp_out_local5 out_data 1 31 }  { mlp_out_local5_ap_vld out_vld 1 1 } } }
	mlp_out_local6 { ap_vld {  { mlp_out_local6 out_data 1 31 }  { mlp_out_local6_ap_vld out_vld 1 1 } } }
	d_out { ap_none {  { d_out in_data 0 10 }  { d_out_ap_vld in_vld 0 1 } } }
	mlp_1_weights_V { ap_memory {  { mlp_1_weights_V_address0 mem_address 1 18 }  { mlp_1_weights_V_ce0 mem_ce 1 1 }  { mlp_1_weights_V_d0 mem_din 1 32 }  { mlp_1_weights_V_q0 mem_dout 0 32 }  { mlp_1_weights_V_we0 mem_we 1 1 }  { mlp_1_weights_V_address1 mem_address 1 18 }  { mlp_1_weights_V_ce1 mem_ce 1 1 }  { mlp_1_weights_V_d1 mem_din 1 32 }  { mlp_1_weights_V_q1 mem_dout 0 32 }  { mlp_1_weights_V_we1 mem_we 1 1 } } }
	mlp_1_bias_V { ap_memory {  { mlp_1_bias_V_address0 mem_address 1 10 }  { mlp_1_bias_V_ce0 mem_ce 1 1 }  { mlp_1_bias_V_d0 mem_din 1 32 }  { mlp_1_bias_V_q0 mem_dout 0 32 }  { mlp_1_bias_V_we0 mem_we 1 1 }  { mlp_1_bias_V_address1 mem_address 1 10 }  { mlp_1_bias_V_ce1 mem_ce 1 1 }  { mlp_1_bias_V_d1 mem_din 1 32 }  { mlp_1_bias_V_q1 mem_dout 0 32 }  { mlp_1_bias_V_we1 mem_we 1 1 } } }
}
