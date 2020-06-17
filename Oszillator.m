function O = Oszillator

d = 0.3;
k = 2;
m = 1;

odefun_O = @(t,z) odefun_Oszillator (t, z, d, k, m);

tspan = [0,30];     % Zeitintervall für die Integration
z0 = [1;-3];         % Anfangswerte
[t,z] = ode45 (odefun_O, tspan, z0);

plot (t,z(:,1), 'g');

xlabel('t');
ylabel('z');

end