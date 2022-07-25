x=xlsread('ch2.xlsx');

for i=1:900
    X=x(i,1:3000);
    for j=1:191
        Y=zeros(1,150);
       R=15*(j-1)+1;
      C=150+15*(j-1);  
      a=1;
      for k=R:C 
          if k >= 0.2*150 && k <= 0.8*150
    p=0.75;
  else
    p=0.5;
  end
  Y(a)=abs((X(k))^p);
  a=a+1;
      end
EMAV(i,j)=(sum(Y))/150;
    end
end