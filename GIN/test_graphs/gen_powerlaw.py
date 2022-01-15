
from typing import Sequence
import numpy as np
import struct
import networkx as nx

import random
import math


## number of node and edge attributes to be compatible with molhiv dataset
NODE_ATTR = 9
EDGE_ATTR = 3


def gen_graph_bin(gname, G):
    node_list = G.nodes
    edge_list = []
    for (u, v) in G.edges:
        edge_list.append(u)
        edge_list.append(v)

    #print(node_list)
    #print(edge_list)

    node_count = int(len(node_list))
    edge_count = int(int(len(edge_list))/2)

    node_feature = np.ones(node_count * NODE_ATTR).astype(int)
    edge_feature = np.ones(edge_count * EDGE_ATTR).astype(int)

    data = list(node_feature)
    f = open('./powerlaw_graphs/%s_node_feature.bin' % gname, 'wb')
    packed = struct.pack('i'*len(data), *data)
    f.write(packed)
    f.close()

    data = list(edge_list)
    f = open('./powerlaw_graphs/%s_edge_list.bin' % gname, 'wb')
    packed = struct.pack('i'*len(data), *data)
    f.write(packed)
    f.close()


    data = list(edge_feature)
    f = open('./powerlaw_graphs/%s_edge_attr.bin' % gname, 'wb')
    packed = struct.pack('i'*len(data), *data)
    f.write(packed)
    f.close()

    f = open('./powerlaw_graphs/%s_info.txt' % gname, 'w')
    f.write(str(node_count) + '\n')
    f.write(str(edge_count) + '\n')
    f.close()




graph_buckets = []
for i in range(0, 9):
    # the first two buckets are not used
    # one list corresponds to an average node degree (from 2 to 8)
    graph_buckets.append([]) 

    # each list contains another list, storing the power-law exponent
    # 0~1 means less than 10%; 1~2 means 10%~20%, etc.
    for j in range(0, 10):
        graph_buckets[i].append([])
#print(graph_buckets)


g_cnt = 1
for itr in range(0, 10000):
    n = random.randint(30, 50)
    d = random.randint(2, 8)
    e = n * d
    
    sequence = nx.utils.random_sequence.powerlaw_sequence(n, exponent=2.0, seed=None)
    G = nx.expected_degree_graph(sequence, selfloops=False)
    #print(sequence)
    G = nx.DiGraph(G)
    #G.remove_edges_from(nx.selfloop_edges(G))

    
    out_d = 0
    perct = 0
    for node in G.nodes:
        d = G.out_degree(node)
        if (d > 4):
            perct += 1
        out_d += d
    out_d_avg = out_d / n
    perct = perct / n


    # print("graph %d" % g_cnt)
    # print("average out degree: %.2f" % out_d_avg)
    # print("percentage of node with out degree larger than 4: %.2f" % perct)
    # print(G.edges)
    # print(G.nodes)

    graph_buckets[int(out_d_avg)][ min(math.floor(perct * 10), 9) ].append(str(g_cnt))
  


    g_name = "g_rand_%d" % g_cnt

    gen_graph_bin(g_name, G)

    g_cnt += 1


for i in range(2, 9):
    print("average degree %d" % i)
    for j in range(0, 10):
        print(len(graph_buckets[i][j]), end=" ")

        f = open('./powerlaw_graphs/g_list_degree_%d_percent_%d.txt' % (i, j*10), 'w')
        for ele in graph_buckets[i][j]:
            f.write(str(ele) + '\n')
        f.close()

    print("\n")








