#exemple de graphique avec python
#le fichier cheatsheets.pdf peut aider à créer une image avec plus d'options

import matplotlib.pyplot as plt
import math
import numpy as np
from scipy.stats import linregress
from scipy.optimize import curve_fit
# pip3 install --upgrade scipy , si il y a une erreure de compilation

#-------------- pour la courbe de tendance ----------------------------
def func(x, a, b, c):
     return a * x**2 + b * x + c

#------------- Valeurs exp ---------------------------------------------

temps = [1.68916475, 1.952038, 2.18487325, 2.32607, 2.47722875, 2.0102225, 2.35082225, 3.098593, 2.9199705, 2.989775, 2.3859225, 2.77132925, 3.00696075, 3.22035425, 3.48013175]
tempscarre = [2.853277, 3.8104, 4.7736, 5.4106, 6.13695, 4.04099, 5.52354, 9.60127, 8.5262277, 8.93875, 5.692626, 7.68026, 9.041808, 10.37068, 12.11957154] 
temps_obt = [13.1535, 11.312, 10.142, 9.22075, 8.538, 15.33175, 13.401, 15.6855, 11.751, 10.28125, 18.52525, 16.7165, 14.14575, 12.835, 12.0405] 
v_inst = [0.380126962, 0.442008487, 0.492999408, 0.54225524, 0.585617241, 0.326120632, 0.373106485, 0.318765739, 0.425495702, 0.486322188, 0.269901891, 0.299105674, 0.353463054, 0.389559797, 0.415265147] 
acc = [0.225038418, 0.226434366, 0.225642109, 0.233120774, 0.236400147, 0.162231112, 0.158713184, 0.102874349, 0.145719178, 0.162661802, 0.113122656, 0.107928596, 0.117548277, 0.120967995, 0.119324548] 
dist = [0.3, 0.4, 0.5, 0.6, 0.7]
masse = [193.13, 193.13, 193.13, 193.13, 193.13, 294.01, 294.01, 294.01, 294.01, 294.01, 394.96, 394.96, 394.96, 394.96, 394.96] 

dist2 = [0.3, 0.4, 0.6, 0.7]
m = 0.005
g = 9.814
#mesure 1 
m1 = 0
#mesure 2
m2 = 5

temps1 = [temps[i] for i in range(m1,m2)]

masse1 = [masse[i] for i in range(m1,m2)]

mini = 1.6
maxi = 3.7

dDist = 0.03

#---------------------- Style du graphique -----------------------------------

plt.style.use('default')#change le style du graphique
#plt.style.use('ggplot')
#plt.style.use('https://github.com/dhaitz/matplotlib-stylesheets/raw/master/pitayasmoothie-dark.mplstyle')
#plt.style.use('https://github.com/dhaitz/matplotlib-stylesheets/raw/master/pacoty.mplstyle')


#-------------------------- Points -------------------------------

#plt.figure(figsize = (12,8))
ax = plt.axes()
ax.scatter(temps1,dist,label=f'masse 1 = {masse[0]}g',color='b')#créer les points
ax.errorbar(temps1, dist, xerr=0, yerr=dDist, fmt='none', ecolor='r')

#--------------------- Courbe de tendance ------------------------------

x = np.linspace(mini, maxi, 100)
popt, pcov = curve_fit(func, temps1, dist)
y = func(x, *popt)
plt.plot(x, y,color='C0',linestyle=':',label='y={:.3f}$x^2$ {:.3f}x + {:.3f}'.format(popt[0],popt[1],popt[2]))

#--------------------- Titres ---------------------------------------------

ax.set_title('distance en fonction du temps')

plt.xlabel('temps [s]')
plt.ylabel('distance [m]')
plt.legend(fontsize=14)

# Change la taille de la graduation des axes x et y
plt.xticks(fontsize=10)
plt.yticks(fontsize=12)
#------------------ Quadrillage -----------------------------------------

ax.grid(which='major', color='#C6C6C6', linewidth=0.8)
ax.grid(which='minor', color='#D6D6D6', linestyle=':', linewidth=0.5)
ax.minorticks_on()

#------------------ Montrer/Sauvegarder --------------------------

plt.savefig("../logos/graph.pdf")
plt.show()
