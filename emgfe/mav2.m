X=xlsread('ch11.xlsx');
N=3000;
for i=1:900
     Y(i)=0;
for j=1:N
  if j >= 0.25*N && j <= 0.75*N
    w=1;
  elseif j < 0.25*N
    w=(4*j)/N;
  else
    w=4*(j-N)/N;
  end
  Y(i)=Y(i)+(w*abs(X(i,j)));
end
MMAV2(i)=(1/N)*Y(i);
end
