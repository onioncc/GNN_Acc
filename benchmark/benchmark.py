#!/usr/bin/env python3

import argparse
import csv
from collections import namedtuple
from contextlib import nullcontext
from tqdm import tqdm

import torch
import torch.utils.benchmark as benchmark
from ogb.graphproppred import PygGraphPropPredDataset
from dgn.data.HIV import HIVDataset
from torch_geometric.loader import DataLoader

from gcn_gin.gnn import GNN as GCN, GNN as GIN
from gat.gnn import GAT
from pna.net import Net as PNA

Dataset = namedtuple('Dataset', ('dataset', 'loader'))
TestCase = namedtuple('TestCase', ('model', 'dataset'))

def make_ogb_graphproppred_dataset(dataset_name, batch_size=1):
    dataset = PygGraphPropPredDataset(dataset_name)
    split_idx = dataset.get_idx_split()
    test_idx = split_idx['test']
    test_loader = DataLoader(dataset[test_idx], batch_size=batch_size,
                             shuffle=False)
    return Dataset(dataset=dataset, loader=test_loader)

def make_dgn_hiv_dataset(dataset_name, batch_size=1, pos_enc_dim=0,
                         norm='none'):
    dataset = HIVDataset(dataset_name, pos_enc_dim=pos_enc_dim, norm=norm)
    test_loader = DataLoader(
        dataset.test,
        batch_size=batch_size,
        shuffle=False,
        collate_fn=dataset.collate,
        pin_memory=True,
    )
    return Dataset(dataset=dataset, loader=test_loader)

DATASETS = {
    'ogbg-molhiv': make_ogb_graphproppred_dataset('ogbg-molhiv'),
    'ogbg-molpcba': make_ogb_graphproppred_dataset('ogbg-molpcba'),
    'ogbg-ppa': make_ogb_graphproppred_dataset('ogbg-ppa'),
    'ogbg-code2': make_ogb_graphproppred_dataset('ogbg-code2'),
    'ogbg-molhiv-batch16': make_ogb_graphproppred_dataset('ogbg-molhiv', batch_size=16),
    'ogbg-molpcba-batch16': make_ogb_graphproppred_dataset('ogbg-molpcba', batch_size=16),
    'ogbg-ppa-batch16': make_ogb_graphproppred_dataset('ogbg-ppa', batch_size=16),
    'ogbg-code2-batch16': make_ogb_graphproppred_dataset('ogbg-code2', batch_size=16),
    'ogbg-molhiv-batch256': make_ogb_graphproppred_dataset('ogbg-molhiv', batch_size=256),
    'ogbg-molpcba-batch256': make_ogb_graphproppred_dataset('ogbg-molpcba', batch_size=256),
    'ogbg-ppa-batch256': make_ogb_graphproppred_dataset('ogbg-ppa', batch_size=256),
    'ogbg-code2-batch256': make_ogb_graphproppred_dataset('ogbg-code2', batch_size=256),
    # 'DGN_HIV': make_dgn_hiv_dataset('HIV'),
}

MODELS = {
    'gin': lambda dataset, device: GIN(
        gnn_type='gin',
        num_tasks=dataset.num_tasks,
        num_layer=5,
        emb_dim=100,
        drop_ratio=0.5,
        virtual_node=False,
    ).to(device),
    'gin-virtual-node': lambda dataset, device: GIN(
        gnn_type='gin',
        num_tasks=dataset.num_tasks,
        num_layer=5,
        emb_dim=100,
        drop_ratio=0.5,
        virtual_node=True,
    ).to(device),
    'gcn': lambda dataset, device: GCN(
        gnn_type='gcn',
        num_tasks=dataset.num_tasks,
        num_layer=5,
        emb_dim=100,
        drop_ratio=0.5,
        virtual_node=False,
    ).to(device),
    'gcn-virtual-node': lambda dataset, device: GCN(
        gnn_type='gcn',
        num_tasks=dataset.num_tasks,
        num_layer=5,
        emb_dim=100,
        drop_ratio=0.5,
        virtual_node=True,
    ).to(device),
    'gat': lambda dataset, device: GAT(
        num_tasks=dataset.num_tasks,
        num_layers=5,
        num_heads_per_layer = [4, 4, 4, 4, 4],
        num_features_per_layer = [9, 16, 16, 16, 16, 16],
        drop_ratio=0.5,
    ).to(device),
    'pna': lambda dataset, device: PNA(dataset).to(device),
    # 'dgn': lambda dataset, device: 
}

