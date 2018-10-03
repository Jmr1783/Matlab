function [cm,yy] = fft_ifft(t,n,y,N)
  % NOTE: Matlab fft() returns the spectral density function F(m)
  %         Dividing by N changes F(m) to the Euler phasors cm.
  %         Although cm is more common, F(m) saves time by not dividing by N.
  %       Matlab ifft() multiply by N before using IFFT.

  cm = fft(y,N)/N;
  make_stem(n,abs(cm),'spectrum amplitude','n','abs(cm)');
 
  % Reconstruct y (called yy) using inverse FFT (IFFT).
  yy = real(ifft(N*cm)); % real function scrubs imaginary vestiges
  make_plot(t,yy,'Reconstructed Waveforms','seconds','reconstructed y');
end
