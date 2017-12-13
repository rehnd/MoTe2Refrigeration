from pylab import *
from scipy import interpolate
import scipy.constants as sc
import os
rcParams.update({'font.size': 48, 'text.usetex': True})

global vol2H, vol1Tp, eV, mol

vol2H  = 0.3551*0.6149*0.698/2 # volume of one formula unit of 2H (in nm^3)
vol1Tp = 0.3551*0.6149*0.698/2 # volume of one formula unit of 2H (in nm^3)
eV = sc.physical_constants["electron volt"][0]
mol = sc.N_A

def getTotalEntropy(thermal2h, thermal1tp, elentropy2H, elentropy1Tp):
    """
    Return values:
       T:  Nx1 array containing temperatures (in K)
       entropies: Nx2 array containing S_{2H}, S_{1T'} in (meV/K/f.u.)
    Note:
       S_{2H/1T'} = total entropy (S_{ph} + S_{el}) for both 2H, 1T'
    """

    nfu = 2*2*2 # Number of formula units in a supercell

    # Read files
    thermal_2h    = genfromtxt(thermal2h,  skip_header=20, skip_footer=5)
    thermal_1tp   = genfromtxt(thermal1tp, skip_header=20, skip_footer=5)

    elentropy_2h  = genfromtxt(elentropy2H)
    elentropy_1tp = genfromtxt(elentropy1Tp)

    T = thermal_2h[:,0]

    # Run checks on data sizes
    if (size(thermal_1tp[:,0]) != size(T)):
        print("Error: 2H thermal data size does not match 1T' thermal data size")
        print("size(T)=%g size(thermal_1tp[:,0])=%g"%(size(T), size(thermal_1tp[:,0])))
        exit()

    # Fill entropies array with Phonon data (add electron data later)
    phonon_entropies = zeros([len(T),2])
    phonon_entropies[:,0] = thermal_2h[:,2]
    phonon_entropies[:,1] = thermal_1tp[:,2]

    # Unit conversion: thermal_2h and thermal_1tp entropies in   J/K/mol
    phonon_entropies[:,:] /= eV       # eV/K/mol
    phonon_entropies[:,:] /= mol      # eV/K/supercell
    phonon_entropies[:,:] /= nfu      # eV/K/f.u.
    phonon_entropies[:,:] *= 1000.     # meV/K/f.u.

    return T, phonon_entropies, elentropy_2h, elentropy_1tp


def integrate_dS(T,dS):
    """
    Return values:
        integral: array of $$ -\int_0^T \Delta S(T') dT'$$  in (eV/K/f.u.)
    Note:
        Each index in the array contains the value of the integral up to temperature T.
    """
    delS = dS/1000 # Convert to eV/K/f.u.

    integral = zeros(len(dS))

    for i in range(len(dS)):
        integral[i] = trapz(delS[:i], T[:i])

    return -integral


def integrate_dQ():
    """
    Return values:
        integral: array of $$\int \Delta Q dV$$
    """
    # Define voltage values
    #V = linspace(-1.6,4.3889,10000)
    V = linspace(-1.6,4.5,10000)
    V_upper = 0.59 # value of V at sigma = 0 (from 2H curve)
    V_lower = -0.36
    
    # Compute \Delta Q based on equation for V-Q diagram in fig1:
    sig2h = zeros(len(V))
    sig2h[V>V_upper] = (V[V>V_upper]-0.59)/38.8507
    sig2h[V<V_lower] = (V[V<V_lower]+0.36)/32.8307
    sigTp = (V - 0.4) / 36.8776
    dQ  = sigTp - sig2h
    
    # Compute integral \int \Delta Q dV
    integral = zeros(len(V))

    for i in range(len(V)):
        integral[i] = trapz(dQ[:i], V[:i], dx=(V[1]-V[0]))

    return V, dQ, integral, sig2h, sigTp


