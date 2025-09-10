#!/bin/bash
#SBATCH --time=40:00:00
#SBATCH --job-name=nerf_fern
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --gpus-per-task=1
#SBATCH --output=hpc_logs/nerf_fern.%j
#SBATCH --mem=16G
#SBATCH --partition=gpu

ml miniconda3

source activate nerf
python run_nerf.py --config config_fern.txt