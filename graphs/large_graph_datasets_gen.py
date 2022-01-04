from numpy.random import default_rng
import torch
from torch_geometric.data import DataLoader
from torch_geometric.datasets import CitationFull
from tqdm import tqdm
import os
import struct

dataset = CitationFull('pubmed', 'PubMed')
rng = default_rng()

test_loader = DataLoader(dataset, batch_size=1, shuffle=False)

try:
    os.mkdir("./graph_info")
    os.mkdir("./graph_bin")
except OSError as error:
    print(error) 

for step, batch in enumerate(tqdm(test_loader, desc="Iteration")):
    num = step + 1
    f = open(f'./graph_info/g{num}_info.txt', 'w')
    f.write(str(batch.num_nodes) + "\n" + str(batch.num_edges) + "\n")
    f.close()
    
    data = list(rng.random((3 * batch.num_edges,)))
    f = open(f'./graph_bin/g{num}_edge_attr.bin', 'wb')
    packed = struct.pack('f'*len(data), *data)
    f.write(packed)
    f.close()

    t = torch.transpose(batch.edge_index, 0, 1)
    data = list(t.reshape(-1).numpy())
    f = open(f'./graph_bin/g{num}_edge_list.bin', 'wb')
    packed = struct.pack('i'*len(data), *data)
    f.write(packed)
    f.close()

    data = list(batch.x.view(-1).numpy().astype(int))
    f = open(f'./graph_bin/g{num}_node_feature.bin', 'wb')
    packed = struct.pack('i'*len(data), *data)
    f.write(packed)
    f.close()

