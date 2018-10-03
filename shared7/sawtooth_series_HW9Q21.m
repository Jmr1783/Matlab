%Function & values for getting a sawtooth, except for T & t
    function [m,cm] = sawtooth_series_HW9Q21(M)
      m = -M:M;
      cm = ( (cos(m*pi./4) - cos(3*m*pi./4)) ./ (1j*pi*m) );
      cm(m==0) = 0; % set DC value, avoid infinite cm @ m = 0;
    end