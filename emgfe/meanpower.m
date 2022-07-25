num=xlsread('Cylindrical _ Master.xlsx');
x=num';
[R C] = size(x);
answ = zeros(1,C);
for i = 1:C
    answ(1,i) = sum(pwelch(x(1:3000,i)));
    answ(1,i)=answ(1,i)/3000;
end
MNP=answ