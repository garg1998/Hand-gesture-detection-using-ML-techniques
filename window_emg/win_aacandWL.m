x=xlsread('ch2.xlsx');

for i=1:900
    num=x(i,1:3000);
     
    for j=1:191
        WL(i,j)=0;
        if j==1
            for k=2:150
    WL(i,j)=WL(i,j)+abs(num(k)-num(k-1));
            end
            AAC(i,j)=WL(i,j)/150;
    else
         R=15*(j-1)+1;
         C=150+15*(j-1);
         for k=R+1:C
             WL(i,j)=WL(i,j)+abs(num(k)-num(k-1));
         end
     AAC(i,j)=WL(i,j)/150;
        end
end
end