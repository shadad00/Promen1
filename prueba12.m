f=@(t,y) (y-2*t*(y.^2))/(1+t)
a = 0
b = 5
ya = 0.4
sol=@(t) (1+t)/((t.^2)+2.5)
expi = 3
expf = 9
[errores orden]=punto12Promen(f,a,b,ya,expi,expf,sol)

% Grï¿½fico de los errores
figure
loglog(errores(:,1), errores(:,2));
hold on
loglog( errores(:,1), errores(:,3));
title('Errores globales según el valor de h');
ylabel('E');
xlabel('h');
legend({'Heun','Runge-Kutta Orden 4'},'Location','northwest');
axis tight;
grid off;
hold off;

% Grï¿½fico de los ordenes
figure
loglog(orden(:,1), orden(:,2));
hold on
loglog( orden(:,1), orden(:,3));
title('Orden según el valor de h');
ylabel('Orden');
xlabel('h');
legend({'Heun','Runge-Kutta Orden 4'},'Location','northwest');
axis tight;
grid off;
hold off;
