function [errores]=ejercicio1_inciso1_auxiliar(f,a,b,ya,expi,expf,sol)
errores=zeros(expf-expi,3);
index=1;
for k=expi:expf
errores(index,1)=(b-a)/(2^k);
[TPM FPM]=puntoMedio(f,a,b,ya,2^k);
errores(index,2)=abs(FPM(end)-feval(sol,b));
[TRK FRK]=rk3(f,a,b,ya,2^k);
errores(index,3)=abs(FRK(end)-feval(sol,b));
index = index + 1 ;
end
end