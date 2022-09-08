
function y = RungeKuttaO4 (a,b,y0,f,g,N)
  
  disp('Runge Kutta method order 4')
  
  
  
  h=(b-a)/N
  % to count the steps
  n=0;
  t(1)=a;
  y=[zeros(1,N)];
  y(1)=y0;
  i=1;
  disp('n        ti         yi        e')
  e=abs(y(1)-(t(1)));
  fprintf('%i \t %i\t %.6f \t %.6f\n',n ,t(1),y(1),e)
  
  for i=1:N;
    
    t(i+1)=t(i)+h;
    
    k1=h*f(t(i),y(i));
    k2=h*f(t(i)+(h/2),y(i)+(k1/2));
    k3=h*f(t(i)+(h/2),(y(i)+(k2/2)));
    k4=h*f(t(i)+h,y(i)+k3);
    
    y(i+1)=y(i)+(1/6)*( k1 + 2*k2 + 2*k3 +k4);
    
    e(i)=abs(y(i+1)-g(t(i+1)));
    n=n+1;
    fprintf('%i \t %i\t %.6f \t %.6f\n',n ,t(i+1),y(i+1),e(i))
   
 end

endfunction

