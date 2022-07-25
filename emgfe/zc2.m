x=xlsread('Palm_Master.xlsx');
for i=1:150
z(i)=0;
for j=1:2999
    if x(i,j)*x(i,j+1)<0 & abs(x(i,j)-x(i,j+1))>0.01
        z(i)=z(i)+1;
    end
end
end
z