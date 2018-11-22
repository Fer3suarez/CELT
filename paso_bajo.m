%% Ganancia
fr = [1, 20, 40, 50, 70, 80, 90, 95, 100, 105, 120, 130, 140, 150, 170, 200, 250, 300, 400, 500, 600, 700, 800, 1000]';
f = [0, -20.88, -31.68, -42.3, -49.64, -51.64, -58.32, -61.22, -64.44, -69.93, -76.03, -83.77, -87.19, -98.82, -101.59, -110.16, -117.9, -131.76, -144, -151.74, -149.04, -154.73, -166.75, -161.64]';
g = [0.37, 0.22, -0.54, -0.48, -1.17, -1.51, -2.26, -2.75, -2.89, -3.1, -3.77, -4.22, -4.05, -4.79, -5.66, -8.13, -10.68, -13.35, -17.65, -20.4, -23.24, -25.12, -26.74, -30.31]';
G = 1;
R = 10000;
C = 100*10^(-9);
num = [G/((R^2)*(C^2))];
den = [1 ((3-G)/(R*C)) 1/((R^2)*(C^2))];
h = tf(num, den)
semilogx(fr, g, 'r')
hold on
jaj = bodeplot(h)
setoptions(jaj, 'FreqUnits', 'Hz', 'PhaseVisible', 'off');
axis([10 1000 -70 10]) 

%% Frecuencia

fr = [1, 20, 40, 50, 70, 80, 90, 95, 100, 105, 120, 130, 140, 150, 170, 200, 250, 300, 400, 500, 600, 700, 800, 1000]';
f = [0, -20.88, -31.68, -42.3, -49.64, -51.64, -58.32, -61.22, -64.44, -69.93, -76.03, -83.77, -87.19, -98.82, -101.59, -110.16, -117.9, -131.76, -144, -151.74, -149.04, -154.73, -166.75, -161.64]';
g = [0.37, 0.22, -0.54, -0.48, -1.17, -1.51, -2.26, -2.75, -2.89, -3.1, -3.77, -4.22, -4.05, -4.79, -5.66, -8.13, -10.68, -13.35, -17.65, -20.4, -23.24, -25.12, -26.74, -30.31]';
G = 1;
R = 10000;
C = 100*10^(-9);
num = [G/((R^2)*(C^2))];
den = [1 ((3-G)/(R*C)) 1/((R^2)*(C^2))];
h = tf(num, den)
jaj = bodeplot(h,'r')
setoptions(jaj, 'FreqUnits', 'Hz', 'MagVisible', 'off');
hold on
semilogx(fr, f, 'b')
axis([0 1000 -180 0])