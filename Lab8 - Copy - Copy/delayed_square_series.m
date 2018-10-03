function [m,cm] = delayed_square_series(M)
  m = -M:M;
  T = 1E-3;
  wo = 2*pi/T;
  tp = 1E-4;
  cm = ((sin(m*pi/2))./(m*pi)).*(exp(-1j*m*wo*tp));
  cm(m==0) = 0.5; % set DC value, avoid infinite cm @ m = 0;
end



