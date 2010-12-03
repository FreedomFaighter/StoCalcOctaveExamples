%MatLaB Program 1, FInal Size
clear
function [meanN] = SIRepidemicProcess(N,betagama=1, e(1)=0, T(1,1)=1)
    siz=(N+1)*(N+2)/2
    T=zeros(siz);
    for i=1:N
       e(i+1)=e(i)+N+2-i;
       p(i)=gama*N/beta/(i-1+gama*N/beta);
       T(i+1,i+1)=1;
    end
    %Upper Blocks of T
    for i=1:N
        for j=0:N-i
            T(e(i)+j+2,e(i+1)+j+1)=p(N-i-j+1);
        end
    end
    %Lower Blocks of  T
    for i=1:N-1
        for j=1:N-i
            T(e(i+2)j,e(i+1)+j)=1-p(N-j-i+2);
        end
    end
    pa=zeros(siz,1);
    pa(N+2)=1; % Initial infectives, element N+2
    S=sparse(T);
    plim=S^(2*N-1)*pa;
    for i=1:N
        absorp(i)=plim(i+1);
    end
    meanN=dot(absorp,num)
    plot([1:N:N],absorp,'b-','LineWidth',2);
    xlabel('Size'); ylabel('Probability');
end