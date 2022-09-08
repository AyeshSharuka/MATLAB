clear
close
clc

a=0;
b=1;
y0=0;

%N=10;

h=0.5
N=(b-a)/h

f=@(t,y) t*exp(3*t)-2*y;

f1=@(t,y) t*exp(3*t)+exp(3*t)+4*y;

g=@(t) 0;
taylorHO2(a, b, y0,f,f1,g,N);

  %g is the exact solution 
  %f - ode 
  %f1 - 2nd derivative of f