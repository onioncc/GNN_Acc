#!/usr/bin/env python3

import argparse
import csv
import json
import os
import traceback
from collections import namedtuple
from contextlib import nullcontext
from tqdm import tqdm

import numpy as np
import torch
import torch.utils.benchmark as benchmark
from ogb.graphproppred import PygGraphPropPredDataset
from dgn.data.HIV import HIVDataset as DGNHIVDataset
from dgn.data.PCBA import PCBADataset as DGNPCBADataset
from torch_geometric.loader import DataLoader as PyGDataLoader
from torch.utils.data import DataLoader as TorchDataLoader

from gcn_gin.gnn import GNN as GCN, GNN as GIN
from gat.gnn import GAT
from pna.net import Net as PNA
from dgn.nets.HIV_graph_classification.dgn_net import DGNNet as DGNHIVNet
from dgn.nets.PCBA_graph_classification.dgn_net import DGNNet as DGNPCBANet

Dataset = namedtuple('Dataset', ('dataset', 'loader', 'batch_size', 'count',
                                 'prepare_args'))
TestCase = namedtuple('TestCase', ('model', 'dataset'))

def make_ogb_graphproppred_dataset(dataset_name, batch_size=1):
    dataset = PygGraphPropPredDataset(dataset_name)
    split_idx = dataset.get_idx_split()
    test_idx = split_idx['test']
    test_loader = PyGDataLoader(dataset[test_idx], batch_size=batch_size,
                                shuffle=False)
    def prepare_args(batch, device):
        return (batch.to(device),)
    return Dataset(dataset=dataset, loader=test_loader, batch_size=batch_size,
                   count=len(test_idx), prepare_args=prepare_args)

def make_dgn_dataset(dataset_type, dataset_name, batch_size=1, pos_enc_dim=0,
                     norm='none'):
    dataset = dataset_type(dataset_name, pos_enc_dim=pos_enc_dim, norm=norm)
    test_loader = TorchDataLoader(
        dataset.test,
        batch_size=batch_size,
        shuffle=False,
        collate_fn=dataset.collate,
        pin_memory=True,
    )
    def prepare_args(batch, device):
        batch_graphs, batch_labels, batch_snorm_n, batch_snorm_e = batch
        batch_graphs = batch_graphs.to(device)
        batch_x = batch_graphs.ndata['feat'].to(device)
        batch_e = batch_graphs.edata['feat'].to(device)
        batch_snorm_e = batch_snorm_e.to(device)
        batch_snorm_n = batch_snorm_n.to(device)
        batch_labels = batch_labels.to(device)
        return (batch_graphs, batch_x, batch_e, batch_snorm_n, batch_snorm_e)
    return Dataset(dataset=dataset, loader=test_loader, batch_size=batch_size,
                   count=len(dataset.test), prepare_args=prepare_args)

def make_dgn_model(net_type, config_file, towers=5, pos_enc_dim=0):
    config_file = os.path.join(os.path.dirname(__file__), 'dgn', 'configs',
                               config_file)
    with open(config_file) as f:
        config = json.load(f)
    
    def model_fn(dataset, device):
        net_params = dict(config['net_params'])
        net_params['device'] = device
        if device.type == 'cuda':
            net_params['gpu_id'] = device.index
        else:
            net_params.pop('gpu_id', None)
        net_params['batch_size'] = dataset.batch_size
        net_params['towers'] = towers
        net_params['pos_enc_dim'] = pos_enc_dim

        D = torch.cat([
            torch.sparse.sum(
                g.adjacency_matrix(transpose=True),
                dim=-1,
            ).to_dense()
            for g in dataset.dataset.train.graph_lists
        ])
        net_params['avg_d'] = {
            'lin': torch.mean(D),
            'exp': torch.mean(torch.exp(torch.div(1, D)) - 1),
            'log': torch.mean(torch.log(D + 1)),
        }

        model = net_type(net_params)
        total_param = 0
        for param in model.parameters():
            total_param += np.prod(list(param.data.size()))
        net_params['total_param'] = total_param

        return net_type(net_params).to(device)
    return model_fn

