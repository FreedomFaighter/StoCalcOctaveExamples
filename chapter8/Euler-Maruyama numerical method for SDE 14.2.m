clear all % this program uses vector processing
nsim=10000;
Xe=10; X0=5;
alpha=3; sigma=1;
dt=0.001; time=1;
randn('state',1);
X=ones(nsim,1)*X0;
for t=1:time/dt
    r=randn(nsim,1);
    X=X+alpha*(Xe-X)*dt+sigma*X*sqrt(dt).*r;
end
meanX=sum(X)/nsim
meanx2=sum(X.*X)/nsim
EX=Xe+exp(-alpha)*(X0-Xe)
d1=sigma^2-alpha;
d2=sigma^2-2*alpha;
hlp=(X0^2+Xe/d2)*exp(d2)-2*alpha*Xe^2/d2;
EX2=2*alpha*Xe*(X0-Xe)/d1*(exp(d2)-exp(-alpha))+hlp
