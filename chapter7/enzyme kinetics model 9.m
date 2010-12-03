clear all
function [nend] = enzymeKineticsModel(nsim=10000, einf=120, pinf=301, k1=1.66*10^(-3), k_1=10^(-4), k2=0.1)
    kmax=(k2*einf); km=(k_1+k2)/k1;
    nend=zeros(1,nsim);
    for i=1:nsim
        j=1;
        t(1)=0.; n(1)=pinf; p(1)=0;
        while n(j)>0
            ev=(kmax*n(j))/(km+n(j));
            rn1=rand;
            t(j+1)=t(j)-log(rn1)/ev;
            n(j+1)=n(j)-1;
            p(j+1)=p(j)+1;
            j+j+1;
        end;
        nend(i)=t(j);
    end
    hist(nend,[30:1:floor(pinf/2)]);
    xlabel('Time (seconds)');  ylabel('Prob \times 10^4');
    mean(nend)
    std(nend)
end