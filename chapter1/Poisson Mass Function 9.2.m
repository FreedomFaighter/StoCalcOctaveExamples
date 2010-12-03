clear all %Clears variables and functions from memory.
set(0, 'DefaultAxesFontSize', 18); %Increases axes labels.
lastx=25; %Truncates the Poisson function at x=25.
x=linspace(0,lastx,lastx+1);
w(1)=1; w(2)=1; lambda=3;
for i=2:lastx
    w(i+1)=i*w(i);
end
y=lambda.^x*exp(-lambda)./w;
bar(x,y,'k'); %Graphs a histogram of y.
axis([-1,12,0,0.25])
xlabel(x); ylabel(f(x));