def computeTofV(intdQ, T, V, sig2h, sigTp, Sel_2h, Sel_1tp,ch_Sel,T_Sel,Tph,dSph):
    """
    Return values:
        TofV:
    """
    plotTest = False

    # First interpolate the phonon data to get a smoother function
    tck = interpolate.splrep(Tph, dSph, s=0)
    Tsm = linspace(0,1000,1000)
    dSph_sm = interpolate.splev(Tsm, tck, der=0)

    if plotTest:
        figure()
        plot(Tph, dSph, 'o', color='b')
        plot(Tsm, dSph_sm, 'g')
        xlabel("Temperature (K)")
        ylabel("$\Delta S_\mathrm{ph}(T)$ (meV/K/f.u.)")
        show()
    
    def find_nearest(array,value):
        return abs(array-value).argmin()

    def getSofT(Q, Q_array, S):
        dQarray = Q_array[1]-Q_array[0] # Assumes equal spacing of elements

        dQ = Q-Q_array

        if( size(dQ[dQ>0]) == 0 ):
            # Q is smaller than all values (very negative)
            #   ==> Take entropy to be entropy of most negative charge value
            ind1 = 0
            ind2 = 0
            x    = 1
        elif( size(dQ[dQ<0]) == 0 ):
            # Q is larger than all values (very posiive)
            #   ==> Take entropy to be entropy of most positive charge value
            ind1 = -1
            ind2 = -1
            x    = 0
        else:
            ind1 = argwhere(dQ>0)[-1][0]
            ind2 = argwhere(dQ<0)[0][0]
            x    = abs(dQ[ind1]/dQarray)

        return S[:,ind1] + x*(S[:,ind2]-S[:,ind1]) 
        
    print("Computing T(V). This may take a while...")
    TofV = zeros(len(V))
    TdS  = zeros([len(V),2])
    TS   = zeros([len(V),3])
    for i in range(len(intdQ)):
        if mod(i,500) == 0: print("Iteration %5d of %d"%(i,len(V)))
        
        # First get interpolated (in Q direction) values of S_2H, S_1T'
        S2h_of_T = getSofT(sig2h[i],ch_Sel, Sel_2h)
        STp_of_T = getSofT(sigTp[i],ch_Sel, Sel_1tp)

        # Interpolate S2H along T
        tck = interpolate.splrep(T, S2h_of_T*1000, s=0)
        S2HofT = interpolate.splev(Tsm, tck, der=0)
        
        # Interpolate S1T' along T
        tck = interpolate.splrep(T, STp_of_T*1000, s=0)
        STpofT = interpolate.splev(Tsm, tck, der=0)

        # Interpolate dS along T to fit to rough data
        tck = interpolate.splrep(T, (STp_of_T - S2h_of_T)*1000, s=0)
        dSel = interpolate.splev(Tsm, tck, der=0)

        # Compute \Delta S = \Delta S_ph + \Delta S_el at all values of T
        dS_sm = dSph_sm + dSel

        
        if (mod(i,1000) == 0 and plotTest):
            print(sig2h[i],sigTp[i])
            
            figure()
            #plot(T_Sel, (STp_of_T - S2h_of_T)*1000,'o',color='b')
            #plot(T_Sel, STp_of_T*1000,'o',color='g')
            plot(Tsm, dS_sm, 'g')
            xlim(0,1000)
            ylim(0,0.06)
            legend(['2H', '1Tp'],loc=2)
            show()


        # Integrate up to T for each value of T
        intdS_sm = zeros(len(dS_sm))
        for j in range(len(Tsm)):
            intdS_sm[j] = -trapz(dS_sm[:j], Tsm[:j])

            # For visualization of contour
            # if i == 500:
            #    figure()
            #    plot(Tsm, intdS_sm)
            #    show()
        
        # Find the value T for which intdS most closely matches intdQ[i]
        k = find_nearest(intdS_sm/1000, intdQ[i])
        TofV[i] = Tsm[k]
        TdS[i,:] = [Tsm[k], dS_sm[k]]
        TS[i,:]  = [Tsm[k], S2HofT[k], STpofT[k]]

    return TofV, TdS, TS

