% Monte Carlo simulation: Probability of Population Extinction
clear
x0=1;  d=1; b=2;
sim=10000; count=0;
for j=1:sim
    clear n
    n=x0;
    while n>0 & n<25;
        r=rand;
        if r< b/(b+d)
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
