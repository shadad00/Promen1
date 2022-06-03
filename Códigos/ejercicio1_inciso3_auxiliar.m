function [T Y max min]=ejercicio1_inciso3_auxiliar(f,a,b,ya,err)
[T Y]=ode45(f,[a b],[ya],'AbsTol',err);
figure
hold on
plot(T,Y);
stem(T,zeros(length(T)));
title('Aproximaion obtenida mediante ode45 marcando los valores del vector de la variable independiente')
ylabel('y(t)');
xlabel('t');
legend({'Aproximacion','Valores del vector de la variable ind.'},'Location','northeast');
axis tight;
grid on;
hold off
max = T(2)-T(1);
min = max;
for k=3:length(T)
  if(T(k)-T(k-1) > max )
    max=T(k)-T(k-1);
  end
  if(T(k)-T(k-1) < min )
    min=T(k)-T(k-1);  
  end
end

end