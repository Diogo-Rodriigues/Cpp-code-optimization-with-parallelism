#!/bin/bash 
#SBATCH --time=15:00 
#SBATCH --partition=day
#SBATCH --exclusive 

./fluid_sim_seq

