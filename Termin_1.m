%
%     Termin 1 - Einführung
%         bearbeitet von Thees Wilken und Ole Simmering
display("Termin 1 - Einführung")
display("bearbeitet von Thees Wilken und Ole Simmering")
% 
%% Aufgabe 1 - Matematische operationen mit Vektoren
clear all   % Den Workspace leeren
clc         % Das Command Window leeren

% Erstellen der Vektoren x und y
disp("Erstellen der Vektoren x und y: ")
x = [1;
    2;
    3]
y = [4;
    5;
    6]

% Ausführen einiger matematischer Operationen mit den Vektoren
disp("Vektoraddition: x + y: ")
x + y
disp("Vektorsubtraktion: x - y: ")
x - y
disp("Elementeweise Multiplikation: x .* y: ")
x .* y
disp("Elementeweise Rechtsdivision: x ./ y:")
x ./ y
disp("Elementeweise Linksdivision: x .\ y:")
x.\ y
disp("Matrixmultiplikation: x * y^T:")
x * y'
disp("Matrixmultiplikation bei falsch gewählten Dimenstionen nicht möglich!")

%% Aufgabe 2 - Kettenbruch
clear all                               % Den Workspace leeren
clc                                     % Das Command Window leeren

n = kbruch(4);
disp("Kettenbrch mit Tiefe 4: " + n)

%% Aufgabe 3 - Erster Plot
clear all                               % Den Workspace leeren
clc                                     % Das Command Window leeren

fplot(@(x) 1/(x-1)^2 + 3/(x-2)^2,'r')   % Plot der angegebenen Funktion in der Farbe Rot
axis([0,3,0,3500])                      % Skalieren der Achsen
grid on                                 % Anschalten der großen Hilfsgitterlinien

% Titel, Graphen- und Achsenbeschriftungen
title('Graph der Funktion f')           
text(1.75, 1000, 'f(x)')
xlabel('0\leq x \leq 3')
ylabel('0\leq y \leq 3500')

%% Aufgabe 4 - 3D Plot
close all                               % Fenster der vorigen Aufgabe schließen
clear all                               % Den Workspace leeren
clc                                     % Das Command Window leeren

% Erstellen des x,y Gitters
x = [-2:0.05:2];
y = [-2:0.05:2];
[X,Y] = meshgrid(x,y);

% Berechnen der Funktionswerte
Z = sin(X.^2 + Y.^2) + exp(-50.*(X.^2 + Y.^2));

% Erstellen des mesh: Gitter auf der Funktion
figure ('Name','Aufgabe 4: mesh','NumberTitle', 'Off')
mesh(X,Y,Z);
title 'mesh';

% Erstellen des meshc: Gitter auf der Funktion mit Kontur auf der x,y-Ebene
figure ('Name','Aufgabe 4: meshc','NumberTitle', 'Off')
meshc(X,Y,Z);
title 'meshc';

% Erstellen des surf: Oberfläche auf der Funktion
figure ('Name','Aufgabe 4: surf','NumberTitle', 'Off')
surf(X,Y,Z);
title 'surf';

% Erstellen des surfc: Oberfläche auf der Funktion mit Kontur auf der x,y-Ebene
figure ('Name','Aufgabe 4: surfc','NumberTitle', 'Off')
surfc(X,Y,Z);
title 'surfc';

% Erstellen des contour: Kontur der Funktion auf der x,y-Ebene
figure ('Name','Aufgabe 4: contour','NumberTitle', 'Off')
contour(X,Y,Z);
title 'contour';

%% Aufgabe 5 - Fixpunktgleichung
close all                               % Fenster der vorigen Aufgabe schließen
clear all                               % Den Workspace leeren
clc                                     % Das Command Window leeren

% Teil a

x = -1:0.05:5;
y1 = x;
y2 = sqrt(x+1);
x2 = 1.618;
y3 = 1.618;
plot(x,y1,'r',x,y2,'b',x2,y3,'k*')
grid on
text(1.65,1.5,'Schnittpunkt bei etwa [1.65,1.65]')
text(-0.25,1.5,'f(x)={\surd}(x+1)','color','b')
text(2.75,3.5,'f(x)=x','color','r')

% Teil b
clear all
disp("Iterative Nähererung an x in 11 Iterationen mit Startwert 3:")
x = 3;
X=[3];
for i=0:1:20
    x=sqrt(1+x);
    X=[X,x];
end
% Es Konvergiert gegen 1.6180
X
% Teil c

Kettenbruch = kbruch(31);
disp("Der Kettenbruch mit Tiefe 31 liefert: " + Kettenbruch)
disp("Man sieht, dass x und der Kettenbruch gegen 1,6180 konvergieren.")

%% Aufgabe 6 - Parametrischer 3D Plot
close all                               % Fenster der vorigen Aufgabe schließen
clear all                               % Den Workspace leeren
clc                                     % Das Command Window leeren

t = [1:0.001:20];
x = (t.^2./20).*[sin(8.*pi.*t)+ cos(2.*pi.*t./20)];
y = (t.^2./20).*[cos(8.*pi.*t)+(t./10)];
z = t;

