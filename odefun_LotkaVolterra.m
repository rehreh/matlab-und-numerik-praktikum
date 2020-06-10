function dY = odefun_LotkaVolterra (T, Y, ...
                                    alpha_1, alpha_2, beta_1, beta_2)

dY = zeros(2,1);
dY(1) =  alpha_1 * Y(1) - beta_1 * Y(1) * Y(2);
dY(2) = -alpha_2 * Y(2) + beta_2 * Y(1) * Y(2);

end