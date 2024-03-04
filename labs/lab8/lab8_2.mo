model lab8_2
Real kr = 25;
Real t1 = 29;
Real p1 = 6.9;
Real t2 = 19;
Real p2 = 15.9;
Real N = 39;
Real q = 1;

Real a1 = kr / (t1 * t1 * p1 * p1 * N * q);
Real a2 = kr / (t2 * t2 * p2 * p2 * N * q);
Real b = kr / (t1 * t1 * t2 * t2 * p1 * p1 * p2 * p2 * N * q);
Real c1 = (kr - p1) / (t1 * p1);
Real c2 = (kr - p2) / (t2 * p2);

Real M1;
Real M2;
initial equation
M1 = 3.9;
M2 = 2.9;
equation
der(M1) = M1 - b / c1 * M1 * M2 - a1 / c1 * M1 * M1;
der(M2) = c2 / c1 * M2 - (b / c1 + 0.00083) * M1 * M2 - a2 / c1 * M2 * M2;
end lab8_2;
