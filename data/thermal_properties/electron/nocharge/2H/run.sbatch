#!/bin/bash 

#SBATCH --job-name=1Tp-mote2
#SBATCH --output=vasp.out
#SBATCH --error=vasp.err
#SBATCH --time=48:00:00
#SBATCH --qos=normal
#SBATCH --nodes=4
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=16

START=$(date +%s)

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0000
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0010
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0020
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0030
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0040
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0050
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0060
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0070
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0080
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0090
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0100
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0110
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0120
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0130
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0140
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0150
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0160
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0170
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0180
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0190
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0200
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0210
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0220
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0230
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0240
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0250
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0260
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0270
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0280
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0290
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0300
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0310
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0320
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0330
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0340
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0350
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0360
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0370
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0380
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0390
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0400
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0410
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0420
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0430
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0440
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0450
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0460
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0470
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0480
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0490
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0500
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0510
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0520
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0530
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0540
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0550
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0560
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0570
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0580
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0590
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0600
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0610
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0620
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0630
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0640
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0650
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0660
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0670
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0680
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0690
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0700
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0710
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0720
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0730
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0740
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0750
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0760
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0770
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0780
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0790
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0800
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0810
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0820
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0830
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0840
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0850
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0860
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0870
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0880
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0890
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0900
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0910
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0920
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0930
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0940
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0950
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0960
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0970
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0980
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T0990
mpirun -np 32 vasp

cd /home/rehnd/vasp/mote2/entropy/yao_latticeconstant/electronicEntropy/SOC/1Tp/T1000
mpirun -np 32 vasp

END=$(date +%s)
echo "Total runtime for this script: $(($END - $START))
