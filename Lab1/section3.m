clear all; close all; clc;
A=[1 2 3 4]
B=[2 4 6 8]
Btrans=B'
C=A.*B
Cmat=A*Btrans
Cerror=A*B
"Error using * Inner matrix dimensions must agree" 
