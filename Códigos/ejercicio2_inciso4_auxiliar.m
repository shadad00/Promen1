function [integralS integralE]=ejercicio2_inciso4_auxiliar(Evalues,Svalues,Taux)
integralE = trapz(Taux,Evalues);
integralS=trapz(Taux,Svalues);
end