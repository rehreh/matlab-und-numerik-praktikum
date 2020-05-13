function out1 = bisect(y,a,b,relg,n)
i = 0;
ya = y(a);

if nargin < 3
    error('You need to give at least a function and an interval!')
end

if nargin < 4
   relg = 10^-5; 
end

if nargin < 5
    n = 100;
end

while (abs(b-a)>abs(b)*relg && i < n)
    m = (a+b)/2;
        tmp = y(m);
        if ((ya.*tmp) <= 0)
        b = m;
        else
        a = m;
        end
    i = i + 1;
    tempa = num2str(a,16);
    tempb = num2str(b,16);
    tempi = num2str(i,16);
    disp(sprintf(['Neues Intervall beim Schritt: ', tempi,'; [' tempa,',',tempb,']']))
    end
end