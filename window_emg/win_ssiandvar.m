x=xlsread('ch2.xlsx');

for i=1:900
    num=x(i,1:3000);
    for j=1:191
        if j==1
    SSI(i,j)=sumsqr(num(j:150));
    VAR(i,j)=SSI(i,j)/149;
        else
            R=15*(j-1)+1;
            C=150+15*(j-1);
            SSI(i,j)=sumsqr(num(R:C));
            VAR(i,j)=SSI(i,j)/149;
end
    end
end


