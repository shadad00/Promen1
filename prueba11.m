f=@(t,y) (y-2*t*(y.^2))/(1+t)
a = 0
b = 5
ya = 0.4
sol=@(t) (1+t)/((t.^2)+2.5)
expi = 3
expf = 9
[errores]=punto1Promen(f,a,b,ya,expi,expf,sol);
errores