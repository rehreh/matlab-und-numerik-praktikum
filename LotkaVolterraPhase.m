function LotkaVolterraPhase(na1,na2,nb1,nb2)
% options = noptions;
% Modellierungskonstanten:
alpha_1 = na1;
alpha_2 = na2;
beta_1  = nb1;
beta_2  = nb2;

options = odeset('AbsTol', 1e-6, 'RelTol', 1e-10);

odefun_LV = @(T,Y) odefun_LotkaVolterra (T,Y,alpha_1,alpha_2,beta_1,beta_2);

tspan = [0,20];     % Zeitintervall für die Integration
y0 = [1;3];         % Anfangswerte
[T,Y] = ode45 (odefun_LV, tspan, y0, options);

figure ('Name','Aufgabe 2: t gegen y1 gegen y2-Diagramm','NumberTitle', 'Off')
    plot3 (T,Y(:,1),Y(:,2), 'g');
    title('Drei dimensionales Phasendiagramm');
    xlabel('T');
    ylabel('y1');
    zlabel('y2');

    
figure ('Name','Aufgabe 2: y1 gegen t-Diagramm','NumberTitle', 'Off')
    plot (T,Y(:,1), 'g');
    title('Raubtierpopulation');
    xlabel('T');
    ylabel('y1');
    
    
figure ('Name','Aufgabe 2: y2 gegen t-Diagramm','NumberTitle', 'Off')
    plot (T,Y(:,2), 'g');
    title('Beutetierpopulation');
    xlabel('T');
    ylabel('y2');
    
    
figure ('Name','Aufgabe 2: y1 gegen y2-Diagramm','NumberTitle', 'Off')
    plot (Y(:,1),Y(:,2), 'g');
    title('Phasendiagramm');
    xlabel('T');
    ylabel('y2');
    
LotkaVolterra(alpha_1, alpha_2, beta_1, beta_2);

end