from pylab import *
import os

def POSCAR_Tp():
    string = """MoTe2 1Tp
   1.00000000000000     
     3.452    0.0     0.0
     0.0      6.368   0.0
     0.0      0.0     16.0
   Te   Mo
     4     2
Cartesian
1.72600 0.64720 2.06613
1.72600 4.77063 -1.47865
0.00000 1.63919 -2.06615
0.00000 3.88372 1.47866
1.72600 2.29628 -0.09492
0.00000 -0.00994 0.09493
"""
    return string


def POSCAR_2H():
    string = """MoTe2 2H
 1.0
 3.551  0.0     0.0
 0.0    6.149   0.0
 0.0    0.0     16.0
Te  Mo
 4   2
Cartesian
0.00000 4.09929 1.80526
0.00000 4.09929 -1.80526
1.77550 1.02478 1.80524
1.77550 1.02478 -1.80524
1.77550 3.07459 0.00000
0.00000 0.00005 0.00000
"""
    return string


def INCAR(ismear, smear):
    string = """System  = 2D MoTe2 in a box
NCORE   = 8
#KPAR    =16

ENCUT   = 350
NELMDL  = -5
ALGO    = Normal
IBRION  = -1
NSW     = 1
ISIF    = 2
POTIM   = 0.500000
PREC    = Accurate
EDIFF   = 1.000000e-08
ISYM    = 0
LREAL   = .FALSE.
NWRITE  = 3

ISMEAR  = """
    string += str(ismear) + '\n'
    string += "SIGMA   = " + str(smear)
    string += """

#ADDGRID = .TRUE.
LCHARG  = .FALSE.
LWAVE   = .FALSE.

LSORBIT = .TRUE.
ISPIN = 2
ICHARG = 1
LMAXMIX = 4

"""
    return string

def copyPOTCAR(dr):
    os.system('cp orig/POTCAR ' + dr)


def KPOINTS():
    string = """k-points
 0
MonPack
 18 18 1 
"""
    return string

    
def runscriptheader(fold,nnodes):
    string =  "#!/bin/bash \n\n"
    string += "#SBATCH --job-name=%s-mote2\n"%fold
    string += """#SBATCH --output=vasp.out
#SBATCH --error=vasp.err
#SBATCH --time=48:00:00
#SBATCH --qos=normal
"""
    string += "#SBATCH --nodes=%d\n" %nnodes
    string += """#SBATCH --mem=64000
#SBATCH --ntasks-per-node=16

START=$(date +%s)

"""
    return string
