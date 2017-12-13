from pylab import *
rcParams.update({'font.size': 48, 'text.usetex': True})

mol   = 6.022e23
JtoeV = 1.602e-19
nfu   = 2*2*2 # number of formula units
vfu2h = 0.3551*0.6149*0.698/2 # volume of 1 f.u. of 2H (in nm^3)
vfu1tp= 0.3452*0.6368*0.698/2 # volume of 1 f.u. of 1T' (in nm^3)

tp = genfromtxt('thermal-1tp.dat', skip_header=20, skip_footer=5)
h = genfromtxt('thermal-2h.dat', skip_header=20, skip_footer=5)

T = tp[:,0]
ch = h[:,3]  # in J/K/mol
chJcm3 = ch*1e21/(vfu2h*mol*nfu) # 2H heat capacity in J/K/cm3

ctp = tp[:,3] # J/K/mol


ch /= JtoeV # eV/K/mol
ch /= mol   # eV/K/unit cell
ch /= nfu   # eV/K/f.u.
ch *= 1000  # meV/K/f.u.

ctp /= JtoeV # eV/K/mol
ctp /= mol   # eV/K/unit cell
ctp /= nfu   # eV/K/f.u.
ctp *= 1000  # meV/K/f.u.

#ctpel = genfromtxt('Ctp_el.dat') # eV/K/f.u.
#ctpel *= 1000 # meV/K/f.u.

ctp_new = ctp[:-1] #+ ctpel  # meV/K/f.u.

print("C1T'(270) = %f meV/K/f.u." %ctp[(T-270)>0][0])
print("C1T'(280) = %f meV/K/f.u." %ctp[(T-280)>0][0])
print("C1T'(290) = %f meV/K/f.u." %ctp[(T-290)>0][0])
print("C1T'(300) = %f meV/K/f.u." %ctp[(T-300)>0][0])

lws = 8
f = figure(figsize=(16,12))
plot(T, ch, 'orange', lw=lws)
plot(T[:-1], ctp_new, 'g', lw=lws)
plot(T[:-1], ctp_new - ch[:-1], lw=lws)
xlim(0,1100)
ylim(0, 0.9)
xlabel('Temperature (K)')
ylabel('Specific heat (meV/K/f.u.)')
legend(['$C_\mathrm{2H}$', "$C_\mathrm{1T'}$", "$C_\mathrm{1T'}-C_\mathrm{2H}$"],loc=5)
tick_params(direction='in', width=3, length=9, right='on', top='on')
savefig('sifig2.png',dpi=300,bbox_inches='tight')

ctpJcm3 = copy(ctp_new)
ctpJcm3 /= 1000   # eV/K/f.u.
ctpJcm3 *= mol    # eV/K/mol
ctpJcm3 *= JtoeV  # J/K/mol
ctpJcm3 = ctpJcm3*1e21/(vfu1tp*mol*1) # 2H heat capacity in J/K/cm3 (nfu = 1 here)

print("T=700 K heat capacit of 2H = %g meV/K/f.u."%ch[70])
print("                           = %g J/K/cm3"%chJcm3[70])

print()
print("T=320 K heat capacit of 1t' = %g meV/K/f.u."%(ctp_new[32]))
print("T=270 K heat capacit of 1t' = %g meV/K/f.u."%(ctp_new[27]))
print("C_1tp(320) - C_1tp(270) = %g meV/K/f.u." %abs(ctp_new[32]-ctp_new[27]))

print()
print("T=320 K heat capacit of 2H = %g meV/K/f.u."%(ch[32]))
print("T=270 K heat capacit of 2H = %g meV/K/f.u."%(ch[27]))
print("C_2H(320) - C_2H(270) = %g meV/K/f.u." %abs(ch[32]-ch[27]))


print()
print("C_2H(280)  = %g meV/K/f.u." %ch[28])
print("C_1T'(280) = %g meV/K/f.u." %ctp[28])


print()
print("C_2H(280) = %g J/K/cm3" %chJcm3[28])
print("C_1T'(280) = %g J/K/cm3" %ctpJcm3[28])
