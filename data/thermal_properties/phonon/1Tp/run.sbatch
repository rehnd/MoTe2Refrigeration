#!/bin/bash 

#SBATCH --job-name=tp-mote2_phonopy
#SBATCH --output=vasp.out
#SBATCH --error=vasp.err
#SBATCH --time=48:00:00
#SBATCH --qos=normal
#SBATCH --nodes=32
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=16

mpirun -np 256 vasp
