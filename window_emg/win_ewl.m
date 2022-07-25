x=xlsread('ch2.xlsx');

for i=1:900
    X=x(i,1:3000);
    for j=1:191
    EWL(i,j)=0;
    R=15*(j-1)+1;
    C=150+15*(j-1);
    for k=R+1:C
   if k >= 0.2*150 && k <= 0.8*150
    p=0.75;
  else
    p=0.5;
  end
  EWL(i,j)=EWL(i,j)+abs((X(k)-X(k-1))^p); 
end
    end
end
EWL;  