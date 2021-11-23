#!/bin/bash

dataset_abbr=$1
dataset_hdf5=$2

python make_hdf5.py --dataset "$1" --batch_size 256
python calculate_inception_moments.py --dataset "$2"
