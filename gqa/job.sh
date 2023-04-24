#!/bin/bash
#SBATCH --job-name=vasptest
#SBATCH --output=vasp.out
#SBATCH --error=vasp.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=yuyue1995@ufl.edu
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=40gb
#SBATCH --distribution=cyclic:cyclic
#SBATCH --partition=gpu
#SBATCH --gres=gpu:a100:1
#SBATCH --time=48:00:00

wget https://vision.aioz.io/f/c11580c0318846d1939c/?dl=1
