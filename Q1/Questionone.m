x = -5:.1:5;
g = inline('x+cos(x.^5)','x');
g(x);
y=g(x);
plot(x,y)
xlabel('x')
ylabel('y')