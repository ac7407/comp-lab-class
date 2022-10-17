#!/bin/bash 
#SBATCH --nodes=1                        # requests 1 compute servers
#SBATCH --ntasks-per-node=4              # runs 4 tasks on each server
#SBATCH --time=1:00:00
#SBATCH --mem=8GB
#SBATCH --job-name=PT-simulation
#SBATCH --output=PT-simulation.out

module purge
module load gromacs/openmpi/intel/2018.3
mpirun -np 4 gmx_mpi mdrun -s adp -multidir T300/ T350 T400/ T450 -deffnm adp_exchange4temps -replex 50

