num=xlsread('Palm_Master.xlsx');
for i=1:150
    WL(i)=0;
    for j=2:3000
    WL(i)=WL(i)+abs(num(i,j)-num(i,j-1));
    end
end
WL
AAC=WL./3000