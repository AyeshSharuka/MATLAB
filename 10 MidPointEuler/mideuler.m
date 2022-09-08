
function y=mideuler(a,b,y0,f,g,N)
  disp('Mid Euler Method')
  h=(b-a)/N;
  n=0;
  t(1)=a;
  y=[zeros(1,N)];
  y(1)=y0;
  i=1; 
  disp('n        ti          yi            e')
  e=abs(y(1)-g(t(1)));
    fprintf('%i\t %i\t %.5f\t %.6f\n',n,t(1),y(1),g(t(1)))
    
   for i=1:N;
     
     t(i+1)=t(i)+h;
     k1=f(t(i),y(i));
     k2=f((t(i)+h/2),(y(i)+(h/2)*k1));
     y(i+1)=y(i)+h*k2;
     e(i)=abs(y(i+1)-g(t(i+1)));
     n=n+1;
     fprintf('%i\t %i\t %.5f\t %.6f\n',n,t(i+1),y(i+1),g(t(i+1)))
   endfor
endfunction