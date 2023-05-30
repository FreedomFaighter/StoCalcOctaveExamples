%Proliferating epithelial cells
%Gibson et al. Nature 2006
%d is matrix dimension of truncated P
%states {4,5,......,d+3}
function [Me] = proliferatingEpithelialCells(d)
  if(d<2)
    fprintf('d is less then two and will not fit in the dimension needed for matrix S');
    return;
  end
  C=abs(pascal(d,1));
  E=zeros(d);
  S=zeros(d);
  for i=1:d
    E(i,i)=1/2^(i-1);
  end
  for i=2:d
    S(i,i-1)=1;
  end
  M=C'*E;
  P=S*M;
  [V,D]=eig(P);
  G=diag(D);
  ival=find(G==max(G));
  W=abs(V(:,ival));
  W=W/norm(W,1) %Stationary Distribution
  Me=Dot(W,[4:1:d+3]') %Mean of the Stationary Distribution
end
