% 
%     Termin 2 - Numerische Matematik
%         bearbeitet von Thees Wilken und Ole Simmering
aufraumen()
display("Termin 2 - Numerische Matematik")
display("bearbeitet von Thees Wilken und Ole Simmering")
% 
%% Erklärung Abs Fehler
aufraumen()
disp(sprintf('Absoluter Fehler: \nDifferenz zwischen berechnetem Wert und tatsächlicher Lösung.\n'))
% Erklärung Rel Fehler
disp(sprintf('Relativer Fehler:\nAbweichung des berechneten Wertes vom tatsächlichen Ergebnis bezogen auf den eigentlichen Wert.\n'))
%% Erklärung Gleitzahl
aufraumen()
min = num2str(realmin('double'));
max = num2str(realmax('double'));
eps = num2str(eps('double'));
disp(sprintf(['Gleitpunktzahl:\nBei der approximation einer reelen Zahl durch eine Gleitpunktzahl wird das Komma hinter die erste Zahl ungleich Null \nverschoben; es wird gespeichert welche Verschiebung durchgeführt wurde. Dadurch wird das Speichern von Zahlen ermöglicht.\n\nMatlab verwendet den Datentypen double welcher im Bereich zwischen ', min,' und ', max, ' liegt.\n\nDouble Zahlen werden auf ca. 16 dezimalen Nachkommerstellen genau gespeichert. \nDiese Genauigeit nennt sich Maschienengenauigkeit und liegt bei: ', eps, '\n']))
%% Erklärung Rundung
aufraumen()
disp(sprintf('Rundung:\nDa alle Zahlen erst in Gleitpunktzahlen umgewandelt werden müssen entstehen Rundungsfehler, welche Konvertierungsfehler \ngenannt werden. Deshalb können Zahlen maximal mit der Maschienengenauigkeit gespeichert werden.\n'))
disp(sprintf('Datenabhängigkeit:\nEs sollte allgemein vermieden werden zu Runden bevor die Berechnung abgeschlossen ist. Es gibt numerisch stabile Algorithmen \nmit denen Probleme gelöst werden können, ohne dass vorschnell gerundet wird. \n'))
%% Erklärung Nullstellenproblem
aufraumen()
disp(sprintf('Nullstellenproblem:\nGesucht ist der Wert für x, an dem f(x) = 0 gilt. Dies kann durch unterschiedliche Verfahren analytisch bestimmt, oder \nnumerisch angenähert werden.\n'))
disp(sprintf('Ein numerische Verfahren zur Nullstellenbestimmung ist die Bisektion: In einem Startintervall wird eine Nullstelle iterativ \nangenähert, indem das Intervall jeden schritt halbiert wird; dabei wird bestimmt ob die Nullstelle in der vorderen oder \nhinteren Intervallhälfte liegt und diese dann im nächsten Schritt wieder halbiert.\n'))
disp(sprintf('Ein Weiteres Verfahren ist das Newton-Verfahren: hier wird von einem Startpunkt x_0 ausgehend, der ausreichend nahe an der \nNullstelle liegen muss, die Nullstelle angenähert. Am jeweiligen Iterationswert wird die lokale Tangente gebildet und die \nNullstelle dieser als nächster Iterationswert verwendet. Beendet wird das Verfahren, sobald ein Abbruchkriterium erfüllt ist: \nHierbei wird beispielsweise der Funktionswert bei dem Iterationspunkt ausgewertet und mit Null verglichen oder überprüft ob \neine gewählte relative Genauigkeit erreicht wurde.\n'))
disp(sprintf('Ist ein Verfahren lokal konvergent, so wird mit jedem Iterationsschritt eine Näherung an den Zielwert erreicht. Wenn es \ndivergiert entfernt sich der berechnete Wert von dem gewünschten Wert mit jedem Schritt.'))
%% Abschluss
aufraumen()
display("Hiermit ist dieser Termin beendet. Vielen Dank für ihre Aufmerksamkeit!")