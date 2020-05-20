% Newton-Verfahren der Funktion f mit der Ableitung df und dem Startwert x.
% Optional gewünschte Genauigkeit e und maximale Schrittzahl n.

function out = newton(f,df,x,e,n)

fprintf('Newton Verfahren der Funktion ')
disp(func2str(f))
fprintf('Mit dem Startwert: %.7f\n\n', x)

if abs(df(x)) < 0.0001
    error('The derivative function may not be 0!')
end

if nargin < 3
    error('You need to give at least a function, the derivative and a starting value!')
end

if nargin < 4
   e = 10^-10; 
end

if nargin < 5
    n = 10000;
end

i = 0;
y = Inf;

while (abs(y-x) > abs(x)*e  && i < n)
    y = x;
    fx = f(x);
    dfx = df(x);
    x = x - (fx/dfx);
    i = i + 1;
    fprintf('Die aktuelle Annäherung bei Schritt %3d ist: %.10f\n',i,x)
end

fprintf('\nDie Annäherung von der Nullstelle ist ist: %.10f, es wurden %d Schritte benötigt.\n\n',x,i)

end