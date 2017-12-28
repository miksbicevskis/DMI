from math import sin

x = 1. * input("Lietotaj ludzu ievadiet argumentu (x): ")
y = (sin(x))**2
print "sin^2(%6.2f) = %6.2f" %(x,y)

k=1
a = (-1)**2*2**1*x**2/(2*k)
S = a
print "a%d = %6.2f S%d = %6.2f"%(k,a,k,S)

while k < 50:
    k=k+1
    a = a*(-1)*2**2*x**2/((2*k)*(2*k-1))
    S = S + a
    print "a%d = %6.2f S%d = %6.2f"%(k,a,k,S)

print "Beigas!"


