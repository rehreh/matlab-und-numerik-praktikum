clc;
close all;

t = @(x,y) 10.*y - 25000 .* (y./(y.^2+x.^2));   % PSI
phi = @(x,y) 10.*x + 25000 .* (x./(x.^2+y.^2));
x = -200:0.1:200;
y = 0:0.1:140;
n = 0:250:1500;
m = -2000:250:2000;
[X, Y] = meshgrid(x,y);

figure ('Name','Strömungsmechanik','NumberTitle', 'Off');
hold on;
grid on;
[c,h] = contour(X, Y, t(X,Y), n);
% clabel(c, h);

[c,h] = contour(X, Y, phi(X,Y), m);
% clabel(c, h);