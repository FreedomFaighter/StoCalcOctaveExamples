% MatLaB Program 3, Stochastic Competition
clear all
a10=2; a11=.03; a12=.02;
a20=1.5; a21=.01; a22=.04;
t(1)=0; x1(1)=50; x2(1)=25;
i=1;
while (x1(i)>0  &  x2(i)>0  &  t(i)<5);
    b1=a10*x1(i);  b2=a20*x2(i);
    d1=x1(i)*(a11*x1(i)+a12*x2(i));
    d2=x2(i)*(a21*x1(i)+a22*x2(i));
    tot=b1+b2+d1+d2;
    u1=rand;
    u2=rand;
    t(i+1)=-log(u1)/tot+t(i);
    x1(i+1)=x1(i); x2(i+1)=x2(i);
    if (u2<=b1/tot)
                x1(i+1)=x1(i)+1;
    elseif(u2>b1/tot& u2<=(b1+b2/tot))
        x2(i+1)=x2(i)+1;
    elseif (u2>(b1+b2)/tot & u2<=(b1+b2+d1/tot))
        x1(i+1)=x1(i)-1;
     elseif
        x2(i+1)=x2(i)-1;
     end
     i=i+1;
end
xx=linspace(0,100,11);
isox1=a10/a12-(a11/a12)*xx;
isox2=a20/a22-(a21/a22)*xx;
l1=stairs(x1,x2,'r'); set(l1, 'LineWidth',2);
axis([0,80,0,50]);
hold on
plot(xx,isox1,'k',xx,isox2,'k','LineWidth',2);
xlabel('X_1'); ylabel('X_2');
