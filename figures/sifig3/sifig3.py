from pylab import *
rcParams.update({'font.size': 48, 'text.usetex': True})

x1 = 0
x2 = linspace(0.01,1,1000)

dS  = 0.036806
CTp = 0.737442

COP = 1./( exp((x2-x1)*dS/CTp) - 1)

lws=8
f = figure()
plot(x2,COP,lw=lws)
xlim(0.5,1)
xlabel(r'$x_2$')
ylabel("COP")
ylim(10,50)
xticks([0.5,0.6,0.7,0.8,0.9,1.0])
tick_params(axis='x', pad=15)
tick_params(axis='y', pad=15)
tick_params(direction='in', width=3, length=8, right='on', top='on',which='major')
savefig('sifig3.png', dpi=300, bbox_inches='tight')
