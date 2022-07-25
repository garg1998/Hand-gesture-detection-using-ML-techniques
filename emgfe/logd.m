num=xlsread('Palm_Master.xlsx');
for i=1:150
x(i)=0;
for k=1:3000
  x(i)=x(i)+log(abs(num(i,k))); 
end
LD(i)=exp(x(i)/3000);
end
LD