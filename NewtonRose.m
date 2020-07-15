function x = NewtonRose(x, a, e)

if nargin < 1
    error('You need to give at least a function and a startingpoint!')
end

if nargin < 2
   a = 100; 
end

if nargin < 3
    e = 10^-3;
end

%s = Rosenbrock(x)
%m = [s(:,5),s(:,6)];
%n = [s(:,3)];

i = 0;
[y,n,m] = Rosenbrock(x);
while (norm(n)>e && i<a)
    x2=x;
    if (any(n) == 0) 
        warning('Warnung: Gradient ist 0; Verfahren stagniert')
        return
    end
    x = x2-(m\n);
    [y,n,m] = Rosenbrock(x);
    i=i+1;
    fprintf('Schritt: %3.0f, Verbesserter Optimaler Punkt: (%3.4f, %3.4f)\n', i, x(1), x(2))
   
end
end