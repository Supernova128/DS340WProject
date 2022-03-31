#!/bin/bash

# The PBS directives 
#SBATCH -J TTStrain
#SBATCH -N 1
#SBATCH -o TTStrain.%j.out
#SBATCH -p GPU-shared
#SBATCH -t 00:30:00
#SBATCH --gres=gpu:v100-16:1


module load anaconda/py3

cd $PROJECT 

cd DS340WProject

echo "#-#-#Job started on `hostname` at `date` "

echo "#-#-#execution started at `date`"

python train.py --continue_path run-March-31-2022_03+14PM-d873ad8

echo "Job complete"

