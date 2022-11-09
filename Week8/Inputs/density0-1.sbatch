#!/bin/bash 
#SBATCH --nodes=1                        # requests 1 compute servers
#SBATCH --ntasks-per-node=4              # runs 4 tasks on each server
#SBATCH --cpus-per-task=1                # uses 1 compute core per task
#SBATCH --time=12:00:00
#SBATCH --mem=8GB
#SBATCH --job-name=density0.5to1.1
#SBATCH --output=density0.5to1.1.out

mpirun lmp -var density 0.5 -in 2dWCA.in -log density0.5.log
mpirun lmp -var density 0.6 -in 2dWCA.in -log density0.6.log
mpirun lmp -var density 0.7 -in 2dWCA.in -log density0.7.log
mpirun lmp -var density 0.8 -in 2dWCA.in -log density0.8.log
mpirun lmp -var density 0.9 -in 2dWCA.in -log density0.9.log
mpirun lmp -var density 1.0 -in 2dWCA.in -log density1.0.log
mpirun lmp -var density 1.1 -in 2dWCA.in -log density1.1.log
