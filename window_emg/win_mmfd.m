x=xlsread('ch11.xlsx');
L=150;
NFFT = 2^nextpow2(L)
for i=1:900
    num=x(i,1:3000);
    for j=1:191
        mmfd(i,j)=0;
        R=15*(j-1)+1;
        C=150+15*(j-1); 
         mmfd(i,j) = (1/2)*sum(abs(fft(num(R:C),NFFT)/L));
    end
end