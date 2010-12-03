%MatLab program for the SDE SIS epidemic model.
%Three sample paths and probability of no epidemic
clear
function = SDESISEpidemicModel(beta=2, b=0.5, g=0.5, N=100, sim=1000, tot=0, init=1, dt=0.01, time=10)
    set(0,'DefaultAxesFontSize',18);
    sdt=sqrt(dt); 
    for k=1:sim
        clear i t
        j=1; i(j)=init; t(j)=0;
        while i(j)>0 & t(j)<time
            mu=beta*j(j)*(N-i(j))/N-(b+g)*i(j)
            sigma=sqrt(beta*i(j)*(N-i(j))/N+(b+g)*j(j))
            i(j+1)=i(j)+mu*dt+sigma*randn*sdt;
            t(j+1)=t(j)+dt;
            j+j+1;
        end
        if i(j)<=0
            tot=tot+1
        end
        if k==1
            plot(t,i,'r-','Linewidth',2);
        elseif k==2
            plot(t,i,'b-','Linewidth',2);
        elseif k==3
            plot(t,i,'g-','Linewidth',2);
        end
        hold on
    end
    noepid=tot/sim
    y(1)=init;
    for k=1:time/dt
        f1=beta*(N-y(k))*y(k)/N-(b+g)*y(k);
        y(k+1)=y(k)+dt*f1;
    end
    plot([0:dt:time],y,'k--','LineWidth',2);
    axis([0,time,0,80]);
    xlabel('Time'); ylabel('Infectious Individuals');
    hold off
end