def smoothTofV(T,V, TdS):
    """
    Return values:
       Treturn: array of temperatures as function of V
       Vreturn: array of voltage values
    Description:
       TofV has a step-like character, and this returns a 'smoothed' version of it.
    """
    maxTind = TdS[:,0].argmax()

    tneg = TdS[:maxTind,0]
    dsneg = TdS[:maxTind,1]
    Vneg = V[:maxTind]
    
    tpos = TdS[maxTind:,0]
    dspos = TdS[maxTind:,1]
    Vpos = V[maxTind:]
    
    tpos, tposind = unique(tpos,return_index=True)
    tneg, tnegind = unique(tneg,return_index=True)
    
    Vneg = Vneg[tnegind]
    Vpos = Vpos[tposind]
    
    Tsmpos = linspace(tpos[0],tpos[-1],100)
    tck = interpolate.splrep(tpos, dspos[tposind], s=0)
    dSpos_sm = interpolate.splev(Tsmpos, tck, der=0)
    
    Tsmneg = linspace(tneg[0],tneg[-1],100)
    tck = interpolate.splrep(tneg, dsneg[tnegind], s=0)
    dSneg_sm = interpolate.splev(Tsmneg, tck, der=0)
    
    tck = interpolate.splrep(tneg, Vneg, s=0)
    Vneg_sm = interpolate.splev(Tsmneg, tck, der=0)
    
    tck = interpolate.splrep(tpos, Vpos, s=0)
    Vpos_sm = interpolate.splev(Tsmpos, tck, der=0)

    Treturn = concatenate([ Tsmneg,  Tsmpos[::-1]])
    Vreturn = concatenate([Vneg_sm, Vpos_sm[::-1]])

    return Treturn, Vreturn


def print_Vt_T300K(Tnew, Vnew):
    """
    Computes the T=300 K transition voltage from the smoothed T-V diagram
    Does not return a value; just prints the values to the screen
    """
    Vt1 = Vnew[Vnew<0][Tnew[Vnew<0] <= 300][-1]
    Vt2 = Vnew[Vnew>0][Tnew[Vnew>0] <= 300][0]
    T1 =  Tnew[Vnew<0][Tnew[Vnew<0] <= 300][-1]
    T2 =  Tnew[Vnew>0][Tnew[Vnew>0] <= 300][0]
    print("Transition Voltages:\n\tVt1(%.2f K) = %8g\n\tVt2(%.2f K) = %8g" %(T1,Vt1,T2,Vt2))


def computeQT(V,TV):
    """
    Generates values for a Temperature vs. excess charge phase diagram
    
    Return values:
        q2H:  charge values for 2H
        q1Tp: charge values for 1T'

    Description:
        Uses the polynomial (linear) fit of fig1.py. TV values from the TV phase
        diagram are passed to this function, and the Q(V) fits from fig1.py are used
        to generate TQ (or Tsigma).

            sigma_2H(V) = (V - 0.59)/38.8507      (V > 0)
            sigma_2H(V) = (V + 0.36)/32.8307      (V < 0)
            sigma_Tp(V) = (V - 0.40)/36.8776      (all V)
    """

    q2H = zeros(len(V))
    q2Hp = (V - 0.59)/38.8507
    q2Hn = (V + 0.36)/32.8307
    q2H[q2Hp>=0] = q2Hp[q2Hp>=0] #= (V[V>=0] - 0.59)/38.8507
    q2H[q2Hn<0]  = q2Hn[q2Hn<0] #(V[V<0] + 0.36)/32.8307
    q1Tp = (V - 0.40)/36.8776

    return q2H, q1Tp

