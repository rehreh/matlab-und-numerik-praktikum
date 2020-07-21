clc;
close all;

t = @(x,y) 10.*y - 25000 .* (y./(y.^2+x.^2));   % PSI
phi = @(x,y) 10.*x + 25000 .* (x./(x.^2+y.^2));
x = -200:0.1:200;
y = 0:0.1:140;
n = 0:250:1500;
m = -2000:250:2000;
[X, Y] = meshgrid(x,y);

a=1;
b=1;

while a < min(size(X))
    while b < max(size(X))
        if sqrt(X(a,b)^2+Y(a,b)^2)<49.9
        X(a,b)=0;
        Y(a,b)=0;
        end
        b=b+1;
    end 
    b=1;
    a=a+1;
end   
    
figure ('Name','Strömungsmechanik','NumberTitle', 'Off');
hold on;
grid on;
[c,h] = contour(X, Y, t(X,Y), n);
% clabel(c, h);

[c,h] = contour(X, Y, phi(X,Y), m);
% clabel(c, h);