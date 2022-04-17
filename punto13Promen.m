function [T Y max min]=punto13Promen(f,a,b,ya,err)
[T Y]=ode45(f,[a b],[ya],'AbsTol',err);
plot(T,Y,T,zeros(length(T)),'k*');

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
