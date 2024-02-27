model lab5_1
Real a = 0.7;
Real b = 0.06;
Real c = 0.6;
Real d = 0.07;

Real x;
Real y;
initial equation
x = 8;
y = 15;
equation
der(x) = -a*x + b*x*y;
der(y) = c*y - d*x*y;
end lab5_1;
