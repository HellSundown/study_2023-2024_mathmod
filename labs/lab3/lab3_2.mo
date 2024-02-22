model lab3_2
Real x;
Real y;
Real a = 0.27;
Real b = 0.88;
Real c = 0.68;
Real d = 0.37;
Real t = time;
initial equation
x = 32888;
y = 17777;
equation
der(x) = -a*x - b*y + sin(20*t);
der(y) = -c*x*y - d*y + cos(10*t)+1;
end lab3_2;
