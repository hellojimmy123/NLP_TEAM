srun --partition=gpu --gres=gpu:a100:1  --mem=40gb --ntasks=1 --cpus-per-task=8 --time=12:00:00 --pty bash -i
