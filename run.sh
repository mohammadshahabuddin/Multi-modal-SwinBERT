#!/bin/bash -l
#####SBATCH --output=output2
####SBATCH -C k80|p100|v100
#SBATCH --job-name=simple_cuda
####SBATCH --partition=gpu
#SBATCH --partition=timed-gpu
#SBATCH --gres=gpu:2

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


crun -p ~/envs/swinbert python src/tasks/run_caption_VidSwinBert.py  \
        --config src/configs/VidSwinBert/SMSV_8frm_default.json  \
        --train_yaml SMSV/train.yaml	\
        --val_yaml SMSV/val.yaml	\
        --per_gpu_train_batch_size 1	\
        --per_gpu_eval_batch_size 1	\
        --num_train_epochs 10	\
        --learning_rate 0.00003	\
        --max_num_frames 32	\
        --pretrained_2d 0	\
        --backbone_coef_lr 0.05		\
        --mask_prob 0.5		\
        --max_masked_token 45	\
        --zero_opt_stage 1	\
        --mixed_precision_method apex	\
	--gradient_accumulation_steps 1 	\
        --amp_opt_level 1	\
        --learn_mask_enabled	\
        --loss_sparse_w 0.5	\
        --output_dir ./output	\
###--evaluate_during_training false          
####--deepspeed_fp16	\          --gradient_accumulation_steps 1 	\


