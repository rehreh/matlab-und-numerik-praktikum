% Funktion zur Auswertung von Polynomen
% a : Vektor mit Koeffizienten von x (BSPW: p_n(x) = 2x^3 - 3x^2 + 4  ==>  a = [2 -3 0 4])
% n : Höchste Potenz
% x : Gesuchte Stelle

function out = pol_ausw(a,x)

ps = a(1);
p = a(1) * x + a(2);
for j = 3:numel(a)
    ps = ps * x + p;
    p = p * x + a(j);
end
%fprintf('An der Stelle: %f hat das Polynom den Wert: %f\n', x, p)
end