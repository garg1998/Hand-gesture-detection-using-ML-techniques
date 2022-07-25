num=xlsread('Palm_Master.xlsx');
for i=1:150
    R(i)=rms(num(i,1:3000));
end
RMS