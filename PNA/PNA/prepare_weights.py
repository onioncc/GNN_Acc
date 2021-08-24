import torch
from ogb.graphproppred.mol_encoder import AtomEncoder
from torch_geometric.data import DataLoader
import torch.optim as optim
import torch.nn.functional as F
from torch.nn import ModuleList
from torch.nn import Sequential, ReLU, Linear
from torch_geometric.utils import degree


from ogb.graphproppred import PygGraphPropPredDataset, Evaluator

#from example import Net

import numpy as np
import json
import struct

from torch_geometric.nn import global_mean_pool, BatchNorm

from pna import PNAConvSimple


class Net(torch.nn.Module):
    def __init__(self):
        super(Net, self).__init__()

        self.node_emb = AtomEncoder(emb_dim=80)


        aggregators = ['mean', 'min', 'max', 'std']
        scalers = ['identity', 'amplification', 'attenuation']

        self.convs = ModuleList()
        self.batch_norms = ModuleList()
        for _ in range(4):
            conv = PNAConvSimple(in_channels=80, out_channels=80, aggregators=aggregators,
                                 scalers=scalers, deg=deg, post_layers=1)
            self.convs.append(conv)
            self.batch_norms.append(BatchNorm(80))
        self.mlp = Sequential(Linear(80, 40), ReLU(), Linear(40, 20), ReLU(), Linear(20, 1))

    def forward(self, x, edge_index, edge_attr, batch):
        x = self.node_emb(x)
        ###print(self.state_dict())

        for conv, batch_norm in zip(self.convs, self.batch_norms):
            k = batch_norm(conv(x, edge_index, edge_attr))
            h = F.relu(k)
            x = h + x  # residual#
            x = F.dropout(x, 0.3, training=self.training)

        x = global_mean_pool(x, batch)
        return self.mlp(x)



class Net_noBN(torch.nn.Module):
    def __init__(self):
        super(Net_noBN, self).__init__()

        self.node_emb = AtomEncoder(emb_dim=80)

        aggregators = ['mean', 'min', 'max', 'std']
        scalers = ['identity', 'amplification', 'attenuation']

        self.convs = ModuleList()
        for _ in range(4):
            conv = PNAConvSimple(in_channels=80, out_channels=80, aggregators=aggregators,
                                 scalers=scalers, deg=deg, post_layers=1)
            self.convs.append(conv)
        self.mlp = Sequential(Linear(80, 40), ReLU(), Linear(40, 20), ReLU(), Linear(20, 1))

    def forward(self, x, edge_index, edge_attr, batch):
        x = self.node_emb(x)
        ###it's ok above
        ###print(self.state_dict())


        for conv in self.convs:
            k = conv(x, edge_index, edge_attr)
            h = F.relu(k)
            x = h + x  # residual#
            x = F.dropout(x, 0.3, training=self.training)

        x = global_mean_pool(x, batch)
        return self.mlp(x)

def eval(model, device, loader, evaluator):
    model.eval()
    y_true = []
    y_pred = []
    for step, data in enumerate(loader):
        data = data.to(device)
        # print(batch)
        with torch.no_grad():
            pred = model(data.x, data.edge_index, None, data.batch)
        y_true.append(data.y.view(pred.shape).detach().cpu())
        y_pred.append(pred.detach().cpu())

    y_true = torch.cat(y_true, dim=0).numpy()
    y_pred = torch.cat(y_pred, dim=0).numpy()

    input_dict = {"y_true": y_true, "y_pred": y_pred}
    return evaluator.eval(input_dict), y_true, y_pred

