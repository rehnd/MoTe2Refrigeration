from pylab import *
from mpl_toolkits.mplot3d import Axes3D
from matplotlib import cm
from scipy import interpolate
import sys
import os
rcParams.update({'font.size': 48, 'text.usetex': True})


def getEntropy(folders, T, charge):
    S2H = zeros([len(T),len(charge)])
    STp = zeros([len(T),len(charge)])
    
    basedir = os.getcwd()

    fold = '2H'
    j = 0
    for ch in charge:
        i = 0
        for temp in T:

            fldr = '%s/%s/ch%.2f/T%04.0f'%(basedir,fold,ch,temp)

            os.system("cd %s; cat OUTCAR | grep 'entropy T' | tail -1 | awk '{print $5}' > ts"%fldr)
            val  = genfromtxt(fldr + '/ts')
            S2H[i,j] = val
            #print(val)
            i += 1

        # Important: so far S contains T*S => need to divide by T
        S2H[:,j] = S2H[:,j] / T
        # Also, the value in OUTCAR is negative, so need to negate it here
        S2H[:,j] = - S2H[:,j]
        # Finally, since we have rectangular unit cell with 2 f.u., divide by 2 to get 1 f.u.
        S2H[:,j] = S2H[:,j] / 2
        j += 1

    fold = '1Tp'
    j = 0
    for ch in charge:
        i = 0
        for temp in T:

            fldr = '%s/%s/ch%.2f/T%04.0f'%(basedir,fold,ch,temp)

            os.system("cd %s; cat OUTCAR | grep 'entropy T' | tail -1 | awk '{print $5}' > ts"%fldr)
            val = genfromtxt(fldr + '/ts')
            STp[i,j] = val
            i += 1

        # Important: so far S contains T*S => need to divide by T
        STp[:,j] = STp[:,j] / T
        # Also, the value in OUTCAR is negative, so need to negate it here
        STp[:,j] = - STp[:,j]
        # Finally, since we have rectangular unit cell with 2 f.u., divide by 2 to get 1 f.u.
        STp[:,j] = STp[:,j] / 2
        j += 1

    return S2H, STp

if __name__ == '__main__':
    folders = ['2H', '1Tp']
    ismear = -1 # corresponds to Fermi smearing

    T = array([0,20,40,60,80,100,120,140,160,180,200,300,400,500,600,700,800,900,1000])
    charge = array([-0.05, -0.04, -0.03, -0.02, -0.01, 0.0,
                    0.01,   0.02,  0.03,  0.04,  0.05, 0.06,
                    0.07,   0.08,  0.09,  0.10])
    nfu = 2
    ne = 36
    TtoeV = 8.621738e-5
    smear = T*TtoeV
    nnodes = 8
    TtoeV = 8.621738e-5
    eV_to_meV = 1000

    S2H, STp = getEntropy(folders,T, charge)
    S2H[isnan(S2H)] = 0.
    STp[isnan(STp)] = 0.
    savetxt("entropy2H.dat", S2H) # Save in eV/K/f.u.
    savetxt("entropyTp.dat", STp) # Save in eV/K/f.u.
