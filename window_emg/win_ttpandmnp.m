x=xlsread('ch11.xlsx');

for i=1:900
    num=x(i,1:3000);
    for j=1:191
        ttp(i,j)=0;
        R=15*(j-1)+1;
        C=150+15*(j-1); 
       ttp(i,j)=sum(pwelch(num(R:C)));
       mnp(i,j)=ttp(i,j)/150;
    end
end