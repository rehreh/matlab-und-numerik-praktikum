function A = Bisektion1 (f,a,b,Epsilon,n) %% (Funktion,a,b,Epsillon,n'maximale Schritte')
format long;
if Epsilon == 'std'
    Epsilon = 10^-5;
end

if n == 'std'
   n = 100;
end


i = 0;
A(1,1) = i;
A(1,2) = a;
A(1,3) = b;
while (abs(b-a) >= (abs(b) * Epsilon)) && (i < n) 
    m = (a+b)/2; %%Intervallmitte
    if f(a).*f(m) <= 0 
        b = m; %% Nullstelle liegt in [a,m]         
    else
        a = m; %% Nullstelle liegt in [m,b]               
    end
    i = i+1;    
    A(i + 1,1) = i;
    A(i + 1,2) = a;
    A(i + 1,3) = b;
 
    %['Schritt:' num2str(i) ' neuesIntervall [' num2str(a) ',' num2str(b) ']' ]
end
end