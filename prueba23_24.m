T=30000;
H=30;
C=30;
h0=20;
finalLlenado=18000;
paso=100;
multiplicador=1;
[Taux Yaux]=punto21Promen(T,H,C,h0,finalLlenado,paso, multiplicador, 0);
[Evalues, Svalues]=punto23APromen(Taux,Yaux,H,C, multiplicador)
figure
hold on
   plot(Taux,Evalues,Taux,Svalues);
   title('Hidrograma de entrada y de salida');
   ylabel('Flujo de entrada/salida (m^3/s)');
   xlabel('Tiempo (s)');
   legend({'Entrada','Salida'},'Location','northwest');
   axis tight;
   grid on;
hold off
[R, D] = punto23BPromen(Evalues, Svalues, paso)
[integralS integralE]=punto24Promen(Evalues,Svalues,Taux)