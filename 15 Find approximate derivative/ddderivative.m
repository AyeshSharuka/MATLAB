f=@(x) log(x);

%g=second derivative of f
g=@(x) -(1/x^2);

x=1.8;
h=0.05;

%using function find derivative of x
disp('forward difference')
k1=(f(x+h)-f(x))/h

%error
a1=g(x);
a2=g(x+h);
M=max(abs(a1),abs(a2));
error_bound=abs(h*M)/2

disp(' ')
disp('center difference')
k2=(f(x+h)-f(x-h))/(2*h)