f=@(t,y) (y-2*t*(y.^2))/(1+t)
a = 0
b = 5
ya = 0.4
sol=@(t) (1+t)/((t.^2)+2.5)
expi = 3
expf = 9
[errores orden]=punto12Promen(f,a,b,ya,expi,expf,sol)
[erroresHeun erroresRk4]=punto12OrdenesPromen(f,a,b,ya,expi,expf,sol)

% Gr�fico de los errores
figure
loglog(errores(:,1), errores(:,2));
hold on
loglog( errores(:,1), errores(:,3));
title('Errores globales seg�n el valor de h');
ylabel('E');
xlabel('h');
legend({'Heun','Runge-Kutta Orden 4'},'Location','northwest');
axis tight;
grid off;
hold off;

% Grafico de los cocientes de error usando Heun
figure;
loglog(erroresHeun(:,1), erroresHeun(:,2), ";E(h)/h;");
hold on;
loglog(erroresHeun(:,1), erroresHeun(:,3), ";E(h)/h^2;");
loglog(erroresHeun(:,1), erroresHeun(:,4), ";E(h)/h^3;");
title('Cocientes de orden 1, 2 y 3 usando Heun');
xlabel('h');
axis tight;
grid off;
hold off;

% Grafico de los cocientes de error usando RK4
figure;
loglog(erroresRk4(:,1), erroresRk4(:,2), ";E(h)/h^3;");
hold on;
loglog(erroresRk4(:,1), erroresRk4(:,3), ";E(h)/h^4;");
loglog(erroresRk4(:,1), erroresRk4(:,4), ";E(h)/h^5;");
title('Cocientes de orden 3, 4 y 5 usando Runge-Kutta de orden 4');
xlabel('h');
axis tight;
grid off;
hold off;
