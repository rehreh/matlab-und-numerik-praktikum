%% Einleitung 
%     Termin 2 - Numerische Matematik
%         bearbeitet von Thees Wilken und Ole Simmering
aufraeumen()
clearvars
display("Termin 2 - Numerische Matematik")
display("bearbeitet von Thees Wilken und Ole Simmering")
% 
%
%% Aufgabe 1: Erklärung Abs Fehler
aufraeumen()
clearvars
fprintf('Absoluter Fehler: \nDifferenz zwischen berechnetem Wert und tatsächlicher Lösung.\n\n')
% Erklärung Rel Fehler
fprintf('Relativer Fehler:\nAbweichung des berechneten Wertes vom tatsächlichen Ergebnis bezogen auf den eigentlichen Wert.\n\n')

%% Aufgabe 1: Erklärung Gleitzahl
aufraeumen()
clearvars
min = num2str(realmin('double'));
max = num2str(realmax('double'));
epsd = num2str(eps('double'));
disp(sprintf(['Gleitpunktzahl:\nBei der approximation einer reelen Zahl durch eine Gleitpunktzahl wird das Komma hinter die erste Zahl ungleich Null \nverschoben; es wird gespeichert welche Verschiebung durchgeführt wurde. Dadurch wird das Speichern von Zahlen ermöglicht.\n\nMatlab verwendet den Datentypen double welcher im Bereich zwischen ', min,' und ', max, ' liegt.\n\nDouble Zahlen werden auf ca. 16 dezimalen Nachkommerstellen genau gespeichert. \nDiese Genauigeit nennt sich Maschienengenauigkeit und liegt bei: ', epsd, '\n']))

%% Aufgabe 1: Erklärung Rundung
aufraeumen()
clearvars
fprintf('Rundung:\nDa alle Zahlen erst in Gleitpunktzahlen umgewandelt werden müssen entstehen Rundungsfehler, welche Konvertierungsfehler \ngenannt werden. Deshalb können Zahlen maximal mit der Maschienengenauigkeit gespeichert werden.\n\n')
fprintf('Datenabhängigkeit:\nEs sollte allgemein vermieden werden zu Runden bevor die Berechnung abgeschlossen ist. Es gibt numerisch stabile Algorithmen \nmit denen Probleme gelöst werden können, ohne dass vorschnell gerundet wird. \n\n')

%% Aufgabe 1: Erklärung Nullstellenproblem
aufraeumen()
clearvars
fprintf('Nullstellenproblem:\nGesucht ist der Wert für x, an dem f(x) = 0 gilt. Dies kann durch unterschiedliche Verfahren analytisch bestimmt, oder \nnumerisch angenähert werden.\n\n')
fprintf('Bisektion: \nEin numerische Verfahren zur Nullstellenbestimmung ist die Bisektion: In einem Startintervall wird eine Nullstelle iterativ \nangenähert, indem das Intervall jeden schritt halbiert wird; dabei wird bestimmt ob die Nullstelle in der vorderen oder \nhinteren Intervallhälfte liegt und diese dann im nächsten Schritt wieder halbiert.\n\n')
fprintf('Newton-Verfahren: \nEin Weiteres Verfahren ist das Newton-Verfahren: hier wird von einem Startpunkt x_0 ausgehend, der ausreichend nahe an der \nNullstelle liegen muss, die Nullstelle angenähert. Am jeweiligen Iterationswert wird die lokale Tangente gebildet und die \nNullstelle dieser als nächster Iterationswert verwendet. Beendet wird das Verfahren, sobald ein Abbruchkriterium erfüllt ist: \nHierbei wird beispielsweise der Funktionswert bei dem Iterationspunkt ausgewertet und mit Null verglichen oder überprüft ob \neine gewählte relative Genauigkeit erreicht wurde.\n\n')
fprintf('Konvergenz, Divergenz, alternierende Iterationsfolgen:\nIst ein Verfahren lokal konvergent, so wird mit jedem Iterationsschritt eine Näherung an den Zielwert erreicht. Wenn es \ndivergiert entfernt sich der berechnete Wert von dem gewünschten Wert mit jedem Schritt. Bei einer alternierenden \nIterationsfolge springt der Wert mit jedem Schritt um den Zielwert herum und erreicht ihn gegebenenfalls nie.\n\n')
fprintf('Horner-Schema: \nDas Horner-Schema ist eine effitziente Methode zur Auswertung von Polynomen. Dabei wird ein Polynom aus der Standardform in \ndie ausgeklammerte Form gebracht. Hierdurch wird die Weiterverwendung vereinfacht und die bereits genannten Methoden zur \nAuswertung von Polynomen beschleunigt.\n')

