x=xlsread('ch2.xlsx');

for i=1:900
    num=x(i,1:3000);
    for j=1:191
        if j==1
            RMS(i,j)=rms(num(j:150));
        else
             R=15*(j-1)+1;
            C=150+15*(j-1);
             RMS(i,j)=rms(num(R:C));
        end
    end
    
end
