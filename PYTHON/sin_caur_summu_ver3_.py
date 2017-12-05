# -*- coding: utf-8 -*-
#f(x)=sin(x) atvasinājums.

from math import sin
def f(x):
    return sin(x)
    
def derivative(x):
    h=0.01
    rise = f(x+h)-f(x)
    run = h
    slope = rise / run
    return slope

print "Dotā funkcija= sin(x)\n"

for k in range(0,5):
    x=k
    fnox=(round(sin(k),2))
    fprimx=round((derivative(k)),2)
    fmt=("{0:10}{1:10}{2:10}".format(x,fnox,fprimx))
    print fmt
    #for line in data:
      #  line=line.strip()
        
    
#    print "x= %s" %k, 
#    print "f(x)= %s" %((round(sin(k),2))), 
#    print "f'(x)= %s" %(round((derivative(k)),2))
    