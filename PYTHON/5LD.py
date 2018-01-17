# -*- coding: utf-8 -*-
import random
import numpy as np
import matplotlib.pyplot as plt
from math import sin

def mans_sinuss(x):
    y = (sin(x))**2#np.sin(x)
    return y

N = 90000
x = []
y = []
a = 0.
b = 6.
c = -0.5
d = 2.

for i in range(N):
    x.append(random.uniform(a,b))
    #print "ka veidojas x masivs: ",x
for i in range(N):
    y.append(random.uniform(c,d))
    #print "ka veidojas y masivs: ",y

red_x = []
red_y = []
green_x = []
green_y = []

for i in range(N):
    if (y[i] < mans_sinuss(x[i]) and y[i] > 0) \
    or (y[i] > mans_sinuss(x[i]) and y[i] < 0):
        green_x.append(x[i])
        green_y.append(y[i])
    else:
        red_x.append(x[i])
        red_y.append(y[i])

plt.plot(green_x,green_y,'go')
plt.plot(red_x,red_y,'rv')
plt.grid()
plt.show()

areaRect = (b-a)*(d-c)
areaFunc = areaRect * len(green_x) / N
print areaFunc  #mote carlo metode aprekina laukumu dalai ko iekraso ar zalo krasu un kuru norobezo funkcija


