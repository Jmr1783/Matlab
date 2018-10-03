init();
num = [12 0]; den = [1 10 16];
w = logspace(-1,1);
Av=freqs(num,den,w);
loglog(w,abs(Av));


