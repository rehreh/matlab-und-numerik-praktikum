% Funktion mit Namen kbruch, die einen Kettenbruch mit Tiefe n ausgibt

function y = kbruch(n)      
x = 1;                          % Rechenvariable x wird mit dem Wert 1 initialisiert
for i = 1:1:n                   % for Schleife mit Zählervariable i geht von 1 mit Schrittweite 1 bis n
    x = 1+1/x;                  % Nächste Stufe des Kettenbruchs berechnen
end
y = x;                          % Ergebnis speichern als y
end