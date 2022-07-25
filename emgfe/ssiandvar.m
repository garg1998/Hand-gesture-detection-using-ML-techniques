num=xlsread('Cylindrical _ Master.xlsx');

for i=1:150
    SSI(i)=sumsqr(num(i,1:3000));
end
SSI

VAR=SSI./2999