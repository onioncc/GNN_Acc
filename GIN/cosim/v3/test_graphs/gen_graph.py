
import numpy as np
import struct

#node_list = [1, 2, 3, 4, 5, 6, 7, 8]
edge_list = [0, 1, 0, 2, 0, 3, 0, 4, 0, 5, 0, 6, 0, 7, 2, 3, 2, 4, 2, 5, 2, 6, 2, 7]

node_feature = np.ones(8 * 9).astype(int)
edge_feature = np.ones(len(edge_list) * 3).astype(int)

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