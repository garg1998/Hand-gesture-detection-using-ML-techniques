x=xlsread('ch11.xlsx');
L=150;
NFFT = 2^nextpow2(L);
for i=1:900
    num=x(i,1:3000);
    for j=1:191
        fr(i,j)=0;
        mmfd(i,j) =0;
        R=15*(j-1)+1;
        C=150+15*(j-1); 
         Fy = abs(fft(num(R:C),NFFT)/L);
         mmfd(i,j) = (1/2)*sum(Fy);
        fr(i,j) = min(Fy)/max(Fy);
        
        
    end
end