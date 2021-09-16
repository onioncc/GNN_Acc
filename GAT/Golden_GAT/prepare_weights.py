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
from gnn import GAT


def eval_rocauc(y_true, y_pred):
    rocauc_list = []
    for i in range(y_true.shape[1]):
        #AUC is only defined when there is at least one positive data.
        if np.sum(y_true[:,i] == 1) > 0 and np.sum(y_true[:,i] == 0) > 0:
            # ignore nan values
            is_labeled = y_true[:,i] == y_true[:,i]
            rocauc_list.append(roc_auc_score(y_true[is_labeled,i], y_pred[is_labeled,i]))


def eval(model, device, loader, evaluator):
    
    model.eval()
    y_true = []
    y_pred = []
    for step, batch in enumerate(loader):
        batch = batch.to(device)
        #print(batch)
        with torch.no_grad():
            pred = model(batch)
        y_true.append(batch.y.view(pred.shape).detach().cpu())
        y_pred.append(pred.detach().cpu())

    y_true = torch.cat(y_true, dim = 0).numpy()
    y_pred = torch.cat(y_pred, dim = 0).numpy()
    
    input_dict = {"y_true": y_true, "y_pred": y_pred}
    return evaluator.eval(input_dict), y_true, y_pred


############ Device and test_loader #############
device = torch.device("cuda")
dataset = PygGraphPropPredDataset(name = 'ogbg-molhiv')
split_idx = dataset.get_idx_split()
evaluator = Evaluator('ogbg-molhiv')
test_loader = DataLoader(dataset[split_idx["test"]], batch_size=1, shuffle=False, num_workers = 0)


########### Load the pre-trained GIN model ###########
print('Load the pretrained GNN model')
model = torch.load('gat_ep1_layer2.pt')
#model = GNN(gnn_type = 'gin', num_tasks = 1, num_layer = 5, emb_dim = 300, drop_ratio = 0.5, virtual_node = False).to(device)
print('Evaluating...')
auc, ytrue, ypred = eval(model, device, test_loader, evaluator)
print('AUC of the original model:')
print(auc)


########### Collect all the golden outputs from Pytorch ###########
graph_id = 1
all_result = {}
f_txt = open('Pytorch_output_layer2.txt', 'w+')
for yt, yp in zip(ytrue, ypred):
    #print(yt[0], yp[0])
    key = 'g' + str(graph_id)
    all_result[key] = {}
    all_result[key]['true'] = float(yt[0])
    all_result[key]['predict'] = float(yp[0])
    graph_id += 1
    f_txt.write(key + ': ' + str(yp[0]) + '\n')
f_txt.close()

f_json = open('all_results_layer2.json', 'w+')
json.dump(all_result, f_json)
f_json.close()



############# Collect all the weights for golden C ##############

print("collecting weights for the golden C")

weights_dict = {}
weights_data = []
offset = 0
for key in model.state_dict():
    print(key)
    print(model.state_dict()[key].shape)
    print(model.state_dict()[key].cpu().view(-1).numpy().shape)

    weights_dict[key] = {}
    weights_dict[key]['shape'] = list(model.state_dict()[key].shape)
    weights_dict[key]['key'] = key
    weights_dict[key]['offset'] = offset
    data = list(model.state_dict()[key].cpu().view(-1).numpy())
    data_length = len(data)
    weights_dict[key]['length'] = data_length
    offset += data_length
    weights_data += data

f = open('gat_ep1_layer2.weights.dict.json', 'w')
json.dump(weights_dict, f)
f.close()

f = open('gat_ep1_layer2.weights.all.bin', 'wb')
packed = struct.pack('f'*len(weights_data), *weights_data)
f.write(packed)
f.close()


########### collecting weights for the accelerator #######################

print('Collecting and reorganizing the weights for the accelerator')

