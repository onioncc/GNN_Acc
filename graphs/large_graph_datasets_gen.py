import torch
from torch_geometric.data import DataLoader
from torch_geometric.datasets import Planetoid
import os
import struct

DATASETS = [
    Planetoid(root='large_graphs', name='Cora'),
    Planetoid(root='large_graphs', name='CiteSeer'),
    Planetoid(root='large_graphs', name='PubMed'),
]

try:
    os.mkdir("./graph_info")
    os.mkdir("./graph_bin")
except OSError as error:
    print(error) 

for dataset in DATASETS:
    test_loader = DataLoader(dataset, batch_size=1, shuffle=False)

    batch, = test_loader
    name = dataset.name.lower()
    f = open(f'./graph_info/{name}_info.txt', 'w')
    f.write(str(batch.num_nodes) + "\n" + str(batch.num_edges) + "\n")
    f.close()

    t = torch.transpose(batch.edge_index, 0, 1)
    data = list(t.reshape(-1).numpy())
    f = open(f'./graph_bin/{name}_edge_list.bin', 'wb')
    packed = struct.pack('i'*len(data), *data)
    f.write(packed)
    f.close()

    data = list(batch.x.view(-1).numpy().astype(int))
    f = open(f'./graph_bin/{name}_node_feature.bin', 'wb')
    packed = struct.pack('i'*len(data), *data)
    f.write(packed)
    f.close()
