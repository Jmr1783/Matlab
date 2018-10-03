clc; clear all; close all; 

%Q19
init();
M = 10; % number of harmonics -> 21 terms
[m,cm] = sawtooth_series_HW9Q19(M); % create fourier coefficients

%Setting the period and the t variable & plotting our sawtooth using
    %fourier_series
    t = 0 : 4/1000 : 3; % 1001 points from 0 sec to 3 sec
    T = 3; % waveform period 3s
    [y] = fourier_series(t,T,m,cm,M);

    make_plot(t,y,'Fourier Series partial sum Q19','t sec','y');
    
%Windowing
    win = hamming(2*M+1)';
    cwin = cm.*win;
    [y] = fourier_series(t,T,m,cwin,M);
    make_plot(t,y,'Windowed function Q19','t seconds','y');