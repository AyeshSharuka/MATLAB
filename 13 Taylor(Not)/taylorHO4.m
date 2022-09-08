
function y=taylorHO4(a, b, y0,f,f1,f2,f3,g,N) 
  
  disp('Taylor’s method of order 4') 

  
  h=(b-a)/N 
  n=0; 
  t(1)=a; 
  y=[zeros(1,N)]; 
  y(1)=y0; 
  i=1; 
  disp('n        ti        yi             e' )   
  
  % to display the n=0 step 
  e=abs(y(1)-g(t(1))); 
  fprintf('%i \t %i\t %.5f \t %.6f\n',n ,t(1),y(1),e) 
  
  for i=1:N; 
    t(i+1)=t(i)+h; 
    ytay = f(t(i),y(i)) + (h/2)*f1(t(i),y(i)) + ((h^2)/6)*f2(t(i),y(i)) + ((h^3)/24)*f3(t(i),y(i)); 
    y(i+1)=y(i)+h*ytay; 
    
    e(i)=abs(y(i+1)-g(t(i+1)));   
    n=n+1;
    fprintf('%i \t %i\t %.6f \t %.7f\n',n ,t(i+1),y(i+1),e(i)) 
  end 
endfunction 