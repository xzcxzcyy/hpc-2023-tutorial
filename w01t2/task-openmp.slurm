#!/bin/bash

#SBATCH --job-name=zcxu-w01t2-openmp
#SBATCH --partition=64c512g
#SBATCH -n 1000
#SBATCH --mail-type=end
#SBATCH --mail-user=xzcxzcyy@sjtu.edu.cn
#SBATCH --output=%j.out
#SBATCH --error=%j.err

ulimit -s unlimited
ulimit -l unlimited

source ~/scripts/conda.sh
conda activate zcxu-w01t2
mpirun -np 1000 python exploit-openmp.py