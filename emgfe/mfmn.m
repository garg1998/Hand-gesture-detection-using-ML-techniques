num=xlsread('ch11.xlsx');
x=num';
[R, C] = size(x);
mfmn = zeros(1,C);
Fs = 500; % Sampling frequency
L = R-1; % Number of samples
NFFT = 2^nextpow2(L); % Next power of 2 from length of y
f = Fs/2*linspace(0,1,NFFT);
for i = 1:C
    Fy = abs(fft(binned_signal(:,i),NFFT)/L);
    mfmn(1,i) = sum(Fy.*f') / sum(Fy);

end