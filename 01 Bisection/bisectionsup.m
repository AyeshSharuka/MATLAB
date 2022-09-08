clear
close
clc

f = @(x) (x/2)^2-sin(x);
%The range
low = 1.5;
high =2;
%Accuracy
tol = 0.0001;
%Using the function
x = bisection(f, low, high, tol);
% To find the number of iterations
n=((log(high-low))-(log(tol)))/(log(2))