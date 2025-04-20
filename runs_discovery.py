import os

RUNS_DIRECTORY = "runs_seeds/" 
PARTITION = "main"

def write_run_file(content, num): 
    os.makedirs(RUNS_DIRECTORY, exist_ok=True)    
    f = open(f"{RUNS_DIRECTORY}/run_{num}.job", "a")
    f.write(content)
    f.close()

# 1. SLURM header for the single script:
file = f"""#!/bin/bash
#SBATCH --account=prasanna_933
#SBATCH --partition={PARTITION}
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=64
#SBATCH --mem=32G
#SBATCH --time=48:00:00 

module load gcc/13.3.0 git/2.45.2

module unload python

source ~/miniconda3/etc/profile.d/conda.sh
conda activate gacg

echo "Starting parallel job script"
"""

MAX_SEEDS = 11 

count = 0 
for seed in range(4, MAX_SEEDS): 
    cmd = f"""python3 src/main.py --config=casec --env-config=gather with threshold=0.5 t_max=1050000 use_action_repr=False construction_q_var=True q_var_loss=True independent_p_q=True seed={seed} use_cuda=False""" 
    count+=1
    write_run_file(file+cmd, count) 