init();
disp('SECTION 4 forced/natural response');
sigma = 0; omega = 3;
xmag = 6; xphase = 30*pi/180;
num = [1 -2 1 0]; den = [1 2 16 18 2 0];
Y = forced_resp_solver ( num, den, xmag, xphase, sigma, omega );
%t = linspace(0,0.5,1000);
% y_t time function, not PHASOR Y
y_t = abs(Y).*exp(sigma*t).*cos((omega*t)+angle(Y))                                                ;
%make_plot(t,y_t,'section 2 response','t','y');
natural_resp_solver(den);