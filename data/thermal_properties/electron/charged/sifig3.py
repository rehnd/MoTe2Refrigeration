from scipy import interpolate
from pylab import *

plot1 = False
plot2 = False

TSel = genfromtxt("TS.dat")

Tel = TSel[:,0]
Sel2H = TSel[:,1]
SelTp = TSel[:,2]

Qpos = argmax(Tel)

Tel = Tel[Qpos:][::-1]
Sel2H = Sel2H[Qpos:][::-1]
SelTp = SelTp[Qpos:][::-1]

Tel, Telind = unique(Tel, return_index=True)
Sel2H = Sel2H[Telind]
SelTp = SelTp[Telind]


print(Tel)

Telnew = linspace(0,600)
tck = interpolate.splrep(Tel, Sel2H, s=0)
Sel2H = interpolate.splev(Telnew,tck,der=0)

tck = interpolate.splrep(Tel, SelTp, s=0)
SelTp = interpolate.splev(Telnew,tck,der=0)

if plot1:
    plot(Telnew, Sel2H)
    plot(Telnew, SelTp)
    show()


dTnew = Telnew[1]-Telnew[0]
Cel2H = Telnew[:-1]*diff(Sel2H)/dTnew#, axis=Tel)
CelTp = Telnew[:-1]*diff(SelTp)/dTnew#, axis=Tel)


tck = interpolate.splrep(Telnew[:-1], Cel2H, s=0)
Cel2H = interpolate.splev(Telnew,tck,der=0)

tck = interpolate.splrep(Telnew[:-1], CelTp, s=0)
CelTp = interpolate.splev(Telnew,tck,der=0)


if plot2:
    figure()
    plot(Telnew, Cel2H)
    plot(Telnew, CelTp)
    xlim(0,600)
    show()




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

#ctp_new = ctp[:-1] + ctpel  # meV/K/f.u.

figure()
plot(T, ch)
plot(T, ctp)
plot(Telnew, Cel2H)
plot(Telnew, CelTp)
xlim(0,600)
show()
