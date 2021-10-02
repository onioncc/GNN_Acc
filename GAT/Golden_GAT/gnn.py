from torch._C import device
import torch.nn as nn

import torch_geometric.utils
from torch_geometric.nn import global_mean_pool
from ogb.graphproppred.mol_encoder import AtomEncoder

import torch
import numpy as np
from conv import GATLayer

class GAT(torch.nn.Module):

    def __init__(self, num_tasks, num_layers, num_heads_per_layer, num_features_per_layer, add_skip_connection=True, bias=True,
                 drop_ratio=0.6, log_attention_weights=False):
        super().__init__()
        num_heads_per_layer = [1] + num_heads_per_layer  # trick - so that I can nicely create GAT layers below
        self.graph_pred_linear = torch.nn.Linear(num_features_per_layer[-1], num_tasks)
        gat_layers = []  # collect GAT layers
        for i in range(num_layers):
            layer = GATLayer(
                num_in_features=num_features_per_layer[i] * num_heads_per_layer[i],  # consequence of concatenation
                num_out_features=num_features_per_layer[i+1],
                num_of_heads=num_heads_per_layer[i+1],
                concat=True if i < num_layers - 1 else False,  # last GAT layer does mean avg, the others do concat
                activation=nn.ELU() if i < num_layers - 1 else None,  # last layer just outputs raw scores
                dropout_prob=drop_ratio,
                add_skip_connection=add_skip_connection,
                bias=False,
                log_attention_weights=log_attention_weights
            )
            gat_layers.append(layer)

        self.gat_net = nn.Sequential(
            *gat_layers,
        )
        

    # data is just a (in_nodes_features, edge_index) tuple, I had to do it like this because of the nn.Sequential:
    # https://discuss.pytorch.org/t/forward-takes-2-positional-arguments-but-3-were-given-for-nn-sqeuential-with-linear-layers/65698
    def forward(self, batch):
        
        #para = list(self.graph_pred_linear.parameters())
        # Preprocess batch
        # shape = (N, FIN), where N is the number of nodes and FIN is the number of input features
        node_features = batch.x.float()
        # shape = (2, E)
        topology = torch_geometric.utils.to_dense_adj(batch.edge_index, max_num_nodes=batch.x.shape[0])[0].to("cuda")
        topology += torch.eye(topology.shape[0]).to("cuda")  # add self connections
        topology[topology > 0] = 1  # multiple edges not allowed
        topology[topology == 0] = -np.inf  # make it a mask instead of adjacency matrix (used to mask softmax)
        topology[topology == 1] = 0

        # shape = (2, E), where E is the number of edges, and 2 for source and target nodes. Basically edge index
        # contains tuples of the format S->T, e.g. 0->3 means that node with id 0 points to a node with id 3.
        # adjacency matrix shape = (N, N)
        # Note: topology is just a fancy way of naming the graph structure data 

        #print("topo: " + str(topology.shape))
        #print(node_features.shape)
        
        node_features, _ = self.gat_net((node_features, topology))
        graph = global_mean_pool(node_features, batch.batch)
        pred = self.graph_pred_linear(graph)
        return pred
