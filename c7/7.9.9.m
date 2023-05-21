%7.9.9 from LJSA
%Expected duration until the nutrient is depleted N(T)=0 for enzyme kinetics model
%added as function of the method from book with default values
%N(0)=301
%
function retval = nutrientDepletion(nsim=10000, einf=120, pinf=301, k1=1.66*10^(-3), k_1=10^(-4), k2=0.1)
    if(nsim < 1)
        printf("Number of simulation loops less then 1");
        return;
    endif
    if(k1 < 0)
        printf("k1 parameter is less then 0");
        return;
    endif
    if(k_1<0)
        printf("k_1 parameter is less then 0");
        return;
    endif
    if(k2<0)
        printf("k2 parameter is less then 0");
        return;
    endif
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
    retval=nend;
endfunction
            
