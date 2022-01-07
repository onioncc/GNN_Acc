from ogb.graphproppred import Evaluator

import torch
from math import inf
torch.set_printoptions(threshold=inf)

import torch.optim as optim
from torch.utils.data import DataLoader

#from tensorboardX import SummaryWriter
from tqdm import tqdm

"""
    IMPORTING CUSTOM MODULES/METHODS
"""

# from example import Net

import numpy as np
import json
import struct

from data.planetoid import PlanetoidDataset
from nets.planetoid_node_classification.dgn_net import DGNNet


def evaluate_network(model, device, data_loader, epoch):
    model.eval()
    epoch_test_loss = 0
    epoch_test_ROC = 0
    with torch.no_grad():
        list_scores = []
        list_labels = []
        for iter, (batch_graphs, batch_labels, batch_snorm_n, batch_snorm_e) in enumerate(data_loader):
            graph = batch_graphs.to(device)
            batch_x = batch_graphs.ndata['feat'].to(device)
            batch_e = torch.empty(0).to(device)
            batch_snorm_e = batch_snorm_e.to(device)
            batch_snorm_n = batch_snorm_n.to(device)
            batch_labels = batch_labels.to(device)
            batch_scores = model.forward(graph, batch_x, batch_e, batch_snorm_n, batch_snorm_e)
            list_scores.append(batch_scores.detach().cpu())
            list_labels.append(batch_labels.detach().unsqueeze(-1).cpu())

    y_true = torch.cat(list_labels).numpy()
    y_pred = torch.cat(list_scores).numpy()
    return epoch_test_loss, epoch_test_ROC,y_true,y_pred


if __name__ == '__main__':
    ############ Device and test_loader #############
    device = torch.device("cuda")
    for DATASET_NAME in ('Cora', 'CiteSeer', 'PubMed'):
        dataset = PlanetoidDataset(DATASET_NAME, pos_enc_dim=int(0), norm='none')
        testset = dataset.test
        test_loader = DataLoader(testset, batch_size=int(1), shuffle=False, collate_fn=dataset.collate, pin_memory=True)
        g, = testset.graph_lists
        key = DATASET_NAME.lower()
        f_txt = open('eig/' + key + '.txt', 'w+')
        f_txt.write(str(g.ndata['eig']) + '\n')
        f_txt.close()
        
        #
        # ########### Load the pre-trained GIN model ###########
        print('Load the pretrained GNN model')
        model = torch.load(f'dgn_{key}.pt')
        print('Evaluating...')
        epoch_val_loss, epoch_test_roc,ytrue,ypred = evaluate_network(model, device, test_loader, 2)
        print('test_loss, roC of the original model:')
        print(epoch_val_loss,epoch_test_roc)

        ########### Collect all the golden outputs from Pytorch ###########
        f_txt = open(f'Pytorch_output_{key}.txt', 'w+')
        for x, in ypred:
            f_txt.write(str(x) + '\n')
        f_txt.close()

        ############# Collect all the weights without BatchNorm for golden C ##############

        print("collecting weights for the golden C")

        weights_dict = {}
        weights_data = []
        offset = 0
        for key in model.state_dict():
            # print(key)
            # print(model.state_dict()[key].shape)
            # print(model.state_dict()[key].view(-1).numpy().shape)

            weights_dict[key] = {}
            weights_dict[key]['shape'] = list(model.state_dict()[key].shape)
            weights_dict[key]['key'] = key
            weights_dict[key]['offset'] = offset
            data = list(model.state_dict()[key].cpu().view(-1).numpy())
            data_length = len(data)
            #print(data)
            weights_dict[key]['length'] = data_length
            offset += data_length
            weights_data += data

        f = open(f'dgn_{key}.weights.dict.json', 'w')
        json.dump(weights_dict, f)
        f.close()

        f = open(f'dgn_{key}.all.bin', 'wb')
        packed = struct.pack('f' * len(weights_data), *weights_data)
        f.write(packed)
        f.close()
