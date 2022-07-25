X=xlsread('ch11.xlsx');


for i=1:900
    EWL1(i)=0;
    for j=2:3000
   if j >= 0.2*3000 && j <= 0.8*3000
    p=0.75;
  else
    p=0.5;
  end
  EWL1(i)=EWL1(i)+abs((X(i,j)-X(i,j-1))^p); 
end
end
EWL1