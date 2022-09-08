f=[10.889365 12.703199 14.778112 17.148957 19.855030 ];

%second derivative
f=@(x) x*exp(x);
g=@(x) (1+x)*exp(x);
x=2;
h=0.1;

exact=g(x)
disp(' ')

disp('second derivative midpoint formula')
F=(1/h^2)*(f(x-h)-2*f(x)+f(x+h))