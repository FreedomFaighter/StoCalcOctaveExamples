%functions to assist in other examples
function generateuniformranduntilOpenLower(lowerBound, upperBound)
  if (lowerBound < upperBound && lowerBound > 0 && upperBound <= 1)
    u;
    do
      u=rand;
    until (u > lowerBound && u <= upperBound)
    return u;
  else
    error("Bounding constraints violated based on parameters passed into function call");
  endif
endfunction
