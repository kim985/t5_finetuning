#!/bin/sh
#SBATCH --partition=m40-short
#SBATCH --gres=gpu:1
#SBATCH --mem=40GB
#SBATCH -d singleton

export XDG_RUNTIME_DIR=""
conda activate default
which python
module list

python run_model.py
