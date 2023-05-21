function m = gamblersRuin(q, N) 
    p=1-q;
    L=sparse(2:N-1,1:N-2,p*ones(1,N-2),N-1,N-1)
    U=sparse(1:N-2,2:N-1,q*ones(1,N-2),N-1,N-1)
    ImT=eye(N-1)-L-U;
    d=ones(1,N-1);
    tau=d/ImT;
    plot([1:N-1],tau,'k-','LineWidth',2);
    xlabel('Initial capital');
    ylabel('Expected duration');
    m = max(tau);
end