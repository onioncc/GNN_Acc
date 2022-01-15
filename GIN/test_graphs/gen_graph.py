
from typing import Sequence
import numpy as np
import struct
import networkx as nx

degree_sequence = [1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 10, 10, 10, 10, 10]
G = nx.configuration_model(degree_sequence)
G = nx.DiGraph(G)
G.remove_edges_from(nx.selfloop_edges(G))

print(G.nodes)
print(G.edges)

din = degree_sequence
dout = degree_sequence
G = nx.directed_configuration_model(din, dout)
G = nx.DiGraph(G)
G.remove_edges_from(nx.selfloop_edges(G))

print(G.nodes)
print(G.edges)


node_list = G.nodes
edge_list = []
for (u, v) in G.edges:
    edge_list.append(u)
    edge_list.append(v)

print(node_list)
print(edge_list)

#node_list = [1, 2, 3, 4, 5, 6, 7, 8]
#edge_list = [0, 1, 0, 2, 0, 3, 0, 4, 0, 5, 0, 6, 0, 7, 2, 3, 2, 4, 2, 5, 2, 6, 2, 7]

node_count = int(len(node_list))
edge_count = int(int(len(edge_list))/2)

node_feature = np.ones(node_count * 9).astype(int)
edge_feature = np.ones(edge_count * 3).astype(int)

data = list(node_feature)
f = open('gtest_node_feature.bin', 'wb')
packed = struct.pack('i'*len(data), *data)
f.write(packed)
f.close()

data = list(edge_list)
f = open('gtest_edge_list.bin', 'wb')
packed = struct.pack('i'*len(data), *data)
f.write(packed)
f.close()


data = list(edge_feature)
f = open('gtest_edge_attr.bin', 'wb')
packed = struct.pack('i'*len(data), *data)
f.write(packed)
f.close()

f = open('gtest_info.txt', 'w')
f.write(str(node_count) + '\n')
f.write(str(edge_count) + '\n')
f.close()