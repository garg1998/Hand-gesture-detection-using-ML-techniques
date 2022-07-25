x=xlsread('ch2.xlsx');
N=150;
for i=1:900
    X=x(i,1:3000);
    for j=1:191
 Y(i,j)=0;
 R=15*(j-1)+1;
 C=150+15*(j-1);
for k=R:C
  if k >= 0.25*N && k <= 0.75*N
    w=1;
  elseif k < 0.25*N
    w=(4*k)/N;
  else
    w=4*(k-N)/N;
  end
  Y(i,j)=Y(i,j)+(w*abs(X(k)));
end
  MMAV2(i,j)=(1/N)*Y(i,j);
    end
  
end
