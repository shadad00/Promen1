T=30000;
H=30;
C=30;
h0=20;
finalLlenado=18000;
paso=100;
multiplicador=1;
[Taux Yaux]=ejercicio2_inciso1_inciso2_auxiliar(T,H,C,h0,finalLlenado,paso, multiplicador, 0);
[Evalues, Svalues]=ejercicio2_inciso3_auxiliarA(Taux,Yaux,H,C, multiplicador)
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
[R, D] = ejercicio2_inciso3_auxiliarB(Evalues, Svalues, paso)
[integralS integralE]=ejercicio2_inciso4_auxiliar(Evalues,Svalues,Taux)