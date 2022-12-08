#!/bin/bash 
#SBATCH --nodes=1                        # requests 1 compute servers
#SBATCH --ntasks-per-node=12             # runs 2 tasks on each server
#SBATCH --cpus-per-task=1                # uses 1 compute core per task
#SBATCH --time=6:00:00
#SBATCH --mem=20GB
#SBATCH --job-name=water_aimd_1ns_every_0.5fs
#SBATCH --output=water_aimd_1ns_every_0.5fs.out
#SBATCH --reservation=gmh4

module load cp2k/openmpi/intel/20201212
mpirun -np 12 cp2k.popt -i water.inp -o water_aimd_1ns_every_0.5fs.log
