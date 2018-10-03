init();
disp('SECTION 1 example 1');
num=[5];
den=[1 4 4 8];
sigma =  -1     ; omega = 10         ;
xmag =  2      ; xphase =   5      ; % use radians
t = linspace(0,5,1000);
x_t = xmag.*exp(sigma*t).*cos((omega*t)+(xphase*(pi/180)));
make_plot(t,x_t,'section 1 input','t','x');

s = sigma + 1j*omega
Y = ((5*s)/((s^3)+(4*(s^2))+(4*s)+8))*(xmag*exp(1j*xphase*(pi/180)))
%y_t = xmag*exp(sigma*t).*cos((omega*t)+xphase);
