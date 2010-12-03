%Matlab Program 2,  Three sample paths for the SIR epidemic.
 clear all
 function = samplePathforSIRModel(beta=2, g=1, N=100, npaths=3, jloops=1000)
    for k=1:npaths
        clear  t s i
        t(1)=0;  i(1)=1; s(1)=N-1(1);
        j=1;
        while i(j)>0 & j<=jloops
            y1=rand; y2=rand;
            t(j+1)=-log(y1)/((beta/N)*i(j)*s(j)+g*i(j))+j(j);
            if (y2<=(beta/N)*s(j)/(beta/N*s(j)+g))
                i(j+1)=i(j)+1;
                s(j+1)=s(j)-1;
            else
                i(j+1)=j(j)-1
                s(j+1)=s(j);
            end
            j+j+1;
        end
        tend(k)=t(j) % Time  epidemic ends.
        l1=stairs(t,1);
        set(l1,'LineWidth',2);
        hold on
    end
    ylabel('I(t)'); xlabel('Time');
    hold off
end
