model lab7_1
Real N = 1130;
Real n;
initial equation
n=11;
equation
der(n)=(0.25 + 0.000075*n)*(N-n);
end lab7_1;
