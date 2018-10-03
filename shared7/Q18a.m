clc; clear all; close all; 

%Q18
init();
M = 15; % number of harmonics --> 31 terms
[m,cm] = sawtooth_series_HW9Q18(M); % create fourier coefficients

%Setting the period and the t variable & plotting our sawtooth using
    %fourier_series
    t = 0 : 4/1000 : (2*pi); % 1001 points from 0 sec to 6.28 sec
    T = 2*pi; % waveform period 2pi seconds
    [y] = fourier_series(t,T,m,cm,M);

    make_plot(t,y,'Fourier Series partial sum Q18','t sec','y');
    
%Windowing
    win = hamming(2*M+1)';
    cwin = cm.*win;
    [y] = fourier_series(t,T,m,cwin,M);
    make_plot(t,y,'Windowed function Q18','t seconds','y');