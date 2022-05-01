function [T Y max min]=punto13Promen(f,a,b,ya,err)
[T Y]=ode45(f,[a b],[ya],'AbsTol',err);
figure
hold on
plot(T,Y);
title('Aproximai�n obtenida mediante ode45')
ylabel('y(t)');
xlabel('t');
axis tight;
grid on;
hold off
figure
hold on
plot(T,Y);
stem(T,zeros(length(T)) + Y);
title('Aproximai�n obtenida mediante ode45 marcando los valores del vector de la variables independiente')
ylabel('y(t)');
xlabel('t');
legend({'Aproximaci�n','Valores del vector de la variable ind.'},'Location','northeast');
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
