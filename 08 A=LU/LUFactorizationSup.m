close all
clear all
clc

disp('LU Factorisation')

A=[6 -2 2 4;12 -8 6 10;3 -13 9 3;-6 4 1 -18]
b=[16;26;-19;-34]

LUFactorization(A,b)