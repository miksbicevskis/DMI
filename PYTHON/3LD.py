# -*- coding: utf-8 -*-
import numpy as np #1 import matplotlib.pyplot as plt #2 def 
sinuss(x): #6b
    k=1
    a = (-1)**2*2**1*x**2/(2*k)
    S = a
    while k < 500:
        k=k+1
        a = a*(-1)*2**2*x**2/((2*k)*(2*k-1))
        S = S + a
    return S a = 1.5 #3 b = 3 #4
# funkcijas zīmēšana
x = np.arange(a,b,0.01) #5 y = sinuss(x) #6a yy = np.sin^2(x) 
plt.plot(x,y) #7 plt.grid() #8 plt.show() #9
# funkcijas saknes meklēšana
delta_x = 1.e-5 #0.00001 funa = sinuss(a) funb = sinuss(b) if 
funa * funb > 0:
    print "Starp [%.2f,%.2f] funkcijai nav saknes"%(a,b),
    print "vai funkcijai šajā intervālā ir pāru sakņu skaits"
    exit() print "Uz robežām f(%.2f)=%.2f f(%.2f)=%.2f"%(a,funa,b,funb) k 
= 0 while b-a > delta_x:
    k = k + 1
    x = (a + b)/2
    funx = sinuss(x)
    print "%3d.  a=%.9f f(%.9f)=%12.9f b=%.9f"%(k,a,x,funx,b)
    if funa * funx > 0:
        a = x
    else:
        b = x print "a=%.9f f(%.9f)=%12.9f b=%.9f"%(a,x,funx,b) print 
"Iterāciju skaits: %d"%(k)
