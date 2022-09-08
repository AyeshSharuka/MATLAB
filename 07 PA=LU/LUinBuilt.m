clear
close
clc

%In built function for LU factorization
%WORKS WITH PARTIAL PIVOTING

A=[6 -2  2 4;12 -8 6 10; 3 -13 9 3; -6 4 1 -18]
b=[16 26 -19 -34]'
[L,U,P] = lu(A)

%L - Lower triangular matrix
%U - Upper triangular matrix
%P - Permuation matrix

%C=[inverse(L)*P*b]; %from LC = pb
%X=[inverse(U)*C] %from UX = C
