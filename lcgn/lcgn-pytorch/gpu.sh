srun --account=cjia1 --qos=cjia1 --partition=gpu --gres=gpu:a100:1  --mem=100gb --ntasks=1 --cpus-per-task=8 --time=12:00:00 --pty bash -i
