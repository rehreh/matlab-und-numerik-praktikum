function O = Oszillators

d = 0.3;
k = 2;
m = 1;

options = odeset('AbsTol', 1e-6, 'RelTol', 1e-6);

odefun_O = @(t,z) odefun_Oszillator (t, z, d, k, m);

tspan = [0,3];     % Zeitintervall für die Integration
z0 = [1;-0.5];         % Anfangswerte
[t,z] = ode45 (odefun_O, tspan, z0, options);

plot (t,z(:,1), 'g');

xlabel('t');
ylabel('z');

end