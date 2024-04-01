clear all
function = simpleBirthPathProcess(m=50) %m size of vector defined
    set(0, 'DefaultAxesFontSize',18);
    b=1;
    x=linspace(0,m,m+1); %Defines vector [0,1,2,...,50]
    y=exp(x);
    n=linspace(1,m,m); %Defines population vector [1,2,...,50].
    for j=1:3; %Three sample paths.
        t(1)=0;
        for i=1:m-1;
            t(i+1)=t(i)-log(rand)/(b*n(i));
        end
        s=stairs(t,n); %Draws stairstep graph of n.
        set(s,'LineWidth',2);
        hold on
    end
    plot(x,yu,'k--','LineWidth',2); %Plots the exponential solution.
    axis([0,5,0,50]);
    xlabel('Time'); ylabel('Population Size');
    hold off
end