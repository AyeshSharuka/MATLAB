
function y= Modifiedeuler(a, b, y0,f,g,N) 
  disp('Modified Euler method')
  
  
  
  h=(b-a)/N; 
  % to count the steps 
  n=0; 
  t(1)=a ; 
  y =[zeros(1,N)]; 
  y(1)=y0; 
  i=1; 
  disp('n        ti        yi             e' )   
  e=abs(y(1)-g(t(1))); 
  fprintf('%i \t %i\t %.6f \t %.6f\n',n ,t(1),y(1),e)  
  
  for i=1:N; 
    t(i+1)=t(i)+h; 
    k=f(t(i),y(i)); 
    %Eulers   
    y(i+1)=y(i)+h*k; 
    % Modeified Euler  
    y(i+1)=y(i)+(h/2)*( k + f(t(i+1),y(i+1))); 
    
    e(i)=abs(y(i+1)-g(t(i+1))); 
    n=n+1; 
    fprintf('%i \t %i\t %.6f \t %.6f\n',n ,t(i+1),y(i+1),e(i)) 
    
   end 
endfunction 