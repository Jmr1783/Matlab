function [Y] = forced_resp_solver ( num, den, xmag, xphase, sigma, omega )
%forced_resp_solver Solves a differential equation in the s domain
% inputs:
%   num and den provide the transfer function in the s-domain
%   Euler's phasor, xmag and xphase
%   value of sigma and omega to make s which equals sigma + 1j*omega
% outputs:
%   Euler's phasor (Y)
  s = sigma + 1j*omega
% X phasor, not time function x_t
  X=xmag*exp(1j*xphase);
  disp(['Output vector X = ' num2str(abs(X)) 'e^(' num2str(angle(X)) 'j)']);
  Y=(polyval(num,s)./polyval(den,s)).*X;
  disp(['Output vector Y = ' num2str(abs(Y)) 'e^(' num2str(angle(Y)) 'j)']);
end
