#!/bin/bash

#SBATCH --job-name=zcxu-w01t2-parallel
#SBATCH --partition=64c512g
#SBATCH -N 1
#SBATCH --exclusive
#SBATCH --mail-type=end
#SBATCH --mail-user=xzcxzcyy@sjtu.edu.cn
#SBATCH --output=%j.out
#SBATCH --error=%j.err

source ~/scripts/conda.sh
conda activate zcxu-w01t2
python exploit-multiprocess.py