% Probability dsistribution for  logistic growth
clear all
time=2000;
K=50; N=2*K; r=0.004;
en=25; % Plot every en time interval
T=zeros(N+1,N+1); % T is the transistion matrix
p=zeros(time+1,N+1);
p(1,6)=1;
v=linspace(0,N,N=1);
b1=r*v.*(1-v/(2*K));
d1=r*v.^2/2(2*K);
b2=r*v;
d2=r*v.*v/K;
for i=2:N
    T(i,i)=1-b1(i)-d1(i);
    T(i,i+1)=d1(i+1);
    T(i+1,i)=b1(i);
end
T(1,1)=1; T(1,2)=d1(2); T(N+1,N+1)=1-d1(N+1);
for t=1:time
    y=T*p(t,:)';
    p(t+1,:)=y'
end
pm(1,:)=p(1,:);
for t=1:time/en;
    pm(t+1,:)=p(en*t,:);
end
mesh([0:1:N],[0:en:time],pm); % Three dimensional plot.
xlabel('State'); ylabel('Time, n,'); zlabel('Probility');
view(140,30)
