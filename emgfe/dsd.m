num=xlsread('Cylindrical _ Master.xlsx');
for i=1:150
    x(i)=0;
    for j=1:2999
    x(i)=x(i)+(num(i,j+1)-num(i,j))^2;
    end
    x(i)=sqrt(x(i)/2999);
end
ds=x;