num=xlsread('ch2.xlsx');

for i=1:900
    x=num(i,1:3000);
     
    for j=1:191
        z(i,j)=0;
        if j==1
            for k=1:149
    if x(k)*x(k+1)<0 & abs(x(k)-x(k+1))>0.01
        z(i,j)=z(i,j)+1;
    end
            end
        else
             R=15*(j-1)+1;
         C=150+15*(j-1);
         for k=R:C-1
             if x(k)*x(k+1)<0 & abs(x(k)-x(k+1))>0.01
        z(i,j)=z(i,j)+1;
             end
         end
        end
    end
end