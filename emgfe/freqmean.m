num=xlsread('ch11.xlsx');
x=num';
[R C] = size(x);
answ = zeros(1,C);

for i = 1:C
    [Pxx, W] = pwelch(x(1:3000,i));
    answ(1,i) = (sum(W.*Pxx))/(sum(Pxx));
end
fmn=answ