clear
close
clc

f= @(x) x-sin(x)-0.5;
g= @(x) sin(x)+0.5;
p0=2;
tol= 10^(-6);
I0 = 50;
x = FixedPointIteration2(f,g,p0,tol,I0);

%INPUT
 %f -the function that the root is to be found
 %g -is the Funtion given to take the iterations
 %p0- the initial value
 %tol - The tolerance
 %I0 Number of iterations