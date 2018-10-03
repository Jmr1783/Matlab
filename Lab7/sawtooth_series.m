function [m,cm] = sawtooth_series(M)
  m = -M:M;
  A = 10;
  cm = 1j*A./(2*pi*m);
  cm(m==0) = 0; % set DC value, avoid infinite cm @ m = 0;
end

% function [m,cm] = sawtooth_series(M)
%   m = -M:M;
%   cm = (2*cos(m*pi*2))./(1-(m.^2));
%   cm(m==-1) = 0; % set DC value, avoid infinite cm @ m = 0;
%   cm(m==1) = 0; % set DC value, avoid infinite cm @ m = 0;
% end