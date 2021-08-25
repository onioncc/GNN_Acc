- Please find the models and graphs here:
https://github.com/snap-stanford/ogb/tree/master/examples/graphproppred/mol

- We're using ogbg-molhiv dataset so far.

Currently I implemented the GIN; there are also other models (e.g., GCN).

- The prepare_weight.py file is used to process the model and to organize the weights for FPGA accelerator.

-- The original model contains batch normalization, which is very anoying in FPGA computing. So prepare_weight.py first removes the batch norm weights.

-- Second, it prepare a bin file named "gin_ep1_noBN_dim100.weights.all.bin", which is the packed weights for golden C for GIN; this bin file will be used only in this folder.

-- Third, it packs the weights into the format which is suitable for HLS, named as "xxx_dim100.bin"; these bin files will be used for HLS accelerator.

