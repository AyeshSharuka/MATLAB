clear
close
clc
f= @(x) x^3-7*x^2+8*x-3;
diff= @(x) 3*x^2-14*x+8;

p0=5;
tol= 10^(-3);
I0=50;
x= NewtonRaphson(f, diff, p0, tol, I0);

%INPUTS
 %f - the function that the root is to be found
 %diff - Derivative of f(x)
 %p0- the initial value
 %tol - The tolerance
 %I0 - Number of iterations

%plotting

%x=0.001:0.001:0.1;
%y=-1000+450./(1+x)+630./(1+x).^(2);

%plot(x,y,'g','linewidth',1)
%title('graph')
%xlabel('x','fontsize',18)
%ylabel('y','fontsize',18)