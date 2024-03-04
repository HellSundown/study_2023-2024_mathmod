model lab6_1
Real N = 12700;
Real I;
Real R;
Real S;
Real alpha = 0.6;
Real beta = 0.2;
initial equation
I=170;
R=57;
S=N-I-R;
equation
der(S)=0;
der(I)=-beta*I;
der(R)=beta*I;
end lab6_1;
