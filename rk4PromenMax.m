function [T Y]=rk4PromenMax(f,a,b,ya,N,H)
h=(b-a)/N; 
T=[a];
Y=[ya];  
for j=1:N
  T=[T;T(j)+h];
  K1=h*feval(f,T(j),Y(j)); 
  K2=h*feval(f,T(j)+(h/2),Y(j)+(K1/2)); 
  K3=h*feval(f,T(j)+(h/2),Y(j)+(K2/2)); 
  K4=h*feval(f,T(j)+h,Y(j)+K3);
  Y=[Y;Y(j)+(1/6)*(K1+2*K2+2*K3+K4)]; 
  if(Y(j+1) > H )
  break; 
 end 
end