DATASETS = {
    # 'ogbg-molhiv': make_ogb_graphproppred_dataset('ogbg-molhiv'),
    # 'ogbg-molpcba': make_ogb_graphproppred_dataset('ogbg-molpcba'),
    # 'ogbg-ppa': make_ogb_graphproppred_dataset('ogbg-ppa'),
    # 'ogbg-code2': make_ogb_graphproppred_dataset('ogbg-code2'),
    # 'ogbg-molhiv-batch16': make_ogb_graphproppred_dataset('ogbg-molhiv', batch_size=16),
    # 'ogbg-molpcba-batch16': make_ogb_graphproppred_dataset('ogbg-molpcba', batch_size=16),
    # 'ogbg-ppa-batch16': make_ogb_graphproppred_dataset('ogbg-ppa', batch_size=16),
    # 'ogbg-code2-batch16': make_ogb_graphproppred_dataset('ogbg-code2', batch_size=16),
    # 'ogbg-molhiv-batch256': make_ogb_graphproppred_dataset('ogbg-molhiv', batch_size=256),
    # 'ogbg-molpcba-batch256': make_ogb_graphproppred_dataset('ogbg-molpcba', batch_size=256),
    # 'ogbg-ppa-batch256': make_ogb_graphproppred_dataset('ogbg-ppa', batch_size=256),
    # 'ogbg-code2-batch256': make_ogb_graphproppred_dataset('ogbg-code2', batch_size=256),
    'dgn-hiv': make_dgn_dataset(DGNHIVDataset, 'HIV'),
    # 'dgn-pcba': make_dgn_dataset(DGNPCBADataset, 'PCBA'),
    'dgn-hiv-batch16': make_dgn_dataset(DGNHIVDataset, 'HIV', batch_size=16),
    # 'dgn-pcba-batch16': make_dgn_dataset(DGNPCBADataset, 'PCBA', batch_size=16),
    'dgn-hiv-batch256': make_dgn_dataset(DGNHIVDataset, 'HIV', batch_size=256),
    # 'dgn-pcba-batch256': make_dgn_dataset(DGNPCBADataset, 'PCBA', batch_size=256),
}

MODELS = {
    'gin': lambda dataset, device: GIN(
        gnn_type='gin',
        num_tasks=dataset.dataset.num_tasks,
        num_layer=5,
        emb_dim=100,
        drop_ratio=0.5,
        virtual_node=False,
    ).to(device),
    'gin-virtual-node': lambda dataset, device: GIN(
        gnn_type='gin',
        num_tasks=dataset.dataset.num_tasks,
        num_layer=5,
        emb_dim=100,
        drop_ratio=0.5,
        virtual_node=True,
    ).to(device),
    'gcn': lambda dataset, device: GCN(
        gnn_type='gcn',
        num_tasks=dataset.dataset.num_tasks,
        num_layer=5,
        emb_dim=100,
        drop_ratio=0.5,
        virtual_node=False,
    ).to(device),
    'gcn-virtual-node': lambda dataset, device: GCN(
        gnn_type='gcn',
        num_tasks=dataset.dataset.num_tasks,
        num_layer=5,
        emb_dim=100,
        drop_ratio=0.5,
        virtual_node=True,
    ).to(device),
    'gat': lambda dataset, device: GAT(
        num_tasks=dataset.dataset.num_tasks,
        num_layers=5,
        num_heads_per_layer = [4, 4, 4, 4, 4],
        num_features_per_layer = [9, 16, 16, 16, 16, 16],
        drop_ratio=0.5,
    ).to(device),
    'pna': lambda dataset, device: PNA(dataset).to(device),
    'dgn-hiv': make_dgn_model(
        DGNHIVNet, 'molecules_graph_classification_DGN_HIV.json'),
    'dgn-pcba': make_dgn_model(
        DGNPCBANet, 'molecules_graph_classification_DGN_PCBA.json'),
}

