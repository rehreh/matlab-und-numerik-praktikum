function result = F(s)

    tspan = [0,3];
    ye = -0.5;
    y0 = 1;

    Z0 = [y0;s];
    
    option = odeset('RelTol',1.0e-10,'AbsTol',1.0e-6);
    
    sol = ode45(@odefun_Oszillators,tspan,Z0,option);
    
    D = deval(sol, [2 3]);
    
    result = D(2)-ye;
    
    
end