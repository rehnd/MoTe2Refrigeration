#!/bin/bash 

#SBATCH --job-name=1Tp-mote2
#SBATCH --output=vasp.out
#SBATCH --error=vasp.err
#SBATCH --time=48:00:00
#SBATCH --qos=normal
#SBATCH --nodes=8
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=16

START=$(date +%s)

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.05/T0000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.05/T0020
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.05/T0040
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.05/T0060
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.05/T0080
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.05/T0100
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.05/T0120
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.05/T0140
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.05/T0160
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.05/T0180
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.05/T0200
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.05/T0300
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.05/T0400
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.05/T0500
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.05/T0600
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.05/T0700
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.05/T0800
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.05/T0900
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.05/T1000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.04/T0000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.04/T0020
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.04/T0040
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.04/T0060
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.04/T0080
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.04/T0100
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.04/T0120
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.04/T0140
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.04/T0160
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.04/T0180
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.04/T0200
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.04/T0300
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.04/T0400
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.04/T0500
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.04/T0600
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.04/T0700
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.04/T0800
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.04/T0900
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.04/T1000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.03/T0000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.03/T0020
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.03/T0040
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.03/T0060
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.03/T0080
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.03/T0100
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.03/T0120
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.03/T0140
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.03/T0160
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.03/T0180
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.03/T0200
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.03/T0300
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.03/T0400
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.03/T0500
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.03/T0600
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.03/T0700
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.03/T0800
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.03/T0900
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.03/T1000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.02/T0000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.02/T0020
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.02/T0040
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.02/T0060
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.02/T0080
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.02/T0100
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.02/T0120
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.02/T0140
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.02/T0160
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.02/T0180
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.02/T0200
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.02/T0300
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.02/T0400
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.02/T0500
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.02/T0600
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.02/T0700
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.02/T0800
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.02/T0900
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.02/T1000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.01/T0000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.01/T0020
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.01/T0040
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.01/T0060
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.01/T0080
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.01/T0100
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.01/T0120
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.01/T0140
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.01/T0160
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.01/T0180
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.01/T0200
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.01/T0300
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.01/T0400
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.01/T0500
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.01/T0600
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.01/T0700
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.01/T0800
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.01/T0900
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch-0.01/T1000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.00/T0000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.00/T0020
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.00/T0040
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.00/T0060
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.00/T0080
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.00/T0100
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.00/T0120
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.00/T0140
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.00/T0160
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.00/T0180
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.00/T0200
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.00/T0300
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.00/T0400
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.00/T0500
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.00/T0600
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.00/T0700
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.00/T0800
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.00/T0900
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.00/T1000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.01/T0000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.01/T0020
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.01/T0040
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.01/T0060
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.01/T0080
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.01/T0100
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.01/T0120
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.01/T0140
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.01/T0160
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.01/T0180
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.01/T0200
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.01/T0300
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.01/T0400
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.01/T0500
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.01/T0600
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.01/T0700
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.01/T0800
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.01/T0900
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.01/T1000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.02/T0000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.02/T0020
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.02/T0040
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.02/T0060
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.02/T0080
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.02/T0100
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.02/T0120
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.02/T0140
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.02/T0160
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.02/T0180
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.02/T0200
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.02/T0300
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.02/T0400
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.02/T0500
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.02/T0600
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.02/T0700
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.02/T0800
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.02/T0900
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.02/T1000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.03/T0000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.03/T0020
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.03/T0040
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.03/T0060
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.03/T0080
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.03/T0100
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.03/T0120
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.03/T0140
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.03/T0160
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.03/T0180
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.03/T0200
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.03/T0300
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.03/T0400
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.03/T0500
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.03/T0600
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.03/T0700
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.03/T0800
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.03/T0900
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.03/T1000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.04/T0000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.04/T0020
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.04/T0040
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.04/T0060
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.04/T0080
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.04/T0100
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.04/T0120
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.04/T0140
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.04/T0160
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.04/T0180
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.04/T0200
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.04/T0300
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.04/T0400
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.04/T0500
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.04/T0600
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.04/T0700
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.04/T0800
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.04/T0900
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.04/T1000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.05/T0000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.05/T0020
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.05/T0040
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.05/T0060
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.05/T0080
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.05/T0100
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.05/T0120
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.05/T0140
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.05/T0160
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.05/T0180
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.05/T0200
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.05/T0300
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.05/T0400
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.05/T0500
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.05/T0600
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.05/T0700
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.05/T0800
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.05/T0900
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.05/T1000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.06/T0000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.06/T0020
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.06/T0040
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.06/T0060
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.06/T0080
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.06/T0100
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.06/T0120
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.06/T0140
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.06/T0160
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.06/T0180
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.06/T0200
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.06/T0300
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.06/T0400
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.06/T0500
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.06/T0600
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.06/T0700
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.06/T0800
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.06/T0900
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.06/T1000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.07/T0000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.07/T0020
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.07/T0040
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.07/T0060
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.07/T0080
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.07/T0100
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.07/T0120
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.07/T0140
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.07/T0160
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.07/T0180
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.07/T0200
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.07/T0300
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.07/T0400
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.07/T0500
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.07/T0600
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.07/T0700
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.07/T0800
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.07/T0900
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.07/T1000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.08/T0000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.08/T0020
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.08/T0040
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.08/T0060
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.08/T0080
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.08/T0100
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.08/T0120
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.08/T0140
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.08/T0160
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.08/T0180
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.08/T0200
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.08/T0300
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.08/T0400
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.08/T0500
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.08/T0600
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.08/T0700
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.08/T0800
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.08/T0900
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.08/T1000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.09/T0000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.09/T0020
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.09/T0040
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.09/T0060
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.09/T0080
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.09/T0100
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.09/T0120
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.09/T0140
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.09/T0160
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.09/T0180
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.09/T0200
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.09/T0300
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.09/T0400
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.09/T0500
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.09/T0600
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.09/T0700
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.09/T0800
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.09/T0900
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.09/T1000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.10/T0000
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.10/T0020
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.10/T0040
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.10/T0060
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.10/T0080
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.10/T0100
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.10/T0120
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.10/T0140
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.10/T0160
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.10/T0180
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.10/T0200
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.10/T0300
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.10/T0400
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.10/T0500
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.10/T0600
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.10/T0700
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.10/T0800
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.10/T0900
mpirun -np 64 vasp

cd /scratch/users/rehnd/entropy/mote2/electronic_entropy/1Tp/ch0.10/T1000
mpirun -np 64 vasp

END=$(date +%s)
echo "Total runtime for this script: $(($END - $START))
