function LV = LotkaVolterra()

% Modellierungskonstanten:

alpha_1 = 2;
alpha_2 = 1;
beta_1  = 2;
beta_2  = 1;

odefun_LV = @(T,Y) odefun_LotkaVolterra (T,Y,alpha_1,alpha_2,beta_1,beta_2);

tspan = [0,20];     % Zeitintervall für die Integration
y0 = [1;3];         % Anfangswerte
[T,Y] = ode45 (odefun_LV, tspan, y0);

plot (T,Y(:,1), 'g',T,Y(:,2),'r');

xlabel('t');
ylabel('y');

end