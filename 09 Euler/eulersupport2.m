clear
close
clc

a=0;
b=1;
y0=1;
N=5;
f=@(t,y) t^3*exp(-2*t)-2*y;
g=@(t) ((exp(-2*t))/4)*(t^4+4);
euler(a,b,y0,f,g,N);