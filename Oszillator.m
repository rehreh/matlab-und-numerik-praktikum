function O = Oszillator

d = 0.3;
k = 2;
m = 1

odefun_O = @(t,z) odefun_Oszillator (t, z, d, k, m);

tspan = [0,30];     % Zeitintervall für die Integration
y0 = [1;3];         % Anfangswerte
[T,Y] = ode45 (odefun_LV, tspan, y0);

plot (T,Y(:,1), 'g',T,Y(:,2),'r');

xlabel('t');
ylabel('y');

end