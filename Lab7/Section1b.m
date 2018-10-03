init();
M = 15; % number of harmonics
[m,cm] = sawtooth_series(M); % create fourier coefficients

%--------------------------------------------------
t = 0:4/1000:4; % 1001 points from 0 sec to 4 sec
T = 4; % waveform period 2s
[y] = fourier_series(t,T,m,cm,M);
 
make_plot(t,y,'saw tooth to verify','t sec','y');


% init();
% M = 30; % number of harmonics
% [m,cm] = sawtooth_series(M) % create fourier coefficients
% make_plot(m,abs(cm),'amplitude spectrum','m','|cm|');
% %--------------------------------------------------
% t = 0:4/1000:4; % 1001 points from 0 sec to 4 sec
% T = 2; % waveform period 2s
% [y] = fourier_series(t,T,m,cm,M);
%  
% make_plot(t,y,'verify','t sec','y');


% %--------------------------------------------------



% init();
% M = 20; % number of harmonics
% [m,cm] = sawtooth_series(M) % create fourier coefficients
% make_plot(m,abs(cm),'amplitude spectrum','m','|cm|');
% %--------------------------------------------------
% t = 0:1.6/1000:1.6; % 1001 points from 0 sec to 1.6 sec
% T = 1.6; % waveform period 1.6s
% [y] = fourier_series(t,T,m,cm,M);
%  
% make_plot(t,y,'verify','t sec','y');