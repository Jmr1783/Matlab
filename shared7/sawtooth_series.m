function [m,cm] = sawtooth_series(M)
  m = -M:M;
  A = 10;
  cm = 1j*A./(2*pi*m);
  cm(m==0) = 0; % set DC value, avoid infinite cm @ m = 0;
end


