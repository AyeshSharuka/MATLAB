
function y =taylorHO2(a, b, y0, f, f1, g, N)
 
  disp('Taylor’s method of order 2') 
  h=(b-a)/N 
  n=0; 
  t(1)=a ; 
  y=[zeros(1,N)]; 
  y(1)=y0; 
  i=1; 
  disp('n        ti         yi             exat' ) 
  
  % to display the n=0 step 
  e=abs(y(1)-g(t(1))); 
  fprintf('%i \t %i\t %.5f \t %.6f\n',n ,t(1),y(1),e)  
  for i=1:N; 
    t(i+1)=t(i)+h; 
    ytay=f(t(i),y(i))+(h/2)*f1(t(i),y(i)); % taylor method of order 2 
    y(i+1)=y(i)+h*ytay; 
    e(i)=abs(y(i+1)-g(t(i+1))); % error   
    n=n+1; 
    fprintf('%i \t %i\t %.5f \t %.6f\n',n ,t(i+1),y(i+1),e(i));
  end 
  
endfunction 