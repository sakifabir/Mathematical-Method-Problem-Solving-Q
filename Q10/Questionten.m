x=linspace(-2,2,50);
c=[1 0 1 0 -1];
y=polyval(c,x);
plot(x,y)
xlabel('x')
ylabel('y')