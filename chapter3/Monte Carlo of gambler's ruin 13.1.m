% Monte Carlo simulation for  the gambler's ruin problem.
clear all
sim=1000; q=0.55;
for j=1:sim
    clear r
    r(1)=50;
    i=1;
    while r(i)>0 & r(i)<100
        y=rand;
        if y<=q;
            r(i+1)=r(i)-1;
        else
            r(i+1)=r(i)+1;
        end
    i=i+1;
    end
    t(j)=i; % Time until absorption.
    if j<=3 % Plots three sample paths.
        l1=stairs([0:1:i-1],r)
        set(l1,'LineWidth',2);
        hold on
    end
end
meandur=mean(t) % Mean duration
stdevdur=std(t) % Standard deviation
xlabel('Games'); ylabel('Capital')
hold off
