init();
M = 63; % number of harmonics
[m,cm] = sawtooth_series(M); % create fourier coefficients
t = 0:4/1000:4; % 1001 points from 0 sec to 4 sec
T = 2; % waveform period 2s
[y] = fourier_series2(t,T,m,cm,M);
 
make_plot(t,y,'saw tooth to verify','t sec','y');


M2 = 63; % number of harmonics
M = (2*M2+1);
[m,cm] = sawtooth_series(M); % create fourier coefficients
t = 0:4/1000:4; % 1001 points from 0 sec to 4 sec
T = 2; % waveform period 2s
[y] = fourier_series2(t,T,m,cm,M);
 
make_plot(t,y,'saw tooth to verify','t sec','y');
