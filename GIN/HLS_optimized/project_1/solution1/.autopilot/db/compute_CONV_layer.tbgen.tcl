set moduleName compute_CONV_layer
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {compute_CONV_layer}
set C_modelType { void 0 }
set C_modelArgList {
	{ layer int 3 regular  }
	{ edge_list int 32 regular {array 1000 { 1 1 } 1 1 } {global 0}  }
	{ node_embedding_V_0 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_1 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_2 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_3 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_4 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_5 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_6 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_7 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_8 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_9 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_10 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_11 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_12 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_13 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_14 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_15 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_16 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_17 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_18 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_19 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_20 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_21 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_22 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_23 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_24 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_25 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_26 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_27 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_28 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_29 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_30 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_31 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_32 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_33 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_34 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_35 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_36 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_37 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_38 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_39 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_40 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_41 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_42 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_43 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_44 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_45 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_46 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_47 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_48 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_49 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_50 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_51 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_52 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_53 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_54 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_55 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_56 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_57 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_58 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_59 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_60 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_61 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_62 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_63 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_64 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_65 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_66 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_67 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_68 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_69 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_70 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_71 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_72 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_73 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_74 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_75 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_76 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_77 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_78 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_79 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_80 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_81 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_82 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_83 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_84 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_85 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_86 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_87 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_88 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_89 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_90 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_91 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_92 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_93 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_94 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_95 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_96 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_97 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_98 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V_99 int 28 regular {array 200 { 1 0 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "layer", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "edge_list", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_list","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_0", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 0,"up" : 0,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_1", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 1,"up" : 1,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_2", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 2,"up" : 2,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_3", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 3,"up" : 3,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_4", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 4,"up" : 4,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_5", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 5,"up" : 5,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_6", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 6,"up" : 6,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_7", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 7,"up" : 7,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_8", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 8,"up" : 8,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_9", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 9,"up" : 9,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_10", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 10,"up" : 10,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_11", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 11,"up" : 11,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_12", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 12,"up" : 12,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_13", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 13,"up" : 13,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_14", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 14,"up" : 14,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_15", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 15,"up" : 15,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_16", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 16,"up" : 16,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_17", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 17,"up" : 17,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_18", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 18,"up" : 18,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_19", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 19,"up" : 19,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_20", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 20,"up" : 20,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_21", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 21,"up" : 21,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_22", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 22,"up" : 22,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_23", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 23,"up" : 23,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_24", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 24,"up" : 24,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_25", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 25,"up" : 25,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_26", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 26,"up" : 26,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_27", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 27,"up" : 27,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_28", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 28,"up" : 28,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_29", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 29,"up" : 29,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_30", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 30,"up" : 30,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_31", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 31,"up" : 31,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_32", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 32,"up" : 32,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_33", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 33,"up" : 33,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_34", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 34,"up" : 34,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_35", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 35,"up" : 35,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_36", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 36,"up" : 36,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_37", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 37,"up" : 37,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_38", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 38,"up" : 38,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_39", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 39,"up" : 39,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_40", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 40,"up" : 40,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_41", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 41,"up" : 41,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_42", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 42,"up" : 42,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_43", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 43,"up" : 43,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_44", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 44,"up" : 44,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_45", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 45,"up" : 45,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_46", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 46,"up" : 46,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_47", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 47,"up" : 47,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_48", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 48,"up" : 48,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_49", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 49,"up" : 49,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_50", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 50,"up" : 50,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_51", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 51,"up" : 51,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_52", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 52,"up" : 52,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_53", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 53,"up" : 53,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_54", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 54,"up" : 54,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_55", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 55,"up" : 55,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_56", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 56,"up" : 56,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_57", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 57,"up" : 57,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_58", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 58,"up" : 58,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_59", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 59,"up" : 59,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_60", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 60,"up" : 60,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_61", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 61,"up" : 61,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_62", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 62,"up" : 62,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_63", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 63,"up" : 63,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_64", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 64,"up" : 64,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_65", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 65,"up" : 65,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_66", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 66,"up" : 66,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_67", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 67,"up" : 67,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_68", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 68,"up" : 68,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_69", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 69,"up" : 69,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_70", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 70,"up" : 70,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_71", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 71,"up" : 71,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_72", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 72,"up" : 72,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_73", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 73,"up" : 73,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_74", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 74,"up" : 74,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_75", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 75,"up" : 75,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_76", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 76,"up" : 76,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_77", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 77,"up" : 77,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_78", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 78,"up" : 78,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_79", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 79,"up" : 79,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_80", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 80,"up" : 80,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_81", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 81,"up" : 81,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_82", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 82,"up" : 82,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_83", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 83,"up" : 83,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_84", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 84,"up" : 84,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_85", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 85,"up" : 85,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_86", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 86,"up" : 86,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_87", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 87,"up" : 87,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_88", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 88,"up" : 88,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_89", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 89,"up" : 89,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_90", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 90,"up" : 90,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_91", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 91,"up" : 91,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_92", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 92,"up" : 92,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_93", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 93,"up" : 93,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_94", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 94,"up" : 94,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_95", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 95,"up" : 95,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_96", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 96,"up" : 96,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_97", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 97,"up" : 97,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_98", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 98,"up" : 98,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V_99", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":27,"cElement": [{"cName": "node_embedding.V","cData": "int28","bit_use": { "low": 0,"up": 27},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 99,"up" : 99,"step" : 2}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 713
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ layer sc_in sc_lv 3 signal 0 } 
	{ edge_list_address0 sc_out sc_lv 10 signal 1 } 
	{ edge_list_ce0 sc_out sc_logic 1 signal 1 } 
	{ edge_list_q0 sc_in sc_lv 32 signal 1 } 
	{ edge_list_address1 sc_out sc_lv 10 signal 1 } 
	{ edge_list_ce1 sc_out sc_logic 1 signal 1 } 
	{ edge_list_q1 sc_in sc_lv 32 signal 1 } 
	{ node_embedding_V_0_address0 sc_out sc_lv 8 signal 2 } 
	{ node_embedding_V_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ node_embedding_V_0_q0 sc_in sc_lv 28 signal 2 } 
	{ node_embedding_V_0_address1 sc_out sc_lv 8 signal 2 } 
	{ node_embedding_V_0_ce1 sc_out sc_logic 1 signal 2 } 
	{ node_embedding_V_0_we1 sc_out sc_logic 1 signal 2 } 
	{ node_embedding_V_0_d1 sc_out sc_lv 28 signal 2 } 
	{ node_embedding_V_1_address0 sc_out sc_lv 8 signal 3 } 
	{ node_embedding_V_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ node_embedding_V_1_q0 sc_in sc_lv 28 signal 3 } 
	{ node_embedding_V_1_address1 sc_out sc_lv 8 signal 3 } 
	{ node_embedding_V_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ node_embedding_V_1_we1 sc_out sc_logic 1 signal 3 } 
	{ node_embedding_V_1_d1 sc_out sc_lv 28 signal 3 } 
	{ node_embedding_V_2_address0 sc_out sc_lv 8 signal 4 } 
	{ node_embedding_V_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ node_embedding_V_2_q0 sc_in sc_lv 28 signal 4 } 
	{ node_embedding_V_2_address1 sc_out sc_lv 8 signal 4 } 
	{ node_embedding_V_2_ce1 sc_out sc_logic 1 signal 4 } 
	{ node_embedding_V_2_we1 sc_out sc_logic 1 signal 4 } 
	{ node_embedding_V_2_d1 sc_out sc_lv 28 signal 4 } 
	{ node_embedding_V_3_address0 sc_out sc_lv 8 signal 5 } 
	{ node_embedding_V_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ node_embedding_V_3_q0 sc_in sc_lv 28 signal 5 } 
	{ node_embedding_V_3_address1 sc_out sc_lv 8 signal 5 } 
	{ node_embedding_V_3_ce1 sc_out sc_logic 1 signal 5 } 
	{ node_embedding_V_3_we1 sc_out sc_logic 1 signal 5 } 
	{ node_embedding_V_3_d1 sc_out sc_lv 28 signal 5 } 
	{ node_embedding_V_4_address0 sc_out sc_lv 8 signal 6 } 
	{ node_embedding_V_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ node_embedding_V_4_q0 sc_in sc_lv 28 signal 6 } 
	{ node_embedding_V_4_address1 sc_out sc_lv 8 signal 6 } 
	{ node_embedding_V_4_ce1 sc_out sc_logic 1 signal 6 } 
	{ node_embedding_V_4_we1 sc_out sc_logic 1 signal 6 } 
	{ node_embedding_V_4_d1 sc_out sc_lv 28 signal 6 } 
	{ node_embedding_V_5_address0 sc_out sc_lv 8 signal 7 } 
	{ node_embedding_V_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ node_embedding_V_5_q0 sc_in sc_lv 28 signal 7 } 
	{ node_embedding_V_5_address1 sc_out sc_lv 8 signal 7 } 
	{ node_embedding_V_5_ce1 sc_out sc_logic 1 signal 7 } 
	{ node_embedding_V_5_we1 sc_out sc_logic 1 signal 7 } 
	{ node_embedding_V_5_d1 sc_out sc_lv 28 signal 7 } 
	{ node_embedding_V_6_address0 sc_out sc_lv 8 signal 8 } 
	{ node_embedding_V_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ node_embedding_V_6_q0 sc_in sc_lv 28 signal 8 } 
	{ node_embedding_V_6_address1 sc_out sc_lv 8 signal 8 } 
	{ node_embedding_V_6_ce1 sc_out sc_logic 1 signal 8 } 
	{ node_embedding_V_6_we1 sc_out sc_logic 1 signal 8 } 
	{ node_embedding_V_6_d1 sc_out sc_lv 28 signal 8 } 
	{ node_embedding_V_7_address0 sc_out sc_lv 8 signal 9 } 
	{ node_embedding_V_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ node_embedding_V_7_q0 sc_in sc_lv 28 signal 9 } 
	{ node_embedding_V_7_address1 sc_out sc_lv 8 signal 9 } 
	{ node_embedding_V_7_ce1 sc_out sc_logic 1 signal 9 } 
	{ node_embedding_V_7_we1 sc_out sc_logic 1 signal 9 } 
	{ node_embedding_V_7_d1 sc_out sc_lv 28 signal 9 } 
	{ node_embedding_V_8_address0 sc_out sc_lv 8 signal 10 } 
	{ node_embedding_V_8_ce0 sc_out sc_logic 1 signal 10 } 
	{ node_embedding_V_8_q0 sc_in sc_lv 28 signal 10 } 
	{ node_embedding_V_8_address1 sc_out sc_lv 8 signal 10 } 
	{ node_embedding_V_8_ce1 sc_out sc_logic 1 signal 10 } 
	{ node_embedding_V_8_we1 sc_out sc_logic 1 signal 10 } 
	{ node_embedding_V_8_d1 sc_out sc_lv 28 signal 10 } 
	{ node_embedding_V_9_address0 sc_out sc_lv 8 signal 11 } 
	{ node_embedding_V_9_ce0 sc_out sc_logic 1 signal 11 } 
	{ node_embedding_V_9_q0 sc_in sc_lv 28 signal 11 } 
	{ node_embedding_V_9_address1 sc_out sc_lv 8 signal 11 } 
	{ node_embedding_V_9_ce1 sc_out sc_logic 1 signal 11 } 
	{ node_embedding_V_9_we1 sc_out sc_logic 1 signal 11 } 
	{ node_embedding_V_9_d1 sc_out sc_lv 28 signal 11 } 
	{ node_embedding_V_10_address0 sc_out sc_lv 8 signal 12 } 
	{ node_embedding_V_10_ce0 sc_out sc_logic 1 signal 12 } 
	{ node_embedding_V_10_q0 sc_in sc_lv 28 signal 12 } 
	{ node_embedding_V_10_address1 sc_out sc_lv 8 signal 12 } 
	{ node_embedding_V_10_ce1 sc_out sc_logic 1 signal 12 } 
	{ node_embedding_V_10_we1 sc_out sc_logic 1 signal 12 } 
	{ node_embedding_V_10_d1 sc_out sc_lv 28 signal 12 } 
	{ node_embedding_V_11_address0 sc_out sc_lv 8 signal 13 } 
	{ node_embedding_V_11_ce0 sc_out sc_logic 1 signal 13 } 
	{ node_embedding_V_11_q0 sc_in sc_lv 28 signal 13 } 
	{ node_embedding_V_11_address1 sc_out sc_lv 8 signal 13 } 
	{ node_embedding_V_11_ce1 sc_out sc_logic 1 signal 13 } 
	{ node_embedding_V_11_we1 sc_out sc_logic 1 signal 13 } 
	{ node_embedding_V_11_d1 sc_out sc_lv 28 signal 13 } 
	{ node_embedding_V_12_address0 sc_out sc_lv 8 signal 14 } 
	{ node_embedding_V_12_ce0 sc_out sc_logic 1 signal 14 } 
	{ node_embedding_V_12_q0 sc_in sc_lv 28 signal 14 } 
	{ node_embedding_V_12_address1 sc_out sc_lv 8 signal 14 } 
	{ node_embedding_V_12_ce1 sc_out sc_logic 1 signal 14 } 
	{ node_embedding_V_12_we1 sc_out sc_logic 1 signal 14 } 
	{ node_embedding_V_12_d1 sc_out sc_lv 28 signal 14 } 
	{ node_embedding_V_13_address0 sc_out sc_lv 8 signal 15 } 
	{ node_embedding_V_13_ce0 sc_out sc_logic 1 signal 15 } 
	{ node_embedding_V_13_q0 sc_in sc_lv 28 signal 15 } 
	{ node_embedding_V_13_address1 sc_out sc_lv 8 signal 15 } 
	{ node_embedding_V_13_ce1 sc_out sc_logic 1 signal 15 } 
	{ node_embedding_V_13_we1 sc_out sc_logic 1 signal 15 } 
	{ node_embedding_V_13_d1 sc_out sc_lv 28 signal 15 } 
	{ node_embedding_V_14_address0 sc_out sc_lv 8 signal 16 } 
	{ node_embedding_V_14_ce0 sc_out sc_logic 1 signal 16 } 
	{ node_embedding_V_14_q0 sc_in sc_lv 28 signal 16 } 
	{ node_embedding_V_14_address1 sc_out sc_lv 8 signal 16 } 
	{ node_embedding_V_14_ce1 sc_out sc_logic 1 signal 16 } 
	{ node_embedding_V_14_we1 sc_out sc_logic 1 signal 16 } 
	{ node_embedding_V_14_d1 sc_out sc_lv 28 signal 16 } 
	{ node_embedding_V_15_address0 sc_out sc_lv 8 signal 17 } 
	{ node_embedding_V_15_ce0 sc_out sc_logic 1 signal 17 } 
	{ node_embedding_V_15_q0 sc_in sc_lv 28 signal 17 } 
	{ node_embedding_V_15_address1 sc_out sc_lv 8 signal 17 } 
	{ node_embedding_V_15_ce1 sc_out sc_logic 1 signal 17 } 
	{ node_embedding_V_15_we1 sc_out sc_logic 1 signal 17 } 
	{ node_embedding_V_15_d1 sc_out sc_lv 28 signal 17 } 
	{ node_embedding_V_16_address0 sc_out sc_lv 8 signal 18 } 
	{ node_embedding_V_16_ce0 sc_out sc_logic 1 signal 18 } 
	{ node_embedding_V_16_q0 sc_in sc_lv 28 signal 18 } 
	{ node_embedding_V_16_address1 sc_out sc_lv 8 signal 18 } 
	{ node_embedding_V_16_ce1 sc_out sc_logic 1 signal 18 } 
	{ node_embedding_V_16_we1 sc_out sc_logic 1 signal 18 } 
	{ node_embedding_V_16_d1 sc_out sc_lv 28 signal 18 } 
	{ node_embedding_V_17_address0 sc_out sc_lv 8 signal 19 } 
	{ node_embedding_V_17_ce0 sc_out sc_logic 1 signal 19 } 
	{ node_embedding_V_17_q0 sc_in sc_lv 28 signal 19 } 
	{ node_embedding_V_17_address1 sc_out sc_lv 8 signal 19 } 
	{ node_embedding_V_17_ce1 sc_out sc_logic 1 signal 19 } 
	{ node_embedding_V_17_we1 sc_out sc_logic 1 signal 19 } 
	{ node_embedding_V_17_d1 sc_out sc_lv 28 signal 19 } 
	{ node_embedding_V_18_address0 sc_out sc_lv 8 signal 20 } 
	{ node_embedding_V_18_ce0 sc_out sc_logic 1 signal 20 } 
	{ node_embedding_V_18_q0 sc_in sc_lv 28 signal 20 } 
	{ node_embedding_V_18_address1 sc_out sc_lv 8 signal 20 } 
	{ node_embedding_V_18_ce1 sc_out sc_logic 1 signal 20 } 
	{ node_embedding_V_18_we1 sc_out sc_logic 1 signal 20 } 
	{ node_embedding_V_18_d1 sc_out sc_lv 28 signal 20 } 
	{ node_embedding_V_19_address0 sc_out sc_lv 8 signal 21 } 
	{ node_embedding_V_19_ce0 sc_out sc_logic 1 signal 21 } 
	{ node_embedding_V_19_q0 sc_in sc_lv 28 signal 21 } 
	{ node_embedding_V_19_address1 sc_out sc_lv 8 signal 21 } 
	{ node_embedding_V_19_ce1 sc_out sc_logic 1 signal 21 } 
	{ node_embedding_V_19_we1 sc_out sc_logic 1 signal 21 } 
	{ node_embedding_V_19_d1 sc_out sc_lv 28 signal 21 } 
	{ node_embedding_V_20_address0 sc_out sc_lv 8 signal 22 } 
	{ node_embedding_V_20_ce0 sc_out sc_logic 1 signal 22 } 
	{ node_embedding_V_20_q0 sc_in sc_lv 28 signal 22 } 
	{ node_embedding_V_20_address1 sc_out sc_lv 8 signal 22 } 
	{ node_embedding_V_20_ce1 sc_out sc_logic 1 signal 22 } 
	{ node_embedding_V_20_we1 sc_out sc_logic 1 signal 22 } 
	{ node_embedding_V_20_d1 sc_out sc_lv 28 signal 22 } 
	{ node_embedding_V_21_address0 sc_out sc_lv 8 signal 23 } 
	{ node_embedding_V_21_ce0 sc_out sc_logic 1 signal 23 } 
	{ node_embedding_V_21_q0 sc_in sc_lv 28 signal 23 } 
	{ node_embedding_V_21_address1 sc_out sc_lv 8 signal 23 } 
	{ node_embedding_V_21_ce1 sc_out sc_logic 1 signal 23 } 
	{ node_embedding_V_21_we1 sc_out sc_logic 1 signal 23 } 
	{ node_embedding_V_21_d1 sc_out sc_lv 28 signal 23 } 
	{ node_embedding_V_22_address0 sc_out sc_lv 8 signal 24 } 
	{ node_embedding_V_22_ce0 sc_out sc_logic 1 signal 24 } 
	{ node_embedding_V_22_q0 sc_in sc_lv 28 signal 24 } 
	{ node_embedding_V_22_address1 sc_out sc_lv 8 signal 24 } 
	{ node_embedding_V_22_ce1 sc_out sc_logic 1 signal 24 } 
	{ node_embedding_V_22_we1 sc_out sc_logic 1 signal 24 } 
	{ node_embedding_V_22_d1 sc_out sc_lv 28 signal 24 } 
	{ node_embedding_V_23_address0 sc_out sc_lv 8 signal 25 } 
	{ node_embedding_V_23_ce0 sc_out sc_logic 1 signal 25 } 
	{ node_embedding_V_23_q0 sc_in sc_lv 28 signal 25 } 
	{ node_embedding_V_23_address1 sc_out sc_lv 8 signal 25 } 
	{ node_embedding_V_23_ce1 sc_out sc_logic 1 signal 25 } 
	{ node_embedding_V_23_we1 sc_out sc_logic 1 signal 25 } 
	{ node_embedding_V_23_d1 sc_out sc_lv 28 signal 25 } 
	{ node_embedding_V_24_address0 sc_out sc_lv 8 signal 26 } 
	{ node_embedding_V_24_ce0 sc_out sc_logic 1 signal 26 } 
	{ node_embedding_V_24_q0 sc_in sc_lv 28 signal 26 } 
	{ node_embedding_V_24_address1 sc_out sc_lv 8 signal 26 } 
	{ node_embedding_V_24_ce1 sc_out sc_logic 1 signal 26 } 
	{ node_embedding_V_24_we1 sc_out sc_logic 1 signal 26 } 
	{ node_embedding_V_24_d1 sc_out sc_lv 28 signal 26 } 
	{ node_embedding_V_25_address0 sc_out sc_lv 8 signal 27 } 
	{ node_embedding_V_25_ce0 sc_out sc_logic 1 signal 27 } 
	{ node_embedding_V_25_q0 sc_in sc_lv 28 signal 27 } 
	{ node_embedding_V_25_address1 sc_out sc_lv 8 signal 27 } 
	{ node_embedding_V_25_ce1 sc_out sc_logic 1 signal 27 } 
	{ node_embedding_V_25_we1 sc_out sc_logic 1 signal 27 } 
	{ node_embedding_V_25_d1 sc_out sc_lv 28 signal 27 } 
	{ node_embedding_V_26_address0 sc_out sc_lv 8 signal 28 } 
	{ node_embedding_V_26_ce0 sc_out sc_logic 1 signal 28 } 
	{ node_embedding_V_26_q0 sc_in sc_lv 28 signal 28 } 
	{ node_embedding_V_26_address1 sc_out sc_lv 8 signal 28 } 
	{ node_embedding_V_26_ce1 sc_out sc_logic 1 signal 28 } 
	{ node_embedding_V_26_we1 sc_out sc_logic 1 signal 28 } 
	{ node_embedding_V_26_d1 sc_out sc_lv 28 signal 28 } 
	{ node_embedding_V_27_address0 sc_out sc_lv 8 signal 29 } 
	{ node_embedding_V_27_ce0 sc_out sc_logic 1 signal 29 } 
	{ node_embedding_V_27_q0 sc_in sc_lv 28 signal 29 } 
	{ node_embedding_V_27_address1 sc_out sc_lv 8 signal 29 } 
	{ node_embedding_V_27_ce1 sc_out sc_logic 1 signal 29 } 
	{ node_embedding_V_27_we1 sc_out sc_logic 1 signal 29 } 
	{ node_embedding_V_27_d1 sc_out sc_lv 28 signal 29 } 
	{ node_embedding_V_28_address0 sc_out sc_lv 8 signal 30 } 
	{ node_embedding_V_28_ce0 sc_out sc_logic 1 signal 30 } 
	{ node_embedding_V_28_q0 sc_in sc_lv 28 signal 30 } 
	{ node_embedding_V_28_address1 sc_out sc_lv 8 signal 30 } 
	{ node_embedding_V_28_ce1 sc_out sc_logic 1 signal 30 } 
	{ node_embedding_V_28_we1 sc_out sc_logic 1 signal 30 } 
	{ node_embedding_V_28_d1 sc_out sc_lv 28 signal 30 } 
	{ node_embedding_V_29_address0 sc_out sc_lv 8 signal 31 } 
	{ node_embedding_V_29_ce0 sc_out sc_logic 1 signal 31 } 
	{ node_embedding_V_29_q0 sc_in sc_lv 28 signal 31 } 
	{ node_embedding_V_29_address1 sc_out sc_lv 8 signal 31 } 
	{ node_embedding_V_29_ce1 sc_out sc_logic 1 signal 31 } 
	{ node_embedding_V_29_we1 sc_out sc_logic 1 signal 31 } 
	{ node_embedding_V_29_d1 sc_out sc_lv 28 signal 31 } 
	{ node_embedding_V_30_address0 sc_out sc_lv 8 signal 32 } 
	{ node_embedding_V_30_ce0 sc_out sc_logic 1 signal 32 } 
	{ node_embedding_V_30_q0 sc_in sc_lv 28 signal 32 } 
	{ node_embedding_V_30_address1 sc_out sc_lv 8 signal 32 } 
	{ node_embedding_V_30_ce1 sc_out sc_logic 1 signal 32 } 
	{ node_embedding_V_30_we1 sc_out sc_logic 1 signal 32 } 
	{ node_embedding_V_30_d1 sc_out sc_lv 28 signal 32 } 
	{ node_embedding_V_31_address0 sc_out sc_lv 8 signal 33 } 
	{ node_embedding_V_31_ce0 sc_out sc_logic 1 signal 33 } 
	{ node_embedding_V_31_q0 sc_in sc_lv 28 signal 33 } 
	{ node_embedding_V_31_address1 sc_out sc_lv 8 signal 33 } 
	{ node_embedding_V_31_ce1 sc_out sc_logic 1 signal 33 } 
	{ node_embedding_V_31_we1 sc_out sc_logic 1 signal 33 } 
	{ node_embedding_V_31_d1 sc_out sc_lv 28 signal 33 } 
	{ node_embedding_V_32_address0 sc_out sc_lv 8 signal 34 } 
	{ node_embedding_V_32_ce0 sc_out sc_logic 1 signal 34 } 
	{ node_embedding_V_32_q0 sc_in sc_lv 28 signal 34 } 
	{ node_embedding_V_32_address1 sc_out sc_lv 8 signal 34 } 
	{ node_embedding_V_32_ce1 sc_out sc_logic 1 signal 34 } 
	{ node_embedding_V_32_we1 sc_out sc_logic 1 signal 34 } 
	{ node_embedding_V_32_d1 sc_out sc_lv 28 signal 34 } 
	{ node_embedding_V_33_address0 sc_out sc_lv 8 signal 35 } 
	{ node_embedding_V_33_ce0 sc_out sc_logic 1 signal 35 } 
	{ node_embedding_V_33_q0 sc_in sc_lv 28 signal 35 } 
	{ node_embedding_V_33_address1 sc_out sc_lv 8 signal 35 } 
	{ node_embedding_V_33_ce1 sc_out sc_logic 1 signal 35 } 
	{ node_embedding_V_33_we1 sc_out sc_logic 1 signal 35 } 
	{ node_embedding_V_33_d1 sc_out sc_lv 28 signal 35 } 
	{ node_embedding_V_34_address0 sc_out sc_lv 8 signal 36 } 
	{ node_embedding_V_34_ce0 sc_out sc_logic 1 signal 36 } 
	{ node_embedding_V_34_q0 sc_in sc_lv 28 signal 36 } 
	{ node_embedding_V_34_address1 sc_out sc_lv 8 signal 36 } 
	{ node_embedding_V_34_ce1 sc_out sc_logic 1 signal 36 } 
	{ node_embedding_V_34_we1 sc_out sc_logic 1 signal 36 } 
	{ node_embedding_V_34_d1 sc_out sc_lv 28 signal 36 } 
	{ node_embedding_V_35_address0 sc_out sc_lv 8 signal 37 } 
	{ node_embedding_V_35_ce0 sc_out sc_logic 1 signal 37 } 
	{ node_embedding_V_35_q0 sc_in sc_lv 28 signal 37 } 
	{ node_embedding_V_35_address1 sc_out sc_lv 8 signal 37 } 
	{ node_embedding_V_35_ce1 sc_out sc_logic 1 signal 37 } 
	{ node_embedding_V_35_we1 sc_out sc_logic 1 signal 37 } 
	{ node_embedding_V_35_d1 sc_out sc_lv 28 signal 37 } 
	{ node_embedding_V_36_address0 sc_out sc_lv 8 signal 38 } 
	{ node_embedding_V_36_ce0 sc_out sc_logic 1 signal 38 } 
	{ node_embedding_V_36_q0 sc_in sc_lv 28 signal 38 } 
	{ node_embedding_V_36_address1 sc_out sc_lv 8 signal 38 } 
	{ node_embedding_V_36_ce1 sc_out sc_logic 1 signal 38 } 
	{ node_embedding_V_36_we1 sc_out sc_logic 1 signal 38 } 
	{ node_embedding_V_36_d1 sc_out sc_lv 28 signal 38 } 
	{ node_embedding_V_37_address0 sc_out sc_lv 8 signal 39 } 
	{ node_embedding_V_37_ce0 sc_out sc_logic 1 signal 39 } 
	{ node_embedding_V_37_q0 sc_in sc_lv 28 signal 39 } 
	{ node_embedding_V_37_address1 sc_out sc_lv 8 signal 39 } 
	{ node_embedding_V_37_ce1 sc_out sc_logic 1 signal 39 } 
	{ node_embedding_V_37_we1 sc_out sc_logic 1 signal 39 } 
	{ node_embedding_V_37_d1 sc_out sc_lv 28 signal 39 } 
	{ node_embedding_V_38_address0 sc_out sc_lv 8 signal 40 } 
	{ node_embedding_V_38_ce0 sc_out sc_logic 1 signal 40 } 
	{ node_embedding_V_38_q0 sc_in sc_lv 28 signal 40 } 
	{ node_embedding_V_38_address1 sc_out sc_lv 8 signal 40 } 
	{ node_embedding_V_38_ce1 sc_out sc_logic 1 signal 40 } 
	{ node_embedding_V_38_we1 sc_out sc_logic 1 signal 40 } 
	{ node_embedding_V_38_d1 sc_out sc_lv 28 signal 40 } 
	{ node_embedding_V_39_address0 sc_out sc_lv 8 signal 41 } 
	{ node_embedding_V_39_ce0 sc_out sc_logic 1 signal 41 } 
	{ node_embedding_V_39_q0 sc_in sc_lv 28 signal 41 } 
	{ node_embedding_V_39_address1 sc_out sc_lv 8 signal 41 } 
	{ node_embedding_V_39_ce1 sc_out sc_logic 1 signal 41 } 
	{ node_embedding_V_39_we1 sc_out sc_logic 1 signal 41 } 
	{ node_embedding_V_39_d1 sc_out sc_lv 28 signal 41 } 
	{ node_embedding_V_40_address0 sc_out sc_lv 8 signal 42 } 
	{ node_embedding_V_40_ce0 sc_out sc_logic 1 signal 42 } 
	{ node_embedding_V_40_q0 sc_in sc_lv 28 signal 42 } 
	{ node_embedding_V_40_address1 sc_out sc_lv 8 signal 42 } 
	{ node_embedding_V_40_ce1 sc_out sc_logic 1 signal 42 } 
	{ node_embedding_V_40_we1 sc_out sc_logic 1 signal 42 } 
	{ node_embedding_V_40_d1 sc_out sc_lv 28 signal 42 } 
	{ node_embedding_V_41_address0 sc_out sc_lv 8 signal 43 } 
	{ node_embedding_V_41_ce0 sc_out sc_logic 1 signal 43 } 
	{ node_embedding_V_41_q0 sc_in sc_lv 28 signal 43 } 
	{ node_embedding_V_41_address1 sc_out sc_lv 8 signal 43 } 
	{ node_embedding_V_41_ce1 sc_out sc_logic 1 signal 43 } 
	{ node_embedding_V_41_we1 sc_out sc_logic 1 signal 43 } 
	{ node_embedding_V_41_d1 sc_out sc_lv 28 signal 43 } 
	{ node_embedding_V_42_address0 sc_out sc_lv 8 signal 44 } 
	{ node_embedding_V_42_ce0 sc_out sc_logic 1 signal 44 } 
	{ node_embedding_V_42_q0 sc_in sc_lv 28 signal 44 } 
	{ node_embedding_V_42_address1 sc_out sc_lv 8 signal 44 } 
	{ node_embedding_V_42_ce1 sc_out sc_logic 1 signal 44 } 
	{ node_embedding_V_42_we1 sc_out sc_logic 1 signal 44 } 
	{ node_embedding_V_42_d1 sc_out sc_lv 28 signal 44 } 
	{ node_embedding_V_43_address0 sc_out sc_lv 8 signal 45 } 
	{ node_embedding_V_43_ce0 sc_out sc_logic 1 signal 45 } 
	{ node_embedding_V_43_q0 sc_in sc_lv 28 signal 45 } 
	{ node_embedding_V_43_address1 sc_out sc_lv 8 signal 45 } 
	{ node_embedding_V_43_ce1 sc_out sc_logic 1 signal 45 } 
	{ node_embedding_V_43_we1 sc_out sc_logic 1 signal 45 } 
	{ node_embedding_V_43_d1 sc_out sc_lv 28 signal 45 } 
	{ node_embedding_V_44_address0 sc_out sc_lv 8 signal 46 } 
	{ node_embedding_V_44_ce0 sc_out sc_logic 1 signal 46 } 
	{ node_embedding_V_44_q0 sc_in sc_lv 28 signal 46 } 
	{ node_embedding_V_44_address1 sc_out sc_lv 8 signal 46 } 
	{ node_embedding_V_44_ce1 sc_out sc_logic 1 signal 46 } 
	{ node_embedding_V_44_we1 sc_out sc_logic 1 signal 46 } 
	{ node_embedding_V_44_d1 sc_out sc_lv 28 signal 46 } 
	{ node_embedding_V_45_address0 sc_out sc_lv 8 signal 47 } 
	{ node_embedding_V_45_ce0 sc_out sc_logic 1 signal 47 } 
	{ node_embedding_V_45_q0 sc_in sc_lv 28 signal 47 } 
	{ node_embedding_V_45_address1 sc_out sc_lv 8 signal 47 } 
	{ node_embedding_V_45_ce1 sc_out sc_logic 1 signal 47 } 
	{ node_embedding_V_45_we1 sc_out sc_logic 1 signal 47 } 
	{ node_embedding_V_45_d1 sc_out sc_lv 28 signal 47 } 
	{ node_embedding_V_46_address0 sc_out sc_lv 8 signal 48 } 
	{ node_embedding_V_46_ce0 sc_out sc_logic 1 signal 48 } 
	{ node_embedding_V_46_q0 sc_in sc_lv 28 signal 48 } 
	{ node_embedding_V_46_address1 sc_out sc_lv 8 signal 48 } 
	{ node_embedding_V_46_ce1 sc_out sc_logic 1 signal 48 } 
	{ node_embedding_V_46_we1 sc_out sc_logic 1 signal 48 } 
	{ node_embedding_V_46_d1 sc_out sc_lv 28 signal 48 } 
	{ node_embedding_V_47_address0 sc_out sc_lv 8 signal 49 } 
	{ node_embedding_V_47_ce0 sc_out sc_logic 1 signal 49 } 
	{ node_embedding_V_47_q0 sc_in sc_lv 28 signal 49 } 
	{ node_embedding_V_47_address1 sc_out sc_lv 8 signal 49 } 
	{ node_embedding_V_47_ce1 sc_out sc_logic 1 signal 49 } 
	{ node_embedding_V_47_we1 sc_out sc_logic 1 signal 49 } 
	{ node_embedding_V_47_d1 sc_out sc_lv 28 signal 49 } 
	{ node_embedding_V_48_address0 sc_out sc_lv 8 signal 50 } 
	{ node_embedding_V_48_ce0 sc_out sc_logic 1 signal 50 } 
	{ node_embedding_V_48_q0 sc_in sc_lv 28 signal 50 } 
	{ node_embedding_V_48_address1 sc_out sc_lv 8 signal 50 } 
	{ node_embedding_V_48_ce1 sc_out sc_logic 1 signal 50 } 
	{ node_embedding_V_48_we1 sc_out sc_logic 1 signal 50 } 
	{ node_embedding_V_48_d1 sc_out sc_lv 28 signal 50 } 
	{ node_embedding_V_49_address0 sc_out sc_lv 8 signal 51 } 
	{ node_embedding_V_49_ce0 sc_out sc_logic 1 signal 51 } 
	{ node_embedding_V_49_q0 sc_in sc_lv 28 signal 51 } 
	{ node_embedding_V_49_address1 sc_out sc_lv 8 signal 51 } 
	{ node_embedding_V_49_ce1 sc_out sc_logic 1 signal 51 } 
	{ node_embedding_V_49_we1 sc_out sc_logic 1 signal 51 } 
	{ node_embedding_V_49_d1 sc_out sc_lv 28 signal 51 } 
	{ node_embedding_V_50_address0 sc_out sc_lv 8 signal 52 } 
	{ node_embedding_V_50_ce0 sc_out sc_logic 1 signal 52 } 
	{ node_embedding_V_50_q0 sc_in sc_lv 28 signal 52 } 
	{ node_embedding_V_50_address1 sc_out sc_lv 8 signal 52 } 
	{ node_embedding_V_50_ce1 sc_out sc_logic 1 signal 52 } 
	{ node_embedding_V_50_we1 sc_out sc_logic 1 signal 52 } 
	{ node_embedding_V_50_d1 sc_out sc_lv 28 signal 52 } 
	{ node_embedding_V_51_address0 sc_out sc_lv 8 signal 53 } 
	{ node_embedding_V_51_ce0 sc_out sc_logic 1 signal 53 } 
	{ node_embedding_V_51_q0 sc_in sc_lv 28 signal 53 } 
	{ node_embedding_V_51_address1 sc_out sc_lv 8 signal 53 } 
	{ node_embedding_V_51_ce1 sc_out sc_logic 1 signal 53 } 
	{ node_embedding_V_51_we1 sc_out sc_logic 1 signal 53 } 
	{ node_embedding_V_51_d1 sc_out sc_lv 28 signal 53 } 
	{ node_embedding_V_52_address0 sc_out sc_lv 8 signal 54 } 
	{ node_embedding_V_52_ce0 sc_out sc_logic 1 signal 54 } 
	{ node_embedding_V_52_q0 sc_in sc_lv 28 signal 54 } 
	{ node_embedding_V_52_address1 sc_out sc_lv 8 signal 54 } 
	{ node_embedding_V_52_ce1 sc_out sc_logic 1 signal 54 } 
	{ node_embedding_V_52_we1 sc_out sc_logic 1 signal 54 } 
	{ node_embedding_V_52_d1 sc_out sc_lv 28 signal 54 } 
	{ node_embedding_V_53_address0 sc_out sc_lv 8 signal 55 } 
	{ node_embedding_V_53_ce0 sc_out sc_logic 1 signal 55 } 
	{ node_embedding_V_53_q0 sc_in sc_lv 28 signal 55 } 
	{ node_embedding_V_53_address1 sc_out sc_lv 8 signal 55 } 
	{ node_embedding_V_53_ce1 sc_out sc_logic 1 signal 55 } 
	{ node_embedding_V_53_we1 sc_out sc_logic 1 signal 55 } 
	{ node_embedding_V_53_d1 sc_out sc_lv 28 signal 55 } 
	{ node_embedding_V_54_address0 sc_out sc_lv 8 signal 56 } 
	{ node_embedding_V_54_ce0 sc_out sc_logic 1 signal 56 } 
	{ node_embedding_V_54_q0 sc_in sc_lv 28 signal 56 } 
	{ node_embedding_V_54_address1 sc_out sc_lv 8 signal 56 } 
	{ node_embedding_V_54_ce1 sc_out sc_logic 1 signal 56 } 
	{ node_embedding_V_54_we1 sc_out sc_logic 1 signal 56 } 
	{ node_embedding_V_54_d1 sc_out sc_lv 28 signal 56 } 
	{ node_embedding_V_55_address0 sc_out sc_lv 8 signal 57 } 
	{ node_embedding_V_55_ce0 sc_out sc_logic 1 signal 57 } 
	{ node_embedding_V_55_q0 sc_in sc_lv 28 signal 57 } 
	{ node_embedding_V_55_address1 sc_out sc_lv 8 signal 57 } 
	{ node_embedding_V_55_ce1 sc_out sc_logic 1 signal 57 } 
	{ node_embedding_V_55_we1 sc_out sc_logic 1 signal 57 } 
	{ node_embedding_V_55_d1 sc_out sc_lv 28 signal 57 } 
	{ node_embedding_V_56_address0 sc_out sc_lv 8 signal 58 } 
	{ node_embedding_V_56_ce0 sc_out sc_logic 1 signal 58 } 
	{ node_embedding_V_56_q0 sc_in sc_lv 28 signal 58 } 
	{ node_embedding_V_56_address1 sc_out sc_lv 8 signal 58 } 
	{ node_embedding_V_56_ce1 sc_out sc_logic 1 signal 58 } 
	{ node_embedding_V_56_we1 sc_out sc_logic 1 signal 58 } 
	{ node_embedding_V_56_d1 sc_out sc_lv 28 signal 58 } 
	{ node_embedding_V_57_address0 sc_out sc_lv 8 signal 59 } 
	{ node_embedding_V_57_ce0 sc_out sc_logic 1 signal 59 } 
	{ node_embedding_V_57_q0 sc_in sc_lv 28 signal 59 } 
	{ node_embedding_V_57_address1 sc_out sc_lv 8 signal 59 } 
	{ node_embedding_V_57_ce1 sc_out sc_logic 1 signal 59 } 
	{ node_embedding_V_57_we1 sc_out sc_logic 1 signal 59 } 
	{ node_embedding_V_57_d1 sc_out sc_lv 28 signal 59 } 
	{ node_embedding_V_58_address0 sc_out sc_lv 8 signal 60 } 
	{ node_embedding_V_58_ce0 sc_out sc_logic 1 signal 60 } 
	{ node_embedding_V_58_q0 sc_in sc_lv 28 signal 60 } 
	{ node_embedding_V_58_address1 sc_out sc_lv 8 signal 60 } 
	{ node_embedding_V_58_ce1 sc_out sc_logic 1 signal 60 } 
	{ node_embedding_V_58_we1 sc_out sc_logic 1 signal 60 } 
	{ node_embedding_V_58_d1 sc_out sc_lv 28 signal 60 } 
	{ node_embedding_V_59_address0 sc_out sc_lv 8 signal 61 } 
	{ node_embedding_V_59_ce0 sc_out sc_logic 1 signal 61 } 
	{ node_embedding_V_59_q0 sc_in sc_lv 28 signal 61 } 
	{ node_embedding_V_59_address1 sc_out sc_lv 8 signal 61 } 
	{ node_embedding_V_59_ce1 sc_out sc_logic 1 signal 61 } 
	{ node_embedding_V_59_we1 sc_out sc_logic 1 signal 61 } 
	{ node_embedding_V_59_d1 sc_out sc_lv 28 signal 61 } 
	{ node_embedding_V_60_address0 sc_out sc_lv 8 signal 62 } 
	{ node_embedding_V_60_ce0 sc_out sc_logic 1 signal 62 } 
	{ node_embedding_V_60_q0 sc_in sc_lv 28 signal 62 } 
	{ node_embedding_V_60_address1 sc_out sc_lv 8 signal 62 } 
	{ node_embedding_V_60_ce1 sc_out sc_logic 1 signal 62 } 
	{ node_embedding_V_60_we1 sc_out sc_logic 1 signal 62 } 
	{ node_embedding_V_60_d1 sc_out sc_lv 28 signal 62 } 
	{ node_embedding_V_61_address0 sc_out sc_lv 8 signal 63 } 
	{ node_embedding_V_61_ce0 sc_out sc_logic 1 signal 63 } 
	{ node_embedding_V_61_q0 sc_in sc_lv 28 signal 63 } 
	{ node_embedding_V_61_address1 sc_out sc_lv 8 signal 63 } 
	{ node_embedding_V_61_ce1 sc_out sc_logic 1 signal 63 } 
	{ node_embedding_V_61_we1 sc_out sc_logic 1 signal 63 } 
	{ node_embedding_V_61_d1 sc_out sc_lv 28 signal 63 } 
	{ node_embedding_V_62_address0 sc_out sc_lv 8 signal 64 } 
	{ node_embedding_V_62_ce0 sc_out sc_logic 1 signal 64 } 
	{ node_embedding_V_62_q0 sc_in sc_lv 28 signal 64 } 
	{ node_embedding_V_62_address1 sc_out sc_lv 8 signal 64 } 
	{ node_embedding_V_62_ce1 sc_out sc_logic 1 signal 64 } 
	{ node_embedding_V_62_we1 sc_out sc_logic 1 signal 64 } 
	{ node_embedding_V_62_d1 sc_out sc_lv 28 signal 64 } 
	{ node_embedding_V_63_address0 sc_out sc_lv 8 signal 65 } 
	{ node_embedding_V_63_ce0 sc_out sc_logic 1 signal 65 } 
	{ node_embedding_V_63_q0 sc_in sc_lv 28 signal 65 } 
	{ node_embedding_V_63_address1 sc_out sc_lv 8 signal 65 } 
	{ node_embedding_V_63_ce1 sc_out sc_logic 1 signal 65 } 
	{ node_embedding_V_63_we1 sc_out sc_logic 1 signal 65 } 
	{ node_embedding_V_63_d1 sc_out sc_lv 28 signal 65 } 
	{ node_embedding_V_64_address0 sc_out sc_lv 8 signal 66 } 
	{ node_embedding_V_64_ce0 sc_out sc_logic 1 signal 66 } 
	{ node_embedding_V_64_q0 sc_in sc_lv 28 signal 66 } 
	{ node_embedding_V_64_address1 sc_out sc_lv 8 signal 66 } 
	{ node_embedding_V_64_ce1 sc_out sc_logic 1 signal 66 } 
	{ node_embedding_V_64_we1 sc_out sc_logic 1 signal 66 } 
	{ node_embedding_V_64_d1 sc_out sc_lv 28 signal 66 } 
	{ node_embedding_V_65_address0 sc_out sc_lv 8 signal 67 } 
	{ node_embedding_V_65_ce0 sc_out sc_logic 1 signal 67 } 
	{ node_embedding_V_65_q0 sc_in sc_lv 28 signal 67 } 
	{ node_embedding_V_65_address1 sc_out sc_lv 8 signal 67 } 
	{ node_embedding_V_65_ce1 sc_out sc_logic 1 signal 67 } 
	{ node_embedding_V_65_we1 sc_out sc_logic 1 signal 67 } 
	{ node_embedding_V_65_d1 sc_out sc_lv 28 signal 67 } 
	{ node_embedding_V_66_address0 sc_out sc_lv 8 signal 68 } 
	{ node_embedding_V_66_ce0 sc_out sc_logic 1 signal 68 } 
	{ node_embedding_V_66_q0 sc_in sc_lv 28 signal 68 } 
	{ node_embedding_V_66_address1 sc_out sc_lv 8 signal 68 } 
	{ node_embedding_V_66_ce1 sc_out sc_logic 1 signal 68 } 
	{ node_embedding_V_66_we1 sc_out sc_logic 1 signal 68 } 
	{ node_embedding_V_66_d1 sc_out sc_lv 28 signal 68 } 
	{ node_embedding_V_67_address0 sc_out sc_lv 8 signal 69 } 
	{ node_embedding_V_67_ce0 sc_out sc_logic 1 signal 69 } 
	{ node_embedding_V_67_q0 sc_in sc_lv 28 signal 69 } 
	{ node_embedding_V_67_address1 sc_out sc_lv 8 signal 69 } 
	{ node_embedding_V_67_ce1 sc_out sc_logic 1 signal 69 } 
	{ node_embedding_V_67_we1 sc_out sc_logic 1 signal 69 } 
	{ node_embedding_V_67_d1 sc_out sc_lv 28 signal 69 } 
	{ node_embedding_V_68_address0 sc_out sc_lv 8 signal 70 } 
	{ node_embedding_V_68_ce0 sc_out sc_logic 1 signal 70 } 
	{ node_embedding_V_68_q0 sc_in sc_lv 28 signal 70 } 
	{ node_embedding_V_68_address1 sc_out sc_lv 8 signal 70 } 
	{ node_embedding_V_68_ce1 sc_out sc_logic 1 signal 70 } 
	{ node_embedding_V_68_we1 sc_out sc_logic 1 signal 70 } 
	{ node_embedding_V_68_d1 sc_out sc_lv 28 signal 70 } 
	{ node_embedding_V_69_address0 sc_out sc_lv 8 signal 71 } 
	{ node_embedding_V_69_ce0 sc_out sc_logic 1 signal 71 } 
	{ node_embedding_V_69_q0 sc_in sc_lv 28 signal 71 } 
	{ node_embedding_V_69_address1 sc_out sc_lv 8 signal 71 } 
	{ node_embedding_V_69_ce1 sc_out sc_logic 1 signal 71 } 
	{ node_embedding_V_69_we1 sc_out sc_logic 1 signal 71 } 
	{ node_embedding_V_69_d1 sc_out sc_lv 28 signal 71 } 
	{ node_embedding_V_70_address0 sc_out sc_lv 8 signal 72 } 
	{ node_embedding_V_70_ce0 sc_out sc_logic 1 signal 72 } 
	{ node_embedding_V_70_q0 sc_in sc_lv 28 signal 72 } 
	{ node_embedding_V_70_address1 sc_out sc_lv 8 signal 72 } 
	{ node_embedding_V_70_ce1 sc_out sc_logic 1 signal 72 } 
	{ node_embedding_V_70_we1 sc_out sc_logic 1 signal 72 } 
	{ node_embedding_V_70_d1 sc_out sc_lv 28 signal 72 } 
	{ node_embedding_V_71_address0 sc_out sc_lv 8 signal 73 } 
	{ node_embedding_V_71_ce0 sc_out sc_logic 1 signal 73 } 
	{ node_embedding_V_71_q0 sc_in sc_lv 28 signal 73 } 
	{ node_embedding_V_71_address1 sc_out sc_lv 8 signal 73 } 
	{ node_embedding_V_71_ce1 sc_out sc_logic 1 signal 73 } 
	{ node_embedding_V_71_we1 sc_out sc_logic 1 signal 73 } 
	{ node_embedding_V_71_d1 sc_out sc_lv 28 signal 73 } 
	{ node_embedding_V_72_address0 sc_out sc_lv 8 signal 74 } 
	{ node_embedding_V_72_ce0 sc_out sc_logic 1 signal 74 } 
	{ node_embedding_V_72_q0 sc_in sc_lv 28 signal 74 } 
	{ node_embedding_V_72_address1 sc_out sc_lv 8 signal 74 } 
	{ node_embedding_V_72_ce1 sc_out sc_logic 1 signal 74 } 
	{ node_embedding_V_72_we1 sc_out sc_logic 1 signal 74 } 
	{ node_embedding_V_72_d1 sc_out sc_lv 28 signal 74 } 
	{ node_embedding_V_73_address0 sc_out sc_lv 8 signal 75 } 
	{ node_embedding_V_73_ce0 sc_out sc_logic 1 signal 75 } 
	{ node_embedding_V_73_q0 sc_in sc_lv 28 signal 75 } 
	{ node_embedding_V_73_address1 sc_out sc_lv 8 signal 75 } 
	{ node_embedding_V_73_ce1 sc_out sc_logic 1 signal 75 } 
	{ node_embedding_V_73_we1 sc_out sc_logic 1 signal 75 } 
	{ node_embedding_V_73_d1 sc_out sc_lv 28 signal 75 } 
	{ node_embedding_V_74_address0 sc_out sc_lv 8 signal 76 } 
	{ node_embedding_V_74_ce0 sc_out sc_logic 1 signal 76 } 
	{ node_embedding_V_74_q0 sc_in sc_lv 28 signal 76 } 
	{ node_embedding_V_74_address1 sc_out sc_lv 8 signal 76 } 
	{ node_embedding_V_74_ce1 sc_out sc_logic 1 signal 76 } 
	{ node_embedding_V_74_we1 sc_out sc_logic 1 signal 76 } 
	{ node_embedding_V_74_d1 sc_out sc_lv 28 signal 76 } 
	{ node_embedding_V_75_address0 sc_out sc_lv 8 signal 77 } 
	{ node_embedding_V_75_ce0 sc_out sc_logic 1 signal 77 } 
	{ node_embedding_V_75_q0 sc_in sc_lv 28 signal 77 } 
	{ node_embedding_V_75_address1 sc_out sc_lv 8 signal 77 } 
	{ node_embedding_V_75_ce1 sc_out sc_logic 1 signal 77 } 
	{ node_embedding_V_75_we1 sc_out sc_logic 1 signal 77 } 
	{ node_embedding_V_75_d1 sc_out sc_lv 28 signal 77 } 
	{ node_embedding_V_76_address0 sc_out sc_lv 8 signal 78 } 
	{ node_embedding_V_76_ce0 sc_out sc_logic 1 signal 78 } 
	{ node_embedding_V_76_q0 sc_in sc_lv 28 signal 78 } 
	{ node_embedding_V_76_address1 sc_out sc_lv 8 signal 78 } 
	{ node_embedding_V_76_ce1 sc_out sc_logic 1 signal 78 } 
	{ node_embedding_V_76_we1 sc_out sc_logic 1 signal 78 } 
	{ node_embedding_V_76_d1 sc_out sc_lv 28 signal 78 } 
	{ node_embedding_V_77_address0 sc_out sc_lv 8 signal 79 } 
	{ node_embedding_V_77_ce0 sc_out sc_logic 1 signal 79 } 
	{ node_embedding_V_77_q0 sc_in sc_lv 28 signal 79 } 
	{ node_embedding_V_77_address1 sc_out sc_lv 8 signal 79 } 
	{ node_embedding_V_77_ce1 sc_out sc_logic 1 signal 79 } 
	{ node_embedding_V_77_we1 sc_out sc_logic 1 signal 79 } 
	{ node_embedding_V_77_d1 sc_out sc_lv 28 signal 79 } 
	{ node_embedding_V_78_address0 sc_out sc_lv 8 signal 80 } 
	{ node_embedding_V_78_ce0 sc_out sc_logic 1 signal 80 } 
	{ node_embedding_V_78_q0 sc_in sc_lv 28 signal 80 } 
	{ node_embedding_V_78_address1 sc_out sc_lv 8 signal 80 } 
	{ node_embedding_V_78_ce1 sc_out sc_logic 1 signal 80 } 
	{ node_embedding_V_78_we1 sc_out sc_logic 1 signal 80 } 
	{ node_embedding_V_78_d1 sc_out sc_lv 28 signal 80 } 
	{ node_embedding_V_79_address0 sc_out sc_lv 8 signal 81 } 
	{ node_embedding_V_79_ce0 sc_out sc_logic 1 signal 81 } 
	{ node_embedding_V_79_q0 sc_in sc_lv 28 signal 81 } 
	{ node_embedding_V_79_address1 sc_out sc_lv 8 signal 81 } 
	{ node_embedding_V_79_ce1 sc_out sc_logic 1 signal 81 } 
	{ node_embedding_V_79_we1 sc_out sc_logic 1 signal 81 } 
	{ node_embedding_V_79_d1 sc_out sc_lv 28 signal 81 } 
	{ node_embedding_V_80_address0 sc_out sc_lv 8 signal 82 } 
	{ node_embedding_V_80_ce0 sc_out sc_logic 1 signal 82 } 
	{ node_embedding_V_80_q0 sc_in sc_lv 28 signal 82 } 
	{ node_embedding_V_80_address1 sc_out sc_lv 8 signal 82 } 
	{ node_embedding_V_80_ce1 sc_out sc_logic 1 signal 82 } 
	{ node_embedding_V_80_we1 sc_out sc_logic 1 signal 82 } 
	{ node_embedding_V_80_d1 sc_out sc_lv 28 signal 82 } 
	{ node_embedding_V_81_address0 sc_out sc_lv 8 signal 83 } 
	{ node_embedding_V_81_ce0 sc_out sc_logic 1 signal 83 } 
	{ node_embedding_V_81_q0 sc_in sc_lv 28 signal 83 } 
	{ node_embedding_V_81_address1 sc_out sc_lv 8 signal 83 } 
	{ node_embedding_V_81_ce1 sc_out sc_logic 1 signal 83 } 
	{ node_embedding_V_81_we1 sc_out sc_logic 1 signal 83 } 
	{ node_embedding_V_81_d1 sc_out sc_lv 28 signal 83 } 
	{ node_embedding_V_82_address0 sc_out sc_lv 8 signal 84 } 
	{ node_embedding_V_82_ce0 sc_out sc_logic 1 signal 84 } 
	{ node_embedding_V_82_q0 sc_in sc_lv 28 signal 84 } 
	{ node_embedding_V_82_address1 sc_out sc_lv 8 signal 84 } 
	{ node_embedding_V_82_ce1 sc_out sc_logic 1 signal 84 } 
	{ node_embedding_V_82_we1 sc_out sc_logic 1 signal 84 } 
	{ node_embedding_V_82_d1 sc_out sc_lv 28 signal 84 } 
	{ node_embedding_V_83_address0 sc_out sc_lv 8 signal 85 } 
	{ node_embedding_V_83_ce0 sc_out sc_logic 1 signal 85 } 
	{ node_embedding_V_83_q0 sc_in sc_lv 28 signal 85 } 
	{ node_embedding_V_83_address1 sc_out sc_lv 8 signal 85 } 
	{ node_embedding_V_83_ce1 sc_out sc_logic 1 signal 85 } 
	{ node_embedding_V_83_we1 sc_out sc_logic 1 signal 85 } 
	{ node_embedding_V_83_d1 sc_out sc_lv 28 signal 85 } 
	{ node_embedding_V_84_address0 sc_out sc_lv 8 signal 86 } 
	{ node_embedding_V_84_ce0 sc_out sc_logic 1 signal 86 } 
	{ node_embedding_V_84_q0 sc_in sc_lv 28 signal 86 } 
	{ node_embedding_V_84_address1 sc_out sc_lv 8 signal 86 } 
	{ node_embedding_V_84_ce1 sc_out sc_logic 1 signal 86 } 
	{ node_embedding_V_84_we1 sc_out sc_logic 1 signal 86 } 
	{ node_embedding_V_84_d1 sc_out sc_lv 28 signal 86 } 
	{ node_embedding_V_85_address0 sc_out sc_lv 8 signal 87 } 
	{ node_embedding_V_85_ce0 sc_out sc_logic 1 signal 87 } 
	{ node_embedding_V_85_q0 sc_in sc_lv 28 signal 87 } 
	{ node_embedding_V_85_address1 sc_out sc_lv 8 signal 87 } 
	{ node_embedding_V_85_ce1 sc_out sc_logic 1 signal 87 } 
	{ node_embedding_V_85_we1 sc_out sc_logic 1 signal 87 } 
	{ node_embedding_V_85_d1 sc_out sc_lv 28 signal 87 } 
	{ node_embedding_V_86_address0 sc_out sc_lv 8 signal 88 } 
	{ node_embedding_V_86_ce0 sc_out sc_logic 1 signal 88 } 
	{ node_embedding_V_86_q0 sc_in sc_lv 28 signal 88 } 
	{ node_embedding_V_86_address1 sc_out sc_lv 8 signal 88 } 
	{ node_embedding_V_86_ce1 sc_out sc_logic 1 signal 88 } 
	{ node_embedding_V_86_we1 sc_out sc_logic 1 signal 88 } 
	{ node_embedding_V_86_d1 sc_out sc_lv 28 signal 88 } 
	{ node_embedding_V_87_address0 sc_out sc_lv 8 signal 89 } 
	{ node_embedding_V_87_ce0 sc_out sc_logic 1 signal 89 } 
	{ node_embedding_V_87_q0 sc_in sc_lv 28 signal 89 } 
	{ node_embedding_V_87_address1 sc_out sc_lv 8 signal 89 } 
	{ node_embedding_V_87_ce1 sc_out sc_logic 1 signal 89 } 
	{ node_embedding_V_87_we1 sc_out sc_logic 1 signal 89 } 
	{ node_embedding_V_87_d1 sc_out sc_lv 28 signal 89 } 
	{ node_embedding_V_88_address0 sc_out sc_lv 8 signal 90 } 
	{ node_embedding_V_88_ce0 sc_out sc_logic 1 signal 90 } 
	{ node_embedding_V_88_q0 sc_in sc_lv 28 signal 90 } 
	{ node_embedding_V_88_address1 sc_out sc_lv 8 signal 90 } 
	{ node_embedding_V_88_ce1 sc_out sc_logic 1 signal 90 } 
	{ node_embedding_V_88_we1 sc_out sc_logic 1 signal 90 } 
	{ node_embedding_V_88_d1 sc_out sc_lv 28 signal 90 } 
	{ node_embedding_V_89_address0 sc_out sc_lv 8 signal 91 } 
	{ node_embedding_V_89_ce0 sc_out sc_logic 1 signal 91 } 
	{ node_embedding_V_89_q0 sc_in sc_lv 28 signal 91 } 
	{ node_embedding_V_89_address1 sc_out sc_lv 8 signal 91 } 
	{ node_embedding_V_89_ce1 sc_out sc_logic 1 signal 91 } 
	{ node_embedding_V_89_we1 sc_out sc_logic 1 signal 91 } 
	{ node_embedding_V_89_d1 sc_out sc_lv 28 signal 91 } 
	{ node_embedding_V_90_address0 sc_out sc_lv 8 signal 92 } 
	{ node_embedding_V_90_ce0 sc_out sc_logic 1 signal 92 } 
	{ node_embedding_V_90_q0 sc_in sc_lv 28 signal 92 } 
	{ node_embedding_V_90_address1 sc_out sc_lv 8 signal 92 } 
	{ node_embedding_V_90_ce1 sc_out sc_logic 1 signal 92 } 
	{ node_embedding_V_90_we1 sc_out sc_logic 1 signal 92 } 
	{ node_embedding_V_90_d1 sc_out sc_lv 28 signal 92 } 
	{ node_embedding_V_91_address0 sc_out sc_lv 8 signal 93 } 
	{ node_embedding_V_91_ce0 sc_out sc_logic 1 signal 93 } 
	{ node_embedding_V_91_q0 sc_in sc_lv 28 signal 93 } 
	{ node_embedding_V_91_address1 sc_out sc_lv 8 signal 93 } 
	{ node_embedding_V_91_ce1 sc_out sc_logic 1 signal 93 } 
	{ node_embedding_V_91_we1 sc_out sc_logic 1 signal 93 } 
	{ node_embedding_V_91_d1 sc_out sc_lv 28 signal 93 } 
	{ node_embedding_V_92_address0 sc_out sc_lv 8 signal 94 } 
	{ node_embedding_V_92_ce0 sc_out sc_logic 1 signal 94 } 
	{ node_embedding_V_92_q0 sc_in sc_lv 28 signal 94 } 
	{ node_embedding_V_92_address1 sc_out sc_lv 8 signal 94 } 
	{ node_embedding_V_92_ce1 sc_out sc_logic 1 signal 94 } 
	{ node_embedding_V_92_we1 sc_out sc_logic 1 signal 94 } 
	{ node_embedding_V_92_d1 sc_out sc_lv 28 signal 94 } 
	{ node_embedding_V_93_address0 sc_out sc_lv 8 signal 95 } 
	{ node_embedding_V_93_ce0 sc_out sc_logic 1 signal 95 } 
	{ node_embedding_V_93_q0 sc_in sc_lv 28 signal 95 } 
	{ node_embedding_V_93_address1 sc_out sc_lv 8 signal 95 } 
	{ node_embedding_V_93_ce1 sc_out sc_logic 1 signal 95 } 
	{ node_embedding_V_93_we1 sc_out sc_logic 1 signal 95 } 
	{ node_embedding_V_93_d1 sc_out sc_lv 28 signal 95 } 
	{ node_embedding_V_94_address0 sc_out sc_lv 8 signal 96 } 
	{ node_embedding_V_94_ce0 sc_out sc_logic 1 signal 96 } 
	{ node_embedding_V_94_q0 sc_in sc_lv 28 signal 96 } 
	{ node_embedding_V_94_address1 sc_out sc_lv 8 signal 96 } 
	{ node_embedding_V_94_ce1 sc_out sc_logic 1 signal 96 } 
	{ node_embedding_V_94_we1 sc_out sc_logic 1 signal 96 } 
	{ node_embedding_V_94_d1 sc_out sc_lv 28 signal 96 } 
	{ node_embedding_V_95_address0 sc_out sc_lv 8 signal 97 } 
	{ node_embedding_V_95_ce0 sc_out sc_logic 1 signal 97 } 
	{ node_embedding_V_95_q0 sc_in sc_lv 28 signal 97 } 
	{ node_embedding_V_95_address1 sc_out sc_lv 8 signal 97 } 
	{ node_embedding_V_95_ce1 sc_out sc_logic 1 signal 97 } 
	{ node_embedding_V_95_we1 sc_out sc_logic 1 signal 97 } 
	{ node_embedding_V_95_d1 sc_out sc_lv 28 signal 97 } 
	{ node_embedding_V_96_address0 sc_out sc_lv 8 signal 98 } 
	{ node_embedding_V_96_ce0 sc_out sc_logic 1 signal 98 } 
	{ node_embedding_V_96_q0 sc_in sc_lv 28 signal 98 } 
	{ node_embedding_V_96_address1 sc_out sc_lv 8 signal 98 } 
	{ node_embedding_V_96_ce1 sc_out sc_logic 1 signal 98 } 
	{ node_embedding_V_96_we1 sc_out sc_logic 1 signal 98 } 
	{ node_embedding_V_96_d1 sc_out sc_lv 28 signal 98 } 
	{ node_embedding_V_97_address0 sc_out sc_lv 8 signal 99 } 
	{ node_embedding_V_97_ce0 sc_out sc_logic 1 signal 99 } 
	{ node_embedding_V_97_q0 sc_in sc_lv 28 signal 99 } 
	{ node_embedding_V_97_address1 sc_out sc_lv 8 signal 99 } 
	{ node_embedding_V_97_ce1 sc_out sc_logic 1 signal 99 } 
	{ node_embedding_V_97_we1 sc_out sc_logic 1 signal 99 } 
	{ node_embedding_V_97_d1 sc_out sc_lv 28 signal 99 } 
	{ node_embedding_V_98_address0 sc_out sc_lv 8 signal 100 } 
	{ node_embedding_V_98_ce0 sc_out sc_logic 1 signal 100 } 
	{ node_embedding_V_98_q0 sc_in sc_lv 28 signal 100 } 
	{ node_embedding_V_98_address1 sc_out sc_lv 8 signal 100 } 
	{ node_embedding_V_98_ce1 sc_out sc_logic 1 signal 100 } 
	{ node_embedding_V_98_we1 sc_out sc_logic 1 signal 100 } 
	{ node_embedding_V_98_d1 sc_out sc_lv 28 signal 100 } 
	{ node_embedding_V_99_address0 sc_out sc_lv 8 signal 101 } 
	{ node_embedding_V_99_ce0 sc_out sc_logic 1 signal 101 } 
	{ node_embedding_V_99_q0 sc_in sc_lv 28 signal 101 } 
	{ node_embedding_V_99_address1 sc_out sc_lv 8 signal 101 } 
	{ node_embedding_V_99_ce1 sc_out sc_logic 1 signal 101 } 
	{ node_embedding_V_99_we1 sc_out sc_logic 1 signal 101 } 
	{ node_embedding_V_99_d1 sc_out sc_lv 28 signal 101 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "layer", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "layer", "role": "default" }} , 
 	{ "name": "edge_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "edge_list", "role": "address0" }} , 
 	{ "name": "edge_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce0" }} , 
 	{ "name": "edge_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q0" }} , 
 	{ "name": "edge_list_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "edge_list", "role": "address1" }} , 
 	{ "name": "edge_list_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce1" }} , 
 	{ "name": "edge_list_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q1" }} , 
 	{ "name": "node_embedding_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_0", "role": "address0" }} , 
 	{ "name": "node_embedding_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_0", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_0", "role": "q0" }} , 
 	{ "name": "node_embedding_V_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_0", "role": "address1" }} , 
 	{ "name": "node_embedding_V_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_0", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_0", "role": "we1" }} , 
 	{ "name": "node_embedding_V_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_0", "role": "d1" }} , 
 	{ "name": "node_embedding_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_1", "role": "address0" }} , 
 	{ "name": "node_embedding_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_1", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_1", "role": "q0" }} , 
 	{ "name": "node_embedding_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_1", "role": "address1" }} , 
 	{ "name": "node_embedding_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_1", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_1", "role": "we1" }} , 
 	{ "name": "node_embedding_V_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_1", "role": "d1" }} , 
 	{ "name": "node_embedding_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_2", "role": "address0" }} , 
 	{ "name": "node_embedding_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_2", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_2", "role": "q0" }} , 
 	{ "name": "node_embedding_V_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_2", "role": "address1" }} , 
 	{ "name": "node_embedding_V_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_2", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_2", "role": "we1" }} , 
 	{ "name": "node_embedding_V_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_2", "role": "d1" }} , 
 	{ "name": "node_embedding_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_3", "role": "address0" }} , 
 	{ "name": "node_embedding_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_3", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_3", "role": "q0" }} , 
 	{ "name": "node_embedding_V_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_3", "role": "address1" }} , 
 	{ "name": "node_embedding_V_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_3", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_3", "role": "we1" }} , 
 	{ "name": "node_embedding_V_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_3", "role": "d1" }} , 
 	{ "name": "node_embedding_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_4", "role": "address0" }} , 
 	{ "name": "node_embedding_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_4", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_4", "role": "q0" }} , 
 	{ "name": "node_embedding_V_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_4", "role": "address1" }} , 
 	{ "name": "node_embedding_V_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_4", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_4", "role": "we1" }} , 
 	{ "name": "node_embedding_V_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_4", "role": "d1" }} , 
 	{ "name": "node_embedding_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_5", "role": "address0" }} , 
 	{ "name": "node_embedding_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_5", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_5", "role": "q0" }} , 
 	{ "name": "node_embedding_V_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_5", "role": "address1" }} , 
 	{ "name": "node_embedding_V_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_5", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_5", "role": "we1" }} , 
 	{ "name": "node_embedding_V_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_5", "role": "d1" }} , 
 	{ "name": "node_embedding_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_6", "role": "address0" }} , 
 	{ "name": "node_embedding_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_6", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_6", "role": "q0" }} , 
 	{ "name": "node_embedding_V_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_6", "role": "address1" }} , 
 	{ "name": "node_embedding_V_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_6", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_6", "role": "we1" }} , 
 	{ "name": "node_embedding_V_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_6", "role": "d1" }} , 
 	{ "name": "node_embedding_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_7", "role": "address0" }} , 
 	{ "name": "node_embedding_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_7", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_7", "role": "q0" }} , 
 	{ "name": "node_embedding_V_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_7", "role": "address1" }} , 
 	{ "name": "node_embedding_V_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_7", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_7", "role": "we1" }} , 
 	{ "name": "node_embedding_V_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_7", "role": "d1" }} , 
 	{ "name": "node_embedding_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_8", "role": "address0" }} , 
 	{ "name": "node_embedding_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_8", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_8", "role": "q0" }} , 
 	{ "name": "node_embedding_V_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_8", "role": "address1" }} , 
 	{ "name": "node_embedding_V_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_8", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_8_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_8", "role": "we1" }} , 
 	{ "name": "node_embedding_V_8_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_8", "role": "d1" }} , 
 	{ "name": "node_embedding_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_9", "role": "address0" }} , 
 	{ "name": "node_embedding_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_9", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_9", "role": "q0" }} , 
 	{ "name": "node_embedding_V_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_9", "role": "address1" }} , 
 	{ "name": "node_embedding_V_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_9", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_9_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_9", "role": "we1" }} , 
 	{ "name": "node_embedding_V_9_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_9", "role": "d1" }} , 
 	{ "name": "node_embedding_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_10", "role": "address0" }} , 
 	{ "name": "node_embedding_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_10", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_10", "role": "q0" }} , 
 	{ "name": "node_embedding_V_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_10", "role": "address1" }} , 
 	{ "name": "node_embedding_V_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_10", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_10_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_10", "role": "we1" }} , 
 	{ "name": "node_embedding_V_10_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_10", "role": "d1" }} , 
 	{ "name": "node_embedding_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_11", "role": "address0" }} , 
 	{ "name": "node_embedding_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_11", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_11", "role": "q0" }} , 
 	{ "name": "node_embedding_V_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_11", "role": "address1" }} , 
 	{ "name": "node_embedding_V_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_11", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_11_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_11", "role": "we1" }} , 
 	{ "name": "node_embedding_V_11_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_11", "role": "d1" }} , 
 	{ "name": "node_embedding_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_12", "role": "address0" }} , 
 	{ "name": "node_embedding_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_12", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_12", "role": "q0" }} , 
 	{ "name": "node_embedding_V_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_12", "role": "address1" }} , 
 	{ "name": "node_embedding_V_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_12", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_12_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_12", "role": "we1" }} , 
 	{ "name": "node_embedding_V_12_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_12", "role": "d1" }} , 
 	{ "name": "node_embedding_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_13", "role": "address0" }} , 
 	{ "name": "node_embedding_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_13", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_13", "role": "q0" }} , 
 	{ "name": "node_embedding_V_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_13", "role": "address1" }} , 
 	{ "name": "node_embedding_V_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_13", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_13_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_13", "role": "we1" }} , 
 	{ "name": "node_embedding_V_13_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_13", "role": "d1" }} , 
 	{ "name": "node_embedding_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_14", "role": "address0" }} , 
 	{ "name": "node_embedding_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_14", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_14", "role": "q0" }} , 
 	{ "name": "node_embedding_V_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_14", "role": "address1" }} , 
 	{ "name": "node_embedding_V_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_14", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_14_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_14", "role": "we1" }} , 
 	{ "name": "node_embedding_V_14_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_14", "role": "d1" }} , 
 	{ "name": "node_embedding_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_15", "role": "address0" }} , 
 	{ "name": "node_embedding_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_15", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_15", "role": "q0" }} , 
 	{ "name": "node_embedding_V_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_15", "role": "address1" }} , 
 	{ "name": "node_embedding_V_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_15", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_15_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_15", "role": "we1" }} , 
 	{ "name": "node_embedding_V_15_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_15", "role": "d1" }} , 
 	{ "name": "node_embedding_V_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_16", "role": "address0" }} , 
 	{ "name": "node_embedding_V_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_16", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_16", "role": "q0" }} , 
 	{ "name": "node_embedding_V_16_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_16", "role": "address1" }} , 
 	{ "name": "node_embedding_V_16_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_16", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_16_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_16", "role": "we1" }} , 
 	{ "name": "node_embedding_V_16_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_16", "role": "d1" }} , 
 	{ "name": "node_embedding_V_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_17", "role": "address0" }} , 
 	{ "name": "node_embedding_V_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_17", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_17", "role": "q0" }} , 
 	{ "name": "node_embedding_V_17_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_17", "role": "address1" }} , 
 	{ "name": "node_embedding_V_17_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_17", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_17_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_17", "role": "we1" }} , 
 	{ "name": "node_embedding_V_17_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_17", "role": "d1" }} , 
 	{ "name": "node_embedding_V_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_18", "role": "address0" }} , 
 	{ "name": "node_embedding_V_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_18", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_18", "role": "q0" }} , 
 	{ "name": "node_embedding_V_18_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_18", "role": "address1" }} , 
 	{ "name": "node_embedding_V_18_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_18", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_18_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_18", "role": "we1" }} , 
 	{ "name": "node_embedding_V_18_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_18", "role": "d1" }} , 
 	{ "name": "node_embedding_V_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_19", "role": "address0" }} , 
 	{ "name": "node_embedding_V_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_19", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_19", "role": "q0" }} , 
 	{ "name": "node_embedding_V_19_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_19", "role": "address1" }} , 
 	{ "name": "node_embedding_V_19_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_19", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_19_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_19", "role": "we1" }} , 
 	{ "name": "node_embedding_V_19_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_19", "role": "d1" }} , 
 	{ "name": "node_embedding_V_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_20", "role": "address0" }} , 
 	{ "name": "node_embedding_V_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_20", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_20", "role": "q0" }} , 
 	{ "name": "node_embedding_V_20_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_20", "role": "address1" }} , 
 	{ "name": "node_embedding_V_20_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_20", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_20_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_20", "role": "we1" }} , 
 	{ "name": "node_embedding_V_20_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_20", "role": "d1" }} , 
 	{ "name": "node_embedding_V_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_21", "role": "address0" }} , 
 	{ "name": "node_embedding_V_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_21", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_21", "role": "q0" }} , 
 	{ "name": "node_embedding_V_21_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_21", "role": "address1" }} , 
 	{ "name": "node_embedding_V_21_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_21", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_21_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_21", "role": "we1" }} , 
 	{ "name": "node_embedding_V_21_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_21", "role": "d1" }} , 
 	{ "name": "node_embedding_V_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_22", "role": "address0" }} , 
 	{ "name": "node_embedding_V_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_22", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_22_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_22", "role": "q0" }} , 
 	{ "name": "node_embedding_V_22_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_22", "role": "address1" }} , 
 	{ "name": "node_embedding_V_22_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_22", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_22_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_22", "role": "we1" }} , 
 	{ "name": "node_embedding_V_22_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_22", "role": "d1" }} , 
 	{ "name": "node_embedding_V_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_23", "role": "address0" }} , 
 	{ "name": "node_embedding_V_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_23", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_23_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_23", "role": "q0" }} , 
 	{ "name": "node_embedding_V_23_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_23", "role": "address1" }} , 
 	{ "name": "node_embedding_V_23_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_23", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_23_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_23", "role": "we1" }} , 
 	{ "name": "node_embedding_V_23_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_23", "role": "d1" }} , 
 	{ "name": "node_embedding_V_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_24", "role": "address0" }} , 
 	{ "name": "node_embedding_V_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_24", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_24_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_24", "role": "q0" }} , 
 	{ "name": "node_embedding_V_24_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_24", "role": "address1" }} , 
 	{ "name": "node_embedding_V_24_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_24", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_24_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_24", "role": "we1" }} , 
 	{ "name": "node_embedding_V_24_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_24", "role": "d1" }} , 
 	{ "name": "node_embedding_V_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_25", "role": "address0" }} , 
 	{ "name": "node_embedding_V_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_25", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_25_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_25", "role": "q0" }} , 
 	{ "name": "node_embedding_V_25_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_25", "role": "address1" }} , 
 	{ "name": "node_embedding_V_25_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_25", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_25_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_25", "role": "we1" }} , 
 	{ "name": "node_embedding_V_25_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_25", "role": "d1" }} , 
 	{ "name": "node_embedding_V_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_26", "role": "address0" }} , 
 	{ "name": "node_embedding_V_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_26", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_26_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_26", "role": "q0" }} , 
 	{ "name": "node_embedding_V_26_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_26", "role": "address1" }} , 
 	{ "name": "node_embedding_V_26_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_26", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_26_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_26", "role": "we1" }} , 
 	{ "name": "node_embedding_V_26_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_26", "role": "d1" }} , 
 	{ "name": "node_embedding_V_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_27", "role": "address0" }} , 
 	{ "name": "node_embedding_V_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_27", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_27_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_27", "role": "q0" }} , 
 	{ "name": "node_embedding_V_27_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_27", "role": "address1" }} , 
 	{ "name": "node_embedding_V_27_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_27", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_27_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_27", "role": "we1" }} , 
 	{ "name": "node_embedding_V_27_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_27", "role": "d1" }} , 
 	{ "name": "node_embedding_V_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_28", "role": "address0" }} , 
 	{ "name": "node_embedding_V_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_28", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_28", "role": "q0" }} , 
 	{ "name": "node_embedding_V_28_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_28", "role": "address1" }} , 
 	{ "name": "node_embedding_V_28_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_28", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_28_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_28", "role": "we1" }} , 
 	{ "name": "node_embedding_V_28_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_28", "role": "d1" }} , 
 	{ "name": "node_embedding_V_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_29", "role": "address0" }} , 
 	{ "name": "node_embedding_V_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_29", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_29", "role": "q0" }} , 
 	{ "name": "node_embedding_V_29_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_29", "role": "address1" }} , 
 	{ "name": "node_embedding_V_29_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_29", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_29_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_29", "role": "we1" }} , 
 	{ "name": "node_embedding_V_29_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_29", "role": "d1" }} , 
 	{ "name": "node_embedding_V_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_30", "role": "address0" }} , 
 	{ "name": "node_embedding_V_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_30", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_30_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_30", "role": "q0" }} , 
 	{ "name": "node_embedding_V_30_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_30", "role": "address1" }} , 
 	{ "name": "node_embedding_V_30_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_30", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_30_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_30", "role": "we1" }} , 
 	{ "name": "node_embedding_V_30_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_30", "role": "d1" }} , 
 	{ "name": "node_embedding_V_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_31", "role": "address0" }} , 
 	{ "name": "node_embedding_V_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_31", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_31_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_31", "role": "q0" }} , 
 	{ "name": "node_embedding_V_31_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_31", "role": "address1" }} , 
 	{ "name": "node_embedding_V_31_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_31", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_31_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_31", "role": "we1" }} , 
 	{ "name": "node_embedding_V_31_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_31", "role": "d1" }} , 
 	{ "name": "node_embedding_V_32_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_32", "role": "address0" }} , 
 	{ "name": "node_embedding_V_32_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_32", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_32_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_32", "role": "q0" }} , 
 	{ "name": "node_embedding_V_32_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_32", "role": "address1" }} , 
 	{ "name": "node_embedding_V_32_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_32", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_32_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_32", "role": "we1" }} , 
 	{ "name": "node_embedding_V_32_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_32", "role": "d1" }} , 
 	{ "name": "node_embedding_V_33_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_33", "role": "address0" }} , 
 	{ "name": "node_embedding_V_33_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_33", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_33_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_33", "role": "q0" }} , 
 	{ "name": "node_embedding_V_33_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_33", "role": "address1" }} , 
 	{ "name": "node_embedding_V_33_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_33", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_33_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_33", "role": "we1" }} , 
 	{ "name": "node_embedding_V_33_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_33", "role": "d1" }} , 
 	{ "name": "node_embedding_V_34_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_34", "role": "address0" }} , 
 	{ "name": "node_embedding_V_34_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_34", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_34_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_34", "role": "q0" }} , 
 	{ "name": "node_embedding_V_34_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_34", "role": "address1" }} , 
 	{ "name": "node_embedding_V_34_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_34", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_34_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_34", "role": "we1" }} , 
 	{ "name": "node_embedding_V_34_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_34", "role": "d1" }} , 
 	{ "name": "node_embedding_V_35_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_35", "role": "address0" }} , 
 	{ "name": "node_embedding_V_35_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_35", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_35_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_35", "role": "q0" }} , 
 	{ "name": "node_embedding_V_35_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_35", "role": "address1" }} , 
 	{ "name": "node_embedding_V_35_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_35", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_35_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_35", "role": "we1" }} , 
 	{ "name": "node_embedding_V_35_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_35", "role": "d1" }} , 
 	{ "name": "node_embedding_V_36_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_36", "role": "address0" }} , 
 	{ "name": "node_embedding_V_36_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_36", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_36_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_36", "role": "q0" }} , 
 	{ "name": "node_embedding_V_36_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_36", "role": "address1" }} , 
 	{ "name": "node_embedding_V_36_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_36", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_36_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_36", "role": "we1" }} , 
 	{ "name": "node_embedding_V_36_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_36", "role": "d1" }} , 
 	{ "name": "node_embedding_V_37_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_37", "role": "address0" }} , 
 	{ "name": "node_embedding_V_37_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_37", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_37_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_37", "role": "q0" }} , 
 	{ "name": "node_embedding_V_37_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_37", "role": "address1" }} , 
 	{ "name": "node_embedding_V_37_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_37", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_37_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_37", "role": "we1" }} , 
 	{ "name": "node_embedding_V_37_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_37", "role": "d1" }} , 
 	{ "name": "node_embedding_V_38_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_38", "role": "address0" }} , 
 	{ "name": "node_embedding_V_38_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_38", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_38_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_38", "role": "q0" }} , 
 	{ "name": "node_embedding_V_38_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_38", "role": "address1" }} , 
 	{ "name": "node_embedding_V_38_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_38", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_38_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_38", "role": "we1" }} , 
 	{ "name": "node_embedding_V_38_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_38", "role": "d1" }} , 
 	{ "name": "node_embedding_V_39_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_39", "role": "address0" }} , 
 	{ "name": "node_embedding_V_39_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_39", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_39_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_39", "role": "q0" }} , 
 	{ "name": "node_embedding_V_39_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_39", "role": "address1" }} , 
 	{ "name": "node_embedding_V_39_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_39", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_39_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_39", "role": "we1" }} , 
 	{ "name": "node_embedding_V_39_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_39", "role": "d1" }} , 
 	{ "name": "node_embedding_V_40_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_40", "role": "address0" }} , 
 	{ "name": "node_embedding_V_40_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_40", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_40_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_40", "role": "q0" }} , 
 	{ "name": "node_embedding_V_40_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_40", "role": "address1" }} , 
 	{ "name": "node_embedding_V_40_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_40", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_40_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_40", "role": "we1" }} , 
 	{ "name": "node_embedding_V_40_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_40", "role": "d1" }} , 
 	{ "name": "node_embedding_V_41_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_41", "role": "address0" }} , 
 	{ "name": "node_embedding_V_41_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_41", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_41_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_41", "role": "q0" }} , 
 	{ "name": "node_embedding_V_41_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_41", "role": "address1" }} , 
 	{ "name": "node_embedding_V_41_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_41", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_41_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_41", "role": "we1" }} , 
 	{ "name": "node_embedding_V_41_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_41", "role": "d1" }} , 
 	{ "name": "node_embedding_V_42_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_42", "role": "address0" }} , 
 	{ "name": "node_embedding_V_42_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_42", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_42_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_42", "role": "q0" }} , 
 	{ "name": "node_embedding_V_42_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_42", "role": "address1" }} , 
 	{ "name": "node_embedding_V_42_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_42", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_42_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_42", "role": "we1" }} , 
 	{ "name": "node_embedding_V_42_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_42", "role": "d1" }} , 
 	{ "name": "node_embedding_V_43_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_43", "role": "address0" }} , 
 	{ "name": "node_embedding_V_43_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_43", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_43_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_43", "role": "q0" }} , 
 	{ "name": "node_embedding_V_43_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_43", "role": "address1" }} , 
 	{ "name": "node_embedding_V_43_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_43", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_43_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_43", "role": "we1" }} , 
 	{ "name": "node_embedding_V_43_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_43", "role": "d1" }} , 
 	{ "name": "node_embedding_V_44_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_44", "role": "address0" }} , 
 	{ "name": "node_embedding_V_44_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_44", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_44_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_44", "role": "q0" }} , 
 	{ "name": "node_embedding_V_44_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_44", "role": "address1" }} , 
 	{ "name": "node_embedding_V_44_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_44", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_44_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_44", "role": "we1" }} , 
 	{ "name": "node_embedding_V_44_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_44", "role": "d1" }} , 
 	{ "name": "node_embedding_V_45_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_45", "role": "address0" }} , 
 	{ "name": "node_embedding_V_45_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_45", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_45_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_45", "role": "q0" }} , 
 	{ "name": "node_embedding_V_45_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_45", "role": "address1" }} , 
 	{ "name": "node_embedding_V_45_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_45", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_45_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_45", "role": "we1" }} , 
 	{ "name": "node_embedding_V_45_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_45", "role": "d1" }} , 
 	{ "name": "node_embedding_V_46_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_46", "role": "address0" }} , 
 	{ "name": "node_embedding_V_46_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_46", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_46_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_46", "role": "q0" }} , 
 	{ "name": "node_embedding_V_46_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_46", "role": "address1" }} , 
 	{ "name": "node_embedding_V_46_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_46", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_46_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_46", "role": "we1" }} , 
 	{ "name": "node_embedding_V_46_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_46", "role": "d1" }} , 
 	{ "name": "node_embedding_V_47_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_47", "role": "address0" }} , 
 	{ "name": "node_embedding_V_47_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_47", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_47_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_47", "role": "q0" }} , 
 	{ "name": "node_embedding_V_47_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_47", "role": "address1" }} , 
 	{ "name": "node_embedding_V_47_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_47", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_47_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_47", "role": "we1" }} , 
 	{ "name": "node_embedding_V_47_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_47", "role": "d1" }} , 
 	{ "name": "node_embedding_V_48_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_48", "role": "address0" }} , 
 	{ "name": "node_embedding_V_48_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_48", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_48_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_48", "role": "q0" }} , 
 	{ "name": "node_embedding_V_48_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_48", "role": "address1" }} , 
 	{ "name": "node_embedding_V_48_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_48", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_48_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_48", "role": "we1" }} , 
 	{ "name": "node_embedding_V_48_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_48", "role": "d1" }} , 
 	{ "name": "node_embedding_V_49_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_49", "role": "address0" }} , 
 	{ "name": "node_embedding_V_49_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_49", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_49_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_49", "role": "q0" }} , 
 	{ "name": "node_embedding_V_49_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_49", "role": "address1" }} , 
 	{ "name": "node_embedding_V_49_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_49", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_49_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_49", "role": "we1" }} , 
 	{ "name": "node_embedding_V_49_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_49", "role": "d1" }} , 
 	{ "name": "node_embedding_V_50_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_50", "role": "address0" }} , 
 	{ "name": "node_embedding_V_50_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_50", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_50_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_50", "role": "q0" }} , 
 	{ "name": "node_embedding_V_50_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_50", "role": "address1" }} , 
 	{ "name": "node_embedding_V_50_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_50", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_50_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_50", "role": "we1" }} , 
 	{ "name": "node_embedding_V_50_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_50", "role": "d1" }} , 
 	{ "name": "node_embedding_V_51_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_51", "role": "address0" }} , 
 	{ "name": "node_embedding_V_51_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_51", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_51_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_51", "role": "q0" }} , 
 	{ "name": "node_embedding_V_51_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_51", "role": "address1" }} , 
 	{ "name": "node_embedding_V_51_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_51", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_51_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_51", "role": "we1" }} , 
 	{ "name": "node_embedding_V_51_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_51", "role": "d1" }} , 
 	{ "name": "node_embedding_V_52_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_52", "role": "address0" }} , 
 	{ "name": "node_embedding_V_52_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_52", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_52_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_52", "role": "q0" }} , 
 	{ "name": "node_embedding_V_52_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_52", "role": "address1" }} , 
 	{ "name": "node_embedding_V_52_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_52", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_52_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_52", "role": "we1" }} , 
 	{ "name": "node_embedding_V_52_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_52", "role": "d1" }} , 
 	{ "name": "node_embedding_V_53_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_53", "role": "address0" }} , 
 	{ "name": "node_embedding_V_53_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_53", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_53_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_53", "role": "q0" }} , 
 	{ "name": "node_embedding_V_53_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_53", "role": "address1" }} , 
 	{ "name": "node_embedding_V_53_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_53", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_53_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_53", "role": "we1" }} , 
 	{ "name": "node_embedding_V_53_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_53", "role": "d1" }} , 
 	{ "name": "node_embedding_V_54_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_54", "role": "address0" }} , 
 	{ "name": "node_embedding_V_54_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_54", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_54_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_54", "role": "q0" }} , 
 	{ "name": "node_embedding_V_54_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_54", "role": "address1" }} , 
 	{ "name": "node_embedding_V_54_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_54", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_54_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_54", "role": "we1" }} , 
 	{ "name": "node_embedding_V_54_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_54", "role": "d1" }} , 
 	{ "name": "node_embedding_V_55_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_55", "role": "address0" }} , 
 	{ "name": "node_embedding_V_55_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_55", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_55_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_55", "role": "q0" }} , 
 	{ "name": "node_embedding_V_55_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_55", "role": "address1" }} , 
 	{ "name": "node_embedding_V_55_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_55", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_55_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_55", "role": "we1" }} , 
 	{ "name": "node_embedding_V_55_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_55", "role": "d1" }} , 
 	{ "name": "node_embedding_V_56_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_56", "role": "address0" }} , 
 	{ "name": "node_embedding_V_56_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_56", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_56_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_56", "role": "q0" }} , 
 	{ "name": "node_embedding_V_56_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_56", "role": "address1" }} , 
 	{ "name": "node_embedding_V_56_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_56", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_56_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_56", "role": "we1" }} , 
 	{ "name": "node_embedding_V_56_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_56", "role": "d1" }} , 
 	{ "name": "node_embedding_V_57_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_57", "role": "address0" }} , 
 	{ "name": "node_embedding_V_57_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_57", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_57_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_57", "role": "q0" }} , 
 	{ "name": "node_embedding_V_57_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_57", "role": "address1" }} , 
 	{ "name": "node_embedding_V_57_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_57", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_57_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_57", "role": "we1" }} , 
 	{ "name": "node_embedding_V_57_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_57", "role": "d1" }} , 
 	{ "name": "node_embedding_V_58_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_58", "role": "address0" }} , 
 	{ "name": "node_embedding_V_58_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_58", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_58_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_58", "role": "q0" }} , 
 	{ "name": "node_embedding_V_58_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_58", "role": "address1" }} , 
 	{ "name": "node_embedding_V_58_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_58", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_58_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_58", "role": "we1" }} , 
 	{ "name": "node_embedding_V_58_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_58", "role": "d1" }} , 
 	{ "name": "node_embedding_V_59_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_59", "role": "address0" }} , 
 	{ "name": "node_embedding_V_59_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_59", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_59_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_59", "role": "q0" }} , 
 	{ "name": "node_embedding_V_59_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_59", "role": "address1" }} , 
 	{ "name": "node_embedding_V_59_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_59", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_59_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_59", "role": "we1" }} , 
 	{ "name": "node_embedding_V_59_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_59", "role": "d1" }} , 
 	{ "name": "node_embedding_V_60_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_60", "role": "address0" }} , 
 	{ "name": "node_embedding_V_60_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_60", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_60_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_60", "role": "q0" }} , 
 	{ "name": "node_embedding_V_60_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_60", "role": "address1" }} , 
 	{ "name": "node_embedding_V_60_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_60", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_60_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_60", "role": "we1" }} , 
 	{ "name": "node_embedding_V_60_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_60", "role": "d1" }} , 
 	{ "name": "node_embedding_V_61_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_61", "role": "address0" }} , 
 	{ "name": "node_embedding_V_61_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_61", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_61_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_61", "role": "q0" }} , 
 	{ "name": "node_embedding_V_61_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_61", "role": "address1" }} , 
 	{ "name": "node_embedding_V_61_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_61", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_61_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_61", "role": "we1" }} , 
 	{ "name": "node_embedding_V_61_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_61", "role": "d1" }} , 
 	{ "name": "node_embedding_V_62_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_62", "role": "address0" }} , 
 	{ "name": "node_embedding_V_62_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_62", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_62_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_62", "role": "q0" }} , 
 	{ "name": "node_embedding_V_62_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_62", "role": "address1" }} , 
 	{ "name": "node_embedding_V_62_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_62", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_62_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_62", "role": "we1" }} , 
 	{ "name": "node_embedding_V_62_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_62", "role": "d1" }} , 
 	{ "name": "node_embedding_V_63_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_63", "role": "address0" }} , 
 	{ "name": "node_embedding_V_63_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_63", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_63_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_63", "role": "q0" }} , 
 	{ "name": "node_embedding_V_63_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_63", "role": "address1" }} , 
 	{ "name": "node_embedding_V_63_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_63", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_63_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_63", "role": "we1" }} , 
 	{ "name": "node_embedding_V_63_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_63", "role": "d1" }} , 
 	{ "name": "node_embedding_V_64_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_64", "role": "address0" }} , 
 	{ "name": "node_embedding_V_64_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_64", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_64_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_64", "role": "q0" }} , 
 	{ "name": "node_embedding_V_64_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_64", "role": "address1" }} , 
 	{ "name": "node_embedding_V_64_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_64", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_64_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_64", "role": "we1" }} , 
 	{ "name": "node_embedding_V_64_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_64", "role": "d1" }} , 
 	{ "name": "node_embedding_V_65_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_65", "role": "address0" }} , 
 	{ "name": "node_embedding_V_65_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_65", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_65_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_65", "role": "q0" }} , 
 	{ "name": "node_embedding_V_65_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_65", "role": "address1" }} , 
 	{ "name": "node_embedding_V_65_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_65", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_65_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_65", "role": "we1" }} , 
 	{ "name": "node_embedding_V_65_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_65", "role": "d1" }} , 
 	{ "name": "node_embedding_V_66_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_66", "role": "address0" }} , 
 	{ "name": "node_embedding_V_66_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_66", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_66_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_66", "role": "q0" }} , 
 	{ "name": "node_embedding_V_66_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_66", "role": "address1" }} , 
 	{ "name": "node_embedding_V_66_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_66", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_66_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_66", "role": "we1" }} , 
 	{ "name": "node_embedding_V_66_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_66", "role": "d1" }} , 
 	{ "name": "node_embedding_V_67_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_67", "role": "address0" }} , 
 	{ "name": "node_embedding_V_67_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_67", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_67_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_67", "role": "q0" }} , 
 	{ "name": "node_embedding_V_67_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_67", "role": "address1" }} , 
 	{ "name": "node_embedding_V_67_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_67", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_67_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_67", "role": "we1" }} , 
 	{ "name": "node_embedding_V_67_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_67", "role": "d1" }} , 
 	{ "name": "node_embedding_V_68_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_68", "role": "address0" }} , 
 	{ "name": "node_embedding_V_68_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_68", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_68_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_68", "role": "q0" }} , 
 	{ "name": "node_embedding_V_68_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_68", "role": "address1" }} , 
 	{ "name": "node_embedding_V_68_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_68", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_68_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_68", "role": "we1" }} , 
 	{ "name": "node_embedding_V_68_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_68", "role": "d1" }} , 
 	{ "name": "node_embedding_V_69_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_69", "role": "address0" }} , 
 	{ "name": "node_embedding_V_69_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_69", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_69_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_69", "role": "q0" }} , 
 	{ "name": "node_embedding_V_69_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_69", "role": "address1" }} , 
 	{ "name": "node_embedding_V_69_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_69", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_69_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_69", "role": "we1" }} , 
 	{ "name": "node_embedding_V_69_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_69", "role": "d1" }} , 
 	{ "name": "node_embedding_V_70_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_70", "role": "address0" }} , 
 	{ "name": "node_embedding_V_70_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_70", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_70_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_70", "role": "q0" }} , 
 	{ "name": "node_embedding_V_70_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_70", "role": "address1" }} , 
 	{ "name": "node_embedding_V_70_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_70", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_70_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_70", "role": "we1" }} , 
 	{ "name": "node_embedding_V_70_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_70", "role": "d1" }} , 
 	{ "name": "node_embedding_V_71_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_71", "role": "address0" }} , 
 	{ "name": "node_embedding_V_71_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_71", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_71_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_71", "role": "q0" }} , 
 	{ "name": "node_embedding_V_71_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_71", "role": "address1" }} , 
 	{ "name": "node_embedding_V_71_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_71", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_71_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_71", "role": "we1" }} , 
 	{ "name": "node_embedding_V_71_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_71", "role": "d1" }} , 
 	{ "name": "node_embedding_V_72_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_72", "role": "address0" }} , 
 	{ "name": "node_embedding_V_72_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_72", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_72_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_72", "role": "q0" }} , 
 	{ "name": "node_embedding_V_72_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_72", "role": "address1" }} , 
 	{ "name": "node_embedding_V_72_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_72", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_72_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_72", "role": "we1" }} , 
 	{ "name": "node_embedding_V_72_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_72", "role": "d1" }} , 
 	{ "name": "node_embedding_V_73_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_73", "role": "address0" }} , 
 	{ "name": "node_embedding_V_73_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_73", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_73_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_73", "role": "q0" }} , 
 	{ "name": "node_embedding_V_73_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_73", "role": "address1" }} , 
 	{ "name": "node_embedding_V_73_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_73", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_73_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_73", "role": "we1" }} , 
 	{ "name": "node_embedding_V_73_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_73", "role": "d1" }} , 
 	{ "name": "node_embedding_V_74_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_74", "role": "address0" }} , 
 	{ "name": "node_embedding_V_74_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_74", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_74_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_74", "role": "q0" }} , 
 	{ "name": "node_embedding_V_74_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_74", "role": "address1" }} , 
 	{ "name": "node_embedding_V_74_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_74", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_74_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_74", "role": "we1" }} , 
 	{ "name": "node_embedding_V_74_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_74", "role": "d1" }} , 
 	{ "name": "node_embedding_V_75_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_75", "role": "address0" }} , 
 	{ "name": "node_embedding_V_75_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_75", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_75_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_75", "role": "q0" }} , 
 	{ "name": "node_embedding_V_75_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_75", "role": "address1" }} , 
 	{ "name": "node_embedding_V_75_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_75", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_75_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_75", "role": "we1" }} , 
 	{ "name": "node_embedding_V_75_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_75", "role": "d1" }} , 
 	{ "name": "node_embedding_V_76_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_76", "role": "address0" }} , 
 	{ "name": "node_embedding_V_76_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_76", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_76_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_76", "role": "q0" }} , 
 	{ "name": "node_embedding_V_76_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_76", "role": "address1" }} , 
 	{ "name": "node_embedding_V_76_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_76", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_76_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_76", "role": "we1" }} , 
 	{ "name": "node_embedding_V_76_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_76", "role": "d1" }} , 
 	{ "name": "node_embedding_V_77_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_77", "role": "address0" }} , 
 	{ "name": "node_embedding_V_77_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_77", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_77_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_77", "role": "q0" }} , 
 	{ "name": "node_embedding_V_77_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_77", "role": "address1" }} , 
 	{ "name": "node_embedding_V_77_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_77", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_77_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_77", "role": "we1" }} , 
 	{ "name": "node_embedding_V_77_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_77", "role": "d1" }} , 
 	{ "name": "node_embedding_V_78_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_78", "role": "address0" }} , 
 	{ "name": "node_embedding_V_78_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_78", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_78_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_78", "role": "q0" }} , 
 	{ "name": "node_embedding_V_78_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_78", "role": "address1" }} , 
 	{ "name": "node_embedding_V_78_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_78", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_78_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_78", "role": "we1" }} , 
 	{ "name": "node_embedding_V_78_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_78", "role": "d1" }} , 
 	{ "name": "node_embedding_V_79_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_79", "role": "address0" }} , 
 	{ "name": "node_embedding_V_79_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_79", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_79_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_79", "role": "q0" }} , 
 	{ "name": "node_embedding_V_79_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_79", "role": "address1" }} , 
 	{ "name": "node_embedding_V_79_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_79", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_79_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_79", "role": "we1" }} , 
 	{ "name": "node_embedding_V_79_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_79", "role": "d1" }} , 
 	{ "name": "node_embedding_V_80_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_80", "role": "address0" }} , 
 	{ "name": "node_embedding_V_80_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_80", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_80_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_80", "role": "q0" }} , 
 	{ "name": "node_embedding_V_80_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_80", "role": "address1" }} , 
 	{ "name": "node_embedding_V_80_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_80", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_80_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_80", "role": "we1" }} , 
 	{ "name": "node_embedding_V_80_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_80", "role": "d1" }} , 
 	{ "name": "node_embedding_V_81_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_81", "role": "address0" }} , 
 	{ "name": "node_embedding_V_81_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_81", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_81_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_81", "role": "q0" }} , 
 	{ "name": "node_embedding_V_81_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_81", "role": "address1" }} , 
 	{ "name": "node_embedding_V_81_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_81", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_81_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_81", "role": "we1" }} , 
 	{ "name": "node_embedding_V_81_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_81", "role": "d1" }} , 
 	{ "name": "node_embedding_V_82_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_82", "role": "address0" }} , 
 	{ "name": "node_embedding_V_82_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_82", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_82_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_82", "role": "q0" }} , 
 	{ "name": "node_embedding_V_82_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_82", "role": "address1" }} , 
 	{ "name": "node_embedding_V_82_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_82", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_82_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_82", "role": "we1" }} , 
 	{ "name": "node_embedding_V_82_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_82", "role": "d1" }} , 
 	{ "name": "node_embedding_V_83_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_83", "role": "address0" }} , 
 	{ "name": "node_embedding_V_83_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_83", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_83_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_83", "role": "q0" }} , 
 	{ "name": "node_embedding_V_83_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_83", "role": "address1" }} , 
 	{ "name": "node_embedding_V_83_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_83", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_83_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_83", "role": "we1" }} , 
 	{ "name": "node_embedding_V_83_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_83", "role": "d1" }} , 
 	{ "name": "node_embedding_V_84_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_84", "role": "address0" }} , 
 	{ "name": "node_embedding_V_84_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_84", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_84_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_84", "role": "q0" }} , 
 	{ "name": "node_embedding_V_84_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_84", "role": "address1" }} , 
 	{ "name": "node_embedding_V_84_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_84", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_84_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_84", "role": "we1" }} , 
 	{ "name": "node_embedding_V_84_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_84", "role": "d1" }} , 
 	{ "name": "node_embedding_V_85_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_85", "role": "address0" }} , 
 	{ "name": "node_embedding_V_85_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_85", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_85_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_85", "role": "q0" }} , 
 	{ "name": "node_embedding_V_85_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_85", "role": "address1" }} , 
 	{ "name": "node_embedding_V_85_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_85", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_85_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_85", "role": "we1" }} , 
 	{ "name": "node_embedding_V_85_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_85", "role": "d1" }} , 
 	{ "name": "node_embedding_V_86_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_86", "role": "address0" }} , 
 	{ "name": "node_embedding_V_86_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_86", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_86_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_86", "role": "q0" }} , 
 	{ "name": "node_embedding_V_86_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_86", "role": "address1" }} , 
 	{ "name": "node_embedding_V_86_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_86", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_86_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_86", "role": "we1" }} , 
 	{ "name": "node_embedding_V_86_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_86", "role": "d1" }} , 
 	{ "name": "node_embedding_V_87_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_87", "role": "address0" }} , 
 	{ "name": "node_embedding_V_87_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_87", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_87_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_87", "role": "q0" }} , 
 	{ "name": "node_embedding_V_87_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_87", "role": "address1" }} , 
 	{ "name": "node_embedding_V_87_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_87", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_87_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_87", "role": "we1" }} , 
 	{ "name": "node_embedding_V_87_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_87", "role": "d1" }} , 
 	{ "name": "node_embedding_V_88_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_88", "role": "address0" }} , 
 	{ "name": "node_embedding_V_88_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_88", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_88_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_88", "role": "q0" }} , 
 	{ "name": "node_embedding_V_88_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_88", "role": "address1" }} , 
 	{ "name": "node_embedding_V_88_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_88", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_88_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_88", "role": "we1" }} , 
 	{ "name": "node_embedding_V_88_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_88", "role": "d1" }} , 
 	{ "name": "node_embedding_V_89_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_89", "role": "address0" }} , 
 	{ "name": "node_embedding_V_89_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_89", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_89_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_89", "role": "q0" }} , 
 	{ "name": "node_embedding_V_89_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_89", "role": "address1" }} , 
 	{ "name": "node_embedding_V_89_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_89", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_89_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_89", "role": "we1" }} , 
 	{ "name": "node_embedding_V_89_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_89", "role": "d1" }} , 
 	{ "name": "node_embedding_V_90_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_90", "role": "address0" }} , 
 	{ "name": "node_embedding_V_90_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_90", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_90_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_90", "role": "q0" }} , 
 	{ "name": "node_embedding_V_90_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_90", "role": "address1" }} , 
 	{ "name": "node_embedding_V_90_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_90", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_90_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_90", "role": "we1" }} , 
 	{ "name": "node_embedding_V_90_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_90", "role": "d1" }} , 
 	{ "name": "node_embedding_V_91_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_91", "role": "address0" }} , 
 	{ "name": "node_embedding_V_91_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_91", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_91_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_91", "role": "q0" }} , 
 	{ "name": "node_embedding_V_91_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_91", "role": "address1" }} , 
 	{ "name": "node_embedding_V_91_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_91", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_91_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_91", "role": "we1" }} , 
 	{ "name": "node_embedding_V_91_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_91", "role": "d1" }} , 
 	{ "name": "node_embedding_V_92_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_92", "role": "address0" }} , 
 	{ "name": "node_embedding_V_92_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_92", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_92_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_92", "role": "q0" }} , 
 	{ "name": "node_embedding_V_92_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_92", "role": "address1" }} , 
 	{ "name": "node_embedding_V_92_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_92", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_92_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_92", "role": "we1" }} , 
 	{ "name": "node_embedding_V_92_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_92", "role": "d1" }} , 
 	{ "name": "node_embedding_V_93_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_93", "role": "address0" }} , 
 	{ "name": "node_embedding_V_93_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_93", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_93_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_93", "role": "q0" }} , 
 	{ "name": "node_embedding_V_93_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_93", "role": "address1" }} , 
 	{ "name": "node_embedding_V_93_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_93", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_93_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_93", "role": "we1" }} , 
 	{ "name": "node_embedding_V_93_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_93", "role": "d1" }} , 
 	{ "name": "node_embedding_V_94_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_94", "role": "address0" }} , 
 	{ "name": "node_embedding_V_94_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_94", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_94_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_94", "role": "q0" }} , 
 	{ "name": "node_embedding_V_94_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_94", "role": "address1" }} , 
 	{ "name": "node_embedding_V_94_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_94", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_94_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_94", "role": "we1" }} , 
 	{ "name": "node_embedding_V_94_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_94", "role": "d1" }} , 
 	{ "name": "node_embedding_V_95_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_95", "role": "address0" }} , 
 	{ "name": "node_embedding_V_95_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_95", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_95_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_95", "role": "q0" }} , 
 	{ "name": "node_embedding_V_95_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_95", "role": "address1" }} , 
 	{ "name": "node_embedding_V_95_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_95", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_95_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_95", "role": "we1" }} , 
 	{ "name": "node_embedding_V_95_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_95", "role": "d1" }} , 
 	{ "name": "node_embedding_V_96_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_96", "role": "address0" }} , 
 	{ "name": "node_embedding_V_96_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_96", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_96_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_96", "role": "q0" }} , 
 	{ "name": "node_embedding_V_96_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_96", "role": "address1" }} , 
 	{ "name": "node_embedding_V_96_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_96", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_96_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_96", "role": "we1" }} , 
 	{ "name": "node_embedding_V_96_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_96", "role": "d1" }} , 
 	{ "name": "node_embedding_V_97_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_97", "role": "address0" }} , 
 	{ "name": "node_embedding_V_97_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_97", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_97_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_97", "role": "q0" }} , 
 	{ "name": "node_embedding_V_97_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_97", "role": "address1" }} , 
 	{ "name": "node_embedding_V_97_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_97", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_97_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_97", "role": "we1" }} , 
 	{ "name": "node_embedding_V_97_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_97", "role": "d1" }} , 
 	{ "name": "node_embedding_V_98_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_98", "role": "address0" }} , 
 	{ "name": "node_embedding_V_98_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_98", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_98_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_98", "role": "q0" }} , 
 	{ "name": "node_embedding_V_98_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_98", "role": "address1" }} , 
 	{ "name": "node_embedding_V_98_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_98", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_98_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_98", "role": "we1" }} , 
 	{ "name": "node_embedding_V_98_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_98", "role": "d1" }} , 
 	{ "name": "node_embedding_V_99_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_99", "role": "address0" }} , 
 	{ "name": "node_embedding_V_99_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_99", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_99_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_99", "role": "q0" }} , 
 	{ "name": "node_embedding_V_99_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "node_embedding_V_99", "role": "address1" }} , 
 	{ "name": "node_embedding_V_99_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_99", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_99_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V_99", "role": "we1" }} , 
 	{ "name": "node_embedding_V_99_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "node_embedding_V_99", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "105"],
		"CDFG" : "compute_CONV_layer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8786", "EstimateLatencyMax" : "8786",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "layer", "Type" : "None", "Direction" : "I"},
			{"Name" : "message_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "message_V"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "message_V"}]},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "edge_list"}]},
			{"Name" : "node_embedding_V_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_0"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_0"}]},
			{"Name" : "node_embedding_V_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_1"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_1"}]},
			{"Name" : "node_embedding_V_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_2"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_2"}]},
			{"Name" : "node_embedding_V_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_3"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_3"}]},
			{"Name" : "node_embedding_V_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_4"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_4"}]},
			{"Name" : "node_embedding_V_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_5"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_5"}]},
			{"Name" : "node_embedding_V_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_6"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_6"}]},
			{"Name" : "node_embedding_V_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_7"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_7"}]},
			{"Name" : "node_embedding_V_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_8"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_8"}]},
			{"Name" : "node_embedding_V_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_9"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_9"}]},
			{"Name" : "node_embedding_V_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_10"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_10"}]},
			{"Name" : "node_embedding_V_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_11"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_11"}]},
			{"Name" : "node_embedding_V_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_12"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_12"}]},
			{"Name" : "node_embedding_V_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_13"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_13"}]},
			{"Name" : "node_embedding_V_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_14"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_14"}]},
			{"Name" : "node_embedding_V_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_15"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_15"}]},
			{"Name" : "node_embedding_V_16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_16"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_16"}]},
			{"Name" : "node_embedding_V_17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_17"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_17"}]},
			{"Name" : "node_embedding_V_18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_18"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_18"}]},
			{"Name" : "node_embedding_V_19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_19"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_19"}]},
			{"Name" : "node_embedding_V_20", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_20"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_20"}]},
			{"Name" : "node_embedding_V_21", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_21"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_21"}]},
			{"Name" : "node_embedding_V_22", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_22"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_22"}]},
			{"Name" : "node_embedding_V_23", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_23"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_23"}]},
			{"Name" : "node_embedding_V_24", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_24"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_24"}]},
			{"Name" : "node_embedding_V_25", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_25"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_25"}]},
			{"Name" : "node_embedding_V_26", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_26"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_26"}]},
			{"Name" : "node_embedding_V_27", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_27"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_27"}]},
			{"Name" : "node_embedding_V_28", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_28"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_28"}]},
			{"Name" : "node_embedding_V_29", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_29"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_29"}]},
			{"Name" : "node_embedding_V_30", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_30"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_30"}]},
			{"Name" : "node_embedding_V_31", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_31"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_31"}]},
			{"Name" : "node_embedding_V_32", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_32"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_32"}]},
			{"Name" : "node_embedding_V_33", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_33"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_33"}]},
			{"Name" : "node_embedding_V_34", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_34"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_34"}]},
			{"Name" : "node_embedding_V_35", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_35"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_35"}]},
			{"Name" : "node_embedding_V_36", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_36"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_36"}]},
			{"Name" : "node_embedding_V_37", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_37"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_37"}]},
			{"Name" : "node_embedding_V_38", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_38"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_38"}]},
			{"Name" : "node_embedding_V_39", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_39"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_39"}]},
			{"Name" : "node_embedding_V_40", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_40"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_40"}]},
			{"Name" : "node_embedding_V_41", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_41"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_41"}]},
			{"Name" : "node_embedding_V_42", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_42"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_42"}]},
			{"Name" : "node_embedding_V_43", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_43"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_43"}]},
			{"Name" : "node_embedding_V_44", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_44"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_44"}]},
			{"Name" : "node_embedding_V_45", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_45"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_45"}]},
			{"Name" : "node_embedding_V_46", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_46"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_46"}]},
			{"Name" : "node_embedding_V_47", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_47"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_47"}]},
			{"Name" : "node_embedding_V_48", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_48"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_48"}]},
			{"Name" : "node_embedding_V_49", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_49"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_49"}]},
			{"Name" : "node_embedding_V_50", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_50"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_50"}]},
			{"Name" : "node_embedding_V_51", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_51"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_51"}]},
			{"Name" : "node_embedding_V_52", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_52"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_52"}]},
			{"Name" : "node_embedding_V_53", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_53"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_53"}]},
			{"Name" : "node_embedding_V_54", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_54"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_54"}]},
			{"Name" : "node_embedding_V_55", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_55"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_55"}]},
			{"Name" : "node_embedding_V_56", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_56"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_56"}]},
			{"Name" : "node_embedding_V_57", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_57"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_57"}]},
			{"Name" : "node_embedding_V_58", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_58"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_58"}]},
			{"Name" : "node_embedding_V_59", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_59"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_59"}]},
			{"Name" : "node_embedding_V_60", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_60"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_60"}]},
			{"Name" : "node_embedding_V_61", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_61"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_61"}]},
			{"Name" : "node_embedding_V_62", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_62"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_62"}]},
			{"Name" : "node_embedding_V_63", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_63"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_63"}]},
			{"Name" : "node_embedding_V_64", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_64"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_64"}]},
			{"Name" : "node_embedding_V_65", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_65"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_65"}]},
			{"Name" : "node_embedding_V_66", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_66"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_66"}]},
			{"Name" : "node_embedding_V_67", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_67"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_67"}]},
			{"Name" : "node_embedding_V_68", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_68"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_68"}]},
			{"Name" : "node_embedding_V_69", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_69"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_69"}]},
			{"Name" : "node_embedding_V_70", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_70"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_70"}]},
			{"Name" : "node_embedding_V_71", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_71"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_71"}]},
			{"Name" : "node_embedding_V_72", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_72"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_72"}]},
			{"Name" : "node_embedding_V_73", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_73"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_73"}]},
			{"Name" : "node_embedding_V_74", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_74"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_74"}]},
			{"Name" : "node_embedding_V_75", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_75"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_75"}]},
			{"Name" : "node_embedding_V_76", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_76"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_76"}]},
			{"Name" : "node_embedding_V_77", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_77"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_77"}]},
			{"Name" : "node_embedding_V_78", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_78"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_78"}]},
			{"Name" : "node_embedding_V_79", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_79"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_79"}]},
			{"Name" : "node_embedding_V_80", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_80"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_80"}]},
			{"Name" : "node_embedding_V_81", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_81"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_81"}]},
			{"Name" : "node_embedding_V_82", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_82"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_82"}]},
			{"Name" : "node_embedding_V_83", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_83"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_83"}]},
			{"Name" : "node_embedding_V_84", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_84"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_84"}]},
			{"Name" : "node_embedding_V_85", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_85"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_85"}]},
			{"Name" : "node_embedding_V_86", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_86"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_86"}]},
			{"Name" : "node_embedding_V_87", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_87"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_87"}]},
			{"Name" : "node_embedding_V_88", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_88"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_88"}]},
			{"Name" : "node_embedding_V_89", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_89"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_89"}]},
			{"Name" : "node_embedding_V_90", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_90"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_90"}]},
			{"Name" : "node_embedding_V_91", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_91"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_91"}]},
			{"Name" : "node_embedding_V_92", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_92"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_92"}]},
			{"Name" : "node_embedding_V_93", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_93"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_93"}]},
			{"Name" : "node_embedding_V_94", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_94"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_94"}]},
			{"Name" : "node_embedding_V_95", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_95"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_95"}]},
			{"Name" : "node_embedding_V_96", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_96"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_96"}]},
			{"Name" : "node_embedding_V_97", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_97"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_97"}]},
			{"Name" : "node_embedding_V_98", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_98"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_98"}]},
			{"Name" : "node_embedding_V_99", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_99"},
					{"ID" : "105", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_99"}]},
			{"Name" : "mlp_in_V_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_1"}]},
			{"Name" : "mlp_in_V_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_3"}]},
			{"Name" : "mlp_in_V_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_5"}]},
			{"Name" : "mlp_in_V_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_7"}]},
			{"Name" : "mlp_in_V_9", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_9"}]},
			{"Name" : "mlp_in_V_11", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_11"}]},
			{"Name" : "mlp_in_V_13", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_13"}]},
			{"Name" : "mlp_in_V_15", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_15"}]},
			{"Name" : "mlp_in_V_17", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_17"}]},
			{"Name" : "mlp_in_V_19", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_19"}]},
			{"Name" : "mlp_in_V_21", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_21"}]},
			{"Name" : "mlp_in_V_23", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_23"}]},
			{"Name" : "mlp_in_V_25", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_25"}]},
			{"Name" : "mlp_in_V_27", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_27"}]},
			{"Name" : "mlp_in_V_29", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_29"}]},
			{"Name" : "mlp_in_V_31", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_31"}]},
			{"Name" : "mlp_in_V_33", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_33"}]},
			{"Name" : "mlp_in_V_35", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_35"}]},
			{"Name" : "mlp_in_V_37", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_37"}]},
			{"Name" : "mlp_in_V_39", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_39"}]},
			{"Name" : "mlp_in_V_41", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_41"}]},
			{"Name" : "mlp_in_V_43", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_43"}]},
			{"Name" : "mlp_in_V_45", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_45"}]},
			{"Name" : "mlp_in_V_47", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_47"}]},
			{"Name" : "mlp_in_V_49", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_49"}]},
			{"Name" : "mlp_in_V_51", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_51"}]},
			{"Name" : "mlp_in_V_53", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_53"}]},
			{"Name" : "mlp_in_V_55", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_55"}]},
			{"Name" : "mlp_in_V_57", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_57"}]},
			{"Name" : "mlp_in_V_59", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_59"}]},
			{"Name" : "mlp_in_V_61", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_61"}]},
			{"Name" : "mlp_in_V_63", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_63"}]},
			{"Name" : "mlp_in_V_65", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_65"}]},
			{"Name" : "mlp_in_V_67", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_67"}]},
			{"Name" : "mlp_in_V_69", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_69"}]},
			{"Name" : "mlp_in_V_71", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_71"}]},
			{"Name" : "mlp_in_V_73", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_73"}]},
			{"Name" : "mlp_in_V_75", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_75"}]},
			{"Name" : "mlp_in_V_77", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_77"}]},
			{"Name" : "mlp_in_V_79", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_79"}]},
			{"Name" : "mlp_in_V_81", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_81"}]},
			{"Name" : "mlp_in_V_83", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_83"}]},
			{"Name" : "mlp_in_V_85", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_85"}]},
			{"Name" : "mlp_in_V_87", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_87"}]},
			{"Name" : "mlp_in_V_89", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_89"}]},
			{"Name" : "mlp_in_V_91", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_91"}]},
			{"Name" : "mlp_in_V_93", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_93"}]},
			{"Name" : "mlp_in_V_95", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_95"}]},
			{"Name" : "mlp_in_V_97", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_97"}]},
			{"Name" : "mlp_in_V_99", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_99"}]},
			{"Name" : "mlp_in_V_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_0"}]},
			{"Name" : "mlp_in_V_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_2"}]},
			{"Name" : "mlp_in_V_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_4"}]},
			{"Name" : "mlp_in_V_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_6"}]},
			{"Name" : "mlp_in_V_8", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_8"}]},
			{"Name" : "mlp_in_V_10", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_10"}]},
			{"Name" : "mlp_in_V_12", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_12"}]},
			{"Name" : "mlp_in_V_14", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_14"}]},
			{"Name" : "mlp_in_V_16", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_16"}]},
			{"Name" : "mlp_in_V_18", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_18"}]},
			{"Name" : "mlp_in_V_20", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_20"}]},
			{"Name" : "mlp_in_V_22", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_22"}]},
			{"Name" : "mlp_in_V_24", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_24"}]},
			{"Name" : "mlp_in_V_26", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_26"}]},
			{"Name" : "mlp_in_V_28", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_28"}]},
			{"Name" : "mlp_in_V_30", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_30"}]},
			{"Name" : "mlp_in_V_32", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_32"}]},
			{"Name" : "mlp_in_V_34", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_34"}]},
			{"Name" : "mlp_in_V_36", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_36"}]},
			{"Name" : "mlp_in_V_38", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_38"}]},
			{"Name" : "mlp_in_V_40", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_40"}]},
			{"Name" : "mlp_in_V_42", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_42"}]},
			{"Name" : "mlp_in_V_44", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_44"}]},
			{"Name" : "mlp_in_V_46", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_46"}]},
			{"Name" : "mlp_in_V_48", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_48"}]},
			{"Name" : "mlp_in_V_50", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_50"}]},
			{"Name" : "mlp_in_V_52", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_52"}]},
			{"Name" : "mlp_in_V_54", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_54"}]},
			{"Name" : "mlp_in_V_56", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_56"}]},
			{"Name" : "mlp_in_V_58", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_58"}]},
			{"Name" : "mlp_in_V_60", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_60"}]},
			{"Name" : "mlp_in_V_62", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_62"}]},
			{"Name" : "mlp_in_V_64", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_64"}]},
			{"Name" : "mlp_in_V_66", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_66"}]},
			{"Name" : "mlp_in_V_68", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_68"}]},
			{"Name" : "mlp_in_V_70", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_70"}]},
			{"Name" : "mlp_in_V_72", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_72"}]},
			{"Name" : "mlp_in_V_74", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_74"}]},
			{"Name" : "mlp_in_V_76", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_76"}]},
			{"Name" : "mlp_in_V_78", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_78"}]},
			{"Name" : "mlp_in_V_80", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_80"}]},
			{"Name" : "mlp_in_V_82", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_82"}]},
			{"Name" : "mlp_in_V_84", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_84"}]},
			{"Name" : "mlp_in_V_86", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_86"}]},
			{"Name" : "mlp_in_V_88", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_88"}]},
			{"Name" : "mlp_in_V_90", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_90"}]},
			{"Name" : "mlp_in_V_92", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_92"}]},
			{"Name" : "mlp_in_V_94", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_94"}]},
			{"Name" : "mlp_in_V_96", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_96"}]},
			{"Name" : "mlp_in_V_98", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_98"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.message_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104"],
		"CDFG" : "MLP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2875", "EstimateLatencyMax" : "2875",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "layer", "Type" : "None", "Direction" : "I"},
			{"Name" : "message_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_98", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_99", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_9", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_11", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_13", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_15", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_17", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_19", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_21", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_23", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_25", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_27", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_29", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_31", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_33", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_35", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_37", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_39", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_41", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_43", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_45", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_47", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_49", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_51", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_53", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_55", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_57", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_59", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_61", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_63", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_65", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_67", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_69", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_71", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_73", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_75", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_77", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_79", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_81", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_83", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_85", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_87", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_89", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_91", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_93", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_95", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_97", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_10", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_12", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_14", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_16", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_20", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_22", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_24", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_26", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_28", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_30", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_32", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_34", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_36", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_38", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_40", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_42", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_44", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_46", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_48", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_50", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_52", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_54", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_56", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_58", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_60", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_62", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_64", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_66", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_68", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_70", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_72", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_74", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_76", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_78", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_80", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_82", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_84", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_86", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_88", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_90", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_92", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_94", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_96", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "mlp_in_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_31", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_33", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_35", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_37", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_39", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_41", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_43", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_45", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_47", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_49", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_51", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_53", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_55", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_57", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_59", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_61", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_63", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_65", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_67", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_69", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_71", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_73", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_75", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_77", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_79", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_81", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_83", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_85", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_87", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_89", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_91", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_93", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_95", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_97", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_99", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_32", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_34", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_36", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_38", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_40", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_42", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_44", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_46", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_48", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_50", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_52", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_54", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_56", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_58", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_60", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_62", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_64", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_66", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_68", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_70", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_72", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_74", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_76", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_78", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_80", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_82", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_84", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_86", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_88", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_90", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_92", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_94", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_96", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_98", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_1_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_3_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_5_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_7_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_9_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_11_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_13_U", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_15_U", "Parent" : "2"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_17_U", "Parent" : "2"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_19_U", "Parent" : "2"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_21_U", "Parent" : "2"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_23_U", "Parent" : "2"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_25_U", "Parent" : "2"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_27_U", "Parent" : "2"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_29_U", "Parent" : "2"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_31_U", "Parent" : "2"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_33_U", "Parent" : "2"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_35_U", "Parent" : "2"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_37_U", "Parent" : "2"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_39_U", "Parent" : "2"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_41_U", "Parent" : "2"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_43_U", "Parent" : "2"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_45_U", "Parent" : "2"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_47_U", "Parent" : "2"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_49_U", "Parent" : "2"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_51_U", "Parent" : "2"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_53_U", "Parent" : "2"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_55_U", "Parent" : "2"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_57_U", "Parent" : "2"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_59_U", "Parent" : "2"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_61_U", "Parent" : "2"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_63_U", "Parent" : "2"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_65_U", "Parent" : "2"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_67_U", "Parent" : "2"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_69_U", "Parent" : "2"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_71_U", "Parent" : "2"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_73_U", "Parent" : "2"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_75_U", "Parent" : "2"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_77_U", "Parent" : "2"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_79_U", "Parent" : "2"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_81_U", "Parent" : "2"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_83_U", "Parent" : "2"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_85_U", "Parent" : "2"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_87_U", "Parent" : "2"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_89_U", "Parent" : "2"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_91_U", "Parent" : "2"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_93_U", "Parent" : "2"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_95_U", "Parent" : "2"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_97_U", "Parent" : "2"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_99_U", "Parent" : "2"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_0_U", "Parent" : "2"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_2_U", "Parent" : "2"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_4_U", "Parent" : "2"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_6_U", "Parent" : "2"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_8_U", "Parent" : "2"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_10_U", "Parent" : "2"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_12_U", "Parent" : "2"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_14_U", "Parent" : "2"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_16_U", "Parent" : "2"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_18_U", "Parent" : "2"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_20_U", "Parent" : "2"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_22_U", "Parent" : "2"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_24_U", "Parent" : "2"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_26_U", "Parent" : "2"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_28_U", "Parent" : "2"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_30_U", "Parent" : "2"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_32_U", "Parent" : "2"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_34_U", "Parent" : "2"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_36_U", "Parent" : "2"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_38_U", "Parent" : "2"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_40_U", "Parent" : "2"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_42_U", "Parent" : "2"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_44_U", "Parent" : "2"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_46_U", "Parent" : "2"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_48_U", "Parent" : "2"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_50_U", "Parent" : "2"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_52_U", "Parent" : "2"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_54_U", "Parent" : "2"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_56_U", "Parent" : "2"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_58_U", "Parent" : "2"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_60_U", "Parent" : "2"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_62_U", "Parent" : "2"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_64_U", "Parent" : "2"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_66_U", "Parent" : "2"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_68_U", "Parent" : "2"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_70_U", "Parent" : "2"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_72_U", "Parent" : "2"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_74_U", "Parent" : "2"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_76_U", "Parent" : "2"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_78_U", "Parent" : "2"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_80_U", "Parent" : "2"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_82_U", "Parent" : "2"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_84_U", "Parent" : "2"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_86_U", "Parent" : "2"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_88_U", "Parent" : "2"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_90_U", "Parent" : "2"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_92_U", "Parent" : "2"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_94_U", "Parent" : "2"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_96_U", "Parent" : "2"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mlp_in_V_98_U", "Parent" : "2"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mul_5ns_8ns_12_1_1_U214", "Parent" : "2"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_418.mux_1287_28_1_1_U215", "Parent" : "2"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_edge_embedding_and_message_passing_fu_826", "Parent" : "0", "Child" : ["106", "107"],
		"CDFG" : "compute_edge_embedding_and_message_passing",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5908", "EstimateLatencyMax" : "5908",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "message_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_33", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_34", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_35", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_36", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_37", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_38", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_39", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_40", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_41", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_42", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_43", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_44", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_45", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_46", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_47", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_48", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_49", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_50", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_51", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_52", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_53", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_54", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_55", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_56", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_57", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_58", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_59", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_60", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_61", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_62", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_63", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_64", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_65", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_66", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_67", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_68", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_69", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_70", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_71", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_72", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_73", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_74", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_75", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_76", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_77", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_78", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_79", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_80", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_81", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_82", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_83", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_84", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_85", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_86", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_87", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_88", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_89", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_90", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_91", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_92", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_93", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_94", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_95", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_96", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_97", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_98", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_99", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_edge_embedding_and_message_passing_fu_826.mux_1007_28_1_1_U108", "Parent" : "105"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_edge_embedding_and_message_passing_fu_826.mac_muladd_15s_8ns_7ns_15_4_1_U109", "Parent" : "105"}]}


set ArgLastReadFirstWriteLatency {
	compute_CONV_layer {
		layer {Type I LastRead 2 FirstWrite -1}
		message_V {Type IO LastRead -1 FirstWrite -1}
		edge_list {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_0 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_1 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_2 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_3 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_4 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_5 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_6 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_7 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_8 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_9 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_10 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_11 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_12 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_13 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_14 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_15 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_16 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_17 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_18 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_19 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_20 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_21 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_22 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_23 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_24 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_25 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_26 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_27 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_28 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_29 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_30 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_31 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_32 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_33 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_34 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_35 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_36 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_37 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_38 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_39 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_40 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_41 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_42 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_43 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_44 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_45 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_46 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_47 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_48 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_49 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_50 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_51 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_52 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_53 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_54 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_55 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_56 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_57 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_58 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_59 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_60 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_61 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_62 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_63 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_64 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_65 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_66 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_67 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_68 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_69 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_70 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_71 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_72 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_73 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_74 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_75 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_76 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_77 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_78 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_79 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_80 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_81 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_82 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_83 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_84 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_85 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_86 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_87 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_88 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_89 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_90 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_91 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_92 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_93 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_94 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_95 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_96 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_97 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_98 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_99 {Type IO LastRead 7 FirstWrite -1}
		mlp_in_V_1 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_3 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_5 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_7 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_9 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_11 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_13 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_15 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_17 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_19 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_21 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_23 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_25 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_27 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_29 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_31 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_33 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_35 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_37 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_39 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_41 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_43 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_45 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_47 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_49 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_51 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_53 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_55 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_57 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_59 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_61 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_63 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_65 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_67 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_69 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_71 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_73 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_75 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_77 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_79 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_81 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_83 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_85 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_87 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_89 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_91 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_93 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_95 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_97 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_99 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_0 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_2 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_4 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_6 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_8 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_10 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_12 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_14 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_16 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_18 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_20 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_22 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_24 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_26 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_28 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_30 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_32 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_34 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_36 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_38 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_40 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_42 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_44 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_46 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_48 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_50 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_52 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_54 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_56 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_58 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_60 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_62 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_64 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_66 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_68 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_70 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_72 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_74 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_76 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_78 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_80 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_82 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_84 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_86 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_88 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_90 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_92 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_94 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_96 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_98 {Type O LastRead -1 FirstWrite -1}}
	MLP {
		layer {Type I LastRead 0 FirstWrite -1}
		message_V {Type I LastRead 2 FirstWrite -1}
		node_embedding_V_98 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_99 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_1 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_3 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_5 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_7 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_9 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_11 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_13 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_15 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_17 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_19 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_21 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_23 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_25 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_27 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_29 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_31 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_33 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_35 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_37 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_39 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_41 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_43 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_45 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_47 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_49 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_51 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_53 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_55 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_57 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_59 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_61 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_63 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_65 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_67 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_69 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_71 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_73 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_75 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_77 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_79 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_81 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_83 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_85 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_87 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_89 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_91 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_93 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_95 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_97 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_0 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_2 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_4 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_6 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_8 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_10 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_12 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_14 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_16 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_18 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_20 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_22 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_24 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_26 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_28 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_30 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_32 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_34 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_36 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_38 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_40 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_42 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_44 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_46 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_48 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_50 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_52 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_54 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_56 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_58 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_60 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_62 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_64 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_66 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_68 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_70 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_72 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_74 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_76 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_78 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_80 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_82 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_84 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_86 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_88 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_90 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_92 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_94 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_96 {Type IO LastRead 5 FirstWrite 3}
		mlp_in_V_1 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_3 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_5 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_7 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_9 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_11 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_13 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_15 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_17 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_19 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_21 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_23 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_25 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_27 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_29 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_31 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_33 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_35 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_37 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_39 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_41 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_43 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_45 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_47 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_49 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_51 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_53 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_55 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_57 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_59 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_61 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_63 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_65 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_67 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_69 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_71 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_73 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_75 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_77 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_79 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_81 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_83 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_85 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_87 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_89 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_91 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_93 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_95 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_97 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_99 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_0 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_2 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_4 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_6 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_8 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_10 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_12 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_14 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_16 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_18 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_20 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_22 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_24 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_26 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_28 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_30 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_32 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_34 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_36 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_38 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_40 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_42 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_44 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_46 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_48 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_50 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_52 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_54 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_56 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_58 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_60 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_62 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_64 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_66 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_68 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_70 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_72 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_74 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_76 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_78 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_80 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_82 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_84 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_86 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_88 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_90 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_92 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_94 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_96 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_98 {Type O LastRead -1 FirstWrite -1}}
	compute_edge_embedding_and_message_passing {
		message_V {Type IO LastRead 7 FirstWrite 1}
		edge_list {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_0 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_1 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_2 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_3 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_4 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_5 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_6 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_7 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_8 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_9 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_10 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_11 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_12 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_13 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_14 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_15 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_16 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_17 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_18 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_19 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_20 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_21 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_22 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_23 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_24 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_25 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_26 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_27 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_28 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_29 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_30 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_31 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_32 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_33 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_34 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_35 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_36 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_37 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_38 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_39 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_40 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_41 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_42 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_43 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_44 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_45 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_46 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_47 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_48 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_49 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_50 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_51 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_52 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_53 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_54 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_55 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_56 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_57 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_58 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_59 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_60 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_61 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_62 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_63 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_64 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_65 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_66 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_67 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_68 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_69 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_70 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_71 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_72 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_73 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_74 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_75 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_76 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_77 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_78 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_79 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_80 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_81 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_82 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_83 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_84 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_85 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_86 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_87 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_88 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_89 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_90 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_91 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_92 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_93 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_94 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_95 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_96 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_97 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_98 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_99 {Type I LastRead 7 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8786", "Max" : "8786"}
	, {"Name" : "Interval", "Min" : "8786", "Max" : "8786"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	layer { ap_none {  { layer in_data 0 3 } } }
	edge_list { ap_memory {  { edge_list_address0 mem_address 1 10 }  { edge_list_ce0 mem_ce 1 1 }  { edge_list_q0 mem_dout 0 32 }  { edge_list_address1 MemPortADDR2 1 10 }  { edge_list_ce1 MemPortCE2 1 1 }  { edge_list_q1 MemPortDOUT2 0 32 } } }
	node_embedding_V_0 { ap_memory {  { node_embedding_V_0_address0 mem_address 1 8 }  { node_embedding_V_0_ce0 mem_ce 1 1 }  { node_embedding_V_0_q0 mem_dout 0 28 }  { node_embedding_V_0_address1 MemPortADDR2 1 8 }  { node_embedding_V_0_ce1 MemPortCE2 1 1 }  { node_embedding_V_0_we1 MemPortWE2 1 1 }  { node_embedding_V_0_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_1 { ap_memory {  { node_embedding_V_1_address0 mem_address 1 8 }  { node_embedding_V_1_ce0 mem_ce 1 1 }  { node_embedding_V_1_q0 mem_dout 0 28 }  { node_embedding_V_1_address1 MemPortADDR2 1 8 }  { node_embedding_V_1_ce1 MemPortCE2 1 1 }  { node_embedding_V_1_we1 MemPortWE2 1 1 }  { node_embedding_V_1_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_2 { ap_memory {  { node_embedding_V_2_address0 mem_address 1 8 }  { node_embedding_V_2_ce0 mem_ce 1 1 }  { node_embedding_V_2_q0 mem_dout 0 28 }  { node_embedding_V_2_address1 MemPortADDR2 1 8 }  { node_embedding_V_2_ce1 MemPortCE2 1 1 }  { node_embedding_V_2_we1 MemPortWE2 1 1 }  { node_embedding_V_2_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_3 { ap_memory {  { node_embedding_V_3_address0 mem_address 1 8 }  { node_embedding_V_3_ce0 mem_ce 1 1 }  { node_embedding_V_3_q0 mem_dout 0 28 }  { node_embedding_V_3_address1 MemPortADDR2 1 8 }  { node_embedding_V_3_ce1 MemPortCE2 1 1 }  { node_embedding_V_3_we1 MemPortWE2 1 1 }  { node_embedding_V_3_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_4 { ap_memory {  { node_embedding_V_4_address0 mem_address 1 8 }  { node_embedding_V_4_ce0 mem_ce 1 1 }  { node_embedding_V_4_q0 mem_dout 0 28 }  { node_embedding_V_4_address1 MemPortADDR2 1 8 }  { node_embedding_V_4_ce1 MemPortCE2 1 1 }  { node_embedding_V_4_we1 MemPortWE2 1 1 }  { node_embedding_V_4_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_5 { ap_memory {  { node_embedding_V_5_address0 mem_address 1 8 }  { node_embedding_V_5_ce0 mem_ce 1 1 }  { node_embedding_V_5_q0 mem_dout 0 28 }  { node_embedding_V_5_address1 MemPortADDR2 1 8 }  { node_embedding_V_5_ce1 MemPortCE2 1 1 }  { node_embedding_V_5_we1 MemPortWE2 1 1 }  { node_embedding_V_5_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_6 { ap_memory {  { node_embedding_V_6_address0 mem_address 1 8 }  { node_embedding_V_6_ce0 mem_ce 1 1 }  { node_embedding_V_6_q0 mem_dout 0 28 }  { node_embedding_V_6_address1 MemPortADDR2 1 8 }  { node_embedding_V_6_ce1 MemPortCE2 1 1 }  { node_embedding_V_6_we1 MemPortWE2 1 1 }  { node_embedding_V_6_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_7 { ap_memory {  { node_embedding_V_7_address0 mem_address 1 8 }  { node_embedding_V_7_ce0 mem_ce 1 1 }  { node_embedding_V_7_q0 mem_dout 0 28 }  { node_embedding_V_7_address1 MemPortADDR2 1 8 }  { node_embedding_V_7_ce1 MemPortCE2 1 1 }  { node_embedding_V_7_we1 MemPortWE2 1 1 }  { node_embedding_V_7_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_8 { ap_memory {  { node_embedding_V_8_address0 mem_address 1 8 }  { node_embedding_V_8_ce0 mem_ce 1 1 }  { node_embedding_V_8_q0 mem_dout 0 28 }  { node_embedding_V_8_address1 MemPortADDR2 1 8 }  { node_embedding_V_8_ce1 MemPortCE2 1 1 }  { node_embedding_V_8_we1 MemPortWE2 1 1 }  { node_embedding_V_8_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_9 { ap_memory {  { node_embedding_V_9_address0 mem_address 1 8 }  { node_embedding_V_9_ce0 mem_ce 1 1 }  { node_embedding_V_9_q0 mem_dout 0 28 }  { node_embedding_V_9_address1 MemPortADDR2 1 8 }  { node_embedding_V_9_ce1 MemPortCE2 1 1 }  { node_embedding_V_9_we1 MemPortWE2 1 1 }  { node_embedding_V_9_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_10 { ap_memory {  { node_embedding_V_10_address0 mem_address 1 8 }  { node_embedding_V_10_ce0 mem_ce 1 1 }  { node_embedding_V_10_q0 mem_dout 0 28 }  { node_embedding_V_10_address1 MemPortADDR2 1 8 }  { node_embedding_V_10_ce1 MemPortCE2 1 1 }  { node_embedding_V_10_we1 MemPortWE2 1 1 }  { node_embedding_V_10_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_11 { ap_memory {  { node_embedding_V_11_address0 mem_address 1 8 }  { node_embedding_V_11_ce0 mem_ce 1 1 }  { node_embedding_V_11_q0 mem_dout 0 28 }  { node_embedding_V_11_address1 MemPortADDR2 1 8 }  { node_embedding_V_11_ce1 MemPortCE2 1 1 }  { node_embedding_V_11_we1 MemPortWE2 1 1 }  { node_embedding_V_11_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_12 { ap_memory {  { node_embedding_V_12_address0 mem_address 1 8 }  { node_embedding_V_12_ce0 mem_ce 1 1 }  { node_embedding_V_12_q0 mem_dout 0 28 }  { node_embedding_V_12_address1 MemPortADDR2 1 8 }  { node_embedding_V_12_ce1 MemPortCE2 1 1 }  { node_embedding_V_12_we1 MemPortWE2 1 1 }  { node_embedding_V_12_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_13 { ap_memory {  { node_embedding_V_13_address0 mem_address 1 8 }  { node_embedding_V_13_ce0 mem_ce 1 1 }  { node_embedding_V_13_q0 mem_dout 0 28 }  { node_embedding_V_13_address1 MemPortADDR2 1 8 }  { node_embedding_V_13_ce1 MemPortCE2 1 1 }  { node_embedding_V_13_we1 MemPortWE2 1 1 }  { node_embedding_V_13_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_14 { ap_memory {  { node_embedding_V_14_address0 mem_address 1 8 }  { node_embedding_V_14_ce0 mem_ce 1 1 }  { node_embedding_V_14_q0 mem_dout 0 28 }  { node_embedding_V_14_address1 MemPortADDR2 1 8 }  { node_embedding_V_14_ce1 MemPortCE2 1 1 }  { node_embedding_V_14_we1 MemPortWE2 1 1 }  { node_embedding_V_14_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_15 { ap_memory {  { node_embedding_V_15_address0 mem_address 1 8 }  { node_embedding_V_15_ce0 mem_ce 1 1 }  { node_embedding_V_15_q0 mem_dout 0 28 }  { node_embedding_V_15_address1 MemPortADDR2 1 8 }  { node_embedding_V_15_ce1 MemPortCE2 1 1 }  { node_embedding_V_15_we1 MemPortWE2 1 1 }  { node_embedding_V_15_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_16 { ap_memory {  { node_embedding_V_16_address0 mem_address 1 8 }  { node_embedding_V_16_ce0 mem_ce 1 1 }  { node_embedding_V_16_q0 mem_dout 0 28 }  { node_embedding_V_16_address1 MemPortADDR2 1 8 }  { node_embedding_V_16_ce1 MemPortCE2 1 1 }  { node_embedding_V_16_we1 MemPortWE2 1 1 }  { node_embedding_V_16_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_17 { ap_memory {  { node_embedding_V_17_address0 mem_address 1 8 }  { node_embedding_V_17_ce0 mem_ce 1 1 }  { node_embedding_V_17_q0 mem_dout 0 28 }  { node_embedding_V_17_address1 MemPortADDR2 1 8 }  { node_embedding_V_17_ce1 MemPortCE2 1 1 }  { node_embedding_V_17_we1 MemPortWE2 1 1 }  { node_embedding_V_17_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_18 { ap_memory {  { node_embedding_V_18_address0 mem_address 1 8 }  { node_embedding_V_18_ce0 mem_ce 1 1 }  { node_embedding_V_18_q0 mem_dout 0 28 }  { node_embedding_V_18_address1 MemPortADDR2 1 8 }  { node_embedding_V_18_ce1 MemPortCE2 1 1 }  { node_embedding_V_18_we1 MemPortWE2 1 1 }  { node_embedding_V_18_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_19 { ap_memory {  { node_embedding_V_19_address0 mem_address 1 8 }  { node_embedding_V_19_ce0 mem_ce 1 1 }  { node_embedding_V_19_q0 mem_dout 0 28 }  { node_embedding_V_19_address1 MemPortADDR2 1 8 }  { node_embedding_V_19_ce1 MemPortCE2 1 1 }  { node_embedding_V_19_we1 MemPortWE2 1 1 }  { node_embedding_V_19_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_20 { ap_memory {  { node_embedding_V_20_address0 mem_address 1 8 }  { node_embedding_V_20_ce0 mem_ce 1 1 }  { node_embedding_V_20_q0 mem_dout 0 28 }  { node_embedding_V_20_address1 MemPortADDR2 1 8 }  { node_embedding_V_20_ce1 MemPortCE2 1 1 }  { node_embedding_V_20_we1 MemPortWE2 1 1 }  { node_embedding_V_20_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_21 { ap_memory {  { node_embedding_V_21_address0 mem_address 1 8 }  { node_embedding_V_21_ce0 mem_ce 1 1 }  { node_embedding_V_21_q0 mem_dout 0 28 }  { node_embedding_V_21_address1 MemPortADDR2 1 8 }  { node_embedding_V_21_ce1 MemPortCE2 1 1 }  { node_embedding_V_21_we1 MemPortWE2 1 1 }  { node_embedding_V_21_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_22 { ap_memory {  { node_embedding_V_22_address0 mem_address 1 8 }  { node_embedding_V_22_ce0 mem_ce 1 1 }  { node_embedding_V_22_q0 mem_dout 0 28 }  { node_embedding_V_22_address1 MemPortADDR2 1 8 }  { node_embedding_V_22_ce1 MemPortCE2 1 1 }  { node_embedding_V_22_we1 MemPortWE2 1 1 }  { node_embedding_V_22_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_23 { ap_memory {  { node_embedding_V_23_address0 mem_address 1 8 }  { node_embedding_V_23_ce0 mem_ce 1 1 }  { node_embedding_V_23_q0 mem_dout 0 28 }  { node_embedding_V_23_address1 MemPortADDR2 1 8 }  { node_embedding_V_23_ce1 MemPortCE2 1 1 }  { node_embedding_V_23_we1 MemPortWE2 1 1 }  { node_embedding_V_23_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_24 { ap_memory {  { node_embedding_V_24_address0 mem_address 1 8 }  { node_embedding_V_24_ce0 mem_ce 1 1 }  { node_embedding_V_24_q0 mem_dout 0 28 }  { node_embedding_V_24_address1 MemPortADDR2 1 8 }  { node_embedding_V_24_ce1 MemPortCE2 1 1 }  { node_embedding_V_24_we1 MemPortWE2 1 1 }  { node_embedding_V_24_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_25 { ap_memory {  { node_embedding_V_25_address0 mem_address 1 8 }  { node_embedding_V_25_ce0 mem_ce 1 1 }  { node_embedding_V_25_q0 mem_dout 0 28 }  { node_embedding_V_25_address1 MemPortADDR2 1 8 }  { node_embedding_V_25_ce1 MemPortCE2 1 1 }  { node_embedding_V_25_we1 MemPortWE2 1 1 }  { node_embedding_V_25_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_26 { ap_memory {  { node_embedding_V_26_address0 mem_address 1 8 }  { node_embedding_V_26_ce0 mem_ce 1 1 }  { node_embedding_V_26_q0 mem_dout 0 28 }  { node_embedding_V_26_address1 MemPortADDR2 1 8 }  { node_embedding_V_26_ce1 MemPortCE2 1 1 }  { node_embedding_V_26_we1 MemPortWE2 1 1 }  { node_embedding_V_26_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_27 { ap_memory {  { node_embedding_V_27_address0 mem_address 1 8 }  { node_embedding_V_27_ce0 mem_ce 1 1 }  { node_embedding_V_27_q0 mem_dout 0 28 }  { node_embedding_V_27_address1 MemPortADDR2 1 8 }  { node_embedding_V_27_ce1 MemPortCE2 1 1 }  { node_embedding_V_27_we1 MemPortWE2 1 1 }  { node_embedding_V_27_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_28 { ap_memory {  { node_embedding_V_28_address0 mem_address 1 8 }  { node_embedding_V_28_ce0 mem_ce 1 1 }  { node_embedding_V_28_q0 mem_dout 0 28 }  { node_embedding_V_28_address1 MemPortADDR2 1 8 }  { node_embedding_V_28_ce1 MemPortCE2 1 1 }  { node_embedding_V_28_we1 MemPortWE2 1 1 }  { node_embedding_V_28_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_29 { ap_memory {  { node_embedding_V_29_address0 mem_address 1 8 }  { node_embedding_V_29_ce0 mem_ce 1 1 }  { node_embedding_V_29_q0 mem_dout 0 28 }  { node_embedding_V_29_address1 MemPortADDR2 1 8 }  { node_embedding_V_29_ce1 MemPortCE2 1 1 }  { node_embedding_V_29_we1 MemPortWE2 1 1 }  { node_embedding_V_29_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_30 { ap_memory {  { node_embedding_V_30_address0 mem_address 1 8 }  { node_embedding_V_30_ce0 mem_ce 1 1 }  { node_embedding_V_30_q0 mem_dout 0 28 }  { node_embedding_V_30_address1 MemPortADDR2 1 8 }  { node_embedding_V_30_ce1 MemPortCE2 1 1 }  { node_embedding_V_30_we1 MemPortWE2 1 1 }  { node_embedding_V_30_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_31 { ap_memory {  { node_embedding_V_31_address0 mem_address 1 8 }  { node_embedding_V_31_ce0 mem_ce 1 1 }  { node_embedding_V_31_q0 mem_dout 0 28 }  { node_embedding_V_31_address1 MemPortADDR2 1 8 }  { node_embedding_V_31_ce1 MemPortCE2 1 1 }  { node_embedding_V_31_we1 MemPortWE2 1 1 }  { node_embedding_V_31_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_32 { ap_memory {  { node_embedding_V_32_address0 mem_address 1 8 }  { node_embedding_V_32_ce0 mem_ce 1 1 }  { node_embedding_V_32_q0 mem_dout 0 28 }  { node_embedding_V_32_address1 MemPortADDR2 1 8 }  { node_embedding_V_32_ce1 MemPortCE2 1 1 }  { node_embedding_V_32_we1 MemPortWE2 1 1 }  { node_embedding_V_32_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_33 { ap_memory {  { node_embedding_V_33_address0 mem_address 1 8 }  { node_embedding_V_33_ce0 mem_ce 1 1 }  { node_embedding_V_33_q0 mem_dout 0 28 }  { node_embedding_V_33_address1 MemPortADDR2 1 8 }  { node_embedding_V_33_ce1 MemPortCE2 1 1 }  { node_embedding_V_33_we1 MemPortWE2 1 1 }  { node_embedding_V_33_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_34 { ap_memory {  { node_embedding_V_34_address0 mem_address 1 8 }  { node_embedding_V_34_ce0 mem_ce 1 1 }  { node_embedding_V_34_q0 mem_dout 0 28 }  { node_embedding_V_34_address1 MemPortADDR2 1 8 }  { node_embedding_V_34_ce1 MemPortCE2 1 1 }  { node_embedding_V_34_we1 MemPortWE2 1 1 }  { node_embedding_V_34_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_35 { ap_memory {  { node_embedding_V_35_address0 mem_address 1 8 }  { node_embedding_V_35_ce0 mem_ce 1 1 }  { node_embedding_V_35_q0 mem_dout 0 28 }  { node_embedding_V_35_address1 MemPortADDR2 1 8 }  { node_embedding_V_35_ce1 MemPortCE2 1 1 }  { node_embedding_V_35_we1 MemPortWE2 1 1 }  { node_embedding_V_35_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_36 { ap_memory {  { node_embedding_V_36_address0 mem_address 1 8 }  { node_embedding_V_36_ce0 mem_ce 1 1 }  { node_embedding_V_36_q0 mem_dout 0 28 }  { node_embedding_V_36_address1 MemPortADDR2 1 8 }  { node_embedding_V_36_ce1 MemPortCE2 1 1 }  { node_embedding_V_36_we1 MemPortWE2 1 1 }  { node_embedding_V_36_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_37 { ap_memory {  { node_embedding_V_37_address0 mem_address 1 8 }  { node_embedding_V_37_ce0 mem_ce 1 1 }  { node_embedding_V_37_q0 mem_dout 0 28 }  { node_embedding_V_37_address1 MemPortADDR2 1 8 }  { node_embedding_V_37_ce1 MemPortCE2 1 1 }  { node_embedding_V_37_we1 MemPortWE2 1 1 }  { node_embedding_V_37_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_38 { ap_memory {  { node_embedding_V_38_address0 mem_address 1 8 }  { node_embedding_V_38_ce0 mem_ce 1 1 }  { node_embedding_V_38_q0 mem_dout 0 28 }  { node_embedding_V_38_address1 MemPortADDR2 1 8 }  { node_embedding_V_38_ce1 MemPortCE2 1 1 }  { node_embedding_V_38_we1 MemPortWE2 1 1 }  { node_embedding_V_38_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_39 { ap_memory {  { node_embedding_V_39_address0 mem_address 1 8 }  { node_embedding_V_39_ce0 mem_ce 1 1 }  { node_embedding_V_39_q0 mem_dout 0 28 }  { node_embedding_V_39_address1 MemPortADDR2 1 8 }  { node_embedding_V_39_ce1 MemPortCE2 1 1 }  { node_embedding_V_39_we1 MemPortWE2 1 1 }  { node_embedding_V_39_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_40 { ap_memory {  { node_embedding_V_40_address0 mem_address 1 8 }  { node_embedding_V_40_ce0 mem_ce 1 1 }  { node_embedding_V_40_q0 mem_dout 0 28 }  { node_embedding_V_40_address1 MemPortADDR2 1 8 }  { node_embedding_V_40_ce1 MemPortCE2 1 1 }  { node_embedding_V_40_we1 MemPortWE2 1 1 }  { node_embedding_V_40_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_41 { ap_memory {  { node_embedding_V_41_address0 mem_address 1 8 }  { node_embedding_V_41_ce0 mem_ce 1 1 }  { node_embedding_V_41_q0 mem_dout 0 28 }  { node_embedding_V_41_address1 MemPortADDR2 1 8 }  { node_embedding_V_41_ce1 MemPortCE2 1 1 }  { node_embedding_V_41_we1 MemPortWE2 1 1 }  { node_embedding_V_41_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_42 { ap_memory {  { node_embedding_V_42_address0 mem_address 1 8 }  { node_embedding_V_42_ce0 mem_ce 1 1 }  { node_embedding_V_42_q0 mem_dout 0 28 }  { node_embedding_V_42_address1 MemPortADDR2 1 8 }  { node_embedding_V_42_ce1 MemPortCE2 1 1 }  { node_embedding_V_42_we1 MemPortWE2 1 1 }  { node_embedding_V_42_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_43 { ap_memory {  { node_embedding_V_43_address0 mem_address 1 8 }  { node_embedding_V_43_ce0 mem_ce 1 1 }  { node_embedding_V_43_q0 mem_dout 0 28 }  { node_embedding_V_43_address1 MemPortADDR2 1 8 }  { node_embedding_V_43_ce1 MemPortCE2 1 1 }  { node_embedding_V_43_we1 MemPortWE2 1 1 }  { node_embedding_V_43_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_44 { ap_memory {  { node_embedding_V_44_address0 mem_address 1 8 }  { node_embedding_V_44_ce0 mem_ce 1 1 }  { node_embedding_V_44_q0 mem_dout 0 28 }  { node_embedding_V_44_address1 MemPortADDR2 1 8 }  { node_embedding_V_44_ce1 MemPortCE2 1 1 }  { node_embedding_V_44_we1 MemPortWE2 1 1 }  { node_embedding_V_44_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_45 { ap_memory {  { node_embedding_V_45_address0 mem_address 1 8 }  { node_embedding_V_45_ce0 mem_ce 1 1 }  { node_embedding_V_45_q0 mem_dout 0 28 }  { node_embedding_V_45_address1 MemPortADDR2 1 8 }  { node_embedding_V_45_ce1 MemPortCE2 1 1 }  { node_embedding_V_45_we1 MemPortWE2 1 1 }  { node_embedding_V_45_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_46 { ap_memory {  { node_embedding_V_46_address0 mem_address 1 8 }  { node_embedding_V_46_ce0 mem_ce 1 1 }  { node_embedding_V_46_q0 mem_dout 0 28 }  { node_embedding_V_46_address1 MemPortADDR2 1 8 }  { node_embedding_V_46_ce1 MemPortCE2 1 1 }  { node_embedding_V_46_we1 MemPortWE2 1 1 }  { node_embedding_V_46_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_47 { ap_memory {  { node_embedding_V_47_address0 mem_address 1 8 }  { node_embedding_V_47_ce0 mem_ce 1 1 }  { node_embedding_V_47_q0 mem_dout 0 28 }  { node_embedding_V_47_address1 MemPortADDR2 1 8 }  { node_embedding_V_47_ce1 MemPortCE2 1 1 }  { node_embedding_V_47_we1 MemPortWE2 1 1 }  { node_embedding_V_47_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_48 { ap_memory {  { node_embedding_V_48_address0 mem_address 1 8 }  { node_embedding_V_48_ce0 mem_ce 1 1 }  { node_embedding_V_48_q0 mem_dout 0 28 }  { node_embedding_V_48_address1 MemPortADDR2 1 8 }  { node_embedding_V_48_ce1 MemPortCE2 1 1 }  { node_embedding_V_48_we1 MemPortWE2 1 1 }  { node_embedding_V_48_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_49 { ap_memory {  { node_embedding_V_49_address0 mem_address 1 8 }  { node_embedding_V_49_ce0 mem_ce 1 1 }  { node_embedding_V_49_q0 mem_dout 0 28 }  { node_embedding_V_49_address1 MemPortADDR2 1 8 }  { node_embedding_V_49_ce1 MemPortCE2 1 1 }  { node_embedding_V_49_we1 MemPortWE2 1 1 }  { node_embedding_V_49_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_50 { ap_memory {  { node_embedding_V_50_address0 mem_address 1 8 }  { node_embedding_V_50_ce0 mem_ce 1 1 }  { node_embedding_V_50_q0 mem_dout 0 28 }  { node_embedding_V_50_address1 MemPortADDR2 1 8 }  { node_embedding_V_50_ce1 MemPortCE2 1 1 }  { node_embedding_V_50_we1 MemPortWE2 1 1 }  { node_embedding_V_50_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_51 { ap_memory {  { node_embedding_V_51_address0 mem_address 1 8 }  { node_embedding_V_51_ce0 mem_ce 1 1 }  { node_embedding_V_51_q0 mem_dout 0 28 }  { node_embedding_V_51_address1 MemPortADDR2 1 8 }  { node_embedding_V_51_ce1 MemPortCE2 1 1 }  { node_embedding_V_51_we1 MemPortWE2 1 1 }  { node_embedding_V_51_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_52 { ap_memory {  { node_embedding_V_52_address0 mem_address 1 8 }  { node_embedding_V_52_ce0 mem_ce 1 1 }  { node_embedding_V_52_q0 mem_dout 0 28 }  { node_embedding_V_52_address1 MemPortADDR2 1 8 }  { node_embedding_V_52_ce1 MemPortCE2 1 1 }  { node_embedding_V_52_we1 MemPortWE2 1 1 }  { node_embedding_V_52_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_53 { ap_memory {  { node_embedding_V_53_address0 mem_address 1 8 }  { node_embedding_V_53_ce0 mem_ce 1 1 }  { node_embedding_V_53_q0 mem_dout 0 28 }  { node_embedding_V_53_address1 MemPortADDR2 1 8 }  { node_embedding_V_53_ce1 MemPortCE2 1 1 }  { node_embedding_V_53_we1 MemPortWE2 1 1 }  { node_embedding_V_53_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_54 { ap_memory {  { node_embedding_V_54_address0 mem_address 1 8 }  { node_embedding_V_54_ce0 mem_ce 1 1 }  { node_embedding_V_54_q0 mem_dout 0 28 }  { node_embedding_V_54_address1 MemPortADDR2 1 8 }  { node_embedding_V_54_ce1 MemPortCE2 1 1 }  { node_embedding_V_54_we1 MemPortWE2 1 1 }  { node_embedding_V_54_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_55 { ap_memory {  { node_embedding_V_55_address0 mem_address 1 8 }  { node_embedding_V_55_ce0 mem_ce 1 1 }  { node_embedding_V_55_q0 mem_dout 0 28 }  { node_embedding_V_55_address1 MemPortADDR2 1 8 }  { node_embedding_V_55_ce1 MemPortCE2 1 1 }  { node_embedding_V_55_we1 MemPortWE2 1 1 }  { node_embedding_V_55_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_56 { ap_memory {  { node_embedding_V_56_address0 mem_address 1 8 }  { node_embedding_V_56_ce0 mem_ce 1 1 }  { node_embedding_V_56_q0 mem_dout 0 28 }  { node_embedding_V_56_address1 MemPortADDR2 1 8 }  { node_embedding_V_56_ce1 MemPortCE2 1 1 }  { node_embedding_V_56_we1 MemPortWE2 1 1 }  { node_embedding_V_56_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_57 { ap_memory {  { node_embedding_V_57_address0 mem_address 1 8 }  { node_embedding_V_57_ce0 mem_ce 1 1 }  { node_embedding_V_57_q0 mem_dout 0 28 }  { node_embedding_V_57_address1 MemPortADDR2 1 8 }  { node_embedding_V_57_ce1 MemPortCE2 1 1 }  { node_embedding_V_57_we1 MemPortWE2 1 1 }  { node_embedding_V_57_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_58 { ap_memory {  { node_embedding_V_58_address0 mem_address 1 8 }  { node_embedding_V_58_ce0 mem_ce 1 1 }  { node_embedding_V_58_q0 mem_dout 0 28 }  { node_embedding_V_58_address1 MemPortADDR2 1 8 }  { node_embedding_V_58_ce1 MemPortCE2 1 1 }  { node_embedding_V_58_we1 MemPortWE2 1 1 }  { node_embedding_V_58_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_59 { ap_memory {  { node_embedding_V_59_address0 mem_address 1 8 }  { node_embedding_V_59_ce0 mem_ce 1 1 }  { node_embedding_V_59_q0 mem_dout 0 28 }  { node_embedding_V_59_address1 MemPortADDR2 1 8 }  { node_embedding_V_59_ce1 MemPortCE2 1 1 }  { node_embedding_V_59_we1 MemPortWE2 1 1 }  { node_embedding_V_59_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_60 { ap_memory {  { node_embedding_V_60_address0 mem_address 1 8 }  { node_embedding_V_60_ce0 mem_ce 1 1 }  { node_embedding_V_60_q0 mem_dout 0 28 }  { node_embedding_V_60_address1 MemPortADDR2 1 8 }  { node_embedding_V_60_ce1 MemPortCE2 1 1 }  { node_embedding_V_60_we1 MemPortWE2 1 1 }  { node_embedding_V_60_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_61 { ap_memory {  { node_embedding_V_61_address0 mem_address 1 8 }  { node_embedding_V_61_ce0 mem_ce 1 1 }  { node_embedding_V_61_q0 mem_dout 0 28 }  { node_embedding_V_61_address1 MemPortADDR2 1 8 }  { node_embedding_V_61_ce1 MemPortCE2 1 1 }  { node_embedding_V_61_we1 MemPortWE2 1 1 }  { node_embedding_V_61_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_62 { ap_memory {  { node_embedding_V_62_address0 mem_address 1 8 }  { node_embedding_V_62_ce0 mem_ce 1 1 }  { node_embedding_V_62_q0 mem_dout 0 28 }  { node_embedding_V_62_address1 MemPortADDR2 1 8 }  { node_embedding_V_62_ce1 MemPortCE2 1 1 }  { node_embedding_V_62_we1 MemPortWE2 1 1 }  { node_embedding_V_62_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_63 { ap_memory {  { node_embedding_V_63_address0 mem_address 1 8 }  { node_embedding_V_63_ce0 mem_ce 1 1 }  { node_embedding_V_63_q0 mem_dout 0 28 }  { node_embedding_V_63_address1 MemPortADDR2 1 8 }  { node_embedding_V_63_ce1 MemPortCE2 1 1 }  { node_embedding_V_63_we1 MemPortWE2 1 1 }  { node_embedding_V_63_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_64 { ap_memory {  { node_embedding_V_64_address0 mem_address 1 8 }  { node_embedding_V_64_ce0 mem_ce 1 1 }  { node_embedding_V_64_q0 mem_dout 0 28 }  { node_embedding_V_64_address1 MemPortADDR2 1 8 }  { node_embedding_V_64_ce1 MemPortCE2 1 1 }  { node_embedding_V_64_we1 MemPortWE2 1 1 }  { node_embedding_V_64_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_65 { ap_memory {  { node_embedding_V_65_address0 mem_address 1 8 }  { node_embedding_V_65_ce0 mem_ce 1 1 }  { node_embedding_V_65_q0 mem_dout 0 28 }  { node_embedding_V_65_address1 MemPortADDR2 1 8 }  { node_embedding_V_65_ce1 MemPortCE2 1 1 }  { node_embedding_V_65_we1 MemPortWE2 1 1 }  { node_embedding_V_65_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_66 { ap_memory {  { node_embedding_V_66_address0 mem_address 1 8 }  { node_embedding_V_66_ce0 mem_ce 1 1 }  { node_embedding_V_66_q0 mem_dout 0 28 }  { node_embedding_V_66_address1 MemPortADDR2 1 8 }  { node_embedding_V_66_ce1 MemPortCE2 1 1 }  { node_embedding_V_66_we1 MemPortWE2 1 1 }  { node_embedding_V_66_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_67 { ap_memory {  { node_embedding_V_67_address0 mem_address 1 8 }  { node_embedding_V_67_ce0 mem_ce 1 1 }  { node_embedding_V_67_q0 mem_dout 0 28 }  { node_embedding_V_67_address1 MemPortADDR2 1 8 }  { node_embedding_V_67_ce1 MemPortCE2 1 1 }  { node_embedding_V_67_we1 MemPortWE2 1 1 }  { node_embedding_V_67_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_68 { ap_memory {  { node_embedding_V_68_address0 mem_address 1 8 }  { node_embedding_V_68_ce0 mem_ce 1 1 }  { node_embedding_V_68_q0 mem_dout 0 28 }  { node_embedding_V_68_address1 MemPortADDR2 1 8 }  { node_embedding_V_68_ce1 MemPortCE2 1 1 }  { node_embedding_V_68_we1 MemPortWE2 1 1 }  { node_embedding_V_68_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_69 { ap_memory {  { node_embedding_V_69_address0 mem_address 1 8 }  { node_embedding_V_69_ce0 mem_ce 1 1 }  { node_embedding_V_69_q0 mem_dout 0 28 }  { node_embedding_V_69_address1 MemPortADDR2 1 8 }  { node_embedding_V_69_ce1 MemPortCE2 1 1 }  { node_embedding_V_69_we1 MemPortWE2 1 1 }  { node_embedding_V_69_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_70 { ap_memory {  { node_embedding_V_70_address0 mem_address 1 8 }  { node_embedding_V_70_ce0 mem_ce 1 1 }  { node_embedding_V_70_q0 mem_dout 0 28 }  { node_embedding_V_70_address1 MemPortADDR2 1 8 }  { node_embedding_V_70_ce1 MemPortCE2 1 1 }  { node_embedding_V_70_we1 MemPortWE2 1 1 }  { node_embedding_V_70_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_71 { ap_memory {  { node_embedding_V_71_address0 mem_address 1 8 }  { node_embedding_V_71_ce0 mem_ce 1 1 }  { node_embedding_V_71_q0 mem_dout 0 28 }  { node_embedding_V_71_address1 MemPortADDR2 1 8 }  { node_embedding_V_71_ce1 MemPortCE2 1 1 }  { node_embedding_V_71_we1 MemPortWE2 1 1 }  { node_embedding_V_71_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_72 { ap_memory {  { node_embedding_V_72_address0 mem_address 1 8 }  { node_embedding_V_72_ce0 mem_ce 1 1 }  { node_embedding_V_72_q0 mem_dout 0 28 }  { node_embedding_V_72_address1 MemPortADDR2 1 8 }  { node_embedding_V_72_ce1 MemPortCE2 1 1 }  { node_embedding_V_72_we1 MemPortWE2 1 1 }  { node_embedding_V_72_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_73 { ap_memory {  { node_embedding_V_73_address0 mem_address 1 8 }  { node_embedding_V_73_ce0 mem_ce 1 1 }  { node_embedding_V_73_q0 mem_dout 0 28 }  { node_embedding_V_73_address1 MemPortADDR2 1 8 }  { node_embedding_V_73_ce1 MemPortCE2 1 1 }  { node_embedding_V_73_we1 MemPortWE2 1 1 }  { node_embedding_V_73_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_74 { ap_memory {  { node_embedding_V_74_address0 mem_address 1 8 }  { node_embedding_V_74_ce0 mem_ce 1 1 }  { node_embedding_V_74_q0 mem_dout 0 28 }  { node_embedding_V_74_address1 MemPortADDR2 1 8 }  { node_embedding_V_74_ce1 MemPortCE2 1 1 }  { node_embedding_V_74_we1 MemPortWE2 1 1 }  { node_embedding_V_74_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_75 { ap_memory {  { node_embedding_V_75_address0 mem_address 1 8 }  { node_embedding_V_75_ce0 mem_ce 1 1 }  { node_embedding_V_75_q0 mem_dout 0 28 }  { node_embedding_V_75_address1 MemPortADDR2 1 8 }  { node_embedding_V_75_ce1 MemPortCE2 1 1 }  { node_embedding_V_75_we1 MemPortWE2 1 1 }  { node_embedding_V_75_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_76 { ap_memory {  { node_embedding_V_76_address0 mem_address 1 8 }  { node_embedding_V_76_ce0 mem_ce 1 1 }  { node_embedding_V_76_q0 mem_dout 0 28 }  { node_embedding_V_76_address1 MemPortADDR2 1 8 }  { node_embedding_V_76_ce1 MemPortCE2 1 1 }  { node_embedding_V_76_we1 MemPortWE2 1 1 }  { node_embedding_V_76_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_77 { ap_memory {  { node_embedding_V_77_address0 mem_address 1 8 }  { node_embedding_V_77_ce0 mem_ce 1 1 }  { node_embedding_V_77_q0 mem_dout 0 28 }  { node_embedding_V_77_address1 MemPortADDR2 1 8 }  { node_embedding_V_77_ce1 MemPortCE2 1 1 }  { node_embedding_V_77_we1 MemPortWE2 1 1 }  { node_embedding_V_77_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_78 { ap_memory {  { node_embedding_V_78_address0 mem_address 1 8 }  { node_embedding_V_78_ce0 mem_ce 1 1 }  { node_embedding_V_78_q0 mem_dout 0 28 }  { node_embedding_V_78_address1 MemPortADDR2 1 8 }  { node_embedding_V_78_ce1 MemPortCE2 1 1 }  { node_embedding_V_78_we1 MemPortWE2 1 1 }  { node_embedding_V_78_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_79 { ap_memory {  { node_embedding_V_79_address0 mem_address 1 8 }  { node_embedding_V_79_ce0 mem_ce 1 1 }  { node_embedding_V_79_q0 mem_dout 0 28 }  { node_embedding_V_79_address1 MemPortADDR2 1 8 }  { node_embedding_V_79_ce1 MemPortCE2 1 1 }  { node_embedding_V_79_we1 MemPortWE2 1 1 }  { node_embedding_V_79_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_80 { ap_memory {  { node_embedding_V_80_address0 mem_address 1 8 }  { node_embedding_V_80_ce0 mem_ce 1 1 }  { node_embedding_V_80_q0 mem_dout 0 28 }  { node_embedding_V_80_address1 MemPortADDR2 1 8 }  { node_embedding_V_80_ce1 MemPortCE2 1 1 }  { node_embedding_V_80_we1 MemPortWE2 1 1 }  { node_embedding_V_80_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_81 { ap_memory {  { node_embedding_V_81_address0 mem_address 1 8 }  { node_embedding_V_81_ce0 mem_ce 1 1 }  { node_embedding_V_81_q0 mem_dout 0 28 }  { node_embedding_V_81_address1 MemPortADDR2 1 8 }  { node_embedding_V_81_ce1 MemPortCE2 1 1 }  { node_embedding_V_81_we1 MemPortWE2 1 1 }  { node_embedding_V_81_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_82 { ap_memory {  { node_embedding_V_82_address0 mem_address 1 8 }  { node_embedding_V_82_ce0 mem_ce 1 1 }  { node_embedding_V_82_q0 mem_dout 0 28 }  { node_embedding_V_82_address1 MemPortADDR2 1 8 }  { node_embedding_V_82_ce1 MemPortCE2 1 1 }  { node_embedding_V_82_we1 MemPortWE2 1 1 }  { node_embedding_V_82_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_83 { ap_memory {  { node_embedding_V_83_address0 mem_address 1 8 }  { node_embedding_V_83_ce0 mem_ce 1 1 }  { node_embedding_V_83_q0 mem_dout 0 28 }  { node_embedding_V_83_address1 MemPortADDR2 1 8 }  { node_embedding_V_83_ce1 MemPortCE2 1 1 }  { node_embedding_V_83_we1 MemPortWE2 1 1 }  { node_embedding_V_83_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_84 { ap_memory {  { node_embedding_V_84_address0 mem_address 1 8 }  { node_embedding_V_84_ce0 mem_ce 1 1 }  { node_embedding_V_84_q0 mem_dout 0 28 }  { node_embedding_V_84_address1 MemPortADDR2 1 8 }  { node_embedding_V_84_ce1 MemPortCE2 1 1 }  { node_embedding_V_84_we1 MemPortWE2 1 1 }  { node_embedding_V_84_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_85 { ap_memory {  { node_embedding_V_85_address0 mem_address 1 8 }  { node_embedding_V_85_ce0 mem_ce 1 1 }  { node_embedding_V_85_q0 mem_dout 0 28 }  { node_embedding_V_85_address1 MemPortADDR2 1 8 }  { node_embedding_V_85_ce1 MemPortCE2 1 1 }  { node_embedding_V_85_we1 MemPortWE2 1 1 }  { node_embedding_V_85_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_86 { ap_memory {  { node_embedding_V_86_address0 mem_address 1 8 }  { node_embedding_V_86_ce0 mem_ce 1 1 }  { node_embedding_V_86_q0 mem_dout 0 28 }  { node_embedding_V_86_address1 MemPortADDR2 1 8 }  { node_embedding_V_86_ce1 MemPortCE2 1 1 }  { node_embedding_V_86_we1 MemPortWE2 1 1 }  { node_embedding_V_86_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_87 { ap_memory {  { node_embedding_V_87_address0 mem_address 1 8 }  { node_embedding_V_87_ce0 mem_ce 1 1 }  { node_embedding_V_87_q0 mem_dout 0 28 }  { node_embedding_V_87_address1 MemPortADDR2 1 8 }  { node_embedding_V_87_ce1 MemPortCE2 1 1 }  { node_embedding_V_87_we1 MemPortWE2 1 1 }  { node_embedding_V_87_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_88 { ap_memory {  { node_embedding_V_88_address0 mem_address 1 8 }  { node_embedding_V_88_ce0 mem_ce 1 1 }  { node_embedding_V_88_q0 mem_dout 0 28 }  { node_embedding_V_88_address1 MemPortADDR2 1 8 }  { node_embedding_V_88_ce1 MemPortCE2 1 1 }  { node_embedding_V_88_we1 MemPortWE2 1 1 }  { node_embedding_V_88_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_89 { ap_memory {  { node_embedding_V_89_address0 mem_address 1 8 }  { node_embedding_V_89_ce0 mem_ce 1 1 }  { node_embedding_V_89_q0 mem_dout 0 28 }  { node_embedding_V_89_address1 MemPortADDR2 1 8 }  { node_embedding_V_89_ce1 MemPortCE2 1 1 }  { node_embedding_V_89_we1 MemPortWE2 1 1 }  { node_embedding_V_89_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_90 { ap_memory {  { node_embedding_V_90_address0 mem_address 1 8 }  { node_embedding_V_90_ce0 mem_ce 1 1 }  { node_embedding_V_90_q0 mem_dout 0 28 }  { node_embedding_V_90_address1 MemPortADDR2 1 8 }  { node_embedding_V_90_ce1 MemPortCE2 1 1 }  { node_embedding_V_90_we1 MemPortWE2 1 1 }  { node_embedding_V_90_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_91 { ap_memory {  { node_embedding_V_91_address0 mem_address 1 8 }  { node_embedding_V_91_ce0 mem_ce 1 1 }  { node_embedding_V_91_q0 mem_dout 0 28 }  { node_embedding_V_91_address1 MemPortADDR2 1 8 }  { node_embedding_V_91_ce1 MemPortCE2 1 1 }  { node_embedding_V_91_we1 MemPortWE2 1 1 }  { node_embedding_V_91_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_92 { ap_memory {  { node_embedding_V_92_address0 mem_address 1 8 }  { node_embedding_V_92_ce0 mem_ce 1 1 }  { node_embedding_V_92_q0 mem_dout 0 28 }  { node_embedding_V_92_address1 MemPortADDR2 1 8 }  { node_embedding_V_92_ce1 MemPortCE2 1 1 }  { node_embedding_V_92_we1 MemPortWE2 1 1 }  { node_embedding_V_92_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_93 { ap_memory {  { node_embedding_V_93_address0 mem_address 1 8 }  { node_embedding_V_93_ce0 mem_ce 1 1 }  { node_embedding_V_93_q0 mem_dout 0 28 }  { node_embedding_V_93_address1 MemPortADDR2 1 8 }  { node_embedding_V_93_ce1 MemPortCE2 1 1 }  { node_embedding_V_93_we1 MemPortWE2 1 1 }  { node_embedding_V_93_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_94 { ap_memory {  { node_embedding_V_94_address0 mem_address 1 8 }  { node_embedding_V_94_ce0 mem_ce 1 1 }  { node_embedding_V_94_q0 mem_dout 0 28 }  { node_embedding_V_94_address1 MemPortADDR2 1 8 }  { node_embedding_V_94_ce1 MemPortCE2 1 1 }  { node_embedding_V_94_we1 MemPortWE2 1 1 }  { node_embedding_V_94_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_95 { ap_memory {  { node_embedding_V_95_address0 mem_address 1 8 }  { node_embedding_V_95_ce0 mem_ce 1 1 }  { node_embedding_V_95_q0 mem_dout 0 28 }  { node_embedding_V_95_address1 MemPortADDR2 1 8 }  { node_embedding_V_95_ce1 MemPortCE2 1 1 }  { node_embedding_V_95_we1 MemPortWE2 1 1 }  { node_embedding_V_95_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_96 { ap_memory {  { node_embedding_V_96_address0 mem_address 1 8 }  { node_embedding_V_96_ce0 mem_ce 1 1 }  { node_embedding_V_96_q0 mem_dout 0 28 }  { node_embedding_V_96_address1 MemPortADDR2 1 8 }  { node_embedding_V_96_ce1 MemPortCE2 1 1 }  { node_embedding_V_96_we1 MemPortWE2 1 1 }  { node_embedding_V_96_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_97 { ap_memory {  { node_embedding_V_97_address0 mem_address 1 8 }  { node_embedding_V_97_ce0 mem_ce 1 1 }  { node_embedding_V_97_q0 mem_dout 0 28 }  { node_embedding_V_97_address1 MemPortADDR2 1 8 }  { node_embedding_V_97_ce1 MemPortCE2 1 1 }  { node_embedding_V_97_we1 MemPortWE2 1 1 }  { node_embedding_V_97_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_98 { ap_memory {  { node_embedding_V_98_address0 mem_address 1 8 }  { node_embedding_V_98_ce0 mem_ce 1 1 }  { node_embedding_V_98_q0 mem_dout 0 28 }  { node_embedding_V_98_address1 MemPortADDR2 1 8 }  { node_embedding_V_98_ce1 MemPortCE2 1 1 }  { node_embedding_V_98_we1 MemPortWE2 1 1 }  { node_embedding_V_98_d1 MemPortDIN2 1 28 } } }
	node_embedding_V_99 { ap_memory {  { node_embedding_V_99_address0 mem_address 1 8 }  { node_embedding_V_99_ce0 mem_ce 1 1 }  { node_embedding_V_99_q0 mem_dout 0 28 }  { node_embedding_V_99_address1 MemPortADDR2 1 8 }  { node_embedding_V_99_ce1 MemPortCE2 1 1 }  { node_embedding_V_99_we1 MemPortWE2 1 1 }  { node_embedding_V_99_d1 MemPortDIN2 1 28 } } }
}
