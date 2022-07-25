X=xlsread('ch11.xlsx');
L=3000;
Y=zeros(900,L);
for i=1:900
for j=1:L
  if j >= 0.2*L && j <= 0.8*L
    p=0.75;
  else
    p=0.5;
  end
  Y(i,j)=abs((X(i,j))^p);
end
EMAV(i)=mean(Y(i,:));
end
