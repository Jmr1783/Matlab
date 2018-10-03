clc; clear all; close all; 

%Q21
init();
M = 10; % number of harmonics -> 21 terms
[m,cm] = sawtooth_series_HW9Q21(M); % create fourier coefficients

%Setting the period and the t variable & plotting our sawtooth using
    %fourier_series
    t = 0 : 4/1000 : 1.5; % 1001 points from 0 sec to 1.5 sec
    T = 1.6; % waveform period 1.6s
    [y] = fourier_series(t,T,m,cm,M)
    plot(t,y);
    make_plot(t,real(y),'Fourier Series partial sum Q21','t sec','y');
    
%Windowing
    win = ( 1 - ((abs(m))./(M+1)) ); %hanning with 21 terms
    cwin = cm.*win;
    [y] = fourier_series(t,T,m,cwin,M)
    make_plot(t,real(y),'Hanning Windowed function Q21','t seconds','y');
    
%Stem plotting the Spectrum
    make_stem(m,cm,'Exponential Spectum Q21','harmonic','fourier coefficient');