x=xlsread('ch11.xlsx');
L=150;
NFFT = 2^nextpow2(L);
Fs = 500; 
f = Fs/2*linspace(0,1,NFFT);
for i=1:900
    num=x(i,1:3000);
    for j=1:191
        mmfn(i,j) =0;
        R=15*(j-1)+1;
        C=150+15*(j-1); 
         Fy = abs(fft(num(R:C),NFFT)/L);
    mmfn(i,j) = sum(Fy.*f) / sum(Fy);
        
    end
end