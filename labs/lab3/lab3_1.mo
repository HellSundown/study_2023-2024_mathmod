model lab3_1
Real x;
Real y;
Real a = 0.55;
Real b = 0.77;
Real c = 0.66;
Real d = 0.44;
Real t = time;
initial equation
x = 32888;
y = 17777;
equation
der(x) = -a*x - b*y + 1.5*sin(3*t+1);
der(y) = -c*x - d*y + 1.2*cos(t+1);
end lab3_1;
