import torch
from torch_geometric.data import DataLoader
import torch.optim as optim
import torch.nn.functional as F
from sklearn.metrics import roc_auc_score

from tqdm import tqdm
import argparse
import time
import numpy as np
import json
import struct

import torch.multiprocessing

torch.multiprocessing.set_sharing_strategy('file_system')

### importing OGB
from ogb.graphproppred import PygGraphPropPredDataset, Evaluator
from gnn import GNN, GNN_noBN


def eval_rocauc(y_true, y_pred):
    rocauc_list = []
    for i in range(y_true.shape[1]):
        # AUC is only defined when there is at least one positive data.
        if np.sum(y_true[:, i] == 1) > 0 and np.sum(y_true[:, i] == 0) > 0:
            # ignore nan values
            is_labeled = y_true[:, i] == y_true[:, i]
            rocauc_list.append(roc_auc_score(y_true[is_labeled, i], y_pred[is_labeled, i]))


def eval(model, device, loader, evaluator):
    model.eval()
    y_true = []
    y_pred = []
    for step, batch in enumerate(loader):
        batch = batch.to(device)
        # print(batch)
        with torch.no_grad():
            pred = model(batch)
        y_true.append(batch.y.view(pred.shape).detach().cpu())
        y_pred.append(pred.detach().cpu())

    y_true = torch.cat(y_true, dim=0).numpy()
    y_pred = torch.cat(y_pred, dim=0).numpy()

    input_dict = {"y_true": y_true, "y_pred": y_pred}
    return evaluator.eval(input_dict), y_true, y_pred

print('hi')
############ Device and test_loader #############
device = torch.device("cpu")
dataset = PygGraphPropPredDataset(name='ogbg-molhiv')
split_idx = dataset.get_idx_split()
evaluator = Evaluator('ogbg-molhiv')
test_loader = DataLoader(dataset[split_idx["test"]], batch_size=1, shuffle=False, num_workers=1)



########### Load the pre-trained GIN model ###########
print('Load the pretrained GNN model')
model = torch.load('gcn_ep1_dim100.pt')
#model = GNN(gnn_type = 'gcn', num_tasks = 1, num_layer = 5, emb_dim = 300, drop_ratio = 0.5, virtual_node = False).to(device)
print('Evaluating...')
auc, ytrue, ypred = eval(model, device, test_loader, evaluator)
print('AUC of the original model:')
print(auc)

########### Collect all the golden outputs from Pytorch ###########
graph_id = 1
all_result = {}
f_txt = open('Pytorch_output_dim100.txt', 'w+')
for yt, yp in zip(ytrue, ypred):
    #print(yt[0], yp[0])
    key = 'g' + str(graph_id)
    all_result[key] = {}
    all_result[key]['true'] = float(yt[0])
    all_result[key]['predict'] = float(yp[0])
    graph_id += 1
    f_txt.write(key + ': ' + str(yp[0]) + '\n')
f_txt.close()

f_json = open('all_results_dim100.json', 'w+')
json.dump(all_result, f_json)
f_json.close()



### FIX THESE STATE_DICTS ###



########### collecting weights for the accelerator #######################

print('Collecting and reorganizing the weights for the accelerator')

model = torch.load('gcn_ep1_noBN_dim100.pt')

### pack MLP weights
MLP_weights_0_1 = model.state_dict()['gnn_node_noBN.convs.0.mlp.0.weight'].numpy()
MLP_weights_1_1 = model.state_dict()['gnn_node_noBN.convs.1.mlp.0.weight'].numpy()
MLP_weights_2_1 = model.state_dict()['gnn_node_noBN.convs.2.mlp.0.weight'].numpy()
MLP_weights_3_1 = model.state_dict()['gnn_node_noBN.convs.3.mlp.0.weight'].numpy()
MLP_weights_4_1 = model.state_dict()['gnn_node_noBN.convs.4.mlp.0.weight'].numpy()
MLP_1_weights_all = torch.tensor([MLP_weights_0_1, MLP_weights_1_1, MLP_weights_2_1, MLP_weights_3_1, MLP_weights_4_1])
#print(MLP_1_weights_all.shape)

MLP_weights_0_2 = model.state_dict()['gnn_node_noBN.convs.0.mlp.2.weight'].numpy()
MLP_weights_1_2 = model.state_dict()['gnn_node_noBN.convs.1.mlp.2.weight'].numpy()
MLP_weights_2_2 = model.state_dict()['gnn_node_noBN.convs.2.mlp.2.weight'].numpy()
MLP_weights_3_2 = model.state_dict()['gnn_node_noBN.convs.3.mlp.2.weight'].numpy()
MLP_weights_4_2 = model.state_dict()['gnn_node_noBN.convs.4.mlp.2.weight'].numpy()
MLP_2_weights_all = torch.tensor([MLP_weights_0_2, MLP_weights_1_2, MLP_weights_2_2, MLP_weights_3_2, MLP_weights_4_2])
#print(MLP_2_weights_all.shape)

