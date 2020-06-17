function dZ = odefun_Oszillator (t, z, d, m, k)

dZ = zeros(2,1)
dZ(1) = z(2)
dZ(2) = -(d/m)*z(2)-(k/m)*z(1)
end
