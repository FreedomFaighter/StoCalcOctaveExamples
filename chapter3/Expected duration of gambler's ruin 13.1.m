function = gamblersRuin(q, N)
    if(q<0 || q>1)
        printf("value for q should be between 0 and 1");
        return;
    endif
    if(N<2)
        printf("value for N should be at least 2");
        return;
    endif
    p=1-q;
    L=sparse(2:N-1,1:N-2,p*ones(1,N-2),N-1,N-1)
    U=sparse(1:N-2,2:N-1,q*ones(1,N-2),N-1,N-1)
    ImT=eye(N-1)-L-U;
    d=ones(1,N-1);
    tau=d/ImT;
    plot([1:N-1],tau,'k-','LineWidth',2);
    xlabel('Initial capital');
    ylabel('Expected duration');
end