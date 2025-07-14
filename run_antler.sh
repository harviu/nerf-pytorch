#!/bin/bash
#SBATCH --time=20:00:00
#SBATCH --job-name=nerf_antler
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --gpus-per-task=1
#SBATCH --output=hpc_logs/%x.%j
#SBATCH --mem=16G
#SBATCH --partition=gpu

source activate nerf_pytorch
module load ffmpeg
export IMAGEIO_FFMPEG_EXE=/opt/gvsu/clipper/2025.05/spack/apps/linux-rhel9-cascadelake/gcc-13.3.1/ffmpeg-6.1.1-xf4irgjlfysovjoc37dvgtnqr3v5aeqp/bin/ffmpeg
python run_nerf.py --config configs/antler.txt