%% Aufgabe 1: Eigenwertproblem
aufraeumen()
clearvars
fprintf('Eigenwertproblem:\nGesucht wird ein Vektor, der mit der zu untersuchenden Matrix ein Vielfaches seiner selbst ergibt. Diesen Vektor nennt man \nEigenvektor der Matrix und den jeweiligen Koeffizienten dazu Eigenwert Lambda.\n\n')
fprintf('Begleitmatrix:\nEin Polynom lässt sich mittels einer Begleitmatrix in ein Gleichungssystem umwandeln. Diese Begleitmatrix setzt sich aus den \nKoeffizienten des Polynoms zusammen. Diese stehen dabei nach der größe des Exponenten sortiert in der letzten Zeile.\n\n')
fprintf('Determinante: \nDie Determinante, oder auch Volumenänderungsfaktor gibt an, wie sich das Volumen ändert, wenn die lineare Abbildung der Matrix \ndurchgeführt wird. \n')

%% Aufgabe 1b: Bank
aufraeumen()
clearvars
fprintf('Aufgabe 1b):\nDas Guthaben ist als Gleitpunktzahl 2 mit dem Exponenten 54 gespeichert. Da dies nur auf 16 Nachkommastellen genau geschieht, \nfunktioniert das Abheben von 100.000€ gerade so; der neue Kontostand ist nun in der elften Nachkommastelle um Eins kleiner. Wird \nnur 1€ abgezogen ist die Differenz 1*10^-16 und damit geringer als die Maschienengenauigkeit; der neue Kontostand wird also auf \ndie gleiche Zahl wie der alte Kontostand gerundet.\n')

%% Aufgabe 2 Funktionsauswertung
aufraeumen()
clearvars
y = @(x) (sinh(x)-x)/x^3;
ausw1 = num2str(y(10^-4),16);
ausw2 = num2str(y(10^-8),16);
ausw3 = num2str(y(10^-10),16);
disp(sprintf(['Naive Auswertung:\nMit der Naiven Auswertung hat die Funktion f(x) an der Stelle 10^-4 den Wert: ', ausw1, ', an der Stelle 10^-8 den Wert: \n', ausw2, ' und an der Stelle 10^-10 den Wert: ', ausw3,'.\nEigentlich sollte die Funktion gegen Null gehen, jedoch wird bei (10^-8)^3, bzw (10^-10)^3 die 16. Nachkommastelle über-\nschritten, sodass das Ergebnis falsch gerundet wird, wenn man das Ergebnis von sinh(x)-x durch diese kleine Zahl teilt.\n']))
y = @(x) (((1/2)*(exp(x)-exp(-x)))-x)/x^3;
ausw1 = num2str(y(10^-4),16);
ausw2 = num2str(y(10^-8),16);
ausw3 = num2str(y(10^-10),16);
disp(sprintf(['Auswertung mit Betrachtung von sinh(x) = 1/2(e^x - e^(-x)): \nMit dieser Auswertung hat die Funktion f(x) an der Stelle 10^-4 den Wert: ', ausw1, ', an der Stelle 10^-8 den \nWert: ', ausw2, ' und an der Stelle 10^-10 den Wert: ', ausw3, '.\nHier ist wieder das Problem, dass durch eine Zahl geteilt wird, die extrem klein ist.\n']))
y = @(x) (1/factorial(3))+(x^2/factorial(5))+(x^4/factorial(7));
ausw1 = num2str(y(10^-4),16);
ausw2 = num2str(y(10^-8),16);
ausw3 = num2str(y(10^-10),16);
disp(sprintf(['Auswertung mit Taylorentwicklung: \nMit dieser Auswertung hat die Funktion f(x) an der Stelle 10^-4 den Wert: ', ausw1, ', an der Stelle 10^-8 den \nWert: ', ausw2, ' und an der Stelle 10^-10 den Wert: ', ausw3,'.\nHier werden die kleinen Werte im Zähler noch zusätzlich potenziert, sodass die letzten beiden Therme wegfallen und das Ergebnis \nnurnoch 1/6 ist.\n']))
%% Aufgabe 3 Bisektion
aufraeumen()
clearvars
n1 = num2str(log2(abs(1-2)/10^-5),16);
disp(sprintf(['Berechnet haben wir eine theoretisch benötigte Anzahl an Schritten von: ' , n1,'\n']));
bisect(@(x) exp(x)-3*x,1,2)
disp(sprintf('\nTatsächlich wurden 17 Schritte benötigt.'));
%% Abschluss
aufraeumen()
clearvars
display("Hiermit ist dieser Termin beendet. Vielen Dank für ihre Aufmerksamkeit!")