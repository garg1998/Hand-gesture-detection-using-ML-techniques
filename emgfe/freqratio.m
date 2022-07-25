num=xlsread('ch11.xlsx');
x=num';
[R, C] = size(x);
answ = zeros(1,C);
L = R-1; % Number of samples
NFFT = 2^nextpow2(L);% Next power of 2 from length of y

for i = 1:C
    Fy = abs(fft(x(1:3000,i),NFFT)/L);
    answ(1,i) = min(Fy)/max(Fy);
end
fr=answ