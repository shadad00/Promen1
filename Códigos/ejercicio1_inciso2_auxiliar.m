function [errores orden]=ejercicio1_inciso2_auxiliar(f,a,b,ya,expi,expf,sol)
errores=zeros(expf-expi,3);
orden = zeros(expf-expi,3);
index=1;
 
for k=expi:expf
  h=(b-a)/(2^k);

  errores(index,1)=h;
  [TPH FPH]=heun(f,a,b,ya,2^k);
  errores(index,2)=abs(FPH(end)-feval(sol,b));
  [TRK FRK]=rk4(f,a,b,ya,2^k);
  errores(index,3)=abs(FRK(end)-feval(sol,b)); 
  if (index > 1)
    orden(index-1,1)=h;
    orden(index-1,2)=errores(index,2)/errores(index-1,2);
    orden(index-1,3)=errores(index,3)/errores(index-1,3);
  end

  index = index + 1 ;  
end 
end