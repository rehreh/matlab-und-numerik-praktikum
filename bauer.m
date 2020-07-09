figure ('Name','Bauer','NumberTitle', 'Off')
hold on
grid on
fplot(@(x) (-0.1*x+1000)/0.06, [0,10000])
fplot(@(x) (500-0.04*x)/0.06,[0, 10000])
fplot(@(x) 9000-x,[0,10000])
fplot(@(x) (3740-0.33*x)/0.44,[0,10000])