% MatLab program: simple birth process
clear
function = simpleBirthProcess(b=1, x0=1, xe=100, xMax=10, xDelta=0.2, npaths=3)
    tot=xe-x0+1;
    x=[0:xDelta:xMax];
    y=x0*exp(x); % Deterministic solution
    plot(x,y,'k--','Linewidth,2);
    hold on
    n=linspace(x0,xe,tot); % Defines the population vector.
    for j=1:npaths % n sample paths.
        t(1)=0;
        for i=1:tot-1
            t(i+1)=t(i)-log(rand)/(b*n(i));
        end
        stairs(t,n,j'r-','Linewidth',2); % Draws stairstep graph.
    end
    hold off
    xlabel('Time'); ylabel('Population Size');
end
