%bisect(@(s)F(s),0,3)

%fplot(@(y)F(y),[-1 4]) 

 tspan = [0,3];
    ye = -0.5;
    y0 = 1;

    Z0 = [y0;0.2195];
    option = odeset('RelTol',1.0e-10,'AbsTol',1.0e-6);

[T,Z] = ode45(@odefun_Oszillators,tspan,Z0,option);


plot(T,Z(:,1));