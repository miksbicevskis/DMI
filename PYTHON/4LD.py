# -*- coding: utf-8 -*-
import numpy as np #1
import matplotlib.pyplot as plt #2

def mans_sinuss(x):
    k=1
    a = (-1)**2*2**1*x**2/(2*k)
    S = a

    while k < 500:
        k=k+1
        a = a*(-1)*2**2*x**2/((2*k)*(2*k-1))
        S = S + a
    return S

a = 0 #3
b = 5 * np.pi #4
# funkcijas zÄ«mÄ“Åana
x = np.arange(a,b,0.1) #5
y = mans_sinuss(x) #6a
plt.plot(x,y) #7
plt.grid() #8
#plt.show() #9

# funkcijas atvasinajuma aprekins
n = len(x)
y_prim = []
for i in range(n-1):
    #print i, y[i], y[i+1]
    #print (y[i+1]-y[i])/(x[i+1]-x[i])
    y_prim.append((y[i+1]-y[i])/(x[i+1]-x[i]))
plt.plot(x[:n-1],y_prim)
#plt.show()

# funkcijas otra atvasinajuma aprekins
n = len(x)
y_prim_prim = []
for i in range(n-2):
    #print i, y[i], y[i+1]
    #print (y[i+1]-y[i])/(x[i+1]-x[i])
    y_prim_prim.append((y_prim[i+1]-y_prim[i])/(x[i+1]-x[i]))
plt.plot(x[:n-2],y_prim_prim)
plt.show()