scoring_fn_target_0 = model.state_dict()['gat_net.0.scoring_fn_target'].cpu()
scoring_fn_target_1 = model.state_dict()['gat_net.1.scoring_fn_target'].cpu()

scoring_fn_source_0 = model.state_dict()['gat_net.0.scoring_fn_source'].cpu()
scoring_fn_source_1 = model.state_dict()['gat_net.1.scoring_fn_source'].cpu()

bias_0 = model.state_dict()['gat_net.0.bias'].cpu()
bias_1 = model.state_dict()['gat_net.1.bias'].cpu()

linear_proj_weight_0 = model.state_dict()['gat_net.0.linear_proj.weight'].cpu()
linear_proj_weight_1 = model.state_dict()['gat_net.1.linear_proj.weight'].cpu()

skip_proj_weight_0 = model.state_dict()['gat_net.0.skip_proj.weight'].cpu()
skip_proj_weight_1 = model.state_dict()['gat_net.1.skip_proj.weight'].cpu()

data = list(scoring_fn_target_0.view(-1).numpy())
f = open('gat_ep1_scoring_fn_target_0_layer2.bin', 'wb')
packed = struct.pack('f'*len(data), *data)
f.write(packed)
f.close()

data = list(scoring_fn_target_1.view(-1).numpy())
f = open('gat_ep1_scoring_fn_target_1_layer2.bin', 'wb')
packed = struct.pack('f'*len(data), *data)
f.write(packed)
f.close()

data = list(scoring_fn_source_0.view(-1).numpy())
f = open('gat_ep1_scoring_fn_source_0_layer2.bin', 'wb')
packed = struct.pack('f'*len(data), *data)
f.write(packed)
f.close()

data = list(scoring_fn_source_1.view(-1).numpy())
f = open('gat_ep1_scoring_fn_source_1_layer2.bin', 'wb')
packed = struct.pack('f'*len(data), *data)
f.write(packed)
f.close()

data = list(bias_0.view(-1).numpy())
f = open('gat_ep1_bias_0_layer2.bin', 'wb')
packed = struct.pack('f'*len(data), *data)
f.write(packed)
f.close()

data = list(bias_1.view(-1).numpy())
f = open('gat_ep1_bias_1_layer2.bin', 'wb')
packed = struct.pack('f'*len(data), *data)
f.write(packed)
f.close()

data = list(linear_proj_weight_0.view(-1).numpy())
f = open('gat_ep1_linear_proj_weight_0_layer2.bin', 'wb')
packed = struct.pack('f'*len(data), *data)
f.write(packed)
f.close()

data = list(linear_proj_weight_1.view(-1).numpy())
f = open('gat_ep1_linear_proj_weight_1_layer2.bin', 'wb')
packed = struct.pack('f'*len(data), *data)
f.write(packed)
f.close()

data = list(skip_proj_weight_0.view(-1).numpy())
f = open('gat_ep1_skip_proj_weight_0_layer2.bin', 'wb')
packed = struct.pack('f'*len(data), *data)
f.write(packed)
f.close()

data = list(skip_proj_weight_1.view(-1).numpy())
f = open('gat_ep1_skip_proj_weight_1_layer2.bin', 'wb')
packed = struct.pack('f'*len(data), *data)
f.write(packed)
f.close()

pred_w = model.state_dict()['graph_pred_linear.weight'].cpu()
pred_b = model.state_dict()['graph_pred_linear.bias'].cpu()
#print(pred_w.shape, pred_b.shape)

data = list(pred_w.view(-1).numpy())
f = open('gat_ep1_pred_weights_layer2.bin', 'wb')
packed = struct.pack('f'*len(data), *data)
f.write(packed)
f.close()

data = list(pred_b.view(-1).numpy())
f = open('gat_ep1_pred_bias_layer2.bin', 'wb')
packed = struct.pack('f'*len(data), *data)
f.write(packed)
f.close()

print('All weights are writen into *_layer2.bin\n')