MLP_bias_0_1 = model.state_dict()['gnn_node_noBN.convs.0.mlp.0.bias'].numpy()
MLP_bias_1_1 = model.state_dict()['gnn_node_noBN.convs.1.mlp.0.bias'].numpy()
MLP_bias_2_1 = model.state_dict()['gnn_node_noBN.convs.2.mlp.0.bias'].numpy()
MLP_bias_3_1 = model.state_dict()['gnn_node_noBN.convs.3.mlp.0.bias'].numpy()
MLP_bias_4_1 = model.state_dict()['gnn_node_noBN.convs.4.mlp.0.bias'].numpy()
MLP_1_bias_all = torch.tensor([MLP_bias_0_1, MLP_bias_1_1, MLP_bias_2_1, MLP_bias_3_1, MLP_bias_4_1])
#print(MLP_1_bias_all.shape)

MLP_bias_0_2 = model.state_dict()['gnn_node_noBN.convs.0.mlp.2.bias'].numpy()
MLP_bias_1_2 = model.state_dict()['gnn_node_noBN.convs.1.mlp.2.bias'].numpy()
MLP_bias_2_2 = model.state_dict()['gnn_node_noBN.convs.2.mlp.2.bias'].numpy()
MLP_bias_3_2 = model.state_dict()['gnn_node_noBN.convs.3.mlp.2.bias'].numpy()
MLP_bias_4_2 = model.state_dict()['gnn_node_noBN.convs.4.mlp.2.bias'].numpy()
MLP_2_bias_all = torch.tensor([MLP_bias_0_2, MLP_bias_1_2, MLP_bias_2_2, MLP_bias_3_2, MLP_bias_4_2])
#print(MLP_2_bias_all.shape)

data = list(MLP_1_weights_all.view(-1).numpy())
f = open('gcn_ep1_mlp_1_weights_dim100.bin', 'wb')
packed = struct.pack('f'*len(data), *data)
f.write(packed)
f.close()

data = list(MLP_1_bias_all.view(-1).numpy())
f = open('gcn_ep1_mlp_1_bias_dim100.bin', 'wb')
packed = struct.pack('f'*len(data), *data)
f.write(packed)
f.close()


data = list(MLP_2_weights_all.view(-1).numpy())
f = open('gcn_ep1_mlp_2_weights_dim100.bin', 'wb')
packed = struct.pack('f'*len(data), *data)
f.write(packed)
f.close()


data = list(MLP_2_bias_all.view(-1).numpy())
f = open('gcn_ep1_mlp_2_bias_dim100.bin', 'wb')
packed = struct.pack('f'*len(data), *data)
f.write(packed)
f.close()

# all embeddings
nd_emb_0 = model.state_dict()['gnn_node_noBN.atom_encoder.atom_embedding_list.0.weight']
nd_emb_1 = model.state_dict()['gnn_node_noBN.atom_encoder.atom_embedding_list.1.weight']
nd_emb_2 = model.state_dict()['gnn_node_noBN.atom_encoder.atom_embedding_list.2.weight']
nd_emb_3 = model.state_dict()['gnn_node_noBN.atom_encoder.atom_embedding_list.3.weight']
nd_emb_4 = model.state_dict()['gnn_node_noBN.atom_encoder.atom_embedding_list.4.weight']
nd_emb_5 = model.state_dict()['gnn_node_noBN.atom_encoder.atom_embedding_list.5.weight']
nd_emb_6 = model.state_dict()['gnn_node_noBN.atom_encoder.atom_embedding_list.6.weight']
nd_emb_7 = model.state_dict()['gnn_node_noBN.atom_encoder.atom_embedding_list.7.weight']
nd_emb_8 = model.state_dict()['gnn_node_noBN.atom_encoder.atom_embedding_list.8.weight']

nd_all = torch.cat((nd_emb_0, nd_emb_1, nd_emb_2, nd_emb_3, nd_emb_4, nd_emb_5, nd_emb_6, nd_emb_7, nd_emb_8), dim=0)

data = list(nd_all.view(-1).numpy())
f = open('gcn_ep1_nd_embed_dim100.bin', 'wb')
packed = struct.pack('f'*len(data), *data)
f.write(packed)
f.close()