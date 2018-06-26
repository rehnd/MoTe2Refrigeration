from pylab import *
rcParams.update({'font.size': 48, 'text.usetex': True})

#ds  = 0.048  
ds  = 0.036806 # meV/K/f.u.  average value from 270 to 290 K
ctp = 0.737442 # meV/K/f.u. (value at 280 K, phonon contribution only)

def getCycle(x1,x2,T1):
    """
    Input 
        x1:  starting x fraction
        x2:  ending x fraction at point 2
        T1:  Initial temperature at x1
    Output
         x:  array of all x fraction values for one cycle
         T:  array of all T values for one cycle
    """
    N = 100
    
    T2 = T1*exp( (x2-x1)*ds/ctp )
    T3 = T2
    T4 = T1
    
    x3 = 1
    x4 = 1 + log(T1/T2)*ctp/ds
    
    x12 = linspace(x1,x2,N)
    T12 = T1*exp( (x12-x1)*ds/ctp )
    x23 = array([x2, x3])
    T23 = array([T2, T3])
    x34 = linspace(1, x3, N)
    T34 = T3*exp( (x34-x3)*ds/ctp )
    x41 = array([x4, x1])
    T41 = array([T4, T1])

    x = concatenate([x12,x23,x34,x41])
    T = concatenate([T12,T23,T34,T41])
    
    return x, T


def getV(T):
    """ 
    Input
        T: array of temperature values
           (assumes starting in 1T' phase, xi=0, T[0] = Ti)
    Output
        V: array of voltages corresponding to the Temperatures T
    """
    
    Ti = T[0]
    xi = 0 
    
    # Load in the TV values computed from the CC relation
    TV = genfromtxt('../../data/thermal_properties/electron/charged/TV.dat')
    V  = TV[:,0]
    TV = TV[:,1]
    
    # Use only positive Voltage values
    TV = TV[V>=0]
    V  = V[V>=0]
    
    # Get index and value of Ti from Clausius-Clapeyron data using linear fit V(T)
    Ti_idx   = argmin(abs(TV[TV<Ti]-Ti))

    Ti_est   = TV[TV<Ti][Ti_idx]
    Vi_est   =  V[TV<Ti][Ti_idx]
    Tiplus1  = TV[TV<Ti][Ti_idx+1]
    Viplus1  =  V[TV<Ti][Ti_idx+1]

    TVslope = (Viplus1 - Vi_est) / (Tiplus1 - Ti_est)
    Vi = Vi_est + (Ti - Ti_est)*TVslope
    Vf = Vi + TVslope*(T-Ti)

    return Vf
    

def getQ(V, x):
    """
    Input
        V:  array of voltage values
        x:  array of 2H fraction values
    Output
        sigma: array of charge values corresponding to V
    """
    sigma2h = (V - 0.59)/38.85
    sigmatp = (V - 0.40)/36.87
    dsigma  = sigmatp - sigma2h
    
    # Initial sigma value
    sigma_i = sigmatp[argmin(abs(V-V[0]))]
    
    # Get sigma values along adiabat
    sigma = zeros(len(V))
    for i in range(len(V)):
        sigma[i] = sigma_i - x[i]*dsigma[i] - (sigma_i-sigmatp[i])

    return sigma
    
if __name__ == '__main__':
    # Set x1, x2, and T1 to get x, T (arrays)
    x1 = 0
    x2 = 0.9
    T1 = 270
    x, T = getCycle(x1,x2,T1)

    # Use x, T to get V,Q (also arrays)
    V = getV(T)
    Q = getQ(V,x)

    # Get second set of values for x,T, Q,V
    x2 = 0.7
    xx, TT = getCycle(x1,x2,T1)
    VV = getV(TT)
    QQ = getQ(VV,xx)
    
    # Reference values for plotting V_2H(Q) and V_1T'(Q)
    sigma = linspace(0.05,0.1,len(V))
    v2h = 0.59 + 38.85*sigma
    vtp = 0.40 + 36.87*sigma
    
    # Plotting routine
    f = figure()
    plot(Q,V,'darkorange')
    plot(QQ,VV,'k--')
    plot(sigma,v2h,'b')
    plot(sigma,vtp,'g')
    fill_between(sigma, zeros(len(vtp)), vtp, color='g', alpha=0.25)
    fill_between(sigma, vtp, v2h, color='r', alpha=0.25)
    fill_between(sigma, v2h, 4*ones(len(v2h)), color='b', alpha=0.25)
    legend(['$x_2 = 0.9$', '$x_2 = 0.7$'], loc=4, fontsize=36)
    ylim(3.7,3.8)
    xlim(0.076, 0.096)
    text(0.0785, 3.785,'2H')
    text(0.0855, 3.785,'Mixed')
    text(0.093, 3.785,"1T'")
    text(0.0918, 3.772, "1",fontsize=22)
    text(0.0843, 3.728, "2",fontsize=22)
    text(0.08, 3.728, "3",fontsize=22)
    text(0.0877, 3.772, "4",fontsize=22)
    tick_params(direction='in', width=3, length=9, right='on', top='on')
    xticks([0.08,0.085,0.09,0.095])
    xlabel('$\sigma$ (e/f.u.)')
    ylabel('$V$ (V)')
    savefig('fig3.png', bbox_inches='tight', dpi=300)
    
