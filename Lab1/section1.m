clear all; close all; clc;
Vd=0:0.02:0.8;
Is = 1e-12; n=1; Vt=0.026;
Id = Is*(exp(Vd/(n*Vt))-1);
make_plot(Vd,Id,'Section 1','Vd','Id');
