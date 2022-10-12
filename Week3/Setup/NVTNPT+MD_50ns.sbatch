#!/bin/bash 
#SBATCH --nodes=1                        # requests 1 compute server
#SBATCH --ntasks-per-node=48             # runs 48 tasks on each server
#SBATCH --time=24:00:00
#SBATCH --mem=8GB
#SBATCH --job-name=MD_50ns
#SBATCH --output=MD_50ns.out

module purge
module load gromacs/openmpi/intel/2020.4

gmx_mpi grompp -f nvt.mdp -c en_min.gro -r en_min.gro -p topol.top -o nvt.tpr
mpirun -np 48 gmx_mpi mdrun -deffnm nvt

gmx_mpi grompp -f npt.mdp -c nvt.gro -r nvt.gro -t nvt.cpt -p topol.top -o npt.tpr
mpirun -np 48 gmx_mpi mdrun -deffnm npt

mpirun -np 1 gmx_mpi grompp -f MD_50ns.mdp -c npt.gro -t npt.cpt -p topol.top -o MD_50ns.tpr
mpirun -np 48 gmx_mpi mdrun  -deffnm MD_50ns 

