#!/bin/bash -l
#####SBATCH --output=output2
####SBATCH -C k80|p100|v100
#SBATCH --job-name=simple_cuda
#SBATCH --partition=gpu
####SBATCH --partition=timed-gpu
#SBATCH --gres=gpu:1

# resource request
# always asking for ntask 1, but cpus-per-task for 5,10 ..., 
# otherwise you still only get 1 core for your process

#SBATCH --ntasks=1
#SBATCH --cpus-per-task=10

# exclusive access resource 
# --nodes does not grant exclusive access 
# you can --exclusive, but it would be a waste of resource, please do not do it 
## SBATCH --nodes=1


enable_lmod

module load container_env pytorch-gpu/1.11.0


crun -p ~/envs/swinbert python src/tasks/run_caption_VidSwinBert_inference.py   --resume_checkpoint output/checkpoint-6-150/model.bin --eval_model_dir output/checkpoint-6-150/   --test_video_fname docs/makeup.mp4 --do_lower_case --do_test
