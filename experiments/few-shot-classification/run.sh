#!/bin/bash
#SBATCH --nodes=1
#SBATCH --time=1:00:00
#SBATCH --job-name=Dist-discrete-prompt
#SBATCH --gres=gpu:1

# run the application
. /etc/profile.d/modules.sh                                   # Leave this line (enables the module command)
module purge                                                  # Removes all modules still loaded
source /jmain02/apps/python3/anaconda3/etc/profile.d/conda.sh # enable conda
conda activate dist-discrete-prompt-env                          # activate target env

cd /jmain02/home/J2AD015/axf03/yxz79-axf03/dist-discrete-prompt/examples/few-shot-classification
python run_fsc.py dataset=sst-2 dataset_seed=0 prompt_length=5 task_lm=distilgpt2 random_seed=42