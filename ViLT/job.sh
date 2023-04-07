#!/bin/bash
#SBATCH --job-name=vasptest
#SBATCH --output=vasp.out
#SBATCH --error=vasp.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=yuyue1995@ufl.edu
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=10
#SBATCH --mem=1000gb
#SBATCH --distribution=cyclic:cyclic
#SBATCH --partition=gpu
#SBATCH --gres=gpu:a100:8
#SBATCH --time=48:00:00
#SBATCH --qos=cjia1
#SBATCH --account=cjia1

source /home/yuyue1995/.bashrc
conda activate vilt 
python -u run.py with data_root=../dataset/ num_gpus=8  num_nodes=1 per_gpu_batchsize=4 task_finetune_irtr_coco_randaug test_only=True precision=32 load_path=../weights/vilt_irtr_coco.ckpt | tee rec.txt  
