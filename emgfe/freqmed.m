num=xlsread('Latch_Master.xlsx');
x=num';
[R C] = size(x);
answ = zeros(1,C);
for i = 1:C
    answ(1,i) = (1/2)*sum(pwelch(x(1:3000,i)));
end
fmd=answ