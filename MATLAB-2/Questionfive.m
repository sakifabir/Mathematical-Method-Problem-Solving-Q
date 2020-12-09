x=-3:0.2:3;
f=inline('x.^2+7.*x-3','x');
f(x);
y=f(x);
plot(x,y)
xlabel('x')
ylabel('y')