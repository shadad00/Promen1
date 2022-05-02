function [Multiplicador R D] = punto25Promen(T,H,C,h0,finalLlenado,paso, Ma, Mb, Mp)
  Multiplicador = [];
  R = [];
  D = [];
  index = 1;
  for m=Ma:Mp:Mb
  [Taux Yaux] = punto21Promen(T,H,C,h0,finalLlenado,paso, m, 0);
  [Evalues, Svalues] = punto23APromen(Taux,Yaux,H,C, m);
  figure
  hold on
   plot(Taux,Evalues,Taux,Svalues);
   title(['Hidrograma de entrada y de salida (Multiplicador:' num2str(m) ')']);
   ylabel('Flujo de entrada/salida (m^3/s)');
   xlabel('Tiempo (s)');
   legend({'Entrada','Salida'},'Location','northwest');
   axis tight;
   grid on;
  hold off
  [r d] = punto23BPromen(Evalues, Svalues, paso);
  Multiplicador(index) = m;
  R(index) = r;
  D(index) = d;
  index = index + 1;
  endfor
  
  end