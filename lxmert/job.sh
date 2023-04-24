#!/bin/bash
#SBATCH --job-name=vasptest
#SBATCH --output=vasp.out
#SBATCH --error=vasp.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=yuyue1995@ufl.edu
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=10
#SBATCH --mem=300gb
#SBATCH --distribution=cyclic:cyclic
#SBATCH --partition=gpu
#SBATCH --gres=gpu:a100:1
#SBATCH --time=48:00:00
#SBATCH --qos=cjia1
#SBATCH --account=cjia1

. "/blue/vemuri/yuyue1995/software/anaconda3/etc/profile.d/conda.sh"
#bash run/gqa_test.bash 0 gqa_lxr955_results --load ./Epoch20_LXRT  --test testdev --batchSize 1024
#bash run/gqa_finetune.bash 0 gqa_lxr955_tiny --tiny
#bash run/gqa_finetune.bash 0 gqa_lxr955

