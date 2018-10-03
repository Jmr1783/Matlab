init();
n=0:4;
[B,A] = butter(2,0.2)
F = tf(B,A,0.1,'variable','z^-1')
[y,t] = step(F);
make_stem(t,y,'LPF Step Response','t = n*Ts','y');

%Section3
figure(21);
zplane(B,A);
title('Low Pass Filter Pole-Zero Plot');
[y,t] = impulse(F);
make_stem(t,y,'LPF Impulse Response','t = n*Ts','y');

%Section4
figure(3)
[h,w] = freqz(B,A,1000); v = w/pi;
plot(v,20*log10(abs(h))); grid on; xlabel('v'); ylabel('dB'); 
xlim([0 1]); ylim([-60 0]);

%Section5
n = 0:100;
v1 = 0.1; x1 = 1.0*sin(pi*v1*n);
v2 = 0.8; x2 = 1.0*sin(pi*v2*n);
figure(111)
plot(n,x1); grid on;
figure(222)
plot(n,x2); grid on;
x = x1 + x2;
figure(41);
plot(n,x); grid on;
title('1.0*sin(0.1*pi*n) + 1.0*sin(0.8*pi*n)');
xlabel('n'); ylabel('amplitude');

y = filter(B,A,x); % run the difference equation
figure(42);
plot(n,y); grid on;
title('Low Pass Filter Signal');
xlabel('n'); ylabel('amplitude'); ylim([-2 2]);
