x=xlsread('ch2.xlsx');
N=150;
for i=1:900
    X=x(i,1:3000);
    for j=1:191
Y(i,j)=0; 
 R=15*(j-1)+1;
 C=150+15*(j-1);
for n=R:C
  if abs(X(n)) >= 0.01
    Y(i,j)=Y(i,j)+1;
  end
end
MYOP(i,j)=Y(i,j)/N;
    end
end