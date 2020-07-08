clc
clear all
close all
%
%     Termin 1 - Einführung
%         bearbeitet von Thees Wilken und Ole Simmering
display("Termin 3 - Differentialgleichungen")
display("bearbeitet von Thees Wilken und Ole Simmering")
% 
%% Aufgabe 1.1
clear all   % Den Workspace leeren
clc         % Das Command Window leeren

fprintf('Gewöhnliche/Partielle Differentialgleichungen:\n\nGewöhnliche Differentialgleichungen beschreiben dynamische Prozesse, welche nur in einer Variablen veränderlich sind.\nPartielle Differentialgleichungen hingegen können Prozesse beschreiben, welche von mehreren Veränderlichen abhängig sind.\n')
%% Aufgabe 1.2
clear all   % Den Workspace leeren
clc         % Das Command Window leeren

fprintf('Anfangs-/Randwertprobleme:\n\nBei Anfangswertproblemen soll eine Gleichung gelöst werden, bei der z.B. durch Messung oder ähnlichem ein bestimmter Wert vorgegeben ist,\nwelcher auf jeden Fall im Prozess enthalten sein muss. Bei Randwertproblemen sind mehrere Zwischenwerte bekannt.\n')
%% Aufgabe 1.3
clear all   % Den Workspace leeren
clc         % Das Command Window leeren

fprintf('Anfangswertbedingungen/Randwertbedingungen:\n\nAnfangswertbedingungen sind Bedingungen, die durch die Startparameter des Beschriebenen Prozesses festgelegt sind. Sie werden verwendet,\num Differentialgleichungen höherer Ordnung zu lösen. Außerdem können analog dazu Randwertbedingungen genutzt werden, \ndie die Funktion nicht nur zum Zeitpunkt 0 beschreiben.\n')
%% Aufgabe 1.4
clear all   % Den Workspace leeren
clc         % Das Command Window leeren

fprintf('Systeme gewöhnlicher Differenzialgleichungen:\n\nBei Systemen gewöhnlicher Differenzialgleichungen handelt es sich um vektorielle Gleichungssysteme, \nwelche aus mehreren gewöhnlichen DGLs (Komponentenfunktionen) bestehen.\n')
%% Aufgabe 1.5
clear all   % Den Workspace leeren
clc         % Das Command Window leeren

fprintf('Schießverfahren:\n\nBei dem Schießverfahren werden Randwertprobleme durch Anfangswertprobleme ausgetauscht, bei denen die Differenz zwischen der DGL \nund dem gewünschten Randwert angenähert wird, indem die Steigung als Anfangswert variiert wird.\n')

%% Aufgabe 1.6
clear all   % Den Workspace leeren
clc         % Das Command Window leeren
fprintf('Lotka-Volterra-Gleichungen:\n\nDie Lotka-Volterra-Gleichungen beschreiben die Entwicklung zweier Tierpopulationen, wobei je eine DGL die Population \ndes Beute- bzw. des Raubtiers beschreibt.')
LotkaVolterra(2,1,2,1)

%% Aufgabe 1.7
close all;
clear all   % Den Workspace leeren
clc         % Das Command Window leeren
fprintf('Gedämpfter Oszillator:\n\nAls Gedämpften Oszillator beschreibt man ein System gleichmäßiger Schwankungen, wobei die Amplituden der Schwankungen je Periode kleiner werden.\n Hier wird als Anfangsbedingung des Anfangswertproblems die Auslenkung zum Startzeitpunkt und die Anfangsgeschwindigkeit gewählt. Die Bewegungsgleichung ist durch die Beschleunigung gegeben. Somit ist das Anfangswertproblem eines zweiter Ordnung. Dieses kann nun als Problem erster Ordnung dargestellt werden, indem die Position und die Geschwindigkeit in einen Vektor z geschrieben werden und die Bewegungsgleichung nun die Ableitung ersten Grades der zweiten Komponente ist.')

%% Aufgabe 2a
clear all   % Den Workspace leeren
clc         % Das Command Window leeren
close all   % Alle weiteren offenen Fenster schließen

LotkaVolterraPhase(2,1,2,1)

%% Aufgabe 2b
clear all   % Den Workspace leeren
clc         % Das Command Window leeren
close all   % Alle weiteren offenen Fenster schließen

LotkaVolterraOptions(2,1,2,1)

%% Aufgabe 2c 
clear all   % Den Workspace leeren
clc         % Das Command Window leeren
close all   % Alle weiteren offenen Fenster schließen

