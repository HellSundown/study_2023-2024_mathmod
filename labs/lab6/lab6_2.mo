model lab6_2
Real N = 12700;
Real I;
Real R;
Real S;
Real alpha = 0.4;
Real beta = 0.1;
initial equation
I=170;
R=57;
S=N-I-R;
equation
der(S)=-alpha*S;
der(I)=alpha*S-beta*I;
der(R)=beta*I;
end lab6_2;
