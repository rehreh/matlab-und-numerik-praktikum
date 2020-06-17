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

