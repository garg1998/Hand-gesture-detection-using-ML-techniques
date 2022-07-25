X=xlsread('ch2.xlsx');
for i=1:900
    num=X(i,1:3000);
    for j=1:191
    dasdv(i,j)=0;
    R=15*(j-1)+1;
    C=150+15*(j-1);
    for k=R:C-1
    dasdv(i,j)=dasdv(i,j)+(num(k+1)-num(k))^2;
    end
    dasdv(i,j)=sqrt(dasdv(i,j)/149);
end
end
