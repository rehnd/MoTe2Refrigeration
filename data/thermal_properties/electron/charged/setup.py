from pylab import *
import vaspinput
import sys
import os

def setupfolders(folders, charge, T, smear,ismear,nnodes, ne, nfu ):
    basedir = os.getcwd()
    for fold in folders:
        if (not fold in os.listdir('.')):
            os.system('mkdir ' + fold)


        runf = open(fold + '/run.sbatch', 'w')
        runf.write(vaspinput.runscriptheader(fold,nnodes))

        
        for ch in charge:
            chfldr = basedir + "/" + fold + "/ch%.2f"%ch
            os.system("mkdir " + chfldr)
            i = 0
            for temp in T:
                
                fldr = '%s/ch%.2f/T%04.0f'%(fold,ch,temp)
                if (not fldr in os.listdir('.')):
                    os.system('mkdir ' + fldr)


                nelectrons = ne - ch*nfu
                # Get INCAR File
                f = open(fldr + '/INCAR','w')
                f.write(vaspinput.INCAR(ismear,smear[i],nelectrons))
                f.close()

                # Get POSCAR file
                f = open(fldr + '/POSCAR','w')
                if fold == '2H':
                    f.write(vaspinput.POSCAR_2H())
                elif fold == '1Tp':
                    f.write(vaspinput.POSCAR_Tp())
                else:
                    exit('Error: ' + fldr + " does not exist")
                    f.close()

                # Get KPOINTS File
                f = open(fldr + '/KPOINTS','w')
                f.write(vaspinput.KPOINTS())
                f.close()
            
                # Get POTCAR file
                vaspinput.copyPOTCAR(fldr)

                # write command to run
                runf.write('cd %s/%s\n'%(basedir,fldr))
                runf.write('mpirun -np %d vasp\n\n' %(nnodes*8))
                i += 1

        runf.write("END=$(date +%s)\n")
        runf.write('echo "Total runtime for this script: $(($END - $START))\n')
        runf.close()

def removefolders(folders):
    for fold in folders:
        os.system('rm -rf ' + fold + '/T* ' + fold + '/run.sbatch')

def run(folders):
    for fold in folders:
            os.system('cd ' + fold + ' && sbatch run.sbatch')
        
if __name__ == '__main__':
    folders = ['2H', '1Tp'] # 2H phase is negligible

    # charge array in e/f.u. (negative values = adding electrons)
    charge = array([-0.05, -0.04, -0.03, -0.02, -0.01, 0.0,
                    0.01,   0.02,  0.03,  0.04,  0.05, 0.06,
                    0.07,   0.08,  0.09,  0.10])

    nfu = 2
    ne = 36
    
    ismear = -1 # corresponds to Fermi smearing

    T = array([0,20,40,60,80,100,120,140,160,180,200,300,400,500,600,700,800,900,1000])
    TtoeV = 8.621738e-5
    smear = T*TtoeV
    nnodes = 8

    # Parse command-line arguments
    if len(sys.argv) != 2:
        print('Usage:\n\tpython setup.py <argument>')
        print("\targument = folders  _or_ remove _or_ run")
        exit()
    elif sys.argv[1] == 'folders':
        setupfolders(folders, charge, T, smear, ismear, nnodes, ne, nfu)
    elif sys.argv[1] == 'remove':
        removefolders(folders)
    elif sys.argv[1] == 'run':
        run(folders)
    else:
        print("<argument> is not valid. Use folders _or_ remove _or_ run")
        exit()
