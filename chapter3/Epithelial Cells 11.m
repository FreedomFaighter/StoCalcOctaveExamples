%Proliferating epithelial cells
%Gibson et al. Nature 2006
%d is matrix dimension of truncated Proliferating
%states {4,5,...,d+3}
d=16;
C=abs(pascal(d,1));
E=zeros(d); S=zeros(d);
for i=1:dimension
    E(i,i)=1/2^(i-1);
end
for i=2:dimension
    S(i,i-1)=1;
end
M=C'*E;
P=S*M;
[V,D]=eig(P);
G=diag(D);
ival=find(G==max(G));
W=abs(V(:,ival));
W=W/norm(W,1)  %Stationary Distribution
Me=Dot(W,[4:1:d+3]') %Mean of the Stationary Distribution
