x=-1:0.1:1;
f=x+2;
g=f.^2;
h=x.^3+1;
y=g.*h;
Result=polyval(y,x)