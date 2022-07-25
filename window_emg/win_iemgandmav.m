x=xlsread('ch2.xlsx');
for i=1:900
    num=x(i,1:3000);
    for j=1:191
        if j==1
    IEMG(i,j)=sumabs(num(j:150));
    MAV(i,j)=IEMG(i,j)/150;
        else
            R=15*(j-1)+1;
            C=150+15*(j-1);
            IEMG(i,j)=sumabs(num(R:C));
            MAV(i,j)=IEMG(i,j)/150;
        end
    end
end
   