if __name__ == '__main__':
    plotSupFigs = False  # Option to plot supporting figures
    plotFigure4 = True   # Option to plot Figure 4
    
    thermal2h = '../../phonon/2H/thermal.dat'
    thermaltp = '../../phonon/1Tp/thermal.dat'
    #elentropy = '../../data/thermal_properties/electron/entropy.dat'
    elentropy2H  = "entropy2H.dat"
    elentropy1Tp = "entropyTp.dat"
    
    Tph, Sph, Sel_2h, Sel_1tp = getTotalEntropy(thermal2h,thermaltp,elentropy2H, elentropy1Tp)
    dSph = Sph[:,1]-Sph[:,0]  # meV/K/f.u.

    #T = linspace(0,1000,len(dSph))
    #intdS = integrate_dS(T,dS) # eV/f.u.

    V, dQ, intdQ, sig2h, sigTp = integrate_dQ()
    ch_Sel = arange(-0.05, 0.101,0.01)
    T_Sel = array([0,20,40,60,80,100,120,140,160,180,200,300,400,500,600,700,800,900,1000])

    TofV, TdS, TS = computeTofV(intdQ, T_Sel, V, sig2h, sigTp, Sel_2h, Sel_1tp, ch_Sel, T_Sel, Tph, dSph)

    savetxt('TS.dat', TS)
    
    if ('TV.dat' in os.listdir('.') and 'TdS.dat' in os.listdir('.')):
        TofV = genfromtxt('TV.dat')
        TdS = genfromtxt('TdS.dat')
    else:
        #TofV, TdS, TS = computeTofV(intdQ, T_Sel, V, sig2h, sigTp, Sel_2h, Sel_1tp, ch_Sel, T_Sel, Tph, dSph)
        #saveTV = zeros([len(Tnew),2])
        #saveTV[:,0] = Vnew
        #saveTV[:,1] = Tnew
        #savetxt('TV.dat', saveTV)
        #savetxt('TdS.dat', TdS)
        print("option commented out")
    
    Tnew, Vnew = smoothTofV(TofV,V,TdS)
    
    print_Vt_T300K(Tnew,Vnew)

    q2H, q1Tp = computeQT(Vnew,Tnew)
    
    # Generate fill between data for green portion of graph
    V0=-1.6
    Vf=4.22538
    Vbefore = linspace(-4,V0,len(Vnew))
    Vafter  = linspace(Vf, 6,len(Vnew))
    bottom  = concatenate([Vbefore,Tnew, Vafter])
    top     = 1000*ones(len(bottom))
    x       = concatenate([Vbefore,Vnew,Vafter])

    top3 = zeros(len(Tnew))
    top3 = Tnew #[Tnew2>0] = Tnew2[q1Tp>0]
    top3 = concatenate([zeros(100),top3,zeros(100)])
    q2H = concatenate([linspace(-0.1,q2H[0],100),q2H,linspace(q2H[-1],0.15,100)])
    q1Tp = concatenate([linspace(-0.1,q1Tp[0],100),q1Tp,linspace(q1Tp[-1],0.15,100)])
    top2 = 1000*ones(len(q2H))
    Tnew2 = array(concatenate([zeros(100),Tnew,zeros(100)]))
    
    if plotSupFigs:
        figure()
        plot(Tph, intdS,lw=lws)
        xlim(0,1050)
        ylim(-0.05,0)
        xlabel('$T$ (K)')
        ylabel("$-\int \Delta S(T') dT'$ (eV/f.u.)")
        savefig('pics/intdS.png',dpi=200,bbox_inches='tight')

        figure()
        plot(V, dQ,lw=lws)
        axhline(0, color='grey', lw=1)
        xlabel('$V$ (V)')
        ylabel("$\Delta \sigma(V)$ (e/f.u.)")
        savefig('pics/dQ.png',dpi=200,bbox_inches='tight')

        figure();
        plot(V, intdQ);
        xlabel('$V$ (V)');
        ylabel("$\int \Delta \sigma(V') dV'$ (eV/f.u.)");
        savefig('pics/intdQ.png',dpi=200,bbox_inches='tight')
        
        f = figure()
        plot(V,TofV,linewidth=5)
        ylim(0,800)
        xlim(-3,5)
        xlabel('Voltage (V)')
        ylabel('Temperature (K)')
        savefig('pics/TofV.png',dpi=300,bbox_inches='tight')
