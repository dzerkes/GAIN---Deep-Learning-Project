#!/bin/bash -l
#
#SBATCH --job-name="Team 1 - imputation original (tanh) GAIN"
#SBATCH --time=48:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=56G
#SBATCH --output=team1.%j.out.log
#SBATCH --error=team1.%j.error.log
#SBATCH --account=pa190402
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
export NUM_THREADS=$SLURM_CPUS_PER_TASK

module purge
module load  gnu/8 intel/18 intelmpi/2018 cuda/10.1.168 pytorch/1.4.0

# The gpu/ml partitions are not connected to the internet, therefore the DenseNet 121 weights have to be downloaded beforehand
source /users/pa19/gealexdl/team1/venv/bin/activate
srun python3 /users/pa19/gealexdl/team1/GAIN_td.py
deactivate  
