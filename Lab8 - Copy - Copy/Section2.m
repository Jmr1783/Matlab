init();
N = 8;     % DFT, data point count (make EVEN, best power of 2)
n = 0:N-1;  % index
Ts = 10E-6; % sampling period, sample freq = 1/Ts
t = n*Ts;   % time of each sample
T = N*Ts;   % period of waveform
 
% Rectangular pulse
y = zeros(size(t));
y(t<T/2) = 1 %create square wave
% Plot the square wave
make_plot(t,y,'Input Square Wave (N = 8, Ts = 10us)','seconds (n*Ts)','y');
ylim([-0.1,1.1]); % stretch y axis so data points can be seen

%later in lab, fft_ifft function call goes here
ylim([-0.1,1.1]); % stretch y axis so data points can be seen

fft_ifft(t,n,y,N)