function [y, nabla, Hesse]=Rosenbrock (x)
%y = zeros(2, 2);
y = 100.*(x(2)-x(1)^2)^2+(1-x(1))^2;
%nabla = zeros(2,2);
nabla = [x(1).*(2-400.*x(2)+400.*x(1)^2)-2; 200.*x(2)-200.*x(1)^2];

Hesse = [1200.*x(1)^2 - 400.*x(2) + 2, -400.*x(1);...
        -400.*x(1), 200];
end