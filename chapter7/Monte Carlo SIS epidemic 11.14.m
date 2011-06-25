% Matlab Program 4, Monte Carlo simulation of an SIS epidemic
clear all
dt=0.01;time=10;
N=100; beta=2; g=1;
I(1)=1.; S(1)=N-I(1);
sim=10000;
for k=1:sim 
    for t=1:time/dt;
        nI=0; nS=0;
    for j=1:S(t)
        p1=beta*I(t)/N*dt;
        if rand<p1
            nI=nI+1; nS=nS-1;
        else
            nI=nI;  nS=nS;
        end
    end
    for j=1:I(t);
        p2=g*dt;
        if rand<p2;
            nI=nI-1; nS=nS+1;
        else
            nI=nI; nS=nS;
        end
    end
    I(t+1)=I(t)+nI; S(t+1)=S(t)+nS;
    end
    if k==1 plot([0:dt:time],I,'b-','linewidth',2); end
    hold on
    if k==2 plot([0:dt:time],I,'r-','linewidth',2);  end
    if k==3 plot([0:dt:time],I,'g-','linewidth',2); end
    II(k)=I(time/dt+1);
end
probext=sum(II>0)/sim
hold off
