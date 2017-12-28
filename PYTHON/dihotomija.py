#-*- coding: utf-8 -*-
import numpy as np #1
import matplotlib.pyplot as plt #2


def sinuss(x): #6a
    k = 0
    a = (-1)**0*x**1/(1)
    S = a

    while k < 500:
        k = k + 1
        a = a*(-1)*x**2/((2*k)*(2*k+1))
        S = S + a

    return S
a = 1.57 #3
b = 4.71 #4
#funkcijas zimesana
x = np.arange(a,b,0.01) #5
y = sinuss(x) #6a
plt.plot(x,y) #7
plt.grid() #8
plt.show() #9

#funkcijas saknes meklesana
delta_x = 0.001
funa = sinuss(a)
funb = sinuss(b)
if funa * funb > 0:
    print "Intervala [%.2f,%.2f] funkcijai nav saknes"%(a,b)
    print "vai funkcijasi dotaja intervala ir saknes"
    exit

print "uz robezam f(%.2f)=%.2f f(%.2f)=%.2f"%(a,funa,b,funb)
k = 0
while b-a > delta_x:
    k = k + 1
    x = ( a + b )/2
    funx = sinuss(x)
    print "f(%3d.   a=%.4f f(%.4f)=%7.4f b=%.4f"%(k,a,x,funx,b)
    if funa * funx > 0:
        a = x
    else:
        b = x 
print "a=%.4f f(%.4f)=%7.4f b=%.4f"%(a,x,funx,b)
print "iteraciju skaits: %d"%(k) 

    

