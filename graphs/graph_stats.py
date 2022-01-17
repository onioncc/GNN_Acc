import glob
from math import ceil

info_files = glob.glob("./molpcba/graph_info/*.txt")

nodes = []
edges = []

for fp in info_files:
    with open(fp, "r") as f:
        nodes.append(int(f.readline()))
        edges.append(int(f.readline()))

node_average = ceil(sum(nodes) / len(nodes))
edge_average = ceil(sum(edges) / len(edges))
node_median = ceil(sorted(nodes)[len(nodes) // 2])
edge_median = ceil(sorted(edges)[len(edges) // 2])

print(f"Node average: {node_average}")
print(f"Edge average: {edge_average}")

print(f"Node median: {node_median}")
print(f"Edge median: {edge_median}")


