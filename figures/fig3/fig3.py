from pylab import *
rcParams.update({'font.size': 48, 'text.usetex': True})

# Set the final x value along the first adiabat from 1T'-->2H
xf = 0.9 #1.0

# Set initial temperature
Ti = 270

ds = 0.048   # meV/K/f.u.  average value from 270 to 290 K
ctp = 0.7348 # meV/K/f.u. (value at 280 K, phonon contribution only)

# Load in the TV values computed from the CC relation
TV = genfromtxt('TV.dat')
V  = TV[:,0]
TV = TV[:,1]

# Use only positive Voltage values
TV = TV[V>=0]
V  = V[V>=0]

# Get array of x values and T_final values along adiabat
x = linspace(0,xf,100)
Tf = Ti*exp(x*ds/ctp)    #Tf = Ti*(1+x*ds/ctp) # Linear option
print("Ti(x=0) = %g\nTf(x=1) = %g\n"%(Tf[0],Tf[-1]))


# Get index and value of Ti from Clausius-Clapeyron data using linear fit V(T)
Ti_idx = argmin(abs(TV[TV<Ti]-Ti))
Ti_est = TV[TV<Ti][Ti_idx]
Vi_est =  V[TV<Ti][Ti_idx]

Tiplus1  = TV[TV<Ti][Ti_idx+1]
Viplus1  =  V[TV<Ti][Ti_idx+1]

TVslope = (Viplus1 - Vi_est) / (Tiplus1 - Ti_est)

Vi = Vi_est + (Ti - Ti_est)*TVslope

print("Vi, Ti estimate  = %g %g"   %(Vi_est,Ti_est))
print("Vi, Ti actual    = %g %g \n"%(Vi,Ti))


Vf = Vi + TVslope*(Tf-Ti)
print("Vf = %g"%Vf[-1])


# Now compute charge values for 2H and 1Tp and diff in charge Q_1tp - Q_2h
sigma2h = (Vf - 0.59)/38.85
sigmatp = (Vf - 0.40)/36.87
dsigma  = sigmatp - sigma2h

# Initial sigma value
sigma_i = sigmatp[argmin(abs(Vf-Vi))]

# Get sigma values along adiabat
sigma_adiabat = zeros(len(Vf))
for i in range(len(Vf)):
    sigma_adiabat[i] = sigma_i - x[i]*dsigma[i] - (sigma_i-sigmatp[i])

# Get reference for V_2H and V_1T' for plotting
sigma = linspace(0.05,0.09,len(Vf))
v2h = 0.59 + 38.85*sigma
vtp = 0.40 + 36.87*sigma

# Plotting routine
f = figure()
plot(sigma,v2h,'b')
plot(sigma,vtp,'g')
plot(sigma_adiabat,Vf,'r')
ylim(3.54,3.66)
xlim(0.074, 0.09)
tick_params(direction='in', width=3, length=9, right='on', top='on')
xlabel('$\sigma$ (e/f.u.)')
ylabel('$V$ (V)')
savefig('fig3.png', bbox_inches='tight', dpi=200)
#show()
