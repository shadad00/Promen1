function [Taux Yaux]=punto21Promen(T,H,C,h0,finalLlenado,paso, multiplicador)
  fun0=@(t,h)(multiplicador*3.35*(t/1000)^5*exp(-0.667*t/1000))/((27.5*h.^3)-(372*h.^2)+2130*h); %%llenado y sin vaciado
  fun1=@(t,h)(multiplicador*3.35*(t/1000)^5*exp(-0.667*t/1000)-C*((h-H).^(3/2)))/((27.5*h.^3)-(372*h.^2)+2130*h);%%llenado y con vaciado
  fun2=@(t,h)(-C*((h-H).^(3/2)))/((27.5*h.^3)-(372*h.^2)+2130*h);%%sin llenado y con vaciado
  


  inicio=0;
  vaciando = (h0 > H) ; %% comienza con h0=20 < H=30  
  Taux=[inicio];
  Yaux=[h0];
  finalInterval=T;
  
  
while(true)
  if(!vaciando)
    [T Y]=rk4PromenMax(fun0,Taux(end),finalLlenado,Yaux(end),(finalLlenado-Taux(end))/(paso),H);%%si > H comienza a vaciarse
  else 
     [T Y]=rk4PromenMen(fun1,Taux(end),finalLlenado,Yaux(end),(finalLlenado-Taux(end))/(paso),H); %%si < H deja de vaciarse
  endif
  Yaux=[Yaux;Y(2:end)];
  Taux=[Taux;T(2:end)];
  if(Yaux(end) > H ) %%se esta vaciando
    vaciando=true;
  else 
     vaciando = false; 
  endif
  if(Taux(end) == finalLlenado)
    break;
  endif
 endwhile
  [T Y]=rk4PromenMen(fun2,Taux(end),finalInterval,Yaux(end),(finalInterval-Taux(end))/(paso),H); %vaciado hasta tener menos de H.
  Yaux=[Yaux;Y(2:end)];
  Taux=[Taux;T(2:end)];
  [max index]=max(Yaux);
  plot(Taux, Yaux, Taux(index), max , 'ro') ;
end