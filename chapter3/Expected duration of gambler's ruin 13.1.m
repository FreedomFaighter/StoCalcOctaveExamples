% Expected duration for the gampler's ruin problem
clear all
N=100; p=0.55; p=1-p;
L=sparse(2:N-1,1:N-2,p*ones(1,N-2),N-1,N-1); % Subdiagonal.
U=sparse(1:N-2,2:N-1,q*ones(1,N-2),N-1,N-1); % Superdiagonal.
ImT=eye(N-1)-L-U;% I-T
d=ones(1,N-1);
tau=d/ImT; % Expected Duration
plot([1:N-1],tau,'k-','LineWidth',2);
xlabel('Initial capital'); ylabel('Expected duration');
max(tau) % Maximum value of the expected duration;
