#!/bin/bash 
#SBATCH --nodes=1                        # requests 1 compute servers
#SBATCH --ntasks-per-node=4              # runs 4 tasks on each server
#SBATCH --cpus-per-task=1                # uses 1 compute core per task
#SBATCH --time=12:00:00
#SBATCH --mem=8GB
#SBATCH --job-name=production
#SBATCH --output=production.out

mpirun lmp -var configfile kalj_n360_create.lmp -var id 1 -in create_3d_binary.lmp

mpirun lmp -var configfile kalj_n360_T1.5.lmp -var id 1 -in production_3d_binary.lmp
mpirun lmp -var configfile kalj_n360_T1.0.lmp -var id 1 -in production_3d_binary.lmp
mpirun lmp -var configfile kalj_n360_T0.9.lmp -var id 1 -in production_3d_binary.lmp
mpirun lmp -var configfile kalj_n360_T0.8.lmp -var id 1 -in production_3d_binary.lmp
mpirun lmp -var configfile kalj_n360_T0.7.lmp -var id 1 -in production_3d_binary.lmp
mpirun lmp -var configfile kalj_n360_T0.65.lmp -var id 1 -in production_3d_binary.lmp
mpirun lmp -var configfile kalj_n360_T0.6.lmp -var id 1 -in production_3d_binary.lmp
mpirun lmp -var configfile kalj_n360_T0.55.lmp -var id 1 -in production_3d_binary.lmp
mpirun lmp -var configfile kalj_n360_T0.5.lmp -var id 1 -in production_3d_binary.lmp
mpirun lmp -var configfile kalj_n360_T0.475.lmp -var id 1 -in production_3d_binary.lmp
mpirun lmp -var configfile kalj_n360_T0.45.lmp -var id 1 -in production_3d_binary.lmp
