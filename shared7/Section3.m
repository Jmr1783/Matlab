init();
M = 38; % number of harmonics
[m,cm] = sawtooth_series(M); % create fourier coefficients
t = 0:4/1000:4; % 1001 points from 0 sec to 4 sec
T = 2; % waveform period 2s
[y] = fourier_series(t,T,m,cm,M);
 
make_plot(t,y,'saw tooth to verify with M = 38 terms','t sec','y');

%-----------------------------------------------------------
%section4
% 
make_stem(m,cm,'Spectum','harmonic','fourier coefficient');
 
% Find power
Pcm = (abs(cm).*abs(cm));
make_stem(m,Pcm,'Power Spectum','harmonic','power');
 
%Find cumulative power in spectrum lines
Pcm_harmonic = [Pcm(m==0) 2*Pcm(find(m==1):find(m==M))];
make_stem([0:M],cumsum(Pcm_harmonic),'Cumulative Power Spectrum','harmonic','cumulative power');