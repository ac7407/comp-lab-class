#!/bin/bash 
#SBATCH --nodes=1                        # requests 1 compute servers
#SBATCH --ntasks-per-node=4              # runs 4 tasks on each server
#SBATCH --cpus-per-task=1                # uses 1 compute core per task
#SBATCH --time=12:00:00
#SBATCH --mem=8GB
#SBATCH --job-name=density
#SBATCH --output=density.out

mpirun lmp -var density 0.5 -in 2dWCA.in
