#!/bin/bash 
#SBATCH --nodes=1                        # requests 1 compute servers
#SBATCH --ntasks-per-node=4              # runs 4 tasks on each server
#SBATCH --cpus-per-task=1                # uses 1 compute core per task
#SBATCH --time=12:00:00
#SBATCH --mem=8GB
#SBATCH --job-name=density_3d
#SBATCH --output=density_3d.out

mpirun lmp -var density 0.8 -in 3dWCA.in -log density_3d_0.8.log
mpirun lmp -var density 0.9 -in 3dWCA.in -log density_3d_0.9.log
mpirun lmp -var density 1.0 -in 3dWCA.in -log density_3d_1.0.log
mpirun lmp -var density 1.1 -in 3dWCA.in -log density_3d_1.1.log
mpirun lmp -var density 1.2 -in 3dWCA.in -log density_3d_1.2.log
mpirun lmp -var density 1.3 -in 3dWCA.in -log density_3d_1.3.log
mpirun lmp -var density 1.4 -in 3dWCA.in -log density_3d_1.4.log
mpirun lmp -var density 1.5 -in 3dWCA.in -log density_3d_1.5.log


