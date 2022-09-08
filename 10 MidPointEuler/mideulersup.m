clear
close
clc

a=1
b=2
y0=2;
N=4
f=@(t,y) 1+(y/t)
g=@(t) t*log(t)+2*t
mideuler(a,b,y0,f,g,N);