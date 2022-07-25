x=xlsread('ch11.xlsx');

for i=1:900
    num=x(i,1:3000);
    for j=1:191
        mfn(i,j)=0;
        R=15*(j-1)+1;
        C=150+15*(j-1); 
        [Pxx, W] = pwelch(num(R:C));
         mfn(i,j) = (sum(W.*Pxx))/(sum(Pxx));
    end
end