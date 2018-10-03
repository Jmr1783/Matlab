init();
N = 64;          % DFT, data point count (make EVEN, best power of 2)
n = 0:N-1;       % index
nc = -N/2:N/2-1; % centered index
T = 5;           % waveform period
Ts = T/N;        % sampling period, sample freq = 1/Ts
t = n*Ts;        % time of each sample
 
% Problem 17a: split cosine lobe
y = zeros(size(t));
wsig = 2*pi/4; %w of signal = 2pi/Tsig
make_plot(t,wsig,'Split sine wave (N = 64)','seconds (n*Ts)','y');

%y(t < 1) = 2*cos(wsig*t(t < 1)); %notice the use of logical arrays
y((t < 1)) = 2*cos(wsig*t((t < 1))); %notice the use of logical arrays
%y(t > 4) = 2*sin(wsig*t(t > 4));
y((t>3)&(t < 5)) = 2*sin(wsig*-t((t>3)&(t < 5)));

make_plot(t,y,'Split sine wave (N = 64)','seconds (n*Ts)','y');

[cm,yy] = fft_ifft(t,n,y,N)
