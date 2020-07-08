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

