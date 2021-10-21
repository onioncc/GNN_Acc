import torch
import torch.nn.functional as F
from torch.nn import ModuleList
from torch.nn import Sequential, ReLU, Linear
from torch.optim.lr_scheduler import ReduceLROnPlateau
from torch_geometric.utils import degree
from ogb.graphproppred import PygGraphPropPredDataset, Evaluator
from ogb.graphproppred.mol_encoder import AtomEncoder
from torch_geometric.data import DataLoader
from torch_geometric.nn import BatchNorm, global_mean_pool

import numpy as np
import json
import struct


from .pna import PNAConvSimple

class Net(torch.nn.Module):
    def __init__(self, dataset):
        super(Net, self).__init__()

        self.node_emb = AtomEncoder(emb_dim=80)

        aggregators = ['mean', 'min', 'max', 'std']
        scalers = ['identity', 'amplification', 'attenuation']

        # Compute in-degree histogram over training data.
        split_idx = dataset.get_idx_split()
        deg = torch.zeros(10, dtype=torch.long)
        for data in dataset[split_idx['train']]:
            d = degree(data.edge_index[1], num_nodes=data.num_nodes, dtype=torch.long)
            deg += torch.bincount(d, minlength=deg.numel())

        self.convs = ModuleList()
        self.batch_norms = ModuleList()
        for _ in range(4):
            conv = PNAConvSimple(in_channels=80, out_channels=80, aggregators=aggregators,
                                 scalers=scalers, deg=deg, post_layers=1)
            self.convs.append(conv)
            self.batch_norms.append(BatchNorm(80))
        self.mlp = Sequential(Linear(80, 40), ReLU(), Linear(40, 20), ReLU(), Linear(20, 1))

    def forward(self, data):
        x = data.x
        edge_index = data.edge_index
        edge_attr = None
        batch = data.batch

        x = self.node_emb(x)
        for conv, batch_norm in zip(self.convs, self.batch_norms):
            k = batch_norm(conv(x, edge_index, edge_attr))
            h = F.relu(k)
            x = h + x  # residual#
            x = F.dropout(x, 0.3, training=self.training)

        x = global_mean_pool(x, batch)
        return self.mlp(x)
