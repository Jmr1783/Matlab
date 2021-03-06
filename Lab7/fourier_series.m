function [y] = fourier_series (t,T,m,cm,M)
  wo = 2*pi/T; % angular velocity (omega)
  y = zeros(size(t)); % create y, all zero, same size as t
  num_harmonics = M; % set equal to M to use all harmonics
  for i = -num_harmonics:num_harmonics
    y = y+cm(m==i)*exp(1j*find(m==i)*wo*t(m==i)); % sum above 
  end
end
