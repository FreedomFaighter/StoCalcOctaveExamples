clear all
einf=120; pinf=301;
k1=1.66*10^(-3); k_1=10^(-4); k2=0.1;
kmax=(k2*einf); km=(k_1+k2)/k1;
d=-1*ones(1,pinf);
Q=zeros(pinf);
Q(1,1)=-kmax/(km+1);
for i=2:pinf
  Q(i,i)=-kmax*i/(km+i);
  Q(i-1,i)=-Q(i,i);
end
tau=d/Q;
plot([1:1:pinf],tau,'k-','linewidth',2);
xlabel('N(0)'); ylabel('Expected Duration')
% portion (b)
tau2=-2*tau/Q
taustd=sqrt(tau2-tau.^2);
