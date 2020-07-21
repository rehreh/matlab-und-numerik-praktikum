clc
clear all
close all
%
%     Termin 4 - Optimierung
%         bearbeitet von Thees Wilken und Ole Simmering
display("Termin 3 - Differentialgleichungen")
display("bearbeitet von Thees Wilken und Ole Simmering")
% 
%% Aufgabe 1a i
clc;

fprintf('Begriffserklärungen:\n\nDie Zielfunktion ist jene Funktion, die bei der Optimierung untersucht wird. Sie bildet im Definitionsberich D,\nwelcher Teilmenge des R^n ist, Vektoren auf die Menge der reelen Zahlen ab. \nIst der Definitionsbereich eingeschränkt, so wird von einem Oprimierungsproblem mit Nebenbedingungen \ngesprochen. \nDiese eingeschränkte Teilmenge des Definitionsbereichs wird zulässige Menge genannt und ein Punkt in dem \nDefinitionsbereich wird zulässiger Punkt genannt. \nJe nach Optimierungsfrage kann entweder der größte oder der kleinste Funktionwert gesucht sein, der Punkt, \nan dem dieser gesuchte Wert eingenommen wird, wird optimaler Punkt genannt. \nAus der Kurvendiskussion ist bekannt, dass bei Extremstellen von Funktionen Nullstellen der Ableitung vorliegen \nmüssen. Auf mehrdimensionale Probleme übertragen entspricht dies der notwendigen Bedingung, dass der Gradient \nnull sein muss, wenn ein Extrempunkt erreicht wird. \nDer Gradient ist der Vektor aus den partiellen Ableitungen der Funktion in allen Variablen. \nDie Hesse-Matrix ist eine Matrix bestehend aus dem Gradienten in allen Variablen partiell abgeleitet. Somit \nstehen in der Hesse-Matrix alle zweiten partiellen Ableitungen nach je zwei Variablen. Die Hesse-Matrix ist \nimmer quadratisch.\nUm die definitheit einer Matrix zu bestimmen müssen alle Eigenwerte bestimmt werden. Sind diese alle positiv, \nist die Matrix positiv definit. Sind alle negativ, ist sie negativ definit. Sind sie teilweise positiv oder \nnull, ist sie positiv semidefinit. Ebenso bei negativer semidefinitheit. Wenn alle Eigenwerte null sind,\nist eine Matrix indefinit.\n')

%% Aufgabe 1a ii
clc;

fprintf('Newton-Verfahren:\n\n')
fprintf('Sowohl bei Algorithmus 2 als auch dem Algorithmus 3 wird die Nullstelle approximiert, indem in jedem Schritt \ndie Funktion als Taylor-Polynom 2. Grades angenähert wird und dessen Nullstelle bestimmt wird.\n\n')
fprintf('Der größte Unterschied ist, dass bei Algorithmus 2 die Nullstelle eines eindimensionalen Problems gesucht wird \nund bei Algorithmus 3 die Extrempunkte eines mehrdimensionalen Problems gesucht wird.\nAußerdem wird bei Algorithmus 3 die Norm des Gradienten mit der angegebenen absoluten Genauigkeit verglichen, \nwährend bei dem Algorithmus 2 die relative Genauigkeit mit der Näherung der Nullstelle multipliziert und dann \nmit der Abweichung zwischen der letzen verbesserten Nullstellenapproximation und der Nullstellenapproximation \ndieses Schrittes verglichen wird.\n')

%% Aufgabe 1a iii
clc;

fprintf('Lineare Programmierung:\n\nLineare Programmierung ist ein Verfahren zur Optimierung linearer Funktionen, für eine durch (Un-)Gleichungen \neingeschränkte Menge. Es kann also mit linearen Programmen ein Funktionsmaximum oder -minimum einer linearen \nFunktion, für einen mehrfach eingeschränkten Bereich bestimmt werden.\n')
fprintf('\nStrukturvariablen sind solche, bei denen der Parameter c_i ungleich null und die Optimierungsvariable größer \noder gleich Null ist.\nWenn der Parameter größer oder gleich Null, aber der Parameter in der Zielfunktion gleich Null ist, wird die \nVariable Schlupfvariable genannt. \nSind sowohl die Optimierungsvariable als auch der Parameter in der Zielfunktion aus den reellen Zahlen, \nso nennt man die Variable freie Variable.\n')
fprintf('\nSeparationsfunktionen:\n\nDie Separationsfunktion ist eine Funktion, bei der die Koeffizienten der Variablen die Lösungen eines Optimierungsproblem ist. Sie ermöglicht \ndie optimale Trennung von Werten nach Einhaltung mehrerer Toleranzen. Die Punkte auf der Geraden können nicht \neindeutig zugeordnet werden. Sind die Toleranzen für die Zuordnung der Werte alle gleichwertig, kann das Problem \nmittels einer linearen Separationsfunktion gelöst werden. Fließen eine oder mehrere Toleranzen quadratisch in die \nBewertung der Werte ein, handelt es sich um eine quadratische Separationsgleichung.')

%% Aufgabe 2a,b
clc;

fprintf('siehe Rosenbrock.m\n')
Rosenbrock([1,1]);

%% Aufgabe 2c/d
clc;
clear all;

