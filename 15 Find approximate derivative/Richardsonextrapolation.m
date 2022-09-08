f=@(x) x*exp(x);
%g=@(x) 1/x;
x=2;
h1=0.2;
h2=h1/2;
h3=h2/2;

exact=g(1.8)
disp(' ')

%using function find derivative of x

%disp('forward difference for h and h/2')
%k1=(f(x+h1)-f(x))/h1
%k2=(f(x+h2)-f(x))/h2
%disp(' ')
%N2=k2+(k2-k1)
%error=exact-N2

disp('center difference')
N1h1=(f(x+h1)-f(x-h1))/(2*h1)

N1h2=(f(x+h2)-f(x-h2))/(2*h2)
N2h1=1/3*(4*N1h2-N1h1)
N1h3=(1/(2*h3))*(f(x+h3)-f(x-h3))
N2h2=N1h3+(N1h3-N1h2)/3
N3h1=(1/15)*(16*N2h2-N2h1)