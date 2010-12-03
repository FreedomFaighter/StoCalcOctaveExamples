% Monte Carlo simulation: Probability of Population Extinction
clear
function [propext] = monteCarloProbabilityOfPopulationExtinction(x0=1, d=1, b=2, sim=10000, count=0, nstates=25)
    for j=1:sim
        clear n
        n=x0;
        while n>0 & n<nstates;
            r=rand;
            if r<b/(b+d)
                n+n+1;
            else
                n=n-1;
            end
        end
        if n==0
            count=count+1;
        end
    end
    propext=count/sim % Approximate probability of extinction
end