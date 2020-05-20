% Bisektion der Funktion y im Intervall [a,b].
% Optional mit Genauigkeit relg und maximaler Schrittzahl n.
% Gibt verbessertes Intervall, in dem Eine Nullstelle liegt zurück.

function out1 = bisect(y,a,b,relg,n)

fprintf('Bisektion der Funktion: ')
display(func2str(y))
fprintf('In dem Intervall: [%f, %f]\n\n',a,b)

i = 0;
ya = y(a);

if nargin < 3
    error('You need to give at least a function and an interval!')
end

if nargin < 4
   relg = 10^-5; 
end

if nargin < 5
    n = 100;
end

while (abs(b-a)>abs(b)*relg && i < n)
    m = (a+b)/2;
        tmp = y(m);
        if ((ya.*tmp) <= 0)
        b = m;
        else
        a = m;
        end
    i = i + 1;
    fprintf('Neues Intervall beim Schritt: %3d;[%.15f,%.15f]\n', i, a,b)
end
out1 = (a+b)/2;
fprintf('\nDer Mittelwert des Intervalls liegt bei %f\n\n', (a+b)/2)
end