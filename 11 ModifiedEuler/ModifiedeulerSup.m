close all
clear all
clc
a=0;
b=2;
y0=0.5;

N=10; %if h is given find N using N=(b-a)/h
% The ODE
f = @(t,y) y-t^2+1
% The exact solution to ODE
g = @(t) (t+1)^2-0.5*exp(t) % If not given put g = @(t)0
Modifiedeuler(a, b, y0,f,g,N)