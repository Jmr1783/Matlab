init();
disp('SECTION 3 natural response');
num = [1 0]; den = [2 2 1 0];
t = linspace(0,25,1000);
yi = impulse(tf(num,den),t); 
natural_resp_solver(den);
make_plot(t,yi,'section 3 Impulse response','t','yi');
