function LV = LotkaVolterraOptions(na1,na2,nb1,nb2)

% Modellierungskonstanten:

alpha_1 = na1;
alpha_2 = na2;
beta_1  = nb1;
beta_2  = nb2;

options = odeset('AbsTol', 1e-6, 'RelTol', 1e-10);

odefun_LV = @(T,Y) odefun_LotkaVolterra (T,Y,alpha_1,alpha_2,beta_1,beta_2);

tspan = [0,20];     % Zeitintervall für die Integration
y0 = [1;3];         % Anfangswerte

figure ('Name','Aufgabe 2: y1 und y2 gegen t-Diagramm','NumberTitle', 'Off')
    hold on;

    [T,Y] = ode45 (odefun_LV, tspan, y0);
    plot(T,Y(:,1), 'g', T,Y(:,2),'r');
        
    [T,Y] = ode45 (odefun_LV, tspan, y0,options);
    plot(T,Y(:,1), 'y', T,Y(:,2), 'b')

    title('Numerische Lösung der Lotka-Volterra-Gleichung');
    xlabel('t');
    ylabel('y');
    legend('y1 Standart Optionen', 'y2 Standart Optionen', 'y1 Verbesserte Genauigkeit', 'y2 Verbesserte Genauigkeit');

end