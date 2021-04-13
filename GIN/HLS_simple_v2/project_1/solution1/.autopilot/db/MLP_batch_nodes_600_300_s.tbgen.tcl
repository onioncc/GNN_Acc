set moduleName MLP_batch_nodes_600_300_s
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
set C_modelName {MLP_batch_nodes<600, 300>}
set C_modelType { void 0 }
set C_modelArgList {
	{ mlp_in_local int 31 regular {array 600 { 1 3 } 1 1 }  }
	{ mlp_in_local1 int 31 regular {array 600 { 1 3 } 1 1 }  }
	{ mlp_in_local2 int 31 regular {array 600 { 1 3 } 1 1 }  }
	{ mlp_in_local3 int 31 regular {array 600 { 1 3 } 1 1 }  }
	{ mlp_in_local4 int 31 regular {array 600 { 1 3 } 1 1 }  }
	{ mlp_in_local5 int 31 regular {array 600 { 1 3 } 1 1 }  }
	{ mlp_in_local6 int 31 regular {array 600 { 1 3 } 1 1 }  }
	{ mlp_in_local7 int 31 regular {array 600 { 1 3 } 1 1 }  }
	{ mlp_in_local8 int 31 regular {array 600 { 1 3 } 1 1 }  }
	{ mlp_in_local9 int 31 regular {array 600 { 1 3 } 1 1 }  }
	{ mlp_in_local10 int 31 regular {array 600 { 1 3 } 1 1 }  }
	{ mlp_in_local11 int 31 regular {array 600 { 1 3 } 1 1 }  }
	{ mlp_in_local12 int 31 regular {array 600 { 1 3 } 1 1 }  }
	{ mlp_in_local13 int 31 regular {array 600 { 1 3 } 1 1 }  }
	{ mlp_in_local14 int 31 regular {array 600 { 1 3 } 1 1 }  }
	{ mlp_in_local15 int 31 regular {array 600 { 1 3 } 1 1 }  }
	{ mlp_out_local int 32 regular {array 300 { 0 3 } 0 1 }  }
	{ mlp_out_local16 int 32 regular {array 300 { 0 3 } 0 1 }  }
	{ mlp_out_local17 int 32 regular {array 300 { 0 3 } 0 1 }  }
	{ mlp_out_local18 int 32 regular {array 300 { 0 3 } 0 1 }  }
	{ mlp_out_local19 int 32 regular {array 300 { 0 3 } 0 1 }  }
	{ mlp_out_local20 int 32 regular {array 300 { 0 3 } 0 1 }  }
	{ mlp_out_local21 int 32 regular {array 300 { 0 3 } 0 1 }  }
	{ mlp_out_local22 int 32 regular {array 300 { 0 3 } 0 1 }  }
	{ mlp_out_local23 int 32 regular {array 300 { 0 3 } 0 1 }  }
	{ mlp_out_local24 int 32 regular {array 300 { 0 3 } 0 1 }  }
	{ mlp_out_local25 int 32 regular {array 300 { 0 3 } 0 1 }  }
	{ mlp_out_local26 int 32 regular {array 300 { 0 3 } 0 1 }  }
	{ mlp_out_local27 int 32 regular {array 300 { 0 3 } 0 1 }  }
	{ mlp_out_local28 int 32 regular {array 300 { 0 3 } 0 1 }  }
	{ mlp_out_local29 int 32 regular {array 300 { 0 3 } 0 1 }  }
	{ mlp_out_local30 int 32 regular {array 300 { 0 3 } 0 1 }  }
	{ d_out int 9 regular  }
	{ do_relu int 1 regular  }
	{ mlp_2_weights_V int 32 regular {array 180000 { 1 3 } 1 1 } {global 0}  }
	{ mlp_2_bias_V int 32 regular {array 300 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mlp_in_local", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_in_local1", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_in_local2", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_in_local3", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_in_local4", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_in_local5", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_in_local6", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_in_local7", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_in_local8", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_in_local9", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_in_local10", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_in_local11", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_in_local12", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_in_local13", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_in_local14", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_in_local15", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_out_local", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mlp_out_local16", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mlp_out_local17", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mlp_out_local18", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mlp_out_local19", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mlp_out_local20", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mlp_out_local21", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mlp_out_local22", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mlp_out_local23", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mlp_out_local24", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mlp_out_local25", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mlp_out_local26", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mlp_out_local27", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mlp_out_local28", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mlp_out_local29", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mlp_out_local30", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_out", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "do_relu", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_2_weights_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mlp_2_weights.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 299,"step" : 1},{"low" : 0,"up" : 599,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "mlp_2_bias_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mlp_2_bias.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 351
set portList { 
	{ mlp_in_local_address0 sc_out sc_lv 10 signal 0 } 
	{ mlp_in_local_ce0 sc_out sc_logic 1 signal 0 } 
	{ mlp_in_local_d0 sc_out sc_lv 31 signal 0 } 
	{ mlp_in_local_q0 sc_in sc_lv 31 signal 0 } 
	{ mlp_in_local_we0 sc_out sc_logic 1 signal 0 } 
	{ mlp_in_local_address1 sc_out sc_lv 10 signal 0 } 
	{ mlp_in_local_ce1 sc_out sc_logic 1 signal 0 } 
	{ mlp_in_local_d1 sc_out sc_lv 31 signal 0 } 
	{ mlp_in_local_q1 sc_in sc_lv 31 signal 0 } 
	{ mlp_in_local_we1 sc_out sc_logic 1 signal 0 } 
	{ mlp_in_local1_address0 sc_out sc_lv 10 signal 1 } 
	{ mlp_in_local1_ce0 sc_out sc_logic 1 signal 1 } 
	{ mlp_in_local1_d0 sc_out sc_lv 31 signal 1 } 
	{ mlp_in_local1_q0 sc_in sc_lv 31 signal 1 } 
	{ mlp_in_local1_we0 sc_out sc_logic 1 signal 1 } 
	{ mlp_in_local1_address1 sc_out sc_lv 10 signal 1 } 
	{ mlp_in_local1_ce1 sc_out sc_logic 1 signal 1 } 
	{ mlp_in_local1_d1 sc_out sc_lv 31 signal 1 } 
	{ mlp_in_local1_q1 sc_in sc_lv 31 signal 1 } 
	{ mlp_in_local1_we1 sc_out sc_logic 1 signal 1 } 
	{ mlp_in_local2_address0 sc_out sc_lv 10 signal 2 } 
	{ mlp_in_local2_ce0 sc_out sc_logic 1 signal 2 } 
	{ mlp_in_local2_d0 sc_out sc_lv 31 signal 2 } 
	{ mlp_in_local2_q0 sc_in sc_lv 31 signal 2 } 
	{ mlp_in_local2_we0 sc_out sc_logic 1 signal 2 } 
	{ mlp_in_local2_address1 sc_out sc_lv 10 signal 2 } 
	{ mlp_in_local2_ce1 sc_out sc_logic 1 signal 2 } 
	{ mlp_in_local2_d1 sc_out sc_lv 31 signal 2 } 
	{ mlp_in_local2_q1 sc_in sc_lv 31 signal 2 } 
	{ mlp_in_local2_we1 sc_out sc_logic 1 signal 2 } 
	{ mlp_in_local3_address0 sc_out sc_lv 10 signal 3 } 
	{ mlp_in_local3_ce0 sc_out sc_logic 1 signal 3 } 
	{ mlp_in_local3_d0 sc_out sc_lv 31 signal 3 } 
	{ mlp_in_local3_q0 sc_in sc_lv 31 signal 3 } 
	{ mlp_in_local3_we0 sc_out sc_logic 1 signal 3 } 
	{ mlp_in_local3_address1 sc_out sc_lv 10 signal 3 } 
	{ mlp_in_local3_ce1 sc_out sc_logic 1 signal 3 } 
	{ mlp_in_local3_d1 sc_out sc_lv 31 signal 3 } 
	{ mlp_in_local3_q1 sc_in sc_lv 31 signal 3 } 
	{ mlp_in_local3_we1 sc_out sc_logic 1 signal 3 } 
	{ mlp_in_local4_address0 sc_out sc_lv 10 signal 4 } 
	{ mlp_in_local4_ce0 sc_out sc_logic 1 signal 4 } 
	{ mlp_in_local4_d0 sc_out sc_lv 31 signal 4 } 
	{ mlp_in_local4_q0 sc_in sc_lv 31 signal 4 } 
	{ mlp_in_local4_we0 sc_out sc_logic 1 signal 4 } 
	{ mlp_in_local4_address1 sc_out sc_lv 10 signal 4 } 
	{ mlp_in_local4_ce1 sc_out sc_logic 1 signal 4 } 
	{ mlp_in_local4_d1 sc_out sc_lv 31 signal 4 } 
	{ mlp_in_local4_q1 sc_in sc_lv 31 signal 4 } 
	{ mlp_in_local4_we1 sc_out sc_logic 1 signal 4 } 
	{ mlp_in_local5_address0 sc_out sc_lv 10 signal 5 } 
	{ mlp_in_local5_ce0 sc_out sc_logic 1 signal 5 } 
	{ mlp_in_local5_d0 sc_out sc_lv 31 signal 5 } 
	{ mlp_in_local5_q0 sc_in sc_lv 31 signal 5 } 
	{ mlp_in_local5_we0 sc_out sc_logic 1 signal 5 } 
	{ mlp_in_local5_address1 sc_out sc_lv 10 signal 5 } 
	{ mlp_in_local5_ce1 sc_out sc_logic 1 signal 5 } 
	{ mlp_in_local5_d1 sc_out sc_lv 31 signal 5 } 
	{ mlp_in_local5_q1 sc_in sc_lv 31 signal 5 } 
	{ mlp_in_local5_we1 sc_out sc_logic 1 signal 5 } 
	{ mlp_in_local6_address0 sc_out sc_lv 10 signal 6 } 
	{ mlp_in_local6_ce0 sc_out sc_logic 1 signal 6 } 
	{ mlp_in_local6_d0 sc_out sc_lv 31 signal 6 } 
	{ mlp_in_local6_q0 sc_in sc_lv 31 signal 6 } 
	{ mlp_in_local6_we0 sc_out sc_logic 1 signal 6 } 
	{ mlp_in_local6_address1 sc_out sc_lv 10 signal 6 } 
	{ mlp_in_local6_ce1 sc_out sc_logic 1 signal 6 } 
	{ mlp_in_local6_d1 sc_out sc_lv 31 signal 6 } 
	{ mlp_in_local6_q1 sc_in sc_lv 31 signal 6 } 
	{ mlp_in_local6_we1 sc_out sc_logic 1 signal 6 } 
	{ mlp_in_local7_address0 sc_out sc_lv 10 signal 7 } 
	{ mlp_in_local7_ce0 sc_out sc_logic 1 signal 7 } 
	{ mlp_in_local7_d0 sc_out sc_lv 31 signal 7 } 
	{ mlp_in_local7_q0 sc_in sc_lv 31 signal 7 } 
	{ mlp_in_local7_we0 sc_out sc_logic 1 signal 7 } 
	{ mlp_in_local7_address1 sc_out sc_lv 10 signal 7 } 
	{ mlp_in_local7_ce1 sc_out sc_logic 1 signal 7 } 
	{ mlp_in_local7_d1 sc_out sc_lv 31 signal 7 } 
	{ mlp_in_local7_q1 sc_in sc_lv 31 signal 7 } 
	{ mlp_in_local7_we1 sc_out sc_logic 1 signal 7 } 
	{ mlp_in_local8_address0 sc_out sc_lv 10 signal 8 } 
	{ mlp_in_local8_ce0 sc_out sc_logic 1 signal 8 } 
	{ mlp_in_local8_d0 sc_out sc_lv 31 signal 8 } 
	{ mlp_in_local8_q0 sc_in sc_lv 31 signal 8 } 
	{ mlp_in_local8_we0 sc_out sc_logic 1 signal 8 } 
	{ mlp_in_local8_address1 sc_out sc_lv 10 signal 8 } 
	{ mlp_in_local8_ce1 sc_out sc_logic 1 signal 8 } 
	{ mlp_in_local8_d1 sc_out sc_lv 31 signal 8 } 
	{ mlp_in_local8_q1 sc_in sc_lv 31 signal 8 } 
	{ mlp_in_local8_we1 sc_out sc_logic 1 signal 8 } 
	{ mlp_in_local9_address0 sc_out sc_lv 10 signal 9 } 
	{ mlp_in_local9_ce0 sc_out sc_logic 1 signal 9 } 
	{ mlp_in_local9_d0 sc_out sc_lv 31 signal 9 } 
	{ mlp_in_local9_q0 sc_in sc_lv 31 signal 9 } 
	{ mlp_in_local9_we0 sc_out sc_logic 1 signal 9 } 
	{ mlp_in_local9_address1 sc_out sc_lv 10 signal 9 } 
	{ mlp_in_local9_ce1 sc_out sc_logic 1 signal 9 } 
	{ mlp_in_local9_d1 sc_out sc_lv 31 signal 9 } 
	{ mlp_in_local9_q1 sc_in sc_lv 31 signal 9 } 
	{ mlp_in_local9_we1 sc_out sc_logic 1 signal 9 } 
	{ mlp_in_local10_address0 sc_out sc_lv 10 signal 10 } 
	{ mlp_in_local10_ce0 sc_out sc_logic 1 signal 10 } 
	{ mlp_in_local10_d0 sc_out sc_lv 31 signal 10 } 
	{ mlp_in_local10_q0 sc_in sc_lv 31 signal 10 } 
	{ mlp_in_local10_we0 sc_out sc_logic 1 signal 10 } 
	{ mlp_in_local10_address1 sc_out sc_lv 10 signal 10 } 
	{ mlp_in_local10_ce1 sc_out sc_logic 1 signal 10 } 
	{ mlp_in_local10_d1 sc_out sc_lv 31 signal 10 } 
	{ mlp_in_local10_q1 sc_in sc_lv 31 signal 10 } 
	{ mlp_in_local10_we1 sc_out sc_logic 1 signal 10 } 
	{ mlp_in_local11_address0 sc_out sc_lv 10 signal 11 } 
	{ mlp_in_local11_ce0 sc_out sc_logic 1 signal 11 } 
	{ mlp_in_local11_d0 sc_out sc_lv 31 signal 11 } 
	{ mlp_in_local11_q0 sc_in sc_lv 31 signal 11 } 
	{ mlp_in_local11_we0 sc_out sc_logic 1 signal 11 } 
	{ mlp_in_local11_address1 sc_out sc_lv 10 signal 11 } 
	{ mlp_in_local11_ce1 sc_out sc_logic 1 signal 11 } 
	{ mlp_in_local11_d1 sc_out sc_lv 31 signal 11 } 
	{ mlp_in_local11_q1 sc_in sc_lv 31 signal 11 } 
	{ mlp_in_local11_we1 sc_out sc_logic 1 signal 11 } 
	{ mlp_in_local12_address0 sc_out sc_lv 10 signal 12 } 
	{ mlp_in_local12_ce0 sc_out sc_logic 1 signal 12 } 
	{ mlp_in_local12_d0 sc_out sc_lv 31 signal 12 } 
	{ mlp_in_local12_q0 sc_in sc_lv 31 signal 12 } 
	{ mlp_in_local12_we0 sc_out sc_logic 1 signal 12 } 
	{ mlp_in_local12_address1 sc_out sc_lv 10 signal 12 } 
	{ mlp_in_local12_ce1 sc_out sc_logic 1 signal 12 } 
	{ mlp_in_local12_d1 sc_out sc_lv 31 signal 12 } 
	{ mlp_in_local12_q1 sc_in sc_lv 31 signal 12 } 
	{ mlp_in_local12_we1 sc_out sc_logic 1 signal 12 } 
	{ mlp_in_local13_address0 sc_out sc_lv 10 signal 13 } 
	{ mlp_in_local13_ce0 sc_out sc_logic 1 signal 13 } 
	{ mlp_in_local13_d0 sc_out sc_lv 31 signal 13 } 
	{ mlp_in_local13_q0 sc_in sc_lv 31 signal 13 } 
	{ mlp_in_local13_we0 sc_out sc_logic 1 signal 13 } 
	{ mlp_in_local13_address1 sc_out sc_lv 10 signal 13 } 
	{ mlp_in_local13_ce1 sc_out sc_logic 1 signal 13 } 
	{ mlp_in_local13_d1 sc_out sc_lv 31 signal 13 } 
	{ mlp_in_local13_q1 sc_in sc_lv 31 signal 13 } 
	{ mlp_in_local13_we1 sc_out sc_logic 1 signal 13 } 
	{ mlp_in_local14_address0 sc_out sc_lv 10 signal 14 } 
	{ mlp_in_local14_ce0 sc_out sc_logic 1 signal 14 } 
	{ mlp_in_local14_d0 sc_out sc_lv 31 signal 14 } 
	{ mlp_in_local14_q0 sc_in sc_lv 31 signal 14 } 
	{ mlp_in_local14_we0 sc_out sc_logic 1 signal 14 } 
	{ mlp_in_local14_address1 sc_out sc_lv 10 signal 14 } 
	{ mlp_in_local14_ce1 sc_out sc_logic 1 signal 14 } 
	{ mlp_in_local14_d1 sc_out sc_lv 31 signal 14 } 
	{ mlp_in_local14_q1 sc_in sc_lv 31 signal 14 } 
	{ mlp_in_local14_we1 sc_out sc_logic 1 signal 14 } 
	{ mlp_in_local15_address0 sc_out sc_lv 10 signal 15 } 
	{ mlp_in_local15_ce0 sc_out sc_logic 1 signal 15 } 
	{ mlp_in_local15_d0 sc_out sc_lv 31 signal 15 } 
	{ mlp_in_local15_q0 sc_in sc_lv 31 signal 15 } 
	{ mlp_in_local15_we0 sc_out sc_logic 1 signal 15 } 
	{ mlp_in_local15_address1 sc_out sc_lv 10 signal 15 } 
	{ mlp_in_local15_ce1 sc_out sc_logic 1 signal 15 } 
	{ mlp_in_local15_d1 sc_out sc_lv 31 signal 15 } 
	{ mlp_in_local15_q1 sc_in sc_lv 31 signal 15 } 
	{ mlp_in_local15_we1 sc_out sc_logic 1 signal 15 } 
	{ mlp_out_local_address0 sc_out sc_lv 9 signal 16 } 
	{ mlp_out_local_ce0 sc_out sc_logic 1 signal 16 } 
	{ mlp_out_local_d0 sc_out sc_lv 32 signal 16 } 
	{ mlp_out_local_q0 sc_in sc_lv 32 signal 16 } 
	{ mlp_out_local_we0 sc_out sc_logic 1 signal 16 } 
	{ mlp_out_local_address1 sc_out sc_lv 9 signal 16 } 
	{ mlp_out_local_ce1 sc_out sc_logic 1 signal 16 } 
	{ mlp_out_local_d1 sc_out sc_lv 32 signal 16 } 
	{ mlp_out_local_q1 sc_in sc_lv 32 signal 16 } 
	{ mlp_out_local_we1 sc_out sc_logic 1 signal 16 } 
	{ mlp_out_local16_address0 sc_out sc_lv 9 signal 17 } 
	{ mlp_out_local16_ce0 sc_out sc_logic 1 signal 17 } 
	{ mlp_out_local16_d0 sc_out sc_lv 32 signal 17 } 
	{ mlp_out_local16_q0 sc_in sc_lv 32 signal 17 } 
	{ mlp_out_local16_we0 sc_out sc_logic 1 signal 17 } 
	{ mlp_out_local16_address1 sc_out sc_lv 9 signal 17 } 
	{ mlp_out_local16_ce1 sc_out sc_logic 1 signal 17 } 
	{ mlp_out_local16_d1 sc_out sc_lv 32 signal 17 } 
	{ mlp_out_local16_q1 sc_in sc_lv 32 signal 17 } 
	{ mlp_out_local16_we1 sc_out sc_logic 1 signal 17 } 
	{ mlp_out_local17_address0 sc_out sc_lv 9 signal 18 } 
	{ mlp_out_local17_ce0 sc_out sc_logic 1 signal 18 } 
	{ mlp_out_local17_d0 sc_out sc_lv 32 signal 18 } 
	{ mlp_out_local17_q0 sc_in sc_lv 32 signal 18 } 
	{ mlp_out_local17_we0 sc_out sc_logic 1 signal 18 } 
	{ mlp_out_local17_address1 sc_out sc_lv 9 signal 18 } 
	{ mlp_out_local17_ce1 sc_out sc_logic 1 signal 18 } 
	{ mlp_out_local17_d1 sc_out sc_lv 32 signal 18 } 
	{ mlp_out_local17_q1 sc_in sc_lv 32 signal 18 } 
	{ mlp_out_local17_we1 sc_out sc_logic 1 signal 18 } 
	{ mlp_out_local18_address0 sc_out sc_lv 9 signal 19 } 
	{ mlp_out_local18_ce0 sc_out sc_logic 1 signal 19 } 
	{ mlp_out_local18_d0 sc_out sc_lv 32 signal 19 } 
	{ mlp_out_local18_q0 sc_in sc_lv 32 signal 19 } 
	{ mlp_out_local18_we0 sc_out sc_logic 1 signal 19 } 
	{ mlp_out_local18_address1 sc_out sc_lv 9 signal 19 } 
	{ mlp_out_local18_ce1 sc_out sc_logic 1 signal 19 } 
	{ mlp_out_local18_d1 sc_out sc_lv 32 signal 19 } 
	{ mlp_out_local18_q1 sc_in sc_lv 32 signal 19 } 
	{ mlp_out_local18_we1 sc_out sc_logic 1 signal 19 } 
	{ mlp_out_local19_address0 sc_out sc_lv 9 signal 20 } 
	{ mlp_out_local19_ce0 sc_out sc_logic 1 signal 20 } 
	{ mlp_out_local19_d0 sc_out sc_lv 32 signal 20 } 
	{ mlp_out_local19_q0 sc_in sc_lv 32 signal 20 } 
	{ mlp_out_local19_we0 sc_out sc_logic 1 signal 20 } 
	{ mlp_out_local19_address1 sc_out sc_lv 9 signal 20 } 
	{ mlp_out_local19_ce1 sc_out sc_logic 1 signal 20 } 
	{ mlp_out_local19_d1 sc_out sc_lv 32 signal 20 } 
	{ mlp_out_local19_q1 sc_in sc_lv 32 signal 20 } 
	{ mlp_out_local19_we1 sc_out sc_logic 1 signal 20 } 
	{ mlp_out_local20_address0 sc_out sc_lv 9 signal 21 } 
	{ mlp_out_local20_ce0 sc_out sc_logic 1 signal 21 } 
	{ mlp_out_local20_d0 sc_out sc_lv 32 signal 21 } 
	{ mlp_out_local20_q0 sc_in sc_lv 32 signal 21 } 
	{ mlp_out_local20_we0 sc_out sc_logic 1 signal 21 } 
	{ mlp_out_local20_address1 sc_out sc_lv 9 signal 21 } 
	{ mlp_out_local20_ce1 sc_out sc_logic 1 signal 21 } 
	{ mlp_out_local20_d1 sc_out sc_lv 32 signal 21 } 
	{ mlp_out_local20_q1 sc_in sc_lv 32 signal 21 } 
	{ mlp_out_local20_we1 sc_out sc_logic 1 signal 21 } 
	{ mlp_out_local21_address0 sc_out sc_lv 9 signal 22 } 
	{ mlp_out_local21_ce0 sc_out sc_logic 1 signal 22 } 
	{ mlp_out_local21_d0 sc_out sc_lv 32 signal 22 } 
	{ mlp_out_local21_q0 sc_in sc_lv 32 signal 22 } 
	{ mlp_out_local21_we0 sc_out sc_logic 1 signal 22 } 
	{ mlp_out_local21_address1 sc_out sc_lv 9 signal 22 } 
	{ mlp_out_local21_ce1 sc_out sc_logic 1 signal 22 } 
	{ mlp_out_local21_d1 sc_out sc_lv 32 signal 22 } 
	{ mlp_out_local21_q1 sc_in sc_lv 32 signal 22 } 
	{ mlp_out_local21_we1 sc_out sc_logic 1 signal 22 } 
	{ mlp_out_local22_address0 sc_out sc_lv 9 signal 23 } 
	{ mlp_out_local22_ce0 sc_out sc_logic 1 signal 23 } 
	{ mlp_out_local22_d0 sc_out sc_lv 32 signal 23 } 
	{ mlp_out_local22_q0 sc_in sc_lv 32 signal 23 } 
	{ mlp_out_local22_we0 sc_out sc_logic 1 signal 23 } 
	{ mlp_out_local22_address1 sc_out sc_lv 9 signal 23 } 
	{ mlp_out_local22_ce1 sc_out sc_logic 1 signal 23 } 
	{ mlp_out_local22_d1 sc_out sc_lv 32 signal 23 } 
	{ mlp_out_local22_q1 sc_in sc_lv 32 signal 23 } 
	{ mlp_out_local22_we1 sc_out sc_logic 1 signal 23 } 
	{ mlp_out_local23_address0 sc_out sc_lv 9 signal 24 } 
	{ mlp_out_local23_ce0 sc_out sc_logic 1 signal 24 } 
	{ mlp_out_local23_d0 sc_out sc_lv 32 signal 24 } 
	{ mlp_out_local23_q0 sc_in sc_lv 32 signal 24 } 
	{ mlp_out_local23_we0 sc_out sc_logic 1 signal 24 } 
	{ mlp_out_local23_address1 sc_out sc_lv 9 signal 24 } 
	{ mlp_out_local23_ce1 sc_out sc_logic 1 signal 24 } 
	{ mlp_out_local23_d1 sc_out sc_lv 32 signal 24 } 
	{ mlp_out_local23_q1 sc_in sc_lv 32 signal 24 } 
	{ mlp_out_local23_we1 sc_out sc_logic 1 signal 24 } 
	{ mlp_out_local24_address0 sc_out sc_lv 9 signal 25 } 
	{ mlp_out_local24_ce0 sc_out sc_logic 1 signal 25 } 
	{ mlp_out_local24_d0 sc_out sc_lv 32 signal 25 } 
	{ mlp_out_local24_q0 sc_in sc_lv 32 signal 25 } 
	{ mlp_out_local24_we0 sc_out sc_logic 1 signal 25 } 
	{ mlp_out_local24_address1 sc_out sc_lv 9 signal 25 } 
	{ mlp_out_local24_ce1 sc_out sc_logic 1 signal 25 } 
	{ mlp_out_local24_d1 sc_out sc_lv 32 signal 25 } 
	{ mlp_out_local24_q1 sc_in sc_lv 32 signal 25 } 
	{ mlp_out_local24_we1 sc_out sc_logic 1 signal 25 } 
	{ mlp_out_local25_address0 sc_out sc_lv 9 signal 26 } 
	{ mlp_out_local25_ce0 sc_out sc_logic 1 signal 26 } 
	{ mlp_out_local25_d0 sc_out sc_lv 32 signal 26 } 
	{ mlp_out_local25_q0 sc_in sc_lv 32 signal 26 } 
	{ mlp_out_local25_we0 sc_out sc_logic 1 signal 26 } 
	{ mlp_out_local25_address1 sc_out sc_lv 9 signal 26 } 
	{ mlp_out_local25_ce1 sc_out sc_logic 1 signal 26 } 
	{ mlp_out_local25_d1 sc_out sc_lv 32 signal 26 } 
	{ mlp_out_local25_q1 sc_in sc_lv 32 signal 26 } 
	{ mlp_out_local25_we1 sc_out sc_logic 1 signal 26 } 
	{ mlp_out_local26_address0 sc_out sc_lv 9 signal 27 } 
	{ mlp_out_local26_ce0 sc_out sc_logic 1 signal 27 } 
	{ mlp_out_local26_d0 sc_out sc_lv 32 signal 27 } 
	{ mlp_out_local26_q0 sc_in sc_lv 32 signal 27 } 
	{ mlp_out_local26_we0 sc_out sc_logic 1 signal 27 } 
	{ mlp_out_local26_address1 sc_out sc_lv 9 signal 27 } 
	{ mlp_out_local26_ce1 sc_out sc_logic 1 signal 27 } 
	{ mlp_out_local26_d1 sc_out sc_lv 32 signal 27 } 
	{ mlp_out_local26_q1 sc_in sc_lv 32 signal 27 } 
	{ mlp_out_local26_we1 sc_out sc_logic 1 signal 27 } 
	{ mlp_out_local27_address0 sc_out sc_lv 9 signal 28 } 
	{ mlp_out_local27_ce0 sc_out sc_logic 1 signal 28 } 
	{ mlp_out_local27_d0 sc_out sc_lv 32 signal 28 } 
	{ mlp_out_local27_q0 sc_in sc_lv 32 signal 28 } 
	{ mlp_out_local27_we0 sc_out sc_logic 1 signal 28 } 
	{ mlp_out_local27_address1 sc_out sc_lv 9 signal 28 } 
	{ mlp_out_local27_ce1 sc_out sc_logic 1 signal 28 } 
	{ mlp_out_local27_d1 sc_out sc_lv 32 signal 28 } 
	{ mlp_out_local27_q1 sc_in sc_lv 32 signal 28 } 
	{ mlp_out_local27_we1 sc_out sc_logic 1 signal 28 } 
	{ mlp_out_local28_address0 sc_out sc_lv 9 signal 29 } 
	{ mlp_out_local28_ce0 sc_out sc_logic 1 signal 29 } 
	{ mlp_out_local28_d0 sc_out sc_lv 32 signal 29 } 
	{ mlp_out_local28_q0 sc_in sc_lv 32 signal 29 } 
	{ mlp_out_local28_we0 sc_out sc_logic 1 signal 29 } 
	{ mlp_out_local28_address1 sc_out sc_lv 9 signal 29 } 
	{ mlp_out_local28_ce1 sc_out sc_logic 1 signal 29 } 
	{ mlp_out_local28_d1 sc_out sc_lv 32 signal 29 } 
	{ mlp_out_local28_q1 sc_in sc_lv 32 signal 29 } 
	{ mlp_out_local28_we1 sc_out sc_logic 1 signal 29 } 
	{ mlp_out_local29_address0 sc_out sc_lv 9 signal 30 } 
	{ mlp_out_local29_ce0 sc_out sc_logic 1 signal 30 } 
	{ mlp_out_local29_d0 sc_out sc_lv 32 signal 30 } 
	{ mlp_out_local29_q0 sc_in sc_lv 32 signal 30 } 
	{ mlp_out_local29_we0 sc_out sc_logic 1 signal 30 } 
	{ mlp_out_local29_address1 sc_out sc_lv 9 signal 30 } 
	{ mlp_out_local29_ce1 sc_out sc_logic 1 signal 30 } 
	{ mlp_out_local29_d1 sc_out sc_lv 32 signal 30 } 
	{ mlp_out_local29_q1 sc_in sc_lv 32 signal 30 } 
	{ mlp_out_local29_we1 sc_out sc_logic 1 signal 30 } 
	{ mlp_out_local30_address0 sc_out sc_lv 9 signal 31 } 
	{ mlp_out_local30_ce0 sc_out sc_logic 1 signal 31 } 
	{ mlp_out_local30_d0 sc_out sc_lv 32 signal 31 } 
	{ mlp_out_local30_q0 sc_in sc_lv 32 signal 31 } 
	{ mlp_out_local30_we0 sc_out sc_logic 1 signal 31 } 
	{ mlp_out_local30_address1 sc_out sc_lv 9 signal 31 } 
	{ mlp_out_local30_ce1 sc_out sc_logic 1 signal 31 } 
	{ mlp_out_local30_d1 sc_out sc_lv 32 signal 31 } 
	{ mlp_out_local30_q1 sc_in sc_lv 32 signal 31 } 
	{ mlp_out_local30_we1 sc_out sc_logic 1 signal 31 } 
	{ d_out sc_in sc_lv 9 signal 32 } 
	{ do_relu sc_in sc_lv 1 signal 33 } 
	{ mlp_2_weights_V_address0 sc_out sc_lv 18 signal 34 } 
	{ mlp_2_weights_V_ce0 sc_out sc_logic 1 signal 34 } 
	{ mlp_2_weights_V_d0 sc_out sc_lv 32 signal 34 } 
	{ mlp_2_weights_V_q0 sc_in sc_lv 32 signal 34 } 
	{ mlp_2_weights_V_we0 sc_out sc_logic 1 signal 34 } 
	{ mlp_2_weights_V_address1 sc_out sc_lv 18 signal 34 } 
	{ mlp_2_weights_V_ce1 sc_out sc_logic 1 signal 34 } 
	{ mlp_2_weights_V_d1 sc_out sc_lv 32 signal 34 } 
	{ mlp_2_weights_V_q1 sc_in sc_lv 32 signal 34 } 
	{ mlp_2_weights_V_we1 sc_out sc_logic 1 signal 34 } 
	{ mlp_2_bias_V_address0 sc_out sc_lv 9 signal 35 } 
	{ mlp_2_bias_V_ce0 sc_out sc_logic 1 signal 35 } 
	{ mlp_2_bias_V_d0 sc_out sc_lv 32 signal 35 } 
	{ mlp_2_bias_V_q0 sc_in sc_lv 32 signal 35 } 
	{ mlp_2_bias_V_we0 sc_out sc_logic 1 signal 35 } 
	{ mlp_2_bias_V_address1 sc_out sc_lv 9 signal 35 } 
	{ mlp_2_bias_V_ce1 sc_out sc_logic 1 signal 35 } 
	{ mlp_2_bias_V_d1 sc_out sc_lv 32 signal 35 } 
	{ mlp_2_bias_V_q1 sc_in sc_lv 32 signal 35 } 
	{ mlp_2_bias_V_we1 sc_out sc_logic 1 signal 35 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ d_out_ap_vld sc_in sc_logic 1 invld 32 } 
	{ do_relu_ap_vld sc_in sc_logic 1 invld 33 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "mlp_in_local_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local", "role": "address0" }} , 
 	{ "name": "mlp_in_local_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local", "role": "ce0" }} , 
 	{ "name": "mlp_in_local_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local", "role": "d0" }} , 
 	{ "name": "mlp_in_local_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local", "role": "q0" }} , 
 	{ "name": "mlp_in_local_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local", "role": "we0" }} , 
 	{ "name": "mlp_in_local_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local", "role": "address1" }} , 
 	{ "name": "mlp_in_local_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local", "role": "ce1" }} , 
 	{ "name": "mlp_in_local_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local", "role": "d1" }} , 
 	{ "name": "mlp_in_local_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local", "role": "q1" }} , 
 	{ "name": "mlp_in_local_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local", "role": "we1" }} , 
 	{ "name": "mlp_in_local1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local1", "role": "address0" }} , 
 	{ "name": "mlp_in_local1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local1", "role": "ce0" }} , 
 	{ "name": "mlp_in_local1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local1", "role": "d0" }} , 
 	{ "name": "mlp_in_local1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local1", "role": "q0" }} , 
 	{ "name": "mlp_in_local1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local1", "role": "we0" }} , 
 	{ "name": "mlp_in_local1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local1", "role": "address1" }} , 
 	{ "name": "mlp_in_local1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local1", "role": "ce1" }} , 
 	{ "name": "mlp_in_local1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local1", "role": "d1" }} , 
 	{ "name": "mlp_in_local1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local1", "role": "q1" }} , 
 	{ "name": "mlp_in_local1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local1", "role": "we1" }} , 
 	{ "name": "mlp_in_local2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local2", "role": "address0" }} , 
 	{ "name": "mlp_in_local2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local2", "role": "ce0" }} , 
 	{ "name": "mlp_in_local2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local2", "role": "d0" }} , 
 	{ "name": "mlp_in_local2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local2", "role": "q0" }} , 
 	{ "name": "mlp_in_local2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local2", "role": "we0" }} , 
 	{ "name": "mlp_in_local2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local2", "role": "address1" }} , 
 	{ "name": "mlp_in_local2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local2", "role": "ce1" }} , 
 	{ "name": "mlp_in_local2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local2", "role": "d1" }} , 
 	{ "name": "mlp_in_local2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local2", "role": "q1" }} , 
 	{ "name": "mlp_in_local2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local2", "role": "we1" }} , 
 	{ "name": "mlp_in_local3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local3", "role": "address0" }} , 
 	{ "name": "mlp_in_local3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local3", "role": "ce0" }} , 
 	{ "name": "mlp_in_local3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local3", "role": "d0" }} , 
 	{ "name": "mlp_in_local3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local3", "role": "q0" }} , 
 	{ "name": "mlp_in_local3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local3", "role": "we0" }} , 
 	{ "name": "mlp_in_local3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local3", "role": "address1" }} , 
 	{ "name": "mlp_in_local3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local3", "role": "ce1" }} , 
 	{ "name": "mlp_in_local3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local3", "role": "d1" }} , 
 	{ "name": "mlp_in_local3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local3", "role": "q1" }} , 
 	{ "name": "mlp_in_local3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local3", "role": "we1" }} , 
 	{ "name": "mlp_in_local4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local4", "role": "address0" }} , 
 	{ "name": "mlp_in_local4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local4", "role": "ce0" }} , 
 	{ "name": "mlp_in_local4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local4", "role": "d0" }} , 
 	{ "name": "mlp_in_local4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local4", "role": "q0" }} , 
 	{ "name": "mlp_in_local4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local4", "role": "we0" }} , 
 	{ "name": "mlp_in_local4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local4", "role": "address1" }} , 
 	{ "name": "mlp_in_local4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local4", "role": "ce1" }} , 
 	{ "name": "mlp_in_local4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local4", "role": "d1" }} , 
 	{ "name": "mlp_in_local4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local4", "role": "q1" }} , 
 	{ "name": "mlp_in_local4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local4", "role": "we1" }} , 
 	{ "name": "mlp_in_local5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local5", "role": "address0" }} , 
 	{ "name": "mlp_in_local5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local5", "role": "ce0" }} , 
 	{ "name": "mlp_in_local5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local5", "role": "d0" }} , 
 	{ "name": "mlp_in_local5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local5", "role": "q0" }} , 
 	{ "name": "mlp_in_local5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local5", "role": "we0" }} , 
 	{ "name": "mlp_in_local5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local5", "role": "address1" }} , 
 	{ "name": "mlp_in_local5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local5", "role": "ce1" }} , 
 	{ "name": "mlp_in_local5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local5", "role": "d1" }} , 
 	{ "name": "mlp_in_local5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local5", "role": "q1" }} , 
 	{ "name": "mlp_in_local5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local5", "role": "we1" }} , 
 	{ "name": "mlp_in_local6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local6", "role": "address0" }} , 
 	{ "name": "mlp_in_local6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local6", "role": "ce0" }} , 
 	{ "name": "mlp_in_local6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local6", "role": "d0" }} , 
 	{ "name": "mlp_in_local6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local6", "role": "q0" }} , 
 	{ "name": "mlp_in_local6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local6", "role": "we0" }} , 
 	{ "name": "mlp_in_local6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local6", "role": "address1" }} , 
 	{ "name": "mlp_in_local6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local6", "role": "ce1" }} , 
 	{ "name": "mlp_in_local6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local6", "role": "d1" }} , 
 	{ "name": "mlp_in_local6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local6", "role": "q1" }} , 
 	{ "name": "mlp_in_local6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local6", "role": "we1" }} , 
 	{ "name": "mlp_in_local7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local7", "role": "address0" }} , 
 	{ "name": "mlp_in_local7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local7", "role": "ce0" }} , 
 	{ "name": "mlp_in_local7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local7", "role": "d0" }} , 
 	{ "name": "mlp_in_local7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local7", "role": "q0" }} , 
 	{ "name": "mlp_in_local7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local7", "role": "we0" }} , 
 	{ "name": "mlp_in_local7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local7", "role": "address1" }} , 
 	{ "name": "mlp_in_local7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local7", "role": "ce1" }} , 
 	{ "name": "mlp_in_local7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local7", "role": "d1" }} , 
 	{ "name": "mlp_in_local7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local7", "role": "q1" }} , 
 	{ "name": "mlp_in_local7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local7", "role": "we1" }} , 
 	{ "name": "mlp_in_local8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local8", "role": "address0" }} , 
 	{ "name": "mlp_in_local8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local8", "role": "ce0" }} , 
 	{ "name": "mlp_in_local8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local8", "role": "d0" }} , 
 	{ "name": "mlp_in_local8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local8", "role": "q0" }} , 
 	{ "name": "mlp_in_local8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local8", "role": "we0" }} , 
 	{ "name": "mlp_in_local8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local8", "role": "address1" }} , 
 	{ "name": "mlp_in_local8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local8", "role": "ce1" }} , 
 	{ "name": "mlp_in_local8_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local8", "role": "d1" }} , 
 	{ "name": "mlp_in_local8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local8", "role": "q1" }} , 
 	{ "name": "mlp_in_local8_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local8", "role": "we1" }} , 
 	{ "name": "mlp_in_local9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local9", "role": "address0" }} , 
 	{ "name": "mlp_in_local9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local9", "role": "ce0" }} , 
 	{ "name": "mlp_in_local9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local9", "role": "d0" }} , 
 	{ "name": "mlp_in_local9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local9", "role": "q0" }} , 
 	{ "name": "mlp_in_local9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local9", "role": "we0" }} , 
 	{ "name": "mlp_in_local9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local9", "role": "address1" }} , 
 	{ "name": "mlp_in_local9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local9", "role": "ce1" }} , 
 	{ "name": "mlp_in_local9_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local9", "role": "d1" }} , 
 	{ "name": "mlp_in_local9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local9", "role": "q1" }} , 
 	{ "name": "mlp_in_local9_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local9", "role": "we1" }} , 
 	{ "name": "mlp_in_local10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local10", "role": "address0" }} , 
 	{ "name": "mlp_in_local10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local10", "role": "ce0" }} , 
 	{ "name": "mlp_in_local10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local10", "role": "d0" }} , 
 	{ "name": "mlp_in_local10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local10", "role": "q0" }} , 
 	{ "name": "mlp_in_local10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local10", "role": "we0" }} , 
 	{ "name": "mlp_in_local10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local10", "role": "address1" }} , 
 	{ "name": "mlp_in_local10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local10", "role": "ce1" }} , 
 	{ "name": "mlp_in_local10_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local10", "role": "d1" }} , 
 	{ "name": "mlp_in_local10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local10", "role": "q1" }} , 
 	{ "name": "mlp_in_local10_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local10", "role": "we1" }} , 
 	{ "name": "mlp_in_local11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local11", "role": "address0" }} , 
 	{ "name": "mlp_in_local11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local11", "role": "ce0" }} , 
 	{ "name": "mlp_in_local11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local11", "role": "d0" }} , 
 	{ "name": "mlp_in_local11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local11", "role": "q0" }} , 
 	{ "name": "mlp_in_local11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local11", "role": "we0" }} , 
 	{ "name": "mlp_in_local11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local11", "role": "address1" }} , 
 	{ "name": "mlp_in_local11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local11", "role": "ce1" }} , 
 	{ "name": "mlp_in_local11_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local11", "role": "d1" }} , 
 	{ "name": "mlp_in_local11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local11", "role": "q1" }} , 
 	{ "name": "mlp_in_local11_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local11", "role": "we1" }} , 
 	{ "name": "mlp_in_local12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local12", "role": "address0" }} , 
 	{ "name": "mlp_in_local12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local12", "role": "ce0" }} , 
 	{ "name": "mlp_in_local12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local12", "role": "d0" }} , 
 	{ "name": "mlp_in_local12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local12", "role": "q0" }} , 
 	{ "name": "mlp_in_local12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local12", "role": "we0" }} , 
 	{ "name": "mlp_in_local12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local12", "role": "address1" }} , 
 	{ "name": "mlp_in_local12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local12", "role": "ce1" }} , 
 	{ "name": "mlp_in_local12_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local12", "role": "d1" }} , 
 	{ "name": "mlp_in_local12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local12", "role": "q1" }} , 
 	{ "name": "mlp_in_local12_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local12", "role": "we1" }} , 
 	{ "name": "mlp_in_local13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local13", "role": "address0" }} , 
 	{ "name": "mlp_in_local13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local13", "role": "ce0" }} , 
 	{ "name": "mlp_in_local13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local13", "role": "d0" }} , 
 	{ "name": "mlp_in_local13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local13", "role": "q0" }} , 
 	{ "name": "mlp_in_local13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local13", "role": "we0" }} , 
 	{ "name": "mlp_in_local13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local13", "role": "address1" }} , 
 	{ "name": "mlp_in_local13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local13", "role": "ce1" }} , 
 	{ "name": "mlp_in_local13_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local13", "role": "d1" }} , 
 	{ "name": "mlp_in_local13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local13", "role": "q1" }} , 
 	{ "name": "mlp_in_local13_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local13", "role": "we1" }} , 
 	{ "name": "mlp_in_local14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local14", "role": "address0" }} , 
 	{ "name": "mlp_in_local14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local14", "role": "ce0" }} , 
 	{ "name": "mlp_in_local14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local14", "role": "d0" }} , 
 	{ "name": "mlp_in_local14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local14", "role": "q0" }} , 
 	{ "name": "mlp_in_local14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local14", "role": "we0" }} , 
 	{ "name": "mlp_in_local14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local14", "role": "address1" }} , 
 	{ "name": "mlp_in_local14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local14", "role": "ce1" }} , 
 	{ "name": "mlp_in_local14_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local14", "role": "d1" }} , 
 	{ "name": "mlp_in_local14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local14", "role": "q1" }} , 
 	{ "name": "mlp_in_local14_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local14", "role": "we1" }} , 
 	{ "name": "mlp_in_local15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local15", "role": "address0" }} , 
 	{ "name": "mlp_in_local15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local15", "role": "ce0" }} , 
 	{ "name": "mlp_in_local15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local15", "role": "d0" }} , 
 	{ "name": "mlp_in_local15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local15", "role": "q0" }} , 
 	{ "name": "mlp_in_local15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local15", "role": "we0" }} , 
 	{ "name": "mlp_in_local15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local15", "role": "address1" }} , 
 	{ "name": "mlp_in_local15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local15", "role": "ce1" }} , 
 	{ "name": "mlp_in_local15_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local15", "role": "d1" }} , 
 	{ "name": "mlp_in_local15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local15", "role": "q1" }} , 
 	{ "name": "mlp_in_local15_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local15", "role": "we1" }} , 
 	{ "name": "mlp_out_local_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local", "role": "address0" }} , 
 	{ "name": "mlp_out_local_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local", "role": "ce0" }} , 
 	{ "name": "mlp_out_local_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local", "role": "d0" }} , 
 	{ "name": "mlp_out_local_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local", "role": "q0" }} , 
 	{ "name": "mlp_out_local_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local", "role": "we0" }} , 
 	{ "name": "mlp_out_local_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local", "role": "address1" }} , 
 	{ "name": "mlp_out_local_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local", "role": "ce1" }} , 
 	{ "name": "mlp_out_local_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local", "role": "d1" }} , 
 	{ "name": "mlp_out_local_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local", "role": "q1" }} , 
 	{ "name": "mlp_out_local_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local", "role": "we1" }} , 
 	{ "name": "mlp_out_local16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local16", "role": "address0" }} , 
 	{ "name": "mlp_out_local16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local16", "role": "ce0" }} , 
 	{ "name": "mlp_out_local16_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local16", "role": "d0" }} , 
 	{ "name": "mlp_out_local16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local16", "role": "q0" }} , 
 	{ "name": "mlp_out_local16_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local16", "role": "we0" }} , 
 	{ "name": "mlp_out_local16_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local16", "role": "address1" }} , 
 	{ "name": "mlp_out_local16_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local16", "role": "ce1" }} , 
 	{ "name": "mlp_out_local16_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local16", "role": "d1" }} , 
 	{ "name": "mlp_out_local16_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local16", "role": "q1" }} , 
 	{ "name": "mlp_out_local16_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local16", "role": "we1" }} , 
 	{ "name": "mlp_out_local17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local17", "role": "address0" }} , 
 	{ "name": "mlp_out_local17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local17", "role": "ce0" }} , 
 	{ "name": "mlp_out_local17_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local17", "role": "d0" }} , 
 	{ "name": "mlp_out_local17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local17", "role": "q0" }} , 
 	{ "name": "mlp_out_local17_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local17", "role": "we0" }} , 
 	{ "name": "mlp_out_local17_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local17", "role": "address1" }} , 
 	{ "name": "mlp_out_local17_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local17", "role": "ce1" }} , 
 	{ "name": "mlp_out_local17_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local17", "role": "d1" }} , 
 	{ "name": "mlp_out_local17_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local17", "role": "q1" }} , 
 	{ "name": "mlp_out_local17_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local17", "role": "we1" }} , 
 	{ "name": "mlp_out_local18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local18", "role": "address0" }} , 
 	{ "name": "mlp_out_local18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local18", "role": "ce0" }} , 
 	{ "name": "mlp_out_local18_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local18", "role": "d0" }} , 
 	{ "name": "mlp_out_local18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local18", "role": "q0" }} , 
 	{ "name": "mlp_out_local18_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local18", "role": "we0" }} , 
 	{ "name": "mlp_out_local18_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local18", "role": "address1" }} , 
 	{ "name": "mlp_out_local18_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local18", "role": "ce1" }} , 
 	{ "name": "mlp_out_local18_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local18", "role": "d1" }} , 
 	{ "name": "mlp_out_local18_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local18", "role": "q1" }} , 
 	{ "name": "mlp_out_local18_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local18", "role": "we1" }} , 
 	{ "name": "mlp_out_local19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local19", "role": "address0" }} , 
 	{ "name": "mlp_out_local19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local19", "role": "ce0" }} , 
 	{ "name": "mlp_out_local19_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local19", "role": "d0" }} , 
 	{ "name": "mlp_out_local19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local19", "role": "q0" }} , 
 	{ "name": "mlp_out_local19_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local19", "role": "we0" }} , 
 	{ "name": "mlp_out_local19_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local19", "role": "address1" }} , 
 	{ "name": "mlp_out_local19_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local19", "role": "ce1" }} , 
 	{ "name": "mlp_out_local19_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local19", "role": "d1" }} , 
 	{ "name": "mlp_out_local19_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local19", "role": "q1" }} , 
 	{ "name": "mlp_out_local19_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local19", "role": "we1" }} , 
 	{ "name": "mlp_out_local20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local20", "role": "address0" }} , 
 	{ "name": "mlp_out_local20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local20", "role": "ce0" }} , 
 	{ "name": "mlp_out_local20_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local20", "role": "d0" }} , 
 	{ "name": "mlp_out_local20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local20", "role": "q0" }} , 
 	{ "name": "mlp_out_local20_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local20", "role": "we0" }} , 
 	{ "name": "mlp_out_local20_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local20", "role": "address1" }} , 
 	{ "name": "mlp_out_local20_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local20", "role": "ce1" }} , 
 	{ "name": "mlp_out_local20_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local20", "role": "d1" }} , 
 	{ "name": "mlp_out_local20_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local20", "role": "q1" }} , 
 	{ "name": "mlp_out_local20_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local20", "role": "we1" }} , 
 	{ "name": "mlp_out_local21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local21", "role": "address0" }} , 
 	{ "name": "mlp_out_local21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local21", "role": "ce0" }} , 
 	{ "name": "mlp_out_local21_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local21", "role": "d0" }} , 
 	{ "name": "mlp_out_local21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local21", "role": "q0" }} , 
 	{ "name": "mlp_out_local21_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local21", "role": "we0" }} , 
 	{ "name": "mlp_out_local21_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local21", "role": "address1" }} , 
 	{ "name": "mlp_out_local21_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local21", "role": "ce1" }} , 
 	{ "name": "mlp_out_local21_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local21", "role": "d1" }} , 
 	{ "name": "mlp_out_local21_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local21", "role": "q1" }} , 
 	{ "name": "mlp_out_local21_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local21", "role": "we1" }} , 
 	{ "name": "mlp_out_local22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local22", "role": "address0" }} , 
 	{ "name": "mlp_out_local22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local22", "role": "ce0" }} , 
 	{ "name": "mlp_out_local22_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local22", "role": "d0" }} , 
 	{ "name": "mlp_out_local22_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local22", "role": "q0" }} , 
 	{ "name": "mlp_out_local22_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local22", "role": "we0" }} , 
 	{ "name": "mlp_out_local22_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local22", "role": "address1" }} , 
 	{ "name": "mlp_out_local22_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local22", "role": "ce1" }} , 
 	{ "name": "mlp_out_local22_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local22", "role": "d1" }} , 
 	{ "name": "mlp_out_local22_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local22", "role": "q1" }} , 
 	{ "name": "mlp_out_local22_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local22", "role": "we1" }} , 
 	{ "name": "mlp_out_local23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local23", "role": "address0" }} , 
 	{ "name": "mlp_out_local23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local23", "role": "ce0" }} , 
 	{ "name": "mlp_out_local23_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local23", "role": "d0" }} , 
 	{ "name": "mlp_out_local23_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local23", "role": "q0" }} , 
 	{ "name": "mlp_out_local23_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local23", "role": "we0" }} , 
 	{ "name": "mlp_out_local23_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local23", "role": "address1" }} , 
 	{ "name": "mlp_out_local23_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local23", "role": "ce1" }} , 
 	{ "name": "mlp_out_local23_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local23", "role": "d1" }} , 
 	{ "name": "mlp_out_local23_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local23", "role": "q1" }} , 
 	{ "name": "mlp_out_local23_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local23", "role": "we1" }} , 
 	{ "name": "mlp_out_local24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local24", "role": "address0" }} , 
 	{ "name": "mlp_out_local24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local24", "role": "ce0" }} , 
 	{ "name": "mlp_out_local24_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local24", "role": "d0" }} , 
 	{ "name": "mlp_out_local24_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local24", "role": "q0" }} , 
 	{ "name": "mlp_out_local24_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local24", "role": "we0" }} , 
 	{ "name": "mlp_out_local24_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local24", "role": "address1" }} , 
 	{ "name": "mlp_out_local24_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local24", "role": "ce1" }} , 
 	{ "name": "mlp_out_local24_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local24", "role": "d1" }} , 
 	{ "name": "mlp_out_local24_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local24", "role": "q1" }} , 
 	{ "name": "mlp_out_local24_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local24", "role": "we1" }} , 
 	{ "name": "mlp_out_local25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local25", "role": "address0" }} , 
 	{ "name": "mlp_out_local25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local25", "role": "ce0" }} , 
 	{ "name": "mlp_out_local25_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local25", "role": "d0" }} , 
 	{ "name": "mlp_out_local25_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local25", "role": "q0" }} , 
 	{ "name": "mlp_out_local25_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local25", "role": "we0" }} , 
 	{ "name": "mlp_out_local25_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local25", "role": "address1" }} , 
 	{ "name": "mlp_out_local25_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local25", "role": "ce1" }} , 
 	{ "name": "mlp_out_local25_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local25", "role": "d1" }} , 
 	{ "name": "mlp_out_local25_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local25", "role": "q1" }} , 
 	{ "name": "mlp_out_local25_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local25", "role": "we1" }} , 
 	{ "name": "mlp_out_local26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local26", "role": "address0" }} , 
 	{ "name": "mlp_out_local26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local26", "role": "ce0" }} , 
 	{ "name": "mlp_out_local26_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local26", "role": "d0" }} , 
 	{ "name": "mlp_out_local26_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local26", "role": "q0" }} , 
 	{ "name": "mlp_out_local26_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local26", "role": "we0" }} , 
 	{ "name": "mlp_out_local26_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local26", "role": "address1" }} , 
 	{ "name": "mlp_out_local26_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local26", "role": "ce1" }} , 
 	{ "name": "mlp_out_local26_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local26", "role": "d1" }} , 
 	{ "name": "mlp_out_local26_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local26", "role": "q1" }} , 
 	{ "name": "mlp_out_local26_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local26", "role": "we1" }} , 
 	{ "name": "mlp_out_local27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local27", "role": "address0" }} , 
 	{ "name": "mlp_out_local27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local27", "role": "ce0" }} , 
 	{ "name": "mlp_out_local27_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local27", "role": "d0" }} , 
 	{ "name": "mlp_out_local27_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local27", "role": "q0" }} , 
 	{ "name": "mlp_out_local27_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local27", "role": "we0" }} , 
 	{ "name": "mlp_out_local27_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local27", "role": "address1" }} , 
 	{ "name": "mlp_out_local27_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local27", "role": "ce1" }} , 
 	{ "name": "mlp_out_local27_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local27", "role": "d1" }} , 
 	{ "name": "mlp_out_local27_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local27", "role": "q1" }} , 
 	{ "name": "mlp_out_local27_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local27", "role": "we1" }} , 
 	{ "name": "mlp_out_local28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local28", "role": "address0" }} , 
 	{ "name": "mlp_out_local28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local28", "role": "ce0" }} , 
 	{ "name": "mlp_out_local28_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local28", "role": "d0" }} , 
 	{ "name": "mlp_out_local28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local28", "role": "q0" }} , 
 	{ "name": "mlp_out_local28_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local28", "role": "we0" }} , 
 	{ "name": "mlp_out_local28_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local28", "role": "address1" }} , 
 	{ "name": "mlp_out_local28_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local28", "role": "ce1" }} , 
 	{ "name": "mlp_out_local28_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local28", "role": "d1" }} , 
 	{ "name": "mlp_out_local28_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local28", "role": "q1" }} , 
 	{ "name": "mlp_out_local28_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local28", "role": "we1" }} , 
 	{ "name": "mlp_out_local29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local29", "role": "address0" }} , 
 	{ "name": "mlp_out_local29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local29", "role": "ce0" }} , 
 	{ "name": "mlp_out_local29_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local29", "role": "d0" }} , 
 	{ "name": "mlp_out_local29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local29", "role": "q0" }} , 
 	{ "name": "mlp_out_local29_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local29", "role": "we0" }} , 
 	{ "name": "mlp_out_local29_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local29", "role": "address1" }} , 
 	{ "name": "mlp_out_local29_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local29", "role": "ce1" }} , 
 	{ "name": "mlp_out_local29_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local29", "role": "d1" }} , 
 	{ "name": "mlp_out_local29_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local29", "role": "q1" }} , 
 	{ "name": "mlp_out_local29_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local29", "role": "we1" }} , 
 	{ "name": "mlp_out_local30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local30", "role": "address0" }} , 
 	{ "name": "mlp_out_local30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local30", "role": "ce0" }} , 
 	{ "name": "mlp_out_local30_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local30", "role": "d0" }} , 
 	{ "name": "mlp_out_local30_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local30", "role": "q0" }} , 
 	{ "name": "mlp_out_local30_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local30", "role": "we0" }} , 
 	{ "name": "mlp_out_local30_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local30", "role": "address1" }} , 
 	{ "name": "mlp_out_local30_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local30", "role": "ce1" }} , 
 	{ "name": "mlp_out_local30_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local30", "role": "d1" }} , 
 	{ "name": "mlp_out_local30_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local30", "role": "q1" }} , 
 	{ "name": "mlp_out_local30_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local30", "role": "we1" }} , 
 	{ "name": "d_out", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "d_out", "role": "default" }} , 
 	{ "name": "do_relu", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "do_relu", "role": "default" }} , 
 	{ "name": "mlp_2_weights_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "mlp_2_weights_V", "role": "address0" }} , 
 	{ "name": "mlp_2_weights_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_2_weights_V", "role": "ce0" }} , 
 	{ "name": "mlp_2_weights_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_2_weights_V", "role": "d0" }} , 
 	{ "name": "mlp_2_weights_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_2_weights_V", "role": "q0" }} , 
 	{ "name": "mlp_2_weights_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_2_weights_V", "role": "we0" }} , 
 	{ "name": "mlp_2_weights_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "mlp_2_weights_V", "role": "address1" }} , 
 	{ "name": "mlp_2_weights_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_2_weights_V", "role": "ce1" }} , 
 	{ "name": "mlp_2_weights_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_2_weights_V", "role": "d1" }} , 
 	{ "name": "mlp_2_weights_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_2_weights_V", "role": "q1" }} , 
 	{ "name": "mlp_2_weights_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_2_weights_V", "role": "we1" }} , 
 	{ "name": "mlp_2_bias_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_2_bias_V", "role": "address0" }} , 
 	{ "name": "mlp_2_bias_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_2_bias_V", "role": "ce0" }} , 
 	{ "name": "mlp_2_bias_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_2_bias_V", "role": "d0" }} , 
 	{ "name": "mlp_2_bias_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_2_bias_V", "role": "q0" }} , 
 	{ "name": "mlp_2_bias_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_2_bias_V", "role": "we0" }} , 
 	{ "name": "mlp_2_bias_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_2_bias_V", "role": "address1" }} , 
 	{ "name": "mlp_2_bias_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_2_bias_V", "role": "ce1" }} , 
 	{ "name": "mlp_2_bias_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_2_bias_V", "role": "d1" }} , 
 	{ "name": "mlp_2_bias_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_2_bias_V", "role": "q1" }} , 
 	{ "name": "mlp_2_bias_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_2_bias_V", "role": "we1" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "d_out_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "d_out", "role": "ap_vld" }} , 
 	{ "name": "do_relu_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "do_relu", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "5", "7", "9", "11", "13", "15", "17", "19", "21", "23", "25", "27", "29", "31", "33", "35", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102"],
		"CDFG" : "MLP_batch_nodes_600_300_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "622", "EstimateLatencyMax" : "622",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "MLP_batch_nodes_600_300_entry162_U0"},
			{"ID" : "2", "Name" : "load_mlp_weight_vector_600_300_U0"},
			{"ID" : "4", "Name" : "MLP_batch_nodes_600_300_Block_split13_proc_U0"},
			{"ID" : "5", "Name" : "MLP_PE_600_300_58_U0"},
			{"ID" : "7", "Name" : "MLP_PE_600_300_59_U0"},
			{"ID" : "9", "Name" : "MLP_PE_600_300_60_U0"},
			{"ID" : "11", "Name" : "MLP_PE_600_300_61_U0"},
			{"ID" : "13", "Name" : "MLP_PE_600_300_62_U0"},
			{"ID" : "15", "Name" : "MLP_PE_600_300_63_U0"},
			{"ID" : "17", "Name" : "MLP_PE_600_300_64_U0"},
			{"ID" : "19", "Name" : "MLP_PE_600_300_65_U0"},
			{"ID" : "21", "Name" : "MLP_PE_600_300_66_U0"},
			{"ID" : "23", "Name" : "MLP_PE_600_300_67_U0"},
			{"ID" : "25", "Name" : "MLP_PE_600_300_68_U0"},
			{"ID" : "27", "Name" : "MLP_PE_600_300_69_U0"},
			{"ID" : "29", "Name" : "MLP_PE_600_300_70_U0"},
			{"ID" : "31", "Name" : "MLP_PE_600_300_71_U0"},
			{"ID" : "33", "Name" : "MLP_PE_600_300_72_U0"},
			{"ID" : "35", "Name" : "MLP_PE_600_300_73_U0"}],
		"OutputProcess" : [
			{"ID" : "5", "Name" : "MLP_PE_600_300_58_U0"},
			{"ID" : "7", "Name" : "MLP_PE_600_300_59_U0"},
			{"ID" : "9", "Name" : "MLP_PE_600_300_60_U0"},
			{"ID" : "11", "Name" : "MLP_PE_600_300_61_U0"},
			{"ID" : "13", "Name" : "MLP_PE_600_300_62_U0"},
			{"ID" : "15", "Name" : "MLP_PE_600_300_63_U0"},
			{"ID" : "17", "Name" : "MLP_PE_600_300_64_U0"},
			{"ID" : "19", "Name" : "MLP_PE_600_300_65_U0"},
			{"ID" : "21", "Name" : "MLP_PE_600_300_66_U0"},
			{"ID" : "23", "Name" : "MLP_PE_600_300_67_U0"},
			{"ID" : "25", "Name" : "MLP_PE_600_300_68_U0"},
			{"ID" : "27", "Name" : "MLP_PE_600_300_69_U0"},
			{"ID" : "29", "Name" : "MLP_PE_600_300_70_U0"},
			{"ID" : "31", "Name" : "MLP_PE_600_300_71_U0"},
			{"ID" : "33", "Name" : "MLP_PE_600_300_72_U0"},
			{"ID" : "35", "Name" : "MLP_PE_600_300_73_U0"}],
		"Port" : [
			{"Name" : "mlp_in_local", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "MLP_PE_600_300_58_U0", "Port" : "mlp_in_local"}]},
			{"Name" : "mlp_in_local1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "MLP_PE_600_300_59_U0", "Port" : "mlp_in_local1"}]},
			{"Name" : "mlp_in_local2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "MLP_PE_600_300_60_U0", "Port" : "mlp_in_local2"}]},
			{"Name" : "mlp_in_local3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "MLP_PE_600_300_61_U0", "Port" : "mlp_in_local3"}]},
			{"Name" : "mlp_in_local4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "MLP_PE_600_300_62_U0", "Port" : "mlp_in_local4"}]},
			{"Name" : "mlp_in_local5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "MLP_PE_600_300_63_U0", "Port" : "mlp_in_local5"}]},
			{"Name" : "mlp_in_local6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "MLP_PE_600_300_64_U0", "Port" : "mlp_in_local6"}]},
			{"Name" : "mlp_in_local7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "MLP_PE_600_300_65_U0", "Port" : "mlp_in_local7"}]},
			{"Name" : "mlp_in_local8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "MLP_PE_600_300_66_U0", "Port" : "mlp_in_local8"}]},
			{"Name" : "mlp_in_local9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "MLP_PE_600_300_67_U0", "Port" : "mlp_in_local9"}]},
			{"Name" : "mlp_in_local10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "MLP_PE_600_300_68_U0", "Port" : "mlp_in_local10"}]},
			{"Name" : "mlp_in_local11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "MLP_PE_600_300_69_U0", "Port" : "mlp_in_local11"}]},
			{"Name" : "mlp_in_local12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "MLP_PE_600_300_70_U0", "Port" : "mlp_in_local12"}]},
			{"Name" : "mlp_in_local13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "MLP_PE_600_300_71_U0", "Port" : "mlp_in_local13"}]},
			{"Name" : "mlp_in_local14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "MLP_PE_600_300_72_U0", "Port" : "mlp_in_local14"}]},
			{"Name" : "mlp_in_local15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "MLP_PE_600_300_73_U0", "Port" : "mlp_in_local15"}]},
			{"Name" : "mlp_out_local", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "MLP_PE_600_300_58_U0", "Port" : "mlp_out_local"}]},
			{"Name" : "mlp_out_local16", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "MLP_PE_600_300_59_U0", "Port" : "mlp_out_local16"}]},
			{"Name" : "mlp_out_local17", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "MLP_PE_600_300_60_U0", "Port" : "mlp_out_local17"}]},
			{"Name" : "mlp_out_local18", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "MLP_PE_600_300_61_U0", "Port" : "mlp_out_local18"}]},
			{"Name" : "mlp_out_local19", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "MLP_PE_600_300_62_U0", "Port" : "mlp_out_local19"}]},
			{"Name" : "mlp_out_local20", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "MLP_PE_600_300_63_U0", "Port" : "mlp_out_local20"}]},
			{"Name" : "mlp_out_local21", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "MLP_PE_600_300_64_U0", "Port" : "mlp_out_local21"}]},
			{"Name" : "mlp_out_local22", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "MLP_PE_600_300_65_U0", "Port" : "mlp_out_local22"}]},
			{"Name" : "mlp_out_local23", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "MLP_PE_600_300_66_U0", "Port" : "mlp_out_local23"}]},
			{"Name" : "mlp_out_local24", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "MLP_PE_600_300_67_U0", "Port" : "mlp_out_local24"}]},
			{"Name" : "mlp_out_local25", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "MLP_PE_600_300_68_U0", "Port" : "mlp_out_local25"}]},
			{"Name" : "mlp_out_local26", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "MLP_PE_600_300_69_U0", "Port" : "mlp_out_local26"}]},
			{"Name" : "mlp_out_local27", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "MLP_PE_600_300_70_U0", "Port" : "mlp_out_local27"}]},
			{"Name" : "mlp_out_local28", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "MLP_PE_600_300_71_U0", "Port" : "mlp_out_local28"}]},
			{"Name" : "mlp_out_local29", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "MLP_PE_600_300_72_U0", "Port" : "mlp_out_local29"}]},
			{"Name" : "mlp_out_local30", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "MLP_PE_600_300_73_U0", "Port" : "mlp_out_local30"}]},
			{"Name" : "d_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_relu", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_2_weights_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "load_mlp_weight_vector_600_300_U0", "Port" : "mlp_2_weights_V"}]},
			{"Name" : "mlp_2_bias_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "MLP_batch_nodes_600_300_Block_split13_proc_U0", "Port" : "mlp_2_bias_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_batch_nodes_600_300_entry162_U0", "Parent" : "0",
		"CDFG" : "MLP_batch_nodes_600_300_entry162",
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
			{"Name" : "do_relu", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "37", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "38", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "39", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.load_mlp_weight_vector_600_300_U0", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "load_mlp_weight_vector_600_300_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "605", "EstimateLatencyMax" : "605",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_vector", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "40", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_vector_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "37", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "41", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_weights_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.load_mlp_weight_vector_600_300_U0.mul_mul_9ns_11ns_18_4_1_U303", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_batch_nodes_600_300_Block_split13_proc_U0", "Parent" : "0",
		"CDFG" : "MLP_batch_nodes_600_300_Block_split13_proc",
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
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "38", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "42", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_58_U0", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "MLP_PE_600_300_58",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_0_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "40", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_0_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "43", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "42", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "41", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "39", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "44", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "45", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "46", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_58_U0.mul_32s_31ns_54_1_1_U312", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_59_U0", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "MLP_PE_600_300_59",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "43", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_2_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "47", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "44", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "45", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "46", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "48", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "49", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "50", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_59_U0.mul_32s_31ns_54_1_1_U324", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_60_U0", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "MLP_PE_600_300_60",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_2_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "47", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_3_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "51", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "48", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "49", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "50", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "52", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "53", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "54", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_60_U0.mul_32s_31ns_54_1_1_U335", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_61_U0", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "MLP_PE_600_300_61",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_3_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "51", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_4_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "55", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_4_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "52", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "53", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "54", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "56", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "57", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "58", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_61_U0.mul_32s_31ns_54_1_1_U346", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_62_U0", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "MLP_PE_600_300_62",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_4_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "55", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_4_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_5_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "59", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_5_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "56", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "57", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "58", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "60", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "61", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "62", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_62_U0.mul_32s_31ns_54_1_1_U357", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_63_U0", "Parent" : "0", "Child" : ["16"],
		"CDFG" : "MLP_PE_600_300_63",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_5_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "59", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_5_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_6_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "63", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_6_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "60", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "61", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "62", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "64", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "65", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "66", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_63_U0.mul_32s_31ns_54_1_1_U368", "Parent" : "15"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_64_U0", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "MLP_PE_600_300_64",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_6_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "63", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_6_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_7_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "67", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_7_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "64", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "65", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "66", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "68", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "69", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "70", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_64_U0.mul_32s_31ns_54_1_1_U379", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_65_U0", "Parent" : "0", "Child" : ["20"],
		"CDFG" : "MLP_PE_600_300_65",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_7_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "67", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_7_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_8_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "71", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_8_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "68", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "69", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "70", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "72", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "73", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "74", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_65_U0.mul_32s_31ns_54_1_1_U390", "Parent" : "19"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_66_U0", "Parent" : "0", "Child" : ["22"],
		"CDFG" : "MLP_PE_600_300_66",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_8_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "71", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_8_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_9_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "75", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_9_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "72", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "73", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "74", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "76", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "77", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "78", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_66_U0.mul_32s_31ns_54_1_1_U401", "Parent" : "21"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_67_U0", "Parent" : "0", "Child" : ["24"],
		"CDFG" : "MLP_PE_600_300_67",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_9_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "75", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_9_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_10_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "79", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_10_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "76", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "77", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "78", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "80", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "81", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "82", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_67_U0.mul_32s_31ns_54_1_1_U412", "Parent" : "23"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_68_U0", "Parent" : "0", "Child" : ["26"],
		"CDFG" : "MLP_PE_600_300_68",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_10_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "79", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_10_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_11_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "83", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_11_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "80", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "81", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "82", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "84", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "85", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "86", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_68_U0.mul_32s_31ns_54_1_1_U423", "Parent" : "25"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_69_U0", "Parent" : "0", "Child" : ["28"],
		"CDFG" : "MLP_PE_600_300_69",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_11_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "83", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_11_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_12_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "29", "DependentChan" : "87", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_12_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "84", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "85", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "86", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "29", "DependentChan" : "88", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "29", "DependentChan" : "89", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "29", "DependentChan" : "90", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_69_U0.mul_32s_31ns_54_1_1_U434", "Parent" : "27"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_70_U0", "Parent" : "0", "Child" : ["30"],
		"CDFG" : "MLP_PE_600_300_70",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_12_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "87", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_12_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_13_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "91", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_13_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "88", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "89", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "90", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "92", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "93", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "94", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_70_U0.mul_32s_31ns_54_1_1_U445", "Parent" : "29"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_71_U0", "Parent" : "0", "Child" : ["32"],
		"CDFG" : "MLP_PE_600_300_71",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_13_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "29", "DependentChan" : "91", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_13_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_14_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "33", "DependentChan" : "95", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_14_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "29", "DependentChan" : "92", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "29", "DependentChan" : "93", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "29", "DependentChan" : "94", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "33", "DependentChan" : "96", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "33", "DependentChan" : "97", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "33", "DependentChan" : "98", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_71_U0.mul_32s_31ns_54_1_1_U456", "Parent" : "31"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_72_U0", "Parent" : "0", "Child" : ["34"],
		"CDFG" : "MLP_PE_600_300_72",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_14_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "95", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_14_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_15_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "99", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_15_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "96", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "97", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "98", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "100", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "101", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "35", "DependentChan" : "102", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_72_U0.mul_32s_31ns_54_1_1_U467", "Parent" : "33"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_73_U0", "Parent" : "0", "Child" : ["36"],
		"CDFG" : "MLP_PE_600_300_73",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_15_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "99", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_15_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "100", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "101", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "102", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_PE_600_300_73_U0.mul_32s_31ns_54_1_1_U478", "Parent" : "35"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c38_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.do_relu_c_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_weight_fifo_0_V_V_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c39_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_2_bias_V_load_loc_c_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_weight_fifo_1_V_V_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_2_bias_V_load_loc_c40_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c41_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.do_relu_c42_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_weight_fifo_2_V_V_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_2_bias_V_load_loc_c43_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c44_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.do_relu_c45_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_weight_fifo_3_V_V_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_2_bias_V_load_loc_c46_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c47_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.do_relu_c48_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_weight_fifo_4_V_V_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_2_bias_V_load_loc_c49_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c50_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.do_relu_c51_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_weight_fifo_5_V_V_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_2_bias_V_load_loc_c52_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c53_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.do_relu_c54_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_weight_fifo_6_V_V_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_2_bias_V_load_loc_c55_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c56_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.do_relu_c57_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_weight_fifo_7_V_V_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_2_bias_V_load_loc_c58_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c59_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.do_relu_c60_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_weight_fifo_8_V_V_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_2_bias_V_load_loc_c61_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c62_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.do_relu_c63_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_weight_fifo_9_V_V_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_2_bias_V_load_loc_c64_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c65_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.do_relu_c66_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_weight_fifo_10_V_V_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_2_bias_V_load_loc_c67_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c68_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.do_relu_c69_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_weight_fifo_11_V_V_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_2_bias_V_load_loc_c70_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c71_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.do_relu_c72_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_weight_fifo_12_V_V_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_2_bias_V_load_loc_c73_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c74_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.do_relu_c75_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_weight_fifo_13_V_V_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_2_bias_V_load_loc_c76_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c77_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.do_relu_c78_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_weight_fifo_14_V_V_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_2_bias_V_load_loc_c79_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c80_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.do_relu_c81_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_weight_fifo_15_V_V_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_2_bias_V_load_loc_c82_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c83_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.do_relu_c84_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MLP_batch_nodes_600_300_s {
		mlp_in_local {Type I LastRead 1 FirstWrite -1}
		mlp_in_local1 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local2 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local3 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local4 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local5 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local6 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local7 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local8 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local9 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local10 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local11 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local12 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local13 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local14 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local15 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local {Type O LastRead -1 FirstWrite 2}
		mlp_out_local16 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local17 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local18 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local19 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local20 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local21 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local22 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local23 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local24 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local25 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local26 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local27 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local28 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local29 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local30 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_weights_V {Type I LastRead 4 FirstWrite -1}
		mlp_2_bias_V {Type I LastRead 0 FirstWrite -1}}
	MLP_batch_nodes_600_300_entry162 {
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		d_out_out1 {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	load_mlp_weight_vector_600_300_s {
		mlp_weight_vector {Type O LastRead -1 FirstWrite 5}
		d_out {Type I LastRead 0 FirstWrite -1}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		mlp_2_weights_V {Type I LastRead 4 FirstWrite -1}}
	MLP_batch_nodes_600_300_Block_split13_proc {
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_out_out {Type O LastRead -1 FirstWrite 1}
		mlp_2_bias_V {Type I LastRead 0 FirstWrite -1}}
	MLP_PE_600_300_58 {
		mlp_weight_fifo_0_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_1_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local {Type I LastRead 1 FirstWrite -1}
		mlp_out_local {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_59 {
		mlp_weight_fifo_1_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_2_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local1 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local16 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_60 {
		mlp_weight_fifo_2_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_3_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local2 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local17 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_61 {
		mlp_weight_fifo_3_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_4_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local3 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local18 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_62 {
		mlp_weight_fifo_4_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_5_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local4 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local19 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_63 {
		mlp_weight_fifo_5_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_6_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local5 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local20 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_64 {
		mlp_weight_fifo_6_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_7_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local6 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local21 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_65 {
		mlp_weight_fifo_7_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_8_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local7 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local22 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_66 {
		mlp_weight_fifo_8_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_9_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local8 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local23 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_67 {
		mlp_weight_fifo_9_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_10_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local9 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local24 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_68 {
		mlp_weight_fifo_10_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_11_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local10 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local25 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_69 {
		mlp_weight_fifo_11_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_12_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local11 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local26 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_70 {
		mlp_weight_fifo_12_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_13_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local12 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local27 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_71 {
		mlp_weight_fifo_13_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_14_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local13 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local28 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_72 {
		mlp_weight_fifo_14_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_15_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local14 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local29 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_73 {
		mlp_weight_fifo_15_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local15 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local30 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "622", "Max" : "622"}
	, {"Name" : "Interval", "Min" : "606", "Max" : "606"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mlp_in_local { ap_memory {  { mlp_in_local_address0 mem_address 1 10 }  { mlp_in_local_ce0 mem_ce 1 1 }  { mlp_in_local_d0 mem_din 1 31 }  { mlp_in_local_q0 mem_dout 0 31 }  { mlp_in_local_we0 mem_we 1 1 }  { mlp_in_local_address1 mem_address 1 10 }  { mlp_in_local_ce1 mem_ce 1 1 }  { mlp_in_local_d1 mem_din 1 31 }  { mlp_in_local_q1 mem_dout 0 31 }  { mlp_in_local_we1 mem_we 1 1 } } }
	mlp_in_local1 { ap_memory {  { mlp_in_local1_address0 mem_address 1 10 }  { mlp_in_local1_ce0 mem_ce 1 1 }  { mlp_in_local1_d0 mem_din 1 31 }  { mlp_in_local1_q0 mem_dout 0 31 }  { mlp_in_local1_we0 mem_we 1 1 }  { mlp_in_local1_address1 mem_address 1 10 }  { mlp_in_local1_ce1 mem_ce 1 1 }  { mlp_in_local1_d1 mem_din 1 31 }  { mlp_in_local1_q1 mem_dout 0 31 }  { mlp_in_local1_we1 mem_we 1 1 } } }
	mlp_in_local2 { ap_memory {  { mlp_in_local2_address0 mem_address 1 10 }  { mlp_in_local2_ce0 mem_ce 1 1 }  { mlp_in_local2_d0 mem_din 1 31 }  { mlp_in_local2_q0 mem_dout 0 31 }  { mlp_in_local2_we0 mem_we 1 1 }  { mlp_in_local2_address1 mem_address 1 10 }  { mlp_in_local2_ce1 mem_ce 1 1 }  { mlp_in_local2_d1 mem_din 1 31 }  { mlp_in_local2_q1 mem_dout 0 31 }  { mlp_in_local2_we1 mem_we 1 1 } } }
	mlp_in_local3 { ap_memory {  { mlp_in_local3_address0 mem_address 1 10 }  { mlp_in_local3_ce0 mem_ce 1 1 }  { mlp_in_local3_d0 mem_din 1 31 }  { mlp_in_local3_q0 mem_dout 0 31 }  { mlp_in_local3_we0 mem_we 1 1 }  { mlp_in_local3_address1 mem_address 1 10 }  { mlp_in_local3_ce1 mem_ce 1 1 }  { mlp_in_local3_d1 mem_din 1 31 }  { mlp_in_local3_q1 mem_dout 0 31 }  { mlp_in_local3_we1 mem_we 1 1 } } }
	mlp_in_local4 { ap_memory {  { mlp_in_local4_address0 mem_address 1 10 }  { mlp_in_local4_ce0 mem_ce 1 1 }  { mlp_in_local4_d0 mem_din 1 31 }  { mlp_in_local4_q0 mem_dout 0 31 }  { mlp_in_local4_we0 mem_we 1 1 }  { mlp_in_local4_address1 mem_address 1 10 }  { mlp_in_local4_ce1 mem_ce 1 1 }  { mlp_in_local4_d1 mem_din 1 31 }  { mlp_in_local4_q1 mem_dout 0 31 }  { mlp_in_local4_we1 mem_we 1 1 } } }
	mlp_in_local5 { ap_memory {  { mlp_in_local5_address0 mem_address 1 10 }  { mlp_in_local5_ce0 mem_ce 1 1 }  { mlp_in_local5_d0 mem_din 1 31 }  { mlp_in_local5_q0 mem_dout 0 31 }  { mlp_in_local5_we0 mem_we 1 1 }  { mlp_in_local5_address1 mem_address 1 10 }  { mlp_in_local5_ce1 mem_ce 1 1 }  { mlp_in_local5_d1 mem_din 1 31 }  { mlp_in_local5_q1 mem_dout 0 31 }  { mlp_in_local5_we1 mem_we 1 1 } } }
	mlp_in_local6 { ap_memory {  { mlp_in_local6_address0 mem_address 1 10 }  { mlp_in_local6_ce0 mem_ce 1 1 }  { mlp_in_local6_d0 mem_din 1 31 }  { mlp_in_local6_q0 mem_dout 0 31 }  { mlp_in_local6_we0 mem_we 1 1 }  { mlp_in_local6_address1 mem_address 1 10 }  { mlp_in_local6_ce1 mem_ce 1 1 }  { mlp_in_local6_d1 mem_din 1 31 }  { mlp_in_local6_q1 mem_dout 0 31 }  { mlp_in_local6_we1 mem_we 1 1 } } }
	mlp_in_local7 { ap_memory {  { mlp_in_local7_address0 mem_address 1 10 }  { mlp_in_local7_ce0 mem_ce 1 1 }  { mlp_in_local7_d0 mem_din 1 31 }  { mlp_in_local7_q0 mem_dout 0 31 }  { mlp_in_local7_we0 mem_we 1 1 }  { mlp_in_local7_address1 mem_address 1 10 }  { mlp_in_local7_ce1 mem_ce 1 1 }  { mlp_in_local7_d1 mem_din 1 31 }  { mlp_in_local7_q1 mem_dout 0 31 }  { mlp_in_local7_we1 mem_we 1 1 } } }
	mlp_in_local8 { ap_memory {  { mlp_in_local8_address0 mem_address 1 10 }  { mlp_in_local8_ce0 mem_ce 1 1 }  { mlp_in_local8_d0 mem_din 1 31 }  { mlp_in_local8_q0 mem_dout 0 31 }  { mlp_in_local8_we0 mem_we 1 1 }  { mlp_in_local8_address1 mem_address 1 10 }  { mlp_in_local8_ce1 mem_ce 1 1 }  { mlp_in_local8_d1 mem_din 1 31 }  { mlp_in_local8_q1 mem_dout 0 31 }  { mlp_in_local8_we1 mem_we 1 1 } } }
	mlp_in_local9 { ap_memory {  { mlp_in_local9_address0 mem_address 1 10 }  { mlp_in_local9_ce0 mem_ce 1 1 }  { mlp_in_local9_d0 mem_din 1 31 }  { mlp_in_local9_q0 mem_dout 0 31 }  { mlp_in_local9_we0 mem_we 1 1 }  { mlp_in_local9_address1 mem_address 1 10 }  { mlp_in_local9_ce1 mem_ce 1 1 }  { mlp_in_local9_d1 mem_din 1 31 }  { mlp_in_local9_q1 mem_dout 0 31 }  { mlp_in_local9_we1 mem_we 1 1 } } }
	mlp_in_local10 { ap_memory {  { mlp_in_local10_address0 mem_address 1 10 }  { mlp_in_local10_ce0 mem_ce 1 1 }  { mlp_in_local10_d0 mem_din 1 31 }  { mlp_in_local10_q0 mem_dout 0 31 }  { mlp_in_local10_we0 mem_we 1 1 }  { mlp_in_local10_address1 mem_address 1 10 }  { mlp_in_local10_ce1 mem_ce 1 1 }  { mlp_in_local10_d1 mem_din 1 31 }  { mlp_in_local10_q1 mem_dout 0 31 }  { mlp_in_local10_we1 mem_we 1 1 } } }
	mlp_in_local11 { ap_memory {  { mlp_in_local11_address0 mem_address 1 10 }  { mlp_in_local11_ce0 mem_ce 1 1 }  { mlp_in_local11_d0 mem_din 1 31 }  { mlp_in_local11_q0 mem_dout 0 31 }  { mlp_in_local11_we0 mem_we 1 1 }  { mlp_in_local11_address1 mem_address 1 10 }  { mlp_in_local11_ce1 mem_ce 1 1 }  { mlp_in_local11_d1 mem_din 1 31 }  { mlp_in_local11_q1 mem_dout 0 31 }  { mlp_in_local11_we1 mem_we 1 1 } } }
	mlp_in_local12 { ap_memory {  { mlp_in_local12_address0 mem_address 1 10 }  { mlp_in_local12_ce0 mem_ce 1 1 }  { mlp_in_local12_d0 mem_din 1 31 }  { mlp_in_local12_q0 mem_dout 0 31 }  { mlp_in_local12_we0 mem_we 1 1 }  { mlp_in_local12_address1 mem_address 1 10 }  { mlp_in_local12_ce1 mem_ce 1 1 }  { mlp_in_local12_d1 mem_din 1 31 }  { mlp_in_local12_q1 mem_dout 0 31 }  { mlp_in_local12_we1 mem_we 1 1 } } }
	mlp_in_local13 { ap_memory {  { mlp_in_local13_address0 mem_address 1 10 }  { mlp_in_local13_ce0 mem_ce 1 1 }  { mlp_in_local13_d0 mem_din 1 31 }  { mlp_in_local13_q0 mem_dout 0 31 }  { mlp_in_local13_we0 mem_we 1 1 }  { mlp_in_local13_address1 mem_address 1 10 }  { mlp_in_local13_ce1 mem_ce 1 1 }  { mlp_in_local13_d1 mem_din 1 31 }  { mlp_in_local13_q1 mem_dout 0 31 }  { mlp_in_local13_we1 mem_we 1 1 } } }
	mlp_in_local14 { ap_memory {  { mlp_in_local14_address0 mem_address 1 10 }  { mlp_in_local14_ce0 mem_ce 1 1 }  { mlp_in_local14_d0 mem_din 1 31 }  { mlp_in_local14_q0 mem_dout 0 31 }  { mlp_in_local14_we0 mem_we 1 1 }  { mlp_in_local14_address1 mem_address 1 10 }  { mlp_in_local14_ce1 mem_ce 1 1 }  { mlp_in_local14_d1 mem_din 1 31 }  { mlp_in_local14_q1 mem_dout 0 31 }  { mlp_in_local14_we1 mem_we 1 1 } } }
	mlp_in_local15 { ap_memory {  { mlp_in_local15_address0 mem_address 1 10 }  { mlp_in_local15_ce0 mem_ce 1 1 }  { mlp_in_local15_d0 mem_din 1 31 }  { mlp_in_local15_q0 mem_dout 0 31 }  { mlp_in_local15_we0 mem_we 1 1 }  { mlp_in_local15_address1 mem_address 1 10 }  { mlp_in_local15_ce1 mem_ce 1 1 }  { mlp_in_local15_d1 mem_din 1 31 }  { mlp_in_local15_q1 mem_dout 0 31 }  { mlp_in_local15_we1 mem_we 1 1 } } }
	mlp_out_local { ap_memory {  { mlp_out_local_address0 mem_address 1 9 }  { mlp_out_local_ce0 mem_ce 1 1 }  { mlp_out_local_d0 mem_din 1 32 }  { mlp_out_local_q0 mem_dout 0 32 }  { mlp_out_local_we0 mem_we 1 1 }  { mlp_out_local_address1 mem_address 1 9 }  { mlp_out_local_ce1 mem_ce 1 1 }  { mlp_out_local_d1 mem_din 1 32 }  { mlp_out_local_q1 mem_dout 0 32 }  { mlp_out_local_we1 mem_we 1 1 } } }
	mlp_out_local16 { ap_memory {  { mlp_out_local16_address0 mem_address 1 9 }  { mlp_out_local16_ce0 mem_ce 1 1 }  { mlp_out_local16_d0 mem_din 1 32 }  { mlp_out_local16_q0 mem_dout 0 32 }  { mlp_out_local16_we0 mem_we 1 1 }  { mlp_out_local16_address1 mem_address 1 9 }  { mlp_out_local16_ce1 mem_ce 1 1 }  { mlp_out_local16_d1 mem_din 1 32 }  { mlp_out_local16_q1 mem_dout 0 32 }  { mlp_out_local16_we1 mem_we 1 1 } } }
	mlp_out_local17 { ap_memory {  { mlp_out_local17_address0 mem_address 1 9 }  { mlp_out_local17_ce0 mem_ce 1 1 }  { mlp_out_local17_d0 mem_din 1 32 }  { mlp_out_local17_q0 mem_dout 0 32 }  { mlp_out_local17_we0 mem_we 1 1 }  { mlp_out_local17_address1 mem_address 1 9 }  { mlp_out_local17_ce1 mem_ce 1 1 }  { mlp_out_local17_d1 mem_din 1 32 }  { mlp_out_local17_q1 mem_dout 0 32 }  { mlp_out_local17_we1 mem_we 1 1 } } }
	mlp_out_local18 { ap_memory {  { mlp_out_local18_address0 mem_address 1 9 }  { mlp_out_local18_ce0 mem_ce 1 1 }  { mlp_out_local18_d0 mem_din 1 32 }  { mlp_out_local18_q0 mem_dout 0 32 }  { mlp_out_local18_we0 mem_we 1 1 }  { mlp_out_local18_address1 mem_address 1 9 }  { mlp_out_local18_ce1 mem_ce 1 1 }  { mlp_out_local18_d1 mem_din 1 32 }  { mlp_out_local18_q1 mem_dout 0 32 }  { mlp_out_local18_we1 mem_we 1 1 } } }
	mlp_out_local19 { ap_memory {  { mlp_out_local19_address0 mem_address 1 9 }  { mlp_out_local19_ce0 mem_ce 1 1 }  { mlp_out_local19_d0 mem_din 1 32 }  { mlp_out_local19_q0 mem_dout 0 32 }  { mlp_out_local19_we0 mem_we 1 1 }  { mlp_out_local19_address1 mem_address 1 9 }  { mlp_out_local19_ce1 mem_ce 1 1 }  { mlp_out_local19_d1 mem_din 1 32 }  { mlp_out_local19_q1 mem_dout 0 32 }  { mlp_out_local19_we1 mem_we 1 1 } } }
	mlp_out_local20 { ap_memory {  { mlp_out_local20_address0 mem_address 1 9 }  { mlp_out_local20_ce0 mem_ce 1 1 }  { mlp_out_local20_d0 mem_din 1 32 }  { mlp_out_local20_q0 mem_dout 0 32 }  { mlp_out_local20_we0 mem_we 1 1 }  { mlp_out_local20_address1 mem_address 1 9 }  { mlp_out_local20_ce1 mem_ce 1 1 }  { mlp_out_local20_d1 mem_din 1 32 }  { mlp_out_local20_q1 mem_dout 0 32 }  { mlp_out_local20_we1 mem_we 1 1 } } }
	mlp_out_local21 { ap_memory {  { mlp_out_local21_address0 mem_address 1 9 }  { mlp_out_local21_ce0 mem_ce 1 1 }  { mlp_out_local21_d0 mem_din 1 32 }  { mlp_out_local21_q0 mem_dout 0 32 }  { mlp_out_local21_we0 mem_we 1 1 }  { mlp_out_local21_address1 mem_address 1 9 }  { mlp_out_local21_ce1 mem_ce 1 1 }  { mlp_out_local21_d1 mem_din 1 32 }  { mlp_out_local21_q1 mem_dout 0 32 }  { mlp_out_local21_we1 mem_we 1 1 } } }
	mlp_out_local22 { ap_memory {  { mlp_out_local22_address0 mem_address 1 9 }  { mlp_out_local22_ce0 mem_ce 1 1 }  { mlp_out_local22_d0 mem_din 1 32 }  { mlp_out_local22_q0 mem_dout 0 32 }  { mlp_out_local22_we0 mem_we 1 1 }  { mlp_out_local22_address1 mem_address 1 9 }  { mlp_out_local22_ce1 mem_ce 1 1 }  { mlp_out_local22_d1 mem_din 1 32 }  { mlp_out_local22_q1 mem_dout 0 32 }  { mlp_out_local22_we1 mem_we 1 1 } } }
	mlp_out_local23 { ap_memory {  { mlp_out_local23_address0 mem_address 1 9 }  { mlp_out_local23_ce0 mem_ce 1 1 }  { mlp_out_local23_d0 mem_din 1 32 }  { mlp_out_local23_q0 mem_dout 0 32 }  { mlp_out_local23_we0 mem_we 1 1 }  { mlp_out_local23_address1 mem_address 1 9 }  { mlp_out_local23_ce1 mem_ce 1 1 }  { mlp_out_local23_d1 mem_din 1 32 }  { mlp_out_local23_q1 mem_dout 0 32 }  { mlp_out_local23_we1 mem_we 1 1 } } }
	mlp_out_local24 { ap_memory {  { mlp_out_local24_address0 mem_address 1 9 }  { mlp_out_local24_ce0 mem_ce 1 1 }  { mlp_out_local24_d0 mem_din 1 32 }  { mlp_out_local24_q0 mem_dout 0 32 }  { mlp_out_local24_we0 mem_we 1 1 }  { mlp_out_local24_address1 mem_address 1 9 }  { mlp_out_local24_ce1 mem_ce 1 1 }  { mlp_out_local24_d1 mem_din 1 32 }  { mlp_out_local24_q1 mem_dout 0 32 }  { mlp_out_local24_we1 mem_we 1 1 } } }
	mlp_out_local25 { ap_memory {  { mlp_out_local25_address0 mem_address 1 9 }  { mlp_out_local25_ce0 mem_ce 1 1 }  { mlp_out_local25_d0 mem_din 1 32 }  { mlp_out_local25_q0 mem_dout 0 32 }  { mlp_out_local25_we0 mem_we 1 1 }  { mlp_out_local25_address1 mem_address 1 9 }  { mlp_out_local25_ce1 mem_ce 1 1 }  { mlp_out_local25_d1 mem_din 1 32 }  { mlp_out_local25_q1 mem_dout 0 32 }  { mlp_out_local25_we1 mem_we 1 1 } } }
	mlp_out_local26 { ap_memory {  { mlp_out_local26_address0 mem_address 1 9 }  { mlp_out_local26_ce0 mem_ce 1 1 }  { mlp_out_local26_d0 mem_din 1 32 }  { mlp_out_local26_q0 mem_dout 0 32 }  { mlp_out_local26_we0 mem_we 1 1 }  { mlp_out_local26_address1 mem_address 1 9 }  { mlp_out_local26_ce1 mem_ce 1 1 }  { mlp_out_local26_d1 mem_din 1 32 }  { mlp_out_local26_q1 mem_dout 0 32 }  { mlp_out_local26_we1 mem_we 1 1 } } }
	mlp_out_local27 { ap_memory {  { mlp_out_local27_address0 mem_address 1 9 }  { mlp_out_local27_ce0 mem_ce 1 1 }  { mlp_out_local27_d0 mem_din 1 32 }  { mlp_out_local27_q0 mem_dout 0 32 }  { mlp_out_local27_we0 mem_we 1 1 }  { mlp_out_local27_address1 mem_address 1 9 }  { mlp_out_local27_ce1 mem_ce 1 1 }  { mlp_out_local27_d1 mem_din 1 32 }  { mlp_out_local27_q1 mem_dout 0 32 }  { mlp_out_local27_we1 mem_we 1 1 } } }
	mlp_out_local28 { ap_memory {  { mlp_out_local28_address0 mem_address 1 9 }  { mlp_out_local28_ce0 mem_ce 1 1 }  { mlp_out_local28_d0 mem_din 1 32 }  { mlp_out_local28_q0 mem_dout 0 32 }  { mlp_out_local28_we0 mem_we 1 1 }  { mlp_out_local28_address1 mem_address 1 9 }  { mlp_out_local28_ce1 mem_ce 1 1 }  { mlp_out_local28_d1 mem_din 1 32 }  { mlp_out_local28_q1 mem_dout 0 32 }  { mlp_out_local28_we1 mem_we 1 1 } } }
	mlp_out_local29 { ap_memory {  { mlp_out_local29_address0 mem_address 1 9 }  { mlp_out_local29_ce0 mem_ce 1 1 }  { mlp_out_local29_d0 mem_din 1 32 }  { mlp_out_local29_q0 mem_dout 0 32 }  { mlp_out_local29_we0 mem_we 1 1 }  { mlp_out_local29_address1 mem_address 1 9 }  { mlp_out_local29_ce1 mem_ce 1 1 }  { mlp_out_local29_d1 mem_din 1 32 }  { mlp_out_local29_q1 mem_dout 0 32 }  { mlp_out_local29_we1 mem_we 1 1 } } }
	mlp_out_local30 { ap_memory {  { mlp_out_local30_address0 mem_address 1 9 }  { mlp_out_local30_ce0 mem_ce 1 1 }  { mlp_out_local30_d0 mem_din 1 32 }  { mlp_out_local30_q0 mem_dout 0 32 }  { mlp_out_local30_we0 mem_we 1 1 }  { mlp_out_local30_address1 mem_address 1 9 }  { mlp_out_local30_ce1 mem_ce 1 1 }  { mlp_out_local30_d1 mem_din 1 32 }  { mlp_out_local30_q1 mem_dout 0 32 }  { mlp_out_local30_we1 mem_we 1 1 } } }
	d_out { ap_none {  { d_out in_data 0 9 }  { d_out_ap_vld in_vld 0 1 } } }
	do_relu { ap_none {  { do_relu in_data 0 1 }  { do_relu_ap_vld in_vld 0 1 } } }
	mlp_2_weights_V { ap_memory {  { mlp_2_weights_V_address0 mem_address 1 18 }  { mlp_2_weights_V_ce0 mem_ce 1 1 }  { mlp_2_weights_V_d0 mem_din 1 32 }  { mlp_2_weights_V_q0 mem_dout 0 32 }  { mlp_2_weights_V_we0 mem_we 1 1 }  { mlp_2_weights_V_address1 mem_address 1 18 }  { mlp_2_weights_V_ce1 mem_ce 1 1 }  { mlp_2_weights_V_d1 mem_din 1 32 }  { mlp_2_weights_V_q1 mem_dout 0 32 }  { mlp_2_weights_V_we1 mem_we 1 1 } } }
	mlp_2_bias_V { ap_memory {  { mlp_2_bias_V_address0 mem_address 1 9 }  { mlp_2_bias_V_ce0 mem_ce 1 1 }  { mlp_2_bias_V_d0 mem_din 1 32 }  { mlp_2_bias_V_q0 mem_dout 0 32 }  { mlp_2_bias_V_we0 mem_we 1 1 }  { mlp_2_bias_V_address1 mem_address 1 9 }  { mlp_2_bias_V_ce1 mem_ce 1 1 }  { mlp_2_bias_V_d1 mem_din 1 32 }  { mlp_2_bias_V_q1 mem_dout 0 32 }  { mlp_2_bias_V_we1 mem_we 1 1 } } }
}
