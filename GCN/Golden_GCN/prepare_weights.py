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


if __name__ == '__main__':
    ############ Device and test_loader #############
    device = torch.device("cpu")
    dataset = PygGraphPropPredDataset(name='ogbg-molhiv')
    split_idx = dataset.get_idx_split()
    evaluator = Evaluator('ogbg-molhiv')
    test_loader = DataLoader(dataset[split_idx["test"]], batch_size=1, shuffle=False, num_workers=1)

    ########### Load the pre-trained GCN model ###########
    print('Load the pretrained GNN model')
    model = torch.load('gcn_ep1_dim100.pt')

    print('Evaluating...')
    auc, ytrue, ypred = eval(model, device, test_loader, evaluator)
    print('AUC of the oriGCNal model:')
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
    f_json.close()
    #
    # print('Removing the BatchNorm in the model')
    #
    # model_noBN = GNN_noBN(gnn_type='gcn', num_tasks=1, num_layer=5, emb_dim=100, drop_ratio=0.5, virtual_node=False).to(
    #     device)
    #
    # model_noBN.training = False
    # model_noBN.eval()
    # model.training = False
    # bn_eps = 0.00001
    #
    # for param_tensor in model_noBN.state_dict():
    #     # 打印 key value字典
    #     print(param_tensor, '\t', model_noBN.state_dict()[param_tensor].size())
    # print()
    for param_tensor in model.state_dict():
        # 打印 key value字典
        print(param_tensor, '\t', model.state_dict()[param_tensor].size())
    #
    # model_noBN.state_dict()['gnn_node_noBN.atom_encoder.atom_embedding_list.0.weight'].copy_(
    #     model.state_dict()['gnn_node.atom_encoder.atom_embedding_list.0.weight'])
    # model_noBN.state_dict()['gnn_node_noBN.atom_encoder.atom_embedding_list.1.weight'].copy_(
    #     model.state_dict()['gnn_node.atom_encoder.atom_embedding_list.1.weight'])
    # model_noBN.state_dict()['gnn_node_noBN.atom_encoder.atom_embedding_list.2.weight'].copy_(
    #     model.state_dict()['gnn_node.atom_encoder.atom_embedding_list.2.weight'])
    # model_noBN.state_dict()['gnn_node_noBN.atom_encoder.atom_embedding_list.3.weight'].copy_(
    #     model.state_dict()['gnn_node.atom_encoder.atom_embedding_list.3.weight'])
    # model_noBN.state_dict()['gnn_node_noBN.atom_encoder.atom_embedding_list.4.weight'].copy_(
    #     model.state_dict()['gnn_node.atom_encoder.atom_embedding_list.4.weight'])
    # model_noBN.state_dict()['gnn_node_noBN.atom_encoder.atom_embedding_list.5.weight'].copy_(
    #     model.state_dict()['gnn_node.atom_encoder.atom_embedding_list.5.weight'])
    # model_noBN.state_dict()['gnn_node_noBN.atom_encoder.atom_embedding_list.6.weight'].copy_(
    #     model.state_dict()['gnn_node.atom_encoder.atom_embedding_list.6.weight'])
    # model_noBN.state_dict()['gnn_node_noBN.atom_encoder.atom_embedding_list.7.weight'].copy_(
    #     model.state_dict()['gnn_node.atom_encoder.atom_embedding_list.7.weight'])
    # model_noBN.state_dict()['gnn_node_noBN.atom_encoder.atom_embedding_list.8.weight'].copy_(
    #     model.state_dict()['gnn_node.atom_encoder.atom_embedding_list.8.weight'])
    #
    # model_noBN.state_dict()['gnn_node_noBN.convs.0.root_emb.weight'].copy_(
    #     model.state_dict()['gnn_node.convs.0.root_emb.weight'])
    # model_noBN.state_dict()['gnn_node_noBN.convs.1.root_emb.weight'].copy_(
    #     model.state_dict()['gnn_node.convs.1.root_emb.weight'])
    # model_noBN.state_dict()['gnn_node_noBN.convs.2.root_emb.weight'].copy_(
    #     model.state_dict()['gnn_node.convs.2.root_emb.weight'])
    # model_noBN.state_dict()['gnn_node_noBN.convs.3.root_emb.weight'].copy_(
    #     model.state_dict()['gnn_node.convs.3.root_emb.weight'])
    # model_noBN.state_dict()['gnn_node_noBN.convs.4.root_emb.weight'].copy_(
    #     model.state_dict()['gnn_node.convs.4.root_emb.weight'])
    #
    # model_noBN.state_dict()['gnn_node_noBN.convs.0.bond_encoder.bond_embedding_list.0.weight'].copy_(
    #     model.state_dict()['gnn_node.convs.0.bond_encoder.bond_embedding_list.0.weight'])
    # model_noBN.state_dict()['gnn_node_noBN.convs.0.bond_encoder.bond_embedding_list.1.weight'].copy_(
    #     model.state_dict()['gnn_node.convs.0.bond_encoder.bond_embedding_list.1.weight'])
    # model_noBN.state_dict()['gnn_node_noBN.convs.0.bond_encoder.bond_embedding_list.2.weight'].copy_(
    #     model.state_dict()['gnn_node.convs.0.bond_encoder.bond_embedding_list.2.weight'])
    #
    # model_noBN.state_dict()['gnn_node_noBN.convs.1.bond_encoder.bond_embedding_list.0.weight'].copy_(
    #     model.state_dict()['gnn_node.convs.1.bond_encoder.bond_embedding_list.0.weight'])
    # model_noBN.state_dict()['gnn_node_noBN.convs.1.bond_encoder.bond_embedding_list.1.weight'].copy_(
    #     model.state_dict()['gnn_node.convs.1.bond_encoder.bond_embedding_list.1.weight'])
    # model_noBN.state_dict()['gnn_node_noBN.convs.1.bond_encoder.bond_embedding_list.2.weight'].copy_(
    #     model.state_dict()['gnn_node.convs.1.bond_encoder.bond_embedding_list.2.weight'])
    #
    # model_noBN.state_dict()['gnn_node_noBN.convs.2.bond_encoder.bond_embedding_list.0.weight'].copy_(
    #     model.state_dict()['gnn_node.convs.2.bond_encoder.bond_embedding_list.0.weight'])
    # model_noBN.state_dict()['gnn_node_noBN.convs.2.bond_encoder.bond_embedding_list.1.weight'].copy_(
    #     model.state_dict()['gnn_node.convs.2.bond_encoder.bond_embedding_list.1.weight'])
    # model_noBN.state_dict()['gnn_node_noBN.convs.2.bond_encoder.bond_embedding_list.2.weight'].copy_(
    #     model.state_dict()['gnn_node.convs.2.bond_encoder.bond_embedding_list.2.weight'])
    #
    # model_noBN.state_dict()['gnn_node_noBN.convs.3.bond_encoder.bond_embedding_list.0.weight'].copy_(
    #     model.state_dict()['gnn_node.convs.3.bond_encoder.bond_embedding_list.0.weight'])
    # model_noBN.state_dict()['gnn_node_noBN.convs.3.bond_encoder.bond_embedding_list.1.weight'].copy_(
    #     model.state_dict()['gnn_node.convs.3.bond_encoder.bond_embedding_list.1.weight'])
    # model_noBN.state_dict()['gnn_node_noBN.convs.3.bond_encoder.bond_embedding_list.2.weight'].copy_(
    #     model.state_dict()['gnn_node.convs.3.bond_encoder.bond_embedding_list.2.weight'])
    #
    # model_noBN.state_dict()['gnn_node_noBN.convs.4.bond_encoder.bond_embedding_list.0.weight'].copy_(
    #     model.state_dict()['gnn_node.convs.4.bond_encoder.bond_embedding_list.0.weight'])
    # model_noBN.state_dict()['gnn_node_noBN.convs.4.bond_encoder.bond_embedding_list.1.weight'].copy_(
    #     model.state_dict()['gnn_node.convs.4.bond_encoder.bond_embedding_list.1.weight'])
    # model_noBN.state_dict()['gnn_node_noBN.convs.4.bond_encoder.bond_embedding_list.2.weight'].copy_(
    #     model.state_dict()['gnn_node.convs.4.bond_encoder.bond_embedding_list.2.weight'])
    #
    # model_noBN.state_dict()['graph_pred_linear.weight'].copy_(model.state_dict()['graph_pred_linear.weight'])
    # model_noBN.state_dict()['graph_pred_linear.bias'].copy_(model.state_dict()['graph_pred_linear.bias'])
    #
    # for n in range(5):
    #     conv_weight = model.state_dict()['gnn_node.convs.{}.linear.weight'.format(n)]
    #     conv_bias = model.state_dict()['gnn_node.convs.{}.linear.bias'.format(n)]
    #     running_mean = model.state_dict()['gnn_node.batch_norms.{}.running_mean'.format(n)]
    #     running_var = model.state_dict()['gnn_node.batch_norms.{}.running_var'.format(n)]
    #     bn_weight = model.state_dict()['gnn_node.batch_norms.{}.weight'.format(n)]
    #     bn_bias = model.state_dict()['gnn_node.batch_norms.{}.bias'.format(n)]
    #
    #     conv_weight = conv_weight.t()
    #     conv_weight = (torch.div(conv_weight, torch.sqrt(running_var + bn_eps)) * bn_weight).t()
    #     conv_bias = torch.div((conv_bias - running_mean), torch.sqrt(running_var + bn_eps)) * bn_weight + bn_bias
    #
    #     model_noBN.state_dict()['gnn_node_noBN.convs.{}.linear.weight'.format(n)].copy_(conv_weight)
    #     model_noBN.state_dict()['gnn_node_noBN.convs.{}.linear.bias'.format(n)].copy_(conv_bias)
    #
    # print('Evaluating...')
    # auc, ytrue, ypred = eval(model_noBN, device, test_loader, evaluator)
    # print("AUC of the model with no BatchNorm:")
    # print(auc)
    #
    # torch.save(model_noBN, 'gcn_ep1_noBN_dim100.pt')
    ############# Collect all the weights without BatchNorm for golden C ##############

    print("collecting weights for the golden C")
    weights_dict = {}
    weights_data = []
    offset = 0
    for key in model.state_dict():
        weights_dict[key] = {}
        weights_dict[key]['shape'] = list(model.state_dict()[key].shape)
        weights_dict[key]['key'] = key
        weights_dict[key]['offset'] = offset
        data = list(model.state_dict()[key].view(-1).numpy())
        data_length = len(data)
        weights_dict[key]['length'] = data_length
        offset += data_length
        weights_data += data
    t = model.state_dict()['graph_pred_linear.bias']
    f = open('gcn_ep1_dim100.weights.dict.json', 'w')
    json.dump(weights_dict, f)
    f.close()

    f = open('gcn_ep1_dim100.weights.all.bin', 'wb')
    packed = struct.pack('f' * len(weights_data), *weights_data)
    f.write(packed)
    f.close()
