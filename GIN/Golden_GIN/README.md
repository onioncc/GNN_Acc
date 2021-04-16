- Please find the models and graphs here:
https://github.com/snap-stanford/ogb/tree/master/examples/graphproppred/mol
Currently I implemented the GIN; there are also other models (e.g., GCN).

- The inference.ipynb file is used to process the model and to organize the weights for FPGA accelerator.
- The original model contains batch normalization, which is very anoying in FPGA computing. So inference.ipynb first removes the batch norm weights, and then pack the weights into the format which is suitable for HLS.

