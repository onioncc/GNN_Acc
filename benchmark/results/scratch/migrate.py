#!/usr/bin/env python3

# This script is very ad-hoc and has no error checking. Don't use unless you
# know what it's for.

import argparse
import csv

def main():
    parser = argparse.ArgumentParser(description='Update csv to newer version')
    parser.add_argument('filename', help='csv file to migrate')
    args = parser.parse_args()

    with open(args.filename, 'r', newline='') as csvfile:
        csv_reader = csv.reader(csvfile)
        header, *rows = list(csv_reader)

    header = [
        header[0],
        'Graph count',
        'Batch size',
        'Batch count',
        header[2],
        header[3],
        'Average run time per batch',
        'Average run time per graph',
    ]

    new_rows = []
    for row in rows:
        batch_size = 256 if 'batch256' in row[0] else 16 if 'batch16' in row[0] else 1
        graph_count = 4113 if 'ogbg-molhiv' in row[0] else 43793
        total_time = float(row[3])
        new_rows.append([
            row[0],
            graph_count,
            batch_size,
            row[1],
            row[2],
            row[3],
            row[4],
            total_time / graph_count,
        ])

    with open(args.filename, 'w', newline='') as csvfile:
        csv_writer = csv.writer(csvfile)
        csv_writer.writerow(header)
        csv_writer.writerows(new_rows)

if __name__ == '__main__':
    main()
