#!/bin/bash
#SBATCH --job-name=vasptest
#SBATCH --output=vasp.out
#SBATCH --error=vasp.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=yuyue1995@ufl.edu
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=40gb
#SBATCH --distribution=cyclic:cyclic
#SBATCH --partition=gpu
#SBATCH --gres=gpu:a100:4
#SBATCH --time=48:00:00

conda activate vilt 
python -u run.py with data_root=../dataset/ num_gpus=4  num_nodes=1 per_gpu_batchsize=4 task_finetune_irtr_coco_randaug test_only=True precision=32 load_path=../weights/vilt_irtr_coco.ckpt  
