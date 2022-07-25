num=xlsread('ch11.xlsx');
x=num';
[R C] = size(x);
ttp = zeros(1,C);
for i = 1:C
    ttp(1,i) = sum(pwelch(x(1:3000,i)));
end
mnp=ttp/3000