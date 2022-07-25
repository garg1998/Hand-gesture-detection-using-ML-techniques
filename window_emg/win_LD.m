X=xlsread('ch2.xlsx');
for i=1:900
    num=X(i,1:3000);
    for j=1:191
x(i,j)=0;
if j==1
for k=1:150
  x(i,j)=x(i,j)+log(abs(num(k))); 
end
LD(i,j)=exp(x(i,j)/150);
else
    R=15*(j-1)+1;
    C=150+15*(j-1);
    for k=R:C
  x(i,j)=x(i,j)+log(abs(num(k))); 
end
LD(i,j)=exp(x(i,j)/150);

end
    end
end