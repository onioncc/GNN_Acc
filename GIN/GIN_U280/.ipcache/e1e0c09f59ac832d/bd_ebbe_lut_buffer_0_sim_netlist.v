// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Apr  2 15:32:57 2021
// Host        : flubber1 running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_ebbe_lut_buffer_0_sim_netlist.v
// Design      : bd_ebbe_lut_buffer_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_ebbe_lut_buffer_0,lut_buffer_v2_0_0_lut_buffer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "lut_buffer_v2_0_0_lut_buffer,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (tdi_i,
    tms_i,
    tck_i,
    drck_i,
    sel_i,
    shift_i,
    update_i,
    capture_i,
    runtest_i,
    reset_i,
    bscanid_en_i,
    tdo_o,
    tdi_o,
    tms_o,
    tck_o,
    drck_o,
    sel_o,
    shift_o,
    update_o,
    capture_o,
    runtest_o,
    reset_o,
    bscanid_en_o,
    tdo_i);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDI" *) input tdi_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TMS" *) input tms_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TCK" *) input tck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan DRCK" *) input drck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SEL" *) input sel_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SHIFT" *) input shift_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan UPDATE" *) input update_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan CAPTURE" *) input capture_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RUNTEST" *) input runtest_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RESET" *) input reset_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan BSCANID_EN" *) input bscanid_en_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDO" *) output tdo_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDI" *) output tdi_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TMS" *) output tms_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TCK" *) output tck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan DRCK" *) output drck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SEL" *) output sel_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SHIFT" *) output shift_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan UPDATE" *) output update_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan CAPTURE" *) output capture_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RUNTEST" *) output runtest_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RESET" *) output reset_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan BSCANID_EN" *) output bscanid_en_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDO" *) input tdo_i;

  wire bscanid_en_i;
  wire bscanid_en_o;
  wire capture_i;
  wire capture_o;
  wire drck_i;
  wire drck_o;
  wire reset_i;
  wire reset_o;
  wire runtest_i;
  wire runtest_o;
  wire sel_i;
  wire sel_o;
  wire shift_i;
  wire shift_o;
  wire tck_i;
  wire tck_o;
  wire tdi_i;
  wire tdi_o;
  wire tdo_i;
  wire tdo_o;
  wire tms_i;
  wire tms_o;
  wire update_i;
  wire update_o;
  wire [31:0]NLW_inst_bscanid_o_UNCONNECTED;

  (* C_EN_BSCANID_VEC = "0" *) 
  (* DONT_TOUCH *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lut_buffer_v2_0_0_lut_buffer inst
       (.bscanid_en_i(bscanid_en_i),
        .bscanid_en_o(bscanid_en_o),
        .bscanid_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bscanid_o(NLW_inst_bscanid_o_UNCONNECTED[31:0]),
        .capture_i(capture_i),
        .capture_o(capture_o),
        .drck_i(drck_i),
        .drck_o(drck_o),
        .reset_i(reset_i),
        .reset_o(reset_o),
        .runtest_i(runtest_i),
        .runtest_o(runtest_o),
        .sel_i(sel_i),
        .sel_o(sel_o),
        .shift_i(shift_i),
        .shift_o(shift_o),
        .tck_i(tck_i),
        .tck_o(tck_o),
        .tdi_i(tdi_i),
        .tdi_o(tdi_o),
        .tdo_i(tdo_i),
        .tdo_o(tdo_o),
        .tms_i(tms_i),
        .tms_o(tms_o),
        .update_i(update_i),
        .update_o(update_o));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
geSCzw9gYjFCv0Dn0YxOXxhH+GZFMePCQPK3AjT+zbjt1urPphGbRmSIP212qcXhU3u6qBayOOuP
zGTUOznyYQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
OnCSRn8bnLy+eSxgkIEXKk5zY3JDppSX+6N3lQVX9PeSypgnQ/2z4GTpmoL+rdMoco6U9R4G1u4m
E0xhKuM4ba9nEk7cLfAxOQqKqsWQrZaIEmzIr1ET+cp4jOMvYA/MsN4jh93kbuKcSDuJ8zN13DFX
RemIkmekhFjPkyUS5qM=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MSBAO7tnsBVh2XpVImbQvPkv1Ik+6Bw1D0e9n6H/Bw1mXnRXzm0RzPaEYAIFuluPbWglTrw4pQSr
JI/DSdCg6087Xmb+Q5zKawFvuZahx4HgmrKxTL15lZwamiIpmu3LGyxaEH/VbYGM9Ky0jp5PyDKU
Jeskyx64XVUPlRklhMjIKCtYITsgROzqjs+d1jIc494zqnDADEz0msJP38WdzHgwLDQ0NamfpodX
BUqMR71hgPx1Rvdt7HagUbkfyaG3/12LxFvpAblT7W0W6RKBFEFgFrxWRFaDw+jzj4jgl9g+sjY0
cveJYAA4UpZJwPSDIWehjmS+mOinzlnl8UP7jw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UtIiSU3lZ1iUKAuaJuT083jLC5QokBuxbJC/zVsWXf8ozOCIDAvtpSufF02lDCCaNNheB40dXQFS
I8VBcTtdWzNr2vj/HmW17e10D6T6mqn/8t0HnWx9c3modRuXup0Too1mNTU5gTH+v3utogTO5ztm
HbJZ/+5ov0tPkaeJufJl5L/RZAfLmRnRYybtx5bbc7XiGyWaVk6KunsaWtX5zJtVnMeUOkg0N8oL
RBeyFp3tFqTN7ecNUp7zom6BjZ3fR6euRy36u1XviJsqBjcxzASI1k+bn2lDs3oEdXuMHoRvcuWL
mmMddzjwWr43L7YoB/WBz/Tw7t6iYI5B6imPUA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
AMZ17uwJyVzW4KyzjD/YjCrX2GlLIDwW9HSuEat97pn8ZQ7QpDPhFLNx09klp1fHQ8yb1KlxCqpm
IjAljp4A5oQHWcBw/s+Xhtpin6GMDGjsmd5KmAD2J5DQmzqPazc0M8vNO+pGpCJogvWarX5XrP6U
56l9vH5mfyPmbT/09Kw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oAGTk8IFmmwAT5eT+h5xMK7MsqYCJnsMll3rq17njNu6wbVX2TAoOlVC5DzNg9T5ce7gVnuLuFG/
FgNSnTJx8TlbP73KxlDubmAVofR56G/yHzaJfJ0fwNhrfXm5AFgmFaKFPTKNkrG/qjdNuwUeA8p4
iHoj1zvPx50myVHXSpHLQ8n92DLWgMUX/57aPLbMHmYu/gsD0kHOuQ8Fr2Mi2DxufAvq1gzT0kc+
lxSntoseL+X1HLSvmKpEkR/sjaz6P9omIzqKlmOhvLeTZVEZcUtukVN1HTrlol+4/pTFDztcz0tZ
XqYZKVNB/igvn1iP/Fej8fpkaeJOrk1YgJZ6xw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HM0OWTHTT9qkiqicwldwQlaXCXhAavOkOLtzdsXybVEqcdGTuInS8Xvu2i7fjfGdnZjc+o4ZayFd
adCXUGMQZ+7u79Rm71DMtV7WL4PMhXZmItLJgXQmNzajU211AuWse/CyD7Am9ZDJuQcIK0fcqZQI
XVJU6sMESVWiSWdCuqkcQLSuSoBY7TVLmCDoTF9n7MlYfcxCkkK6d+2Xs/gjaWO59GZ3TbWhAQLc
9hHL9YUJUTzZ8yPC8tX+DLS/YrniD3lBpquxXGcl1FxHKFTSpMG/6pTH+7Y5u1s29iqS/KYCCOfR
Pqg3ikxxR4ywBL+umX+Ijv+Hqgol6tBnCkWh/g==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DQuK/YuairmUNmnTZFN/Tbbjjk202ciTMNZWiES7z/c8BYrmlnBses/x7XzAVxFxOTns+S6gcbxv
lho3MoYQI3b1wxR93ymMpbFY2AAKqfTaYrt9nuBi+J66NUkNb4mO5Ysrmk/FyxUuVMw2JeKhCxVf
1Lkw2weXEA2RSHrWxd8764IFSbBqKoKUTMuqLxHovRaQHDy/mOdyefGG7/6ywGbKjVTlE8lXVH8E
8QodSYZ7p8uod81sVFzJL26a9Tqu+u2tOgD/WqMuxrio7zRkYYC5P+/FtxLC4GaIZ6LivaJuTLOF
bkAMneaa5dlfamLnRyzDXUCJu/DFpJtH5s1eLQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DL1JbuaDxIhP8ir0jAdx6nea42/rMQ2VXG8PZEGqMkgF/yLmK8+UcPNvmkEnUbVxq6WNxCUUYBOO
eroUXvKd3hB7aza+lE1PkczDRQpe4dZWQ8yHCUSbqj/KnUKU7sMHOSk5MiYcbBazdC+B/zdSxJsr
sUmnOLgp/SqygmZW7/oDYMIYyOExEOrIPD4CH/xXZGlvuNs4OjdmaSus7kQp/iaUxQz03NGaMv3/
EuIfORb3j+mQPwXwEBQhecy81p8ky3bmOS0LK+CPuz0LF3VVvrDnnXUSBCWa2WW6t7burmoHvgPV
oB2jrvwkS6dNjRJ7CoyGvV0N6d60kiD0LjZg6Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2960)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
