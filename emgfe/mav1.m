X=xlsread('ch11.xlsx');
N=3000;
for i=1:900
 Y(i)=0;
for j=1:N
  if j >= 0.25*N && j <= 0.75*N
    w=1; 
  else
    w=0.5;
  end
  Y(i)=Y(i)+(w*abs(X(i,j)));
end
mmav(i)=(1/N)*Y(i);
end
mmav