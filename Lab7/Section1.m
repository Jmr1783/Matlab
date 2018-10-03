init();
M = 30; % number of harmonics
m = -M:M;
% Fourier series coefficients for y(t) = A|sin(wo*t)|
A = 10;
cm = 2*A./(pi*(1-4*m.^2));
make_plot(m,cm,'coef of rect sine wave','harmonics','cm');

cm_part = cm(find(m==-10):find(m==10));
make_plot([-10:10],cm_part,'sin coef, center 21 points','m','cm_part');
 
cm_power = abs(cm).*abs(cm)
make_plot(m,cm_power,'full wave sine power spectrum','harmonics','power');

cm_pos_pwr=[cm_power(m==0) 2*cm_power(find(m==1):find(m==M))]
make_plot([0:M],cm_pos_pwr,'one sided power spectrum','m','power');
 
cm_pos_pwr_zoom = cm(find(m==0):find(m==5))
make_plot([0:5],cm_pos_pwr_zoom,'one sided power spectrum, first 6 points','harmonics','power');

%  n=-5:5
%  A=2*n
%  newA = [A(n==-4) A(find(n==-2):find(n==0))]
%  yourA = [A(n==-5) A(find(n==-4):find(n==4))]
