%Function & values for getting a sawtooth, except for T & t
    function [m,cm] = sawtooth_series_HW9Q18(M)
      m = -M:M;
      A = 10;
      cm = 2*(cos(m*pi./2))./(1-m.^2);
      cm(m==1)  = -1.57; % set DC value, avoid infinite cm @ m = 1;
      cm(m==-1) = -1.57; % set DC value, avoid infinite cm @ m = -1;
    end