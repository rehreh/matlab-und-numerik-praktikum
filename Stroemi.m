close all
t = @(x,y)10.*y-25000.*(y./(x.^2+y.^2));
%phi = @(x,y)10.* (y./(x.^2+y.^2));
x = -100:0.1:100;
y = 1:0.1:140;
n = 0:100:1000;
[X, Y] = meshgrid(x, y);
s = surf(X, Y, t(X,Y));
s.EdgeColor = 'none';
figure;
contourf(X, Y, t(X,Y), n);
%contourf(X, Y, phi(X,Y), n);
