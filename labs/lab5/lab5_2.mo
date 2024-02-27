model lab5_2
Real a = 0.7;
Real b = 0.06;
Real c = 0.6;
Real d = 0.07;
Real x;
Real y;
initial equation
x = c / d;
y = a / b;
equation
der(x) = -a*x + b*x*y;
der(y) = c*y - d*x*y;
end lab5_2;
