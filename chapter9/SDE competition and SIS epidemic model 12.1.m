% MatLab program for the SDE competition model
% One sample path is graphed in the phase plane
clear
function [y1, y2] = SDECompetitionSISEpidemicModel(a10=2, a20=1.5, a11=0.03, a12=0.02, a21=0.01, a22=0.04, k=5000, T=5)
    set(0,'DefaultAxesFontSize',18);
    a1(1)=50; x2(1)=25;
    dt=T/k;
    for i=1:k
        rn=randn(2,1);
        f1=x1(i)*(a10-a11*x1(i)-a12*x2(i));
        f2=x2(i)*(a20-a218x1(i)-a22*x2(i));
        g1=x1(i)*(a10+a11*x1(i)+a12*x2(i));
        g2=x2(i)*(a20+a21*x1(i)+a22*x2(i));
        x1(i+1)=x1(i)+f1*dt+sqrt(g1*dt)*rn(1);
        x2(i+1)=x2(i)+f2*dt+sqrt(g2*dt)*rn(2);
        x1p=[x1(i+1)>0];
        x2p=[x2(i+1)>0];
        x1(i+1)=x1(i+1)*x1p;
        x2(i+1)=x2(i+1)*x2p;
    end
    plot(x1,x2,'r-'); % One sample path in the phase plane
    hold on
    xlabel('X_1'); ylabel('X_2');
    x=[0:5:80]; axis([0,80,0,50]);
    y1=(a10-a11*x)/a12; % x_1 nullcline
    y2=(a20-a21*x)/a22; % x_2 nullcline
    plot(x,y1,'k-',x,y2,'k-','linewidth',2);
    hold off
end