TEST_CASES = [
    # batch size 1
    # TestCase(model='gin', dataset='ogbg-molhiv'),
    # TestCase(model='gin-virtual-node', dataset='ogbg-molhiv'),
    # TestCase(model='gcn', dataset='ogbg-molhiv'),
    # TestCase(model='gcn-virtual-node', dataset='ogbg-molhiv'),
    # TestCase(model='gat', dataset='ogbg-molhiv'),
    # TestCase(model='pna', dataset='ogbg-molhiv'),
    # TestCase(model='gin', dataset='ogbg-molpcba'),
    # TestCase(model='gin-virtual-node', dataset='ogbg-molpcba'),
    # TestCase(model='gcn', dataset='ogbg-molpcba'),
    # TestCase(model='gcn-virtual-node', dataset='ogbg-molpcba'),
    # TestCase(model='gat', dataset='ogbg-molpcba'),
    # TestCase(model='pna', dataset='ogbg-molpcba'),
    # TestCase(model='gin', dataset='ogbg-ppa'),
    # TestCase(model='gin-virtual-node', dataset='ogbg-ppa'),
    # TestCase(model='gcn', dataset='ogbg-ppa'),
    # TestCase(model='gcn-virtual-node', dataset='ogbg-ppa'),
    # TestCase(model='gat', dataset='ogbg-ppa'),
    # TestCase(model='pna', dataset='ogbg-ppa'),
    # TestCase(model='gin', dataset='ogbg-code2'),
    # TestCase(model='gin-virtual-node', dataset='ogbg-code2'),
    # TestCase(model='gcn', dataset='ogbg-code2'),
    # TestCase(model='gcn-virtual-node', dataset='ogbg-code2'),
    # TestCase(model='gat', dataset='ogbg-code2'),
    # TestCase(model='pna', dataset='ogbg-code2'),
    TestCase(model='dgn-hiv', dataset='dgn-hiv'),
    # TestCase(model='dgn-pcba', dataset='dgn-pcba'),
    # batch size 16
    # TestCase(model='gin', dataset='ogbg-molhiv-batch16'),
    # TestCase(model='gin-virtual-node', dataset='ogbg-molhiv-batch16'),
    # TestCase(model='gcn', dataset='ogbg-molhiv-batch16'),
    # TestCase(model='gcn-virtual-node', dataset='ogbg-molhiv-batch16'),
    # TestCase(model='gat', dataset='ogbg-molhiv-batch16'),
    # TestCase(model='pna', dataset='ogbg-molhiv-batch16'),
    # TestCase(model='gin', dataset='ogbg-molpcba-batch16'),
    # TestCase(model='gin-virtual-node', dataset='ogbg-molpcba-batch16'),
    # TestCase(model='gcn', dataset='ogbg-molpcba-batch16'),
    # TestCase(model='gcn-virtual-node', dataset='ogbg-molpcba-batch16'),
    # TestCase(model='gat', dataset='ogbg-molpcba-batch16'),
    # TestCase(model='pna', dataset='ogbg-molpcba-batch16'),
    # TestCase(model='gin', dataset='ogbg-ppa-batch16'),
    # TestCase(model='gin-virtual-node', dataset='ogbg-ppa-batch16'),
    # TestCase(model='gcn', dataset='ogbg-ppa-batch16'),
    # TestCase(model='gcn-virtual-node', dataset='ogbg-ppa-batch16'),
    # TestCase(model='gat', dataset='ogbg-ppa-batch16'),
    # TestCase(model='pna', dataset='ogbg-ppa-batch16'),
    # TestCase(model='gin', dataset='ogbg-code2-batch16'),
    # TestCase(model='gin-virtual-node', dataset='ogbg-code2-batch16'),
    # TestCase(model='gcn', dataset='ogbg-code2-batch16'),
    # TestCase(model='gcn-virtual-node', dataset='ogbg-code2-batch16'),
    # TestCase(model='gat', dataset='ogbg-code2-batch16'),
    # TestCase(model='pna', dataset='ogbg-code2-batch16'),
    TestCase(model='dgn-hiv', dataset='dgn-hiv-batch16'),
    # TestCase(model='dgn-pcba', dataset='dgn-pcba-batch16'),
    # batch size 256
    # TestCase(model='gin', dataset='ogbg-molhiv-batch256'),
    # TestCase(model='gin-virtual-node', dataset='ogbg-molhiv-batch256'),
    # TestCase(model='gcn', dataset='ogbg-molhiv-batch256'),
    # TestCase(model='gcn-virtual-node', dataset='ogbg-molhiv-batch256'),
    # TestCase(model='gat', dataset='ogbg-molhiv-batch256'),
    # TestCase(model='pna', dataset='ogbg-molhiv-batch256'),
    # TestCase(model='gin', dataset='ogbg-molpcba-batch256'),
    # TestCase(model='gin-virtual-node', dataset='ogbg-molpcba-batch256'),
    # TestCase(model='gcn', dataset='ogbg-molpcba-batch256'),
    # TestCase(model='gcn-virtual-node', dataset='ogbg-molpcba-batch256'),
    # TestCase(model='gat', dataset='ogbg-molpcba-batch256'),
    # TestCase(model='pna', dataset='ogbg-molpcba-batch256'),
    # TestCase(model='gin', dataset='ogbg-ppa-batch256'),
    # TestCase(model='gin-virtual-node', dataset='ogbg-ppa-batch256'),
    # TestCase(model='gcn', dataset='ogbg-ppa-batch256'),
    # TestCase(model='gcn-virtual-node', dataset='ogbg-ppa-batch256'),
    # TestCase(model='gat', dataset='ogbg-ppa-batch256'),
    # TestCase(model='pna', dataset='ogbg-ppa-batch256'),
    # TestCase(model='gin', dataset='ogbg-code2-batch256'),
    # TestCase(model='gin-virtual-node', dataset='ogbg-code2-batch256'),
    # TestCase(model='gcn', dataset='ogbg-code2-batch256'),
    # TestCase(model='gcn-virtual-node', dataset='ogbg-code2-batch256'),
    # TestCase(model='gat', dataset='ogbg-code2-batch256'),
    # TestCase(model='pna', dataset='ogbg-code2-batch256'),
    TestCase(model='dgn-hiv', dataset='dgn-hiv-batch256'),
    # TestCase(model='dgn-pcba', dataset='dgn-pcba-batch256'),
]

