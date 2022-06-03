% Método de Punto medio
function [T Y]=puntoMedio(f,a,b,ya,N)
h=(b-a)/N;
T=zeros(N+1,1);
Y=zeros(N+1,1);
T(1)=a;
Y(1)=ya;
for k=1:N
T(k+1)=T(k)+h;
K1=h*feval(f,T(k),Y(k));
K2=h*feval(f,T(k)+(h/2),Y(k)+(K1/2));
Y(k+1)=Y(k)+K2;
end
end