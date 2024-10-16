function [ans] = monteCarlo(m=10^6, p=0.45, n=100)
    x=zeros(m,1);
    for i=1:n
        r=rand(m,1);
        y1=(r<p);
        x=x-y1;
        y2=(r>=p);
        x=x+y2;
    end
    ans=mean(x)
end