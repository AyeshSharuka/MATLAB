clear
close
clc


f=@(x) (1+x)^(1/2);

x=[0 0.6 0.9];
y=[1 f(0.6) f(0.9)];
n=length(x)-1;


xp=0.45;


sm=0;
for i=1:n+1
  pr=1;
  for j=1:n+1
    if j~=i
      pr=pr*(xp-x(j))/(x(i)-x(j));
    endif
  endfor
  sm=sm+y(i)*pr;
endfor
yp=sm

%Error=abs(f(0.45)-yp)