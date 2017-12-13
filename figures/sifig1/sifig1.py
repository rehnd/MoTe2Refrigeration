from pylab import *
rcParams.update({'font.size': 48, 'text.usetex': True})

# Constants
mol   = 6.022e23
JtoeV = 1.602e-19
nfu   = 2*2*2                 # number of formula units
vfu2h = 0.3551*0.6149*0.698/2 # volume of 1 f.u. of 2H (in nm^3)


TdS = genfromtxt('../../data/thermal_properties/electron/charged/TdS.dat')

Tmax = argmax(TdS[:,0])
T = TdS[Tmax:,0][::-1]
dS = TdS[Tmax:,1][::-1]

print("dS(270) = %f meV/K/f.u."%dS[(T-270)>0][0])
print("dS(280) = %f meV/K/f.u."%dS[(T-280)>0][0])
print("dS(290) = %f meV/K/f.u."%dS[(T-290)>0][0])
print("dS(300) = %f meV/K/f.u."%dS[(T-300)>0][0])



figure()
plot(T, dS)
xlim(0,500)
ylim(0,0.05)
xticks([0,100,200,300,400,500])
#yticks([0,0.01,0.02,0.03,0.04,0.05])
xlabel('Temperature (K)')
ylabel('Entropy (meV/K/f.u.)')
tick_params(direction='in', width=3, length=9, right='on', top='on')
savefig('sifig1.png', dpi=300, bbox_inches='tight')
show()


def old():
    # 2H and 1T' phonopy data
    thermal2h = genfromtxt('../../data/thermal_properties/phonon/2H/thermal.dat', skip_header=20,skip_footer=5)
    thermal1t = genfromtxt('../../data/thermal_properties/phonon/1Tp/thermal.dat',skip_header=20,skip_footer=5)
    
    # Electronic entropy of 1T' and 2H
    selectrons = genfromtxt('../../data/thermal_properties/electron/entropy.dat', skip_header=1)
    sel2h = selectrons[:,0]
    sel1t = selectrons[:,1]
    
    # Temperatures in K, entropy of 2H, 1T'
    T  = thermal2h[:,0]
    sh = thermal2h[:,2]
    st = thermal1t[:,2]
    
    sh /= (mol*JtoeV)
    sh /= 2*2*2
    sh *= 1000

    st /= (mol*JtoeV)
    st /= 2*2*2
    st *= 1000

    st += sel1t
    
    print("S_2H(280K) = %8g meV/K/f.u." %sh[28])
    print("S_Tp(280K) = %8g meV/K/f.u." %st[28])
    
    # print("dSel(300K) = %8g meV/K/f.u." %dSel[30])
    # print("dSel(690K) = %8g meV/K/f.u." %dSel[69])
    
    lws=8
    f = figure(figsize=(15,12))
    plot(T, sh,'orange',lw=lws)
    plot(T, st,'green',lw=lws)
    plot(T, st-sh,lw=lws)
    legend(["$S_\mathrm{2H}$",
            "$S_\mathrm{1T'}$",
            "$S_\mathrm{1T'}-S_\mathrm{2H}$"], loc = 2, fontsize=42)
    xlim(0,1050)
    ylim(0,2.5)
    xlabel('Temperature (K)')
    ylabel('Entropy (meV/K/f.u.)')
    tick_params(direction='in', width=3, length=9, right='on', top='on')
    savefig('sifig1.png', dpi=300, bbox_inches='tight')
    
    
    f = figure(figsize=(15,12))
    plot(T, 100*(sh-sh[28])/sh[28],lw=lws)
    plot(T, 100*(st-st[28])/st[28],lw=lws)
    axhline(0, color='grey',lw=2)
    #plot(T, st,lw=lws)
    legend(["2H", "1T'"], loc = 2, fontsize=36)
    xlim(270,290)
    ylim(-5,5)
    xlabel('Temperature (K)')
    ylabel('Error in entropy near $T=280$ K (\%)')
    tick_params(direction='in', width=3, length=9, right='on', top='on')
    savefig('sifig1b.png', dpi=300, bbox_inches='tight')
