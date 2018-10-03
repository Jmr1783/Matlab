clear all; close all; clc;
t =0:0.1:2*pi;
w=4;
y=( exp(1j*(w*t-(pi/6))) - exp(-1j*(w*t-(pi/6))) ) / (2j);
make_plot(t,y,'Section 4','t','y');