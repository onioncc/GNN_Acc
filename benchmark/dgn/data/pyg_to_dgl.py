import dgl

def convert(pyg_data):
    g = dgl.graph((pyg_data.edge_index[0, :], pyg_data.edge_index[1, :]))
    if pyg_data.x is not None:
        g.ndata['feat'] = pyg_data.x
    if pyg_data.edge_attr is not None:
        g.edata['feat'] = pyg_data.edge_attr
    return g
