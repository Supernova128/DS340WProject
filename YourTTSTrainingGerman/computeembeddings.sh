#!/bin/bash

# The PBS directives 
#SBATCH -J compute_embeddings
#SBATCH -N 1
#SBATCH -o embeddings.%j.out
#SBATCH -p GPU-shared
#SBATCH -t 8:00:00
#SBATCH --gres=gpu:v100-16:1



cd $PROJECT 

cd DS340WProject/YourTTSTrainingGerman

echo "#-#-#Job started on `hostname` at `date` "

echo "#-#-#execution started at `date`"

python ../TTS/TTS/bin/compute_embeddings.py model_se.pth.tar config_se.json config.json embeddings/speakers.json --use_cuda True --old_file ../YourTTSTrainingPart2/embeddings/speakers.json

