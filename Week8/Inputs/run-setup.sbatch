#!/bin/bash 
#SBATCH --nodes=1                        # requests 1 compute servers
#SBATCH --ntasks-per-node=8              # runs 8 tasks on each server
#SBATCH --cpus-per-task=1                # uses 1 compute core per task
#SBATCH --time=1:00:00
#SBATCH --mem=2GB
#SBATCH --job-name=mpirun_fcc
#SBATCH --output=mpirun_fcc.out

mpirun lmp -in in.melt
