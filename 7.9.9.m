%7.9.9 from LJSA
function [m,s] = nutrientDepletion(nsim, einf, pinf, k1, k_1, k2)
    kmax=(k2*einf);
    km=(k_1+k2)/k1;
    nend=zeros(1,nsim);
    for i=1:nsim
        j=1;
            t(1)=0.;
            n(1)=pinf;
            p(1)=0;
        while n(j)>0
            ev=(kmax*n(j))/km+n(j);
            rn1=rand;
            t(j+1)=t(j)-log(rn1)/ev;
            n(j+1)=n(j)-1;
            p(j+1)=p(j)+1;
            j=j+1;
        end
        nend(i)=t(j);
    end
    hist(nend,[30:1:150]);
    xlabel('Time (seconds)');
    s1 = 'Prob \times';
    s2 = str(k_1);
    ylabel(strcat(s1, s2));
    m=mean(nend)
    s=std(nend)
end
            
