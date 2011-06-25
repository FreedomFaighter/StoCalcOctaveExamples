%MatLab program: simple birt and death process
clear
x0=5; % Initial population
b=1; d=0.5; % parameter values
x=[0:.1:8];
y=x0*exp((b-d).*x);% Deterministic solution
plot(x,y,'k--','Linewidth',2);
hold on
for j=1:3 % Three sample paths
    clear n t
    t(1,j)=0;
    tt=1;
    n(tt)=x0;
    while n(tt)>0 & tt<400
        y1=rand; y2=rand;
        t(tt+1,j)=-log(y1)/(b*n(tt)+d*n(tt))+t(tt,j)
        tt=tt+1;
        if y2< b/(b+d)
            n(tt)n(tt-1)+1;
        else
            n(tt)=n(tt-1)-1;
        end
    end
    s=stairs(t(:,j),n,'r-','Linewidth',2);
end
hold off
xlabel('Time'); ylabel('Population size');
