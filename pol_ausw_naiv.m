% Funktion zur Naiven Auswertung von Polynomen
% a : Vektor mit Koeffizienten von x (BSPW: p_n(x) = 2x^3 - 3x^2 + 4  ==>  a = [2 -3 0 4])
% n : Höchste Potenz
% x : Gesuchte Stelle

function out = pol_ausw_naiv(a,x)
m = a(1)*x^(numel(a)-1);
for j = 2:numel(a)
    m = m + a(j)*x^(numel(a)-j);
end
%fprintf('An der Stelle: %f hat das Polynom den Wert: %f\n', x, m)
end