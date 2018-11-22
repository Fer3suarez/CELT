f = 10000;
R1 = 1000;
R2 = 12000;
C = 4.7e-9;
a = (C^2)*R1*R2;
b = 2*C*R1;
c = C*R2;
h = tf([c 0], [a b 1])
polos = roots(h.den{1})
zeros = roots(h.num{1})
pzmap(h)

%%
G = 1;
R = 10000;
C = 100e-9;
f = 155.37;
a = G/((R^2)*(C^2));
b = (3-G)/(R*C);
c = 1/((R^2)*(C^2));
h = tf([a], [1 b c])
polos = roots(h.den{1})
zeros = roots(h.num{1})
pzmap(h)