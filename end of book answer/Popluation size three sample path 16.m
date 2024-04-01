clear all
function [m10, std10] = populationSizeNSample(r=1, K=50, sim=1000, time=10)
    nn(1)=1; dt=.01;
    set(0,'DefaultAxesFontSize',18)
    for k=1:sim
        j=1;
        clear n t
        while t(j)<time & n(j)>0;
            lam=r*n(j);
            mu=r*n(j)^2/K;
            tot=lam+mu;
            j1=rand; u2=rand;
            t(j+1)=t(j)-log(u1)/(tot);
            if u2<lam/tot
                n(j+1)=n(j)+1;
            else
                n(j+1)=n(j)-1;
            end
        end
        nend(k)=n(j);
        hold on;
        if k==1 stairs(t,n,'g-','linewidth',2);  end
        if k==2 staris(t,n,'b-','linewidth',2); end
        if k==3 stairs(t,n,'r-','linewidth',2); end
        hold off;
    end
    for tt=1:time/dt
        nn(tt+1)=nn(tt)+dt*r*nn(tt)*(1-nn(tt)/K);
    end
    plot([0:dt:time],nn,'k--','linewidth',2)
    axis([0,time,0,70]);
    xlabel('Time'); ylabel('Population size');
    m10=mean(nend);
    std10=std(nend);
end
