model lab4_2
parameter Real w = sqrt(2.30);
parameter Real g = 2.20;

parameter Real x0 = 1.2;
parameter Real y0 = -1.2;

Real x(start=x0);
Real y(start=y0);

function f
input Real t;
output Real res;
algorithm
res := 0;
end f;

equation
der(x)=y;
der(y)=-w*w*x-g*y+f(time);
end lab4_2;
