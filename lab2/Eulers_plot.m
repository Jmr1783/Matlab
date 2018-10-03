init()
t=linspace(0,(4*3.14),201);
w=0.5;
phase=-60*(3.14/180);
theta = w*t + phase;
y = ( exp(1j* theta) + exp(-1j* theta) ) / (2);
make_plot(t,y,"Section 1",'t','y')