TEST_CASES = [
    # batch size 1
    TestCase(model='gin', dataset='ogbg-molhiv'),
    TestCase(model='gin-virtual-node', dataset='ogbg-molhiv'),
    TestCase(model='gcn', dataset='ogbg-molhiv'),
    TestCase(model='gcn-virtual-node', dataset='ogbg-molhiv'),
    TestCase(model='gat', dataset='ogbg-molhiv'),
    TestCase(model='pna', dataset='ogbg-molhiv'),
    TestCase(model='gin', dataset='ogbg-molpcba'),
    TestCase(model='gin-virtual-node', dataset='ogbg-molpcba'),
    TestCase(model='gcn', dataset='ogbg-molpcba'),
    TestCase(model='gcn-virtual-node', dataset='ogbg-molpcba'),
    TestCase(model='gat', dataset='ogbg-molpcba'),
    TestCase(model='pna', dataset='ogbg-molpcba'),
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
    # batch size 16
    TestCase(model='gin', dataset='ogbg-molhiv-batch16'),
    TestCase(model='gin-virtual-node', dataset='ogbg-molhiv-batch16'),
    TestCase(model='gcn', dataset='ogbg-molhiv-batch16'),
    TestCase(model='gcn-virtual-node', dataset='ogbg-molhiv-batch16'),
    TestCase(model='gat', dataset='ogbg-molhiv-batch16'),
    TestCase(model='pna', dataset='ogbg-molhiv-batch16'),
    TestCase(model='gin', dataset='ogbg-molpcba-batch16'),
    TestCase(model='gin-virtual-node', dataset='ogbg-molpcba-batch16'),
    TestCase(model='gcn', dataset='ogbg-molpcba-batch16'),
    TestCase(model='gcn-virtual-node', dataset='ogbg-molpcba-batch16'),
    TestCase(model='gat', dataset='ogbg-molpcba-batch16'),
    TestCase(model='pna', dataset='ogbg-molpcba-batch16'),
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
    # batch size 256
    TestCase(model='gin', dataset='ogbg-molhiv-batch256'),
    TestCase(model='gin-virtual-node', dataset='ogbg-molhiv-batch256'),
    TestCase(model='gcn', dataset='ogbg-molhiv-batch256'),
    TestCase(model='gcn-virtual-node', dataset='ogbg-molhiv-batch256'),
    TestCase(model='gat', dataset='ogbg-molhiv-batch256'),
    TestCase(model='pna', dataset='ogbg-molhiv-batch256'),
    TestCase(model='gin', dataset='ogbg-molpcba-batch256'),
    TestCase(model='gin-virtual-node', dataset='ogbg-molpcba-batch256'),
    TestCase(model='gcn', dataset='ogbg-molpcba-batch256'),
    TestCase(model='gcn-virtual-node', dataset='ogbg-molpcba-batch256'),
    TestCase(model='gat', dataset='ogbg-molpcba-batch256'),
    TestCase(model='pna', dataset='ogbg-molpcba-batch256'),
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
]

@torch.inference_mode()
def measure(model, loader, device, trials, desc=None):
    model.eval()
    total_time = 0.0

    for batch in tqdm(loader, desc=desc):
        batch = batch.to(device)
        timer = benchmark.Timer(stmt='model(batch)',
                                globals={'model': model, 'batch': batch})
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
                'Model name',
                f'Run time (average of {args.trials} trials)',
                'Average run time per graph',
            ])

        for model_name, dataset_name in TEST_CASES:
            dataset = DATASETS[dataset_name]
            model = MODELS[model_name](dataset.dataset, device)

            run_time = measure(model, dataset.loader, device, args.trials,
                               desc=f'{model_name} on {dataset_name}')
            if csv_writer is not None:
                csv_writer.writerow([
                    dataset_name,
                    len(dataset.loader),
                    model_name,
                    run_time,
                    run_time / len(dataset.loader),
                ])

            print(f'{model_name} on {dataset_name}: {run_time:.4f}s')
            print()

if __name__ == '__main__':
    main()
