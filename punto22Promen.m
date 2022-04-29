function []=punto22Promen(t,Yaux,H,C)
 %% h(t) hallada en punto 1 
 %% t tiempos de evaluacion
 Evalues=[];
 E=@(t) 3.35*(t/1000)^5*exp(-0.667*t/1000);
 
 current=1;
 while(current <= 301)
   if(current>181)
      Evalues=[Evalues;0];
    else
      Evalues=[Evalues;E(t(current))]
    endif
   current=current+1;
 endwhile

S=@(h) C*((h-H).^(3/2)); 
Svalues=[];
current=1;
while(current <= 301)
  if(Yaux(current) > H )
    Svalues=[Svalues;S(Yaux(current))];
  else
    Svalues=[Svalues;0];
  endif
  current=current+1;
endwhile  
  plot(t,Evalues,t,Svalues);
end