plot3(x,y,z)
axis([-20,40,0,60,1,20])
grid on                                 % Anschalten der großen Hilfsgitterlinien

% Titel, Graphen- und Achsenbeschriftungen
title('Plot der angegebenen Kurve')
xlabel('-20\leq x \leq 40')
ylabel('0\leq y \leq 60')
zlabel('1\leq t \leq 20')


%% Aufgabe 7 - Dünn besetzte Zufallsmatrix
close all                               % Fenster der vorigen Aufgabe schließen
clear all                               % Den Workspace leeren
clc                                     % Das Command Window leeren

% Teil a: Erstellen der Zufallsmatrix.
R = sprand(6000,6000,1/6000);
disp("Teilaufgabe a: Zufallsmatrix R erstellt.")

% Teil b: Ausgabe des benötigten Speichers.
disp("Teilaufgabe b: Benötigter Speicher berechnet:")
whos R

% Teil c: Ausgabe der benötigten Zeit um eine Matrixmultiplikation
% durchzuführen.
tic;
out = R.'*R;
ElapsedTime = toc();
disp("Teilaufgabe c: Benötigte Zeit für Matrixmultiplikation R^T * R: " + ElapsedTime + "s")

% Teil d: Ändern in Datentyp double; Ausgabe des neuen benötigten
% Speichers; Ausgabe der benötigten Zeit für die selbe Matrixmultiplikation
% aus Teilaufgabe c mit dem neuen Datentyp.
R = full(R);
disp("Teilaufgabe d: Datentyp zu double geändert.")
disp("Neuer Benötigter Speicher:")
whos R
tic;
out = R.'*R;
ElapsedTime = toc();
disp("Benötigte Zeit für die Matrixmultiplikation R^T * R mit neuem Datentyp: " + ElapsedTime + "s")

%% Aufgabe 8 - Lineares Gleichungssystem
close all                               % Fenster der vorigen Aufgabe schließen
clear all                               % Den Workspace leeren
clc                                     % Das Command Window leeren

% Erstes Gleichungssystem
disp("Erstes Gleichungssystem")
A = [1,2,3
    4,5,6
    7,8,9]
a = [1
    1
    1]
X = [A,a];
disp("Berechnung des ersten Gleichungssystems Ax=a:")
rref(X)
disp("Da eine Nullzeile auftritt gibt es unendlich viele Lösungen, eine davon ist: ")
A\a

% Zweites Gleichungssystem
disp("Zweites Gleichungssystem")
B = [1,2,3
    2,4,6
    3,6,9]
b = [1
    2
    3]
Y = [B,b];
disp("Berechnung des zweiten Gleichungssystems Bx=b:")
rref(Y)
disp("Da zwei Nullzeilen auftreten gibt es unendlich viele Lösungen, eine davon ist: ")
[-4;1;1]

% Drittes Gleichungssystem
disp("Drittes Gleichungssystem")
C = [1,2,3
    2,3,1
    3,1,2]
c = [3
    5
    7]
Z = [C,c];
disp("Berechnung des dritten Gleichungssystems Cx=c:")
rref(Z)
disp("Das Gleichungssystem ist eindeutig lösbar, da es vollen Rang aufweist. Die Lösung ist:")
C\c


%% Aufgabe 9 - Pascalsche Schnecke
close all                               % Fenster der vorigen Aufgabe schließen
clear all                               % Den Workspace leeren
clc                                     % Das Command Window leeren

% Angabe der Parameter
a = 5;
b = 5;

% Teil a: Impliziten Gleichung
figure ('Name','Aufgabe 9a) Implizite Gleichung der Kardioide','NumberTitle', 'Off')
fimplicit(@(x,y)(x.^2+y.^2-a*x).^2-b^2*(x.^2+y.^2),[-5,15,-10,10])
grid on

% Titel- und Achsenbeschriftung
title('Plot der Kardioide mit impliziter Gleichung')
xlabel('-5\leq x \leq 15')
ylabel('-10\leq y \leq 10')

% Teil b: Polarkoordinaten
figure ('Name','Aufgabe 9b) Polarkoordinatendarstellung  der Kardioide','NumberTitle', 'Off')
theta = [0:0.05:2*pi];
polar(theta,a*cos(theta)+b,'r')
% Titel- und Achsenbeschriftung
title('Plot der Kardioide mit Polarkoordinaten')

% Teil c: Parameterdarstellung
figure ('Name','Aufgabe 9c) Parameterdarstellung der Kardioide','NumberTitle', 'Off')
t = [0:0.05:2*pi];
x = a.*cos(t).^2+b.*cos(t);
y = a.*cos(t).*sin(t)+b.*sin(t);
plot(x,y)
grid on

% Titel- und Achsenbeschriftung
title('Plot der Kardioide mit Parameterdarstellung')
xlabel('-2\leq x \leq 10')
ylabel('-8\leq y \leq 8')

%%
close all                               % Fenster der vorigen Aufgabe schließen
clear all                               % Den Workspace leeren
clc                                     % Das Command Window leeren
display("Hiermit ist der erste Termin beendet. Vielen Dank für ihre Aufmerksamkeit!")