LotkaVolterra(2,1,2,1)
LotkaVolterra(1,2,1,2)

%% Aufgabe 3a
clear all   % Den Workspace leeren
clc         % Das Command Window leeren
close all   % Alle weiteren offenen Fenster schließen
%Anfangswertproblem lösen mittels ode45:
Oszillator()

%% Aufgabe 3b
clear all   % Den Workspace leeren
clc         % Das Command Window leeren
close all   % Alle weiteren offenen Fenster schließen
%i) Lösung des Anfangswertproblems:
 tspan = [0,3];
    ye = -0.5;
    y0 = 1;

    Z0 = [y0;0.2195];
    option = odeset('RelTol',1.0e-10,'AbsTol',1.0e-6);

[T,Z] = ode45(@odefun_Oszillators,tspan,Z0,option);
%ii) Annäherung der Nullstelle von F(s) mittels Bisektion:
bisect(@(s)F_term3(s),0,3)
%iii) Ausgabe des Graphen von ys:
plot(T,Z(:,1));

%% Aufgabe 4a
clear all   % Den Workspace leeren
clc         % Das Command Window leeren
close all   % Alle weiteren offenen Fenster schließen

a_11 = 1;
a_21 = 0;
a_31 = 0;

g_11 = 0;
g_21 = 1;
g_31 = 0;

k_1 = 0.04;


a_12 = 0;
a_22 = 2;
a_32 = 0;

g_12 = 0;
g_22 = 1;
g_32 = 1;

k_2 = 3*10^7;


a_13 = 0;
a_23 = 1;
a_33 = 1;

g_13 = 1;
g_23 = 0;
g_33 = 1;

k_3 = 10^4;


% a = [a_11, a_12, a_13;...
%      a_21, a_22, a_23;...
%      a_31, a_32, a_33];
% 
% g = [g_11, g_12, g_13;...
%      g_21, g_22, g_23;...
%      g_31, g_32, g_33];
%      
% k = [k_1;k_2;k_3];

fprintf('1. Teilreaktion: %1.0f, %1.0f, %1.0f => %1.0f, %1.0f, %1.0f  mit Geschwindigkeit k_1 = %1.2f\n' , a_11, a_21, a_31, g_11, g_21, g_31, k_1)
fprintf('2. Teilreaktion: %1.0f, %1.0f, %1.0f => %1.0f, %1.0f, %1.0f  mit Geschwindigkeit k_1 = %1.0f\n' , a_12, a_22, a_32, g_12, g_22, g_32, k_2)
fprintf('3. Teilreaktion: %1.0f, %1.0f, %1.0f => %1.0f, %1.0f, %1.0f  mit Geschwindigkeit k_1 = %1.0f\n\n' , a_13, a_23, a_33, g_13, g_23, g_33, k_3)

%% Aufgabe 4b
clear all   % Den Workspace leeren
clc         % Das Command Window leeren
close all   % Alle weiteren offenen Fenster schließen

tspan=[0,0.3];
y0=[1;0;0];

option = odeset('RelTol',1.0e-2,'AbsTol',1.0e-8);

[T,Y] = ode45(@odefun_Reaktion,tspan,y0,option);

figure; plot(T,Y(:,2));

title('Aufgabe 3b: y_2');
xlabel('t');
ylabel ('y');
grid on;

%%

[T,Y] = ode45(@odefun_Reaktion,tspan,y0,option);

dif=diff(T);
figure; plot(dif);
title('Schrittweiten, 820 Integrationsschritte');
xlabel('t');
ylabel ('y');
grid on;

L = length(dif)


%% Aufgabe 4c
clear all   % Den Workspace leeren
clc         % Das Command Window leeren
close all   % Alle weiteren offenen Fenster schließen

tspan=[0,0.3];
y0=[1;0;0];

option = odeset('RelTol',1.0e-2,'AbsTol',1.0e-8);

[T,Y] = ode45(@odefun_Reaktion,tspan,y0,option);

figure('Name','Aufgabe 4c: Lösung der Differentialgleichung','NumberTitle', 'Off'); 

plot(T,Y(:,2));
hold on;

fprintf('Integrationsschritte für ode45: %d\n\n\n', length(T))

[T,Y] = ode23tb(@odefun_Reaktion,tspan,y0,option);

plot(T,Y(:,2));


title('Aufgabe 4c: y_2 gelöst mit ode45 und ode23tb');
xlabel('t');
ylabel ('y');
grid on;
legend('ode45','ode23tb','Location','southeast');

fprintf('Integrationsschritte für ode23tb: %d\n', length(T))





