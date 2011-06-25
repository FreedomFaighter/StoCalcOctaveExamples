clear
T=1; k=1000;
dt=T/k; %  dt=Deltat=0.001
for j=1:2 % Two sample paths
    W(1)=0;
    for i=1:k
        W(i+1)=W(i)sqrt(dt)*randn;
    end
    plot([0:dt:T],W,'LineWidth',2);
     hold on
end
xlabel('t'); ylabel('W(t)');
