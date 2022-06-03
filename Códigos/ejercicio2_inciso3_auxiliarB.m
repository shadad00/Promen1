function [R, D] = ejercicio2_inciso3_auxiliarB(Evalues, Svalues, paso)
[Emax, Eindex] = max(Evalues);
[Smax, Sindex] = max(Svalues);
R = Emax / Smax;
D = abs(Eindex - Sindex) * paso;
end