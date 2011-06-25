% MatLab program: simple birth process
clear
b=1; %Parameter values
x0=1; % initial population size
xe=100; % ending population size
tot=xe-x0+1;
x=[0:.2:10];
y=x0*exp(x); % Deterministic solution
plot(x,y,'k--','Linewidth,2);
hold on
n=linspace(x0,xe,tot); % Defines the population vector.
for j=1:3; % Three sample paths.
    t(1)=0;
    for i=1:tot-1
        t(i+1)=t(i)-log(rand)/(b*n(i));
    end
    stairs(t,n,j'r-','Linewidth',2); % Draws stairstep graph.
end
hold off
xlabel('Time'); ylabel('Population Size');
