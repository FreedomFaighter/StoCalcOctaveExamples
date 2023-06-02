%functions to assist in other examples
function [uniformRandom] = generateuniformranduntil(lowerBound, upperBound)
  if (lowerBound < upperBound && lowerBound >= 0 && upperBound <= 1)
    u;
    do
      u=rand;
    until (u >= lowerBound && u <= upperBound)
    uniformRandom=u;
    return;
  end
endfunction
