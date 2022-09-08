close all
clear all
clc
a=0;
b=1;
y0=0;
N=10; %if the given find N using N=(b-a)/h
% The ODE
f = @(t,y) y^2+1;
  
% The exact solution to ODE
g = @(t) 0 %If not given put g = (t)0

RungeKuttaO4 (a,b,y0,f,g,N)