num=xlsread('ch11.xlsx');
x=num';
[R, C] = size(x);
answ = zeros(1,C);

L = R-1; % Number of samples
NFFT = 2^nextpow2(L); % Next power of 2 from length of y

for i = 1:C
    answ(1,i) = (1/2)*sum(abs(fft(x(1:3000,i),NFFT)/L));
end
mfmd=answ;
