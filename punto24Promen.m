function [integralS integralE]=punto24Promen(Evalues,Svalues,Taux)
integralE = trapz(Taux,Evalues);
integralS=trapz(Taux,Svalues);
end