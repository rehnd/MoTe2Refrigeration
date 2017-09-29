from pylab import *
import vaspinput
import sys
import os
rcParams.update({'font.size': 48, 'text.usetex': True})

def getEntropy(folders, T):
    S = zeros([len(T),len(folders)])
    basedir = os.getcwd()
    j = 0
    for fold in folders:
        
        i = 0
        for temp in T:

            fldr = '%s/%s/T%04.0f'%(basedir,fold,temp)
            if (not fldr in os.listdir('%s/%s'%(basedir,fold))):
                print("Error: Folder %s does not exist"%fldr)
                exit(1)

            os.system("cd %s; cat OUTCAR | grep 'entropy T' | tail -1 | awk '{print $5}' > ts"%fldr)
            S[i,j] = genfromtxt(fldr + '/ts')
            i += 1

        # Important: so far S contains T*S => need to divide by T
        S[1:,j] = S[1:,j] / T[1:] # (Skip T=0 case)
        S[0,j]  = 0               # Set T=0 case to 0
        # Also, the value in OUTCAR is negative, so need to negate it here
        S[:,j] = - S[:,j] 
        # Finally, since we have rectangular unit cell with 2 f.u., divide by 2 to get 1 f.u.
        S[:,j] = S[:,j] / 2
        j += 1

    return S
        
if __name__ == '__main__':
    entropyfile = "entropy.dat"

    folders = ['2H', '1Tp']

    ismear = -1  # corresponds to Fermi smearing

    T = arange(0,1001,10)
    TtoeV = 8.621738e-5
    eV_to_meV = 1000

    if (entropyfile in os.listdir('.')):
        S = genfromtxt(entropyfile)
    else:
        S = getEntropy(folders,T)
        S[isnan(S)] = 0.
        savetxt(entropyfile, S*eV_to_meV, header="S_{2H} (meV/K/f.u.)      S_{1Tp} (meV/K/f.u.)")


    print("S_{2H}(T=300) (with SOC) = %18.12f  [eV/K/f.u.]" %S[30,0])
    print("S_{T'}(T=300) (with SOC) = %18.12f  [eV/K/f.u.]" %S[30,1])

    print("S_{2H}(T=700) (with SOC) = %18.12f  [eV/K/f.u.]" %S[70,0])
    print("S_{T'}(T=700) (with SOC) = %18.12f  [eV/K/f.u.]" %S[70,1])
    
    # Plotting
    f = figure(figsize=(15,12))
    plot(T,S[:,0]*eV_to_meV,lw=6)
    plot(T,S[:,1]*eV_to_meV,lw=6)
    xlim(0,1050)
    ylim(-0.0005,0.02)
    xlabel("Temperature (K)")
    ylabel("Entropy (meV/K/f.u.)")
    legend(['2H', "1T'"], loc=2, fontsize=36)
    savefig('pics/electronicEntropies.png', dpi=300, bbox_inches='tight')

    f = figure(figsize=(15,12))
    plot(T, (S[:,1] - S[:,0])*eV_to_meV)
    xlim(0,1050)
    ylim(-0.0005,0.02)
    xlabel("Temperature (K)")
    ylabel("$\Delta S$ (meV/K/f.u.)")
    savefig('pics/dS.png', dpi=300, bbox_inches='tight')

