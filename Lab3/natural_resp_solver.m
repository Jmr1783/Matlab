function natural_resp_solver( den )
  %natural_resp_solver Find roots of transfer function denominator.
  % input: den of the transfer function in the s-domain
  %finds the roots of the denominator (poles) to find natural response
  disp('poles for the natural response');
  poles=roots(den)
end
