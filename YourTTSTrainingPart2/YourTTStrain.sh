#!/bin/bash

# The PBS directives 
#SBATCH -J TTStrain
#SBATCH -N 1
#SBATCH -o TTStrain.%j.out
#SBATCH -p GPU-shared
#SBATCH -t 12:00:00
#SBATCH --gres=gpu:v100-32:1

cd $PROJECT 

cd DS340WProject/YourTTSTrainingPart2

echo "#-#-#Job started on `hostname` at `date` "

echo "#-#-#execution started at `date`"

CUDA_VISIBLE_DEVICES="0" python ../TTS/TTS/bin/train_tts.py --config_path config.json --restore_path checkpoints/vits_tts-japanese-April-24-2022_02+23PM-5c450c6/best_model.pth

echo "Job complete"

