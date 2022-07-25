num=xlsread('ch2.xlsx');
for i=1:900
WA(i)=0; 
for k=1:2999 
  if abs(num(i,k)-num(i,k+1)) >= .01
    WA(i)=WA(i)+1; 
  end
end
end
WA