fprintf('Newton Verfahren:\n\n');
x = NewtonRose([-1.2; 1], 30, 10^-9);
fprintf('\nErgebnis des Newtonverfahrens: %3.4f, %3.4f\n\n\n\n', x(1), x(2)) 

fprintf('fminsearch:\n');
options.Display = 'iter';
options.TolX = 10^-9;
options.MaxIter = 30;
[x, functionvalue, exitflag] = fminsearch(@Rosenbrock,[-1.2; 1], options);
fprintf('Ergebnis des fminsearch: %3.4f, %3.4f\n\nfminunc:\n', x(1), x(2)) 
[x, functionvalue, exitflag] = fminunc(@Rosenbrock,[-1.2; 1], options);
fprintf('\nErgebnis des fminunc: %3.4f, %3.4f\n', x(1), x(2))
%% Aufgabe 3a
clc;
clear all;

c = [1200, 500, 600];
Aeq = [];
beq = [];
A = -[8, 4, 2; 4, 0, 2; 3, 0, 1; 3, 1, 0];
b = -[40; 20; 10; 5];
lb = [0.0; 0.0; 0.0];
ub = [];
x0 = [];

options.Display = 'iter';

[x, Preis, exitflag] = linprog(c, A, b, Aeq, beq, lb, ub, x0, options)

%% Aufgabe 3b
clc;
clear all;

c = [1200, 500, 600];
Aeq = [];
beq = [];
A = -[8, 4, 2; 4, 0, 2; 3, 0, 1; 3, 1, 0];
A = [A; 12, 4, 4; 6, 1, 1];
b = -[40; 20; 10; 5];
b = [3*b; 300; 81];
lb = [0.0; 0.0; 0.0];
ub = [];
x0 = [];

options.Display = 'iter';

[x, Preis, exitflag] = linprog(c, A, b, Aeq, beq, lb, ub, x0, options);
fprintf('Optimaler Punkt: %1.0f, %1.0f, %1.0f\n\nPreis: %1.0f\n\nExitflag: %1.0f\n', x(1), x(2), x(3), Preis, exitflag);

%% Aufgabe 3b
clc;

Ueberschuss = A*x-b;
b(1:4)=b(1:4)-Ueberschuss(1:4);
b(5)=b(5)+Ueberschuss(5)+Ueberschuss(1)+Ueberschuss(2);
b(6)=b(6)+Ueberschuss(6)+Ueberschuss(3)+Ueberschuss(4);

[x,price,exitflag] = linprog(c,A,b,Aeq,beq,lb,ub,x0,options);
fprintf('Optimaler Punkt: %1.0f, %1.0f, %1.0f\n\nPreis: %1.0f\n\nExitflag: %1.0f\n', x(1), x(2), x(3), Preis, exitflag);
options.Display = 'iter';

[x, Preis, exitflag] = linprog(c, A, b, Aeq, beq, lb, ub, x0, options);
fprintf('Optimaler Punkt: %1.0f, %1.0f, %1.0f\n\nPreis: %1.0f\n\nExitflag: %1.0f\n', x(1), x(2), x(3), Preis, exitflag);

%% Aufgabe 4
clc;
clear all

m = 300;
PER = rand(m,1);
KON = rand(m,1);
idx = vecnorm([PER, KON], 2, 2) <1;
k = m-sum(idx);
PER = [PER(~idx); PER(idx)];
KON = [KON(~idx); KON(idx)];

scatter(PER(1:k), KON(1:k), '+')
hold on
scatter(PER(k+1:m), KON(k+1:m), 's')
axis equal
xlabel('Permeabilitaet')
ylabel('Konduktivitaet')

c = [ 0.0, 0.0, 0.0 ];
A = [ -ones(k,1),  -PER(1:k)   -KON(1:k);...
    ones(m-k,1), PER(k+1:m), KON(k+1:m)];
b = -ones(m,1);
Aeq = [];
beq = [];
% Keine '='-Nebenbedingungen
lb = [];   ub = [];
% Freie Variable
x0 = [];
% Standard Startwert
[x,fval,exitflag] =linprog(c,A,b,Aeq,beq,lb,ub,x0);
fprintf('Optimaler Punkt: %1.0f\n\nPreis: %1.0f\n\nExitflag: %1.0f\n', x, fval, exitflag);

%% Aufgabe 4
clc;
c = [0.0, 0.0 , 0.0, 0.0, 0.0, 0.0];
A=[-ones(k,1),-PER(1:k), -KON(1:k),-PER(1:k).*KON(1:k), -(PER(1:k).^2),-(KON(1:k).^2);
    ones(m-k,1), PER(k+1:m), KON(k+1:m),PER(k+1:m).*KON(k+1:m), PER(k+1:m).^2, KON(k+1:m).^2];
b = -ones(m,1);
Aeq = [];
beq = [];
% Keine '='-Nebenbedingungen
lb = [];
ub = [];
% Freie Variable
x0 = [];
% Standard Startwert
[x,fval,exitflag] = linprog(c,A,b,Aeq,beq,lb,ub,x0)

%f = @(PER, KON) KON.^2.*x(6)
fimplicit(@(per, kon) x(1) + x(2).*per + x(3).*kon + x(4).*per.*kon + x(5).*per.^2 + x(6).*kon^2);
