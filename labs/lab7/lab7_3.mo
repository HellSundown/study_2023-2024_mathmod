model lab7_3
Real N = 1130;
Real n;
initial equation
n=11;
equation
der(n)=(0.25 + 0.075*time*n)*(N-n);
end lab7_3;