@torch.inference_mode()
def measure(model, dataset, device, trials, desc=None):
    model.eval()
    total_time = 0.0

    for batch in tqdm(dataset.loader, desc=desc):
        args = dataset.prepare_args(batch, device)
        timer = benchmark.Timer(stmt='model(*args)',
                                globals={'model': model, 'args': args})
        total_time += timer.timeit(trials).mean

    return total_time

def main():
    parser = argparse.ArgumentParser(description='Run inference benchmarks')
    parser.add_argument('-d', '--device',
                        default='cuda' if torch.cuda.is_available() else 'cpu',
                        help='torch device to use (usually "cuda" or "cpu")')
    parser.add_argument('-o', '--output', help='output csv file to write')
    parser.add_argument('-n', '--trials', default=5,
                        help='number of trials per benchmark')
    args = parser.parse_args()

    device = torch.device(args.device)
    print('Using device:', device)
    print()

    csvfile = nullcontext()
    if args.output is not None:
        csvfile = open(args.output, 'w', newline='')

    with csvfile as csvfile:
        csv_writer = None
        if csvfile is not None:
            csv_writer = csv.writer(csvfile)

        if csv_writer is not None:
            csv_writer.writerow([
                'Dataset name',
                'Graph count',
                'Batch size',
                'Batch count',
                'Model name',
                f'Run time (average of {args.trials} trials)',
                'Average run time per batch',
                'Average run time per graph',
            ])

        for model_name, dataset_name in TEST_CASES:
            dataset = DATASETS[dataset_name]
            model = MODELS[model_name](dataset, device)

            try:
                run_time = measure(model, dataset, device, args.trials,
                                desc=f'{model_name} on {dataset_name}')
                if csv_writer is not None:
                    csv_writer.writerow([
                        dataset_name,
                        dataset.count,
                        dataset.batch_size,
                        len(dataset.loader),
                        model_name,
                        run_time,
                        run_time / len(dataset.loader),
                        run_time / dataset.count,
                    ])

                print(f'{model_name} on {dataset_name}: {run_time:.4f}s '
                    f'({run_time / dataset.count}s per graph)')
                print()
            except Exception:
                print(f'{model_name} on {dataset_name}: failed')
                traceback.print_exc()
                print()

if __name__ == '__main__':
    main()
