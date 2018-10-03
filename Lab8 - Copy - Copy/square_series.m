function [m,cm] = square_series(M)
  m = -M:M;
  cm = (sin(m*pi/2))./(m*pi);
  cm(m==0) = 0.5; % set DC value, avoid infinite cm @ m = 0;
end



