f=[10.889365 12.703199 14.778112 17.148957 19.855030 ];

f=@(x) x*exp(x);
g=@(x) (1+x)*exp(x);
x=2;
h=0.1;

exact=g(x)
disp(' ')
disp('3 end points formula')
%end 3 points
h1=h
F1=(1/(2*h1))*(-3*f(x)+4*f(x+h1)-f(x+2*h1))
error=(exact-F1)
disp(' ')
h2=(-1)*h

%first 3 points
F2=(1/(2*h2))*(-3*f(x)+4*f(x+h2)-f(x+2*h2))
error=(exact-F2)
disp(' ')


disp('3 midpoint formula')

h3=h
F3=(1/(2*h3))*(f(x+h3)-f(x-h3))
error=(exact-F3)

disp(' ')
disp('5 point formula')
h4=h
F4=(1/(12*h4))*(f(x-2*h4)-8*f(x-h)+8*f(x+h)-f(x+2*h))
error=(exact-F4)