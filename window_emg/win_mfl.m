x=xlsread('ch2.xlsx');

for i=1:900
    X=x(i,1:3000);
    for j=1:191
 Y(i,j)=0;
 R=15*(j-1)+1;
 C=150+15*(j-1);
for n=R:C-1
  Y(i,j)=Y(i,j)+(X(n+1)-X(n))^2;
end
MFL(i,j)=log(sqrt(Y(i,j)));
    end
end
