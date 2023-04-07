srun --partition=gpu --mem=120gb --gres=gpu:a100:8 --ntasks=1 --cpus-per-task=6 --time=04:00:00 --pty bash -i
