x=xlsread('ch11.xlsx');

for i=1:900
    num=x(i,1:3000);
     
    for j=1:191
        WA(i,j)=0;
        if j==1
for k=1:149
  if abs(num(k)-num(k+1)) >= .01
    WA(i,j)=WA(i,j)+1; 
  end
end
        else
         R=15*(j-1)+1;
         C=150+15*(j-1);
         for k=R:C-1
  if abs(num(k)-num(k+1)) >= .01
    WA(i,j)=WA(i,j)+1; 
  end
         end
        end
    end
end