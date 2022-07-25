X=xlsread('ch11.xlsx');

for i=1:900
 Y(i)=0;
for n=1:2999
  Y(i)=Y(i)+(X(i,n+1)-X(i,n))^2;
end
MFL1(i)=log(sqrt(Y(i)));
end
MFL1