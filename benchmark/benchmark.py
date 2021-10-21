#!/usr/bin/env python3

import argparse
import csv
from collections import namedtuple
from contextlib import nullcontext
from time import time
from tqdm import tqdm

import torch
from ogb.graphproppred import PygGraphPropPredDataset
from dgn.data.HIV import HIVDataset
from torch_geometric.loader import DataLoader

from gcn_gin.gnn import GNN as GCN, GNN as GIN
from gat.gnn import GAT
from pna.net import Net as PNA

Dataset = namedtuple('Dataset', ('dataset', 'loader'))
TestCase = namedtuple('TestCase', ('model', 'dataset'))

def make_ogb_graphproppred_dataset(dataset_name):
    dataset = PygGraphPropPredDataset(dataset_name)
    split_idx = dataset.get_idx_split()
    test_idx = split_idx['test']
    test_loader = DataLoader(dataset[test_idx], batch_size=1, shuffle=False)
    return Dataset(dataset=dataset, loader=test_loader)

def make_dgn_hiv_dataset(dataset_name, pos_enc_dim=0, norm='none'):
    dataset = HIVDataset(dataset_name, pos_enc_dim=pos_enc_dim, norm=norm)
    test_loader = DataLoader(
        dataset.test,
        batch_size=1,
        shuffle=False,
        collate_fn=dataset.collate,
        pin_memory=True,
    )
    return Dataset(dataset=dataset, loader=test_loader)

TRIALS = 5
OUTPUT_CSV = 'output.csv'

DATASETS = {
    'ogbg-molhiv': make_ogb_graphproppred_dataset('ogbg-molhiv'),
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
    'gin_with_virtual_node': lambda dataset, device: GIN(
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
    'gcn_with_virtual_node': lambda dataset, device: GCN(
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
}

TEST_CASES = [
    TestCase(model='gin', dataset='ogbg-molhiv'),
    TestCase(model='gin_with_virtual_node', dataset='ogbg-molhiv'),
    TestCase(model='gcn', dataset='ogbg-molhiv'),
    TestCase(model='gcn_with_virtual_node', dataset='ogbg-molhiv'),
    TestCase(model='gat', dataset='ogbg-molhiv'),
    TestCase(model='pna', dataset='ogbg-molhiv'),
]

@torch.no_grad()
def measure(model, batches, desc=None):
    model.eval()
    total_time = 0.0

    for batch in tqdm(batches, desc=desc):
        start = time()
        model(batch)
        end = time()
        total_time += end - start

    return total_time

def main():
    parser = argparse.ArgumentParser(description='Run inference benchmarks')
    parser.add_argument('--device', help='torch device to use (usually "cuda" or "cpu")',
                        default='cuda' if torch.cuda.is_available() else 'cpu')
    parser.add_argument('--output', help='output csv file to write')
    args = parser.parse_args()

    device = torch.device(args.device)
    batch_cache = {}
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
            csv_writer.writerow(['Dataset name', 'Model name', 'Trial', 'Run time'])

        for model_name, dataset_name in TEST_CASES:
            dataset = DATASETS[dataset_name]
            model = MODELS[model_name](dataset.dataset, device)
            total_time = 0.0

            try:
                batches = batch_cache[dataset_name]
            except KeyError:
                batches = [batch.to(device) for batch in tqdm(dataset.loader, desc=f'Preparing dataset {dataset_name}')]
                batch_cache[dataset_name] = batches
                print()

            for i in range(1, TRIALS + 1):
                run_time = measure(model, batches, desc=f'{model_name} on {dataset_name} ({i}/{TRIALS})')
                total_time += run_time
                if csv_writer is not None:
                    csv_writer.writerow([dataset_name, model_name, i, run_time])

            average_time = total_time / TRIALS
            if csv_writer is not None:
                csv_writer.writerow([dataset_name, model_name, 'Average', average_time])

            print(f'{model_name} on {dataset_name}: {average_time:.4f}s')
            print()

if __name__ == '__main__':
    main()
