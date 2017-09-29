from pylab import *
rcParams.update({'font.size': 48, 'text.usetex': True})

dS = genfromtxt('dSph_dSel.dat') # read in as meV/K/f.u.
C2H = 0.729018 # meV/K/f.u.
CTp = 0.734816 # meV/K/f.u.

print('dS(270), dS(280), dS(290) = %g %g %g'%(dS[27],dS[28],dS[29]))
print('C2H  = %g meV/K/f.u.'%C2H)
print('C1Tp = %g meV/K/f.u.'%CTp)

ds = dS[28]

x1 = linspace(0,0.9,1000)
x2 = linspace(0.9,1.0,100)
x3 = linspace(0.1,1.0,1000)
x4 = linspace(0.0,0.1,100)
Tc = 270
Th1 = Tc*exp(x1*ds/CTp)
Th2 = Th1[-1]*ones(len(x2))
Th3 = Tc*exp((x3-0.1)*ds/CTp)
Th4 = 270*ones(len(x4))

lw = 6
lwv=2

x11 = linspace(0,0.7,1000)
x21 = linspace(0.7,1.0,100)
x31 = linspace(0.3,1.0,1000)
x41 = linspace(0.0,0.3,100)
Tc = 270
Th11 = Tc*exp(x11*ds/CTp)
Th21 = Th11[-1]*ones(len(x21))
Th31 = Tc*exp((x31-0.3)*ds/CTp)
Th41 = 270*ones(len(x4))

xl = linspace(-0.3,0,100)
xm = linspace(0,1,100)
xr = linspace(1.0,1.3,100)

lw = 6
lw2 = 4
lwv=4
f = figure()
plot(x1,Th1,'r',linewidth=lw)
plot(x11,Th11,'k--',linewidth=lw2)
plot(x2,Th2,'r',linewidth=lw)
plot(x21,Th21,'k--',linewidth=lw2)
plot(x3,Th3,'r',linewidth=lw)
plot(x31,Th31,'k--',linewidth=lw2)
plot(x4,Th4,'r',linewidth=lw)
plot(x41,Th41,'k--',linewidth=lw2)
axvline(0, color='green',linewidth=lwv)
axvline(1, color='blue', linewidth=lwv)
fill_between(xl, 260*ones(len(xl)), 290*ones(len(xl)), color='g', alpha=0.25)
fill_between(xm, 260*ones(len(xm)), 290*ones(len(xl)), color='r', alpha=0.25)
fill_between(xr, 260*ones(len(xr)), 290*ones(len(xl)), color='b', alpha=0.25)
text(1.05, 287,'2H')
text(0.38, 287,'Mixed')
text(-0.15, 287,"1T'")
ylim(268,290)
yticks([270,275,280,285,290])
xlim(-0.2,1.2)
legend(['$x_2 = 0.9$', '$x_2 = 0.7$'],loc = 4,fontsize=32)
xticks([0,0.25,0.5,0.75,1.0])
xlabel(r'$x$ (fraction of 2H)')
ylabel(r'Temperature (K)')
tick_params(direction='in', width=3, length=6, right='on', top='on')
savefig('fig2.png', dpi=300, bbox_inches='tight')
