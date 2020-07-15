function x = NewtonRose(a, e)
x = [2; 1];
s = Rosenbrock(x);
m = [s(:,5),s(:,6)];
n = [s(:,3)];
a = 100;
e = 10^-3;
i = 0;
while (norm(n)>e && i<a)
    x = x-(m\n)
    i=i+1;
end
end