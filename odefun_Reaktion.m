function dY = odefun_Reaktion(T,Y)
   
    k1 = 0.004;
    k2 = 3*10^7;
    k3 = 10^4;

    dY      = zeros(3,1);
    dY(1)   = -k1*Y(1)-k3*Y(2)*Y(3);
    dY(2)   = k1*Y(1)-k2*Y(2)^2-k3*Y(2)*Y(3);
    dY(3)   = k3*Y(2)^2;
    
end