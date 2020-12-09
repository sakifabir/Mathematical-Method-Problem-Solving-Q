[x,y]=meshgrid(-2:.2:2);
z=inline('x^2+y^2','x','y');
plot(x,y);