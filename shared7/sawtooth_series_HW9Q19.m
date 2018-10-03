%Function & values for getting a sawtooth, except for T & t
    function [m,cm] = sawtooth_series_HW9Q19(M)
      m = -M:M;
      cm = (-1j./(m*pi).*((cos(2*pi*m./3))-1));
      cm(m==0) = 0; % set DC value, avoid infinite cm @ m = 0;
    end