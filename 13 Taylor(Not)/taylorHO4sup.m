clear
close
clc

a=0
b=2
y0=0.5;
N=10
f=@(t,y) y-t^2+1
f1=@(t,y) y-t^2+1-2*t;
f2=@(t,y) y-t^2-2*t-1;
f3=@(t,y) y-t^2-2*t-1;
g=@(t) (t+1)^2-0.5*exp(t)
taylorHO4(a, b, y0,f,f1,f2,f3,g,N);

  % g is the exact solution 
  % f - ode 4 % f1 - 1st derivative of f 
  % f2 - 2nd derivative of f 
  % f3 - 3rd derivative of f 
  % f4 - 4th derivative of f 