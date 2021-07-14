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

if __name__ ==  '__main__':
    ############ Device and test_loader #############
    device = torch.device("cpu")
    dataset = PygGraphPropPredDataset(name='ogbg-molhiv')
    split_idx = dataset.get_idx_split()
    evaluator = Evaluator('ogbg-molhiv')
    test_loader = DataLoader(dataset[split_idx["test"]], batch_size=1, shuffle=False, num_workers=1)

    ########### Load the pre-trained GIN model ###########
    print('Load the pretrained GNN model')
    model = torch.load('gin_ep1_dim100.pt')
    """    # model = GNN(gnn_type = 'gin', num_tasks = 1, num_layer = 5, emb_dim = 300, drop_ratio = 0.5, virtual_node = False).to(device)
        print('Evaluating...')
        auc, ytrue, ypred = eval(model, device, test_loader, evaluator)
        print('AUC of the original model:')
        print(auc)
    
        graph_id = 1
        all_result = {}
        f_txt = open('Pytorch_output_dim100.txt', 'w+')
        for yt, yp in zip(ytrue, ypred):
            # print(yt[0], yp[0])
            key = 'g' + str(graph_id)
            all_result[key] = {}
            all_result[key]['true'] = float(yt[0])
            all_result[key]['predict'] = float(yp[0])
            graph_id += 1
            f_txt.write(key + ': ' + str(yp[0]) + '\n')
        f_txt.close()
    
        f_json = open('all_results_dim100.json', 'w+')
        json.dump(all_result, f_json)
        f_json.close()"""

    print('Removing the BatchNorm in the model')

    model_noBN = GNN_noBN(gnn_type='gin', num_tasks=1, num_layer=5, emb_dim=100, drop_ratio=0.5, virtual_node=False).to(
        device)

    model_noBN.training = False
    model_noBN.eval()
    model.training = False
    bn_eps = 0.00001
    print(model_noBN.state_dict().keys())
