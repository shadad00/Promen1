f=@(t,y) (y-2*t*(y.^2))/(1+t)
a = 0
b = 5
ya = 0.4
err = 1e-3
[T Y max min]=ejercicio1_inciso3_auxiliar(f,a,b,ya,err);
max
min