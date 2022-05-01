function [Multiplicador R D] = punto25Promen(T,H,C,h0,finalLlenado,paso, Ma, Mb, Mp)
  Multiplicador = [];
  R = [];
  D = [];
  index = 1;
  
  for m=Ma:Mp:Mb
  [Taux Yaux] = punto21Promen(T,H,C,h0,finalLlenado,paso, m);
  [Evalues, Svalues] = punto22Promen(Taux,Yaux,H,C, m);
  [r d] = punto23Promen(Evalues, Svalues, paso);
  Multiplicador(index) = m;
  R(index) = r;
  D(index) = d;
  index = index + 1;
  endfor
  
  end