function [R, D] = punto23Promen(Evalues, Svalues, paso)
  [Emax, Eindex] = max(Evalues);
  [Smax, Sindex] = max(Svalues);
  
  R = Emax / Smax;
  
  D = abs(Eindex - Sindex) * paso;
  
  end