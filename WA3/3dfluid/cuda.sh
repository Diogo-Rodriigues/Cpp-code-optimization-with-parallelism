#!/bin/bash 
#SBATCH --time=2:00 
#SBATCH --partition=cpar 
#SBATCH --constraint=k20 
#SBATCH --exclusive 

module load cuda/11.3.1

./fluid_sim