if __name__ == '__main__':
    ############ Device and test_loader #############
    device = torch.device("cpu")
    dataset = PygGraphPropPredDataset(name = 'ogbg-molhiv')
    split_idx = dataset.get_idx_split()
    evaluator = Evaluator('ogbg-molhiv')
    test_loader = DataLoader(dataset[split_idx["test"]], batch_size=1, shuffle=False, num_workers = 1)

    deg = torch.zeros(10, dtype=torch.long)
    for data in dataset[split_idx['train']]:
        d = degree(data.edge_index[1], num_nodes=data.num_nodes, dtype=torch.long)
        deg += torch.bincount(d, minlength=deg.numel())

    #
    # ########### Load the pre-trained GIN model ###########
    print('Load the pretrained GNN model')
    model = torch.load('pna_ep1_dim80.pt')
    print('Evaluating...')
    auc, ytrue, ypred = eval(model, device, test_loader, evaluator)
    print('AUC of the original model:')
    print(auc)


     ########### Collect all the golden outputs from Pytorch ###########
    graph_id = 1
    all_result = {}
    f_txt = open('Pytorch_output_dim80.txt', 'w+')
    for yt, yp in zip(ytrue, ypred):
        #print(yt[0], yp[0])
        key = 'g' + str(graph_id)
        all_result[key] = {}
        all_result[key]['true'] = float(yt[0])
        all_result[key]['predict'] = float(yp[0])
        graph_id += 1
        f_txt.write(key + ': ' + str(yp[0]) + '\n')
    f_txt.close()



    ############ This part removes the BatchNorm inside MLP ###############

    print('Removing the BatchNorm in the model')

    print('Model.state_dict:')
    #for param_tensor in model.state_dict():
    #打印 key value字典
    #    print(param_tensor,'\t',model.state_dict()[param_tensor].size())
    model_noBN = Net_noBN().to(device)

    #for param_tensor in model_noBN.state_dict():
    #打印 key value字典
    #print(param_tensor,'\t',model_noBN.state_dict()[param_tensor].size())
    model_noBN.training=False
    model_noBN.eval()
    model.training = False
    bn_eps = 0.00001

    model_noBN.state_dict()['node_emb.atom_embedding_list.0.weight'].copy_(model.state_dict()['node_emb.atom_embedding_list.0.weight'])
    model_noBN.state_dict()['node_emb.atom_embedding_list.1.weight'].copy_(model.state_dict()['node_emb.atom_embedding_list.1.weight'])
    model_noBN.state_dict()['node_emb.atom_embedding_list.2.weight'].copy_(model.state_dict()['node_emb.atom_embedding_list.2.weight'])
    model_noBN.state_dict()['node_emb.atom_embedding_list.3.weight'].copy_(model.state_dict()['node_emb.atom_embedding_list.3.weight'])
    model_noBN.state_dict()['node_emb.atom_embedding_list.4.weight'].copy_(model.state_dict()['node_emb.atom_embedding_list.4.weight'])
    model_noBN.state_dict()['node_emb.atom_embedding_list.5.weight'].copy_(model.state_dict()['node_emb.atom_embedding_list.5.weight'])
    model_noBN.state_dict()['node_emb.atom_embedding_list.6.weight'].copy_(model.state_dict()['node_emb.atom_embedding_list.6.weight'])
    model_noBN.state_dict()['node_emb.atom_embedding_list.7.weight'].copy_(model.state_dict()['node_emb.atom_embedding_list.7.weight'])
    model_noBN.state_dict()['node_emb.atom_embedding_list.8.weight'].copy_(model.state_dict()['node_emb.atom_embedding_list.8.weight'])
    print(model_noBN.state_dict()['node_emb.atom_embedding_list.0.weight'])


    conv_weight = model.state_dict()['convs.0.post_nn.0.weight']
    conv_bias = model.state_dict()['convs.0.post_nn.0.bias']
    running_mean = model.state_dict()['batch_norms.0.module.running_mean']
    running_var = model.state_dict()['batch_norms.0.module.running_var']
    bn_weight = model.state_dict()['batch_norms.0.module.weight']
    bn_bias = model.state_dict()['batch_norms.0.module.bias']

    conv_weight = conv_weight.t()
    conv_weight = (torch.div(conv_weight, torch.sqrt(running_var + bn_eps)) * bn_weight).t()
    conv_bias = torch.div((conv_bias - running_mean), torch.sqrt(running_var + bn_eps)) * bn_weight + bn_bias

    model_noBN.state_dict()['convs.0.post_nn.0.weight'].copy_(conv_weight)
    model_noBN.state_dict()['convs.0.post_nn.0.bias'].copy_(conv_bias)

    conv_weight = model.state_dict()['convs.1.post_nn.0.weight']
    conv_bias = model.state_dict()['convs.1.post_nn.0.bias']
    running_mean = model.state_dict()['batch_norms.1.module.running_mean']
    running_var = model.state_dict()['batch_norms.1.module.running_var']
    bn_weight = model.state_dict()['batch_norms.1.module.weight']
    bn_bias = model.state_dict()['batch_norms.1.module.bias']

    conv_weight = conv_weight.t()
    conv_weight = (torch.div(conv_weight, torch.sqrt(running_var + bn_eps)) * bn_weight).t()
    conv_bias = torch.div((conv_bias - running_mean), torch.sqrt(running_var + bn_eps)) * bn_weight + bn_bias

    model_noBN.state_dict()['convs.1.post_nn.0.weight'].copy_(conv_weight)
    model_noBN.state_dict()['convs.1.post_nn.0.bias'].copy_(conv_bias)
    
    

    conv_weight = model.state_dict()['convs.2.post_nn.0.weight']
    conv_bias = model.state_dict()['convs.2.post_nn.0.bias']
    running_mean = model.state_dict()['batch_norms.2.module.running_mean']
    running_var = model.state_dict()['batch_norms.2.module.running_var']
    bn_weight = model.state_dict()['batch_norms.2.module.weight']
    bn_bias = model.state_dict()['batch_norms.2.module.bias']

    conv_weight = conv_weight.t()
    conv_weight = (torch.div(conv_weight, torch.sqrt(running_var + bn_eps)) * bn_weight).t()
    conv_bias = torch.div((conv_bias - running_mean), torch.sqrt(running_var + bn_eps)) * bn_weight + bn_bias

    model_noBN.state_dict()['convs.2.post_nn.0.weight'].copy_(conv_weight)
    model_noBN.state_dict()['convs.2.post_nn.0.bias'].copy_(conv_bias)

    conv_weight = model.state_dict()['convs.3.post_nn.0.weight']
    conv_bias = model.state_dict()['convs.3.post_nn.0.bias']
    running_mean = model.state_dict()['batch_norms.3.module.running_mean']
    running_var = model.state_dict()['batch_norms.3.module.running_var']
    bn_weight = model.state_dict()['batch_norms.3.module.weight']
    bn_bias = model.state_dict()['batch_norms.3.module.bias']

    conv_weight = conv_weight.t()
    conv_weight = (torch.div(conv_weight, torch.sqrt(running_var + bn_eps)) * bn_weight).t()
    conv_bias = torch.div((conv_bias - running_mean), torch.sqrt(running_var + bn_eps)) * bn_weight + bn_bias

    model_noBN.state_dict()['convs.3.post_nn.0.weight'].copy_(conv_weight)
    model_noBN.state_dict()['convs.3.post_nn.0.bias'].copy_(conv_bias)
    
    
    model_noBN.state_dict()['mlp.0.weight'].copy_(model.state_dict()['mlp.0.weight'])
    model_noBN.state_dict()['mlp.2.weight'].copy_(model.state_dict()['mlp.2.weight'])
    model_noBN.state_dict()['mlp.4.weight'].copy_(model.state_dict()['mlp.4.weight'])


    model_noBN.state_dict()['mlp.0.bias'].copy_(model.state_dict()['mlp.0.bias'])
    model_noBN.state_dict()['mlp.2.bias'].copy_(model.state_dict()['mlp.2.bias'])
    model_noBN.state_dict()['mlp.4.bias'].copy_(model.state_dict()['mlp.4.bias'])


    print('Evaluating...')
    auc, ytrue, ypred = eval(model_noBN, device, test_loader, evaluator)
    print("AUC of the model with no BatchNorm:")
    print(auc)

    torch.save(model_noBN, 'pna_ep1_noBN_dim80.pt')




    ############# Collect all the weights without BatchNorm for golden C ##############

    print("collecting weights for the golden C")

    weights_dict = {}
    weights_data = []
    offset = 0
    for key in model_noBN.state_dict():
        #print(key)
        #print(model_noBN.state_dict()[key].shape)
        #print(model_noBN.state_dict()[key].view(-1).numpy().shape)

        weights_dict[key] = {}
        weights_dict[key]['shape'] = list(model_noBN.state_dict()[key].shape)
        weights_dict[key]['key'] = key
        weights_dict[key]['offset'] = offset
        data = list(model_noBN.state_dict()[key].view(-1).numpy())
        data_length = len(data)
        print(data)
        weights_dict[key]['length'] = data_length
        offset += data_length
        weights_data += data

    f = open('pna_ep1_noBN_dim80.weights.dict.json', 'w')
    json.dump(weights_dict, f)
    f.close()

    f = open('pna_ep1_noBN_dim80.weights.all.bin', 'wb')
    packed = struct.pack('f'*len(weights_data), *weights_data)
    f.write(packed)
    f.close()

    ########### collecting weights for the accelerator #######################

    ### merge all the embedding tables into one
    ### Ahhh this is cumbersome
    nd_emb_0 = model.state_dict()['node_emb.atom_embedding_list.0.weight']
    nd_emb_1 = model.state_dict()['node_emb.atom_embedding_list.1.weight']
    nd_emb_2 = model.state_dict()['node_emb.atom_embedding_list.2.weight']
    nd_emb_3 = model.state_dict()['node_emb.atom_embedding_list.3.weight']
    nd_emb_4 = model.state_dict()['node_emb.atom_embedding_list.4.weight']
    nd_emb_5 = model.state_dict()['node_emb.atom_embedding_list.5.weight']
    nd_emb_6 = model.state_dict()['node_emb.atom_embedding_list.6.weight']
    nd_emb_7 = model.state_dict()['node_emb.atom_embedding_list.7.weight']
    nd_emb_8 = model.state_dict()['node_emb.atom_embedding_list.8.weight']

    #print(nd_emb_0.shape)
    #print(nd_emb_1.shape)
    #print(nd_emb_2.shape)
    #print(nd_emb_3.shape)
    #print(nd_emb_4.shape)
    #print(nd_emb_5.shape)
    #print(nd_emb_6.shape)
    #print(nd_emb_7.shape)
    #print(nd_emb_8.shape)

    nd_all = torch.cat((nd_emb_0, nd_emb_1, nd_emb_2, nd_emb_3, nd_emb_4, nd_emb_5, nd_emb_6, nd_emb_7, nd_emb_8), dim=0)
    #print(nd_all.shape)


    data = list(nd_all.view(-1).numpy())
    f = open('pna_ep1_nd_embed_dim80.bin', 'wb')
    packed = struct.pack('f'*len(data), *data)
    f.write(packed)
    f.close()

    conv_0_weight = model.state_dict()['convs.0.post_nn.0.weight'].numpy()
    conv_1_weight = model.state_dict()['convs.1.post_nn.0.weight'].numpy()
    conv_2_weight = model.state_dict()['convs.2.post_nn.0.weight'].numpy()
    conv_3_weight = model.state_dict()['convs.3.post_nn.0.weight'].numpy()
    conv_weight_all = torch.tensor([conv_0_weight,conv_1_weight,conv_2_weight,conv_3_weight])
    data = list(conv_weight_all.view(-1).numpy())
    f = open('pna_conv_weights_dim80.bin', 'wb')
    packed = struct.pack('f'*len(data), *data)
    f.write(packed)
    f.close()

    

    conv_0_bias = model.state_dict()['convs.0.post_nn.0.bias'].numpy()
    conv_1_bias = model.state_dict()['convs.1.post_nn.0.bias'].numpy()
    conv_2_bias = model.state_dict()['convs.2.post_nn.0.bias'].numpy()
    conv_3_bias = model.state_dict()['convs.3.post_nn.0.bias'].numpy()
    conv_bias_all = torch.tensor([conv_0_bias,conv_1_bias,conv_2_bias,conv_3_bias])
    data = list(conv_bias_all.view(-1).numpy())
    f = open('pna_conv_bias_dim80.bin', 'wb')
    packed = struct.pack('f'*len(data), *data)
    f.write(packed)
    f.close()


    mlp_0_weight = model.state_dict()['mlp.0.weight'].numpy()
    mlp_2_weight = model.state_dict()['mlp.2.weight'].numpy()
    mlp_4_weight = model.state_dict()['mlp.4.weight'].numpy()


    mlp_0_bias = model.state_dict()['mlp.0.bias'].numpy()
    mlp_2_bias = model.state_dict()['mlp.2.bias'].numpy()
    mlp_4_bias = model.state_dict()['mlp.4.bias'].numpy()

    # mlp.0.bias 	 torch.Size([40])
    # mlp.2.weight 	 torch.Size([20, 40])
    # mlp.2.bias 	 torch.Size([20])
    # mlp.4.weight 	 torch.Size([1, 20])
    # mlp.4.bias 	 torch.Size([1])

    #mlp_all = torch.tensor([mlp_0_weight,mlp_2_weight,mlp_4_weight,mlp_0_bias,mlp_2_bias,mlp_4_bias])
    #data = list(mlp_all.view(-1).numpy())
    #f = open('pna_mlp_dim80.bin', 'wb')
    #packed = struct.pack('f'*len(data), *data)
    #f.write(packed)
    #f.close()

