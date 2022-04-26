#!/bin/bash

# The PBS directives 
#SBATCH -J compute_embeddings
#SBATCH -N 1
#SBATCH -o embeddings.%j.out
#SBATCH -p GPU-shared
#SBATCH -t 2:00:00
#SBATCH --gres=gpu:v100-16:1



cd $PROJECT 

cd DS340WProject/YourTTSTrainingPart2

echo "#-#-#Job started on `hostname` at `date` "

echo "#-#-#execution started at `date`"

python ../TTS/TTS/bin/compute_embeddings.py model_se.pth.tar config_se.json config.json embeddings/speakers2.json

