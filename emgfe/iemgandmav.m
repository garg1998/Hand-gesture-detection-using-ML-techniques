num=xlsread('Cylindrical _ Master.xlsx');

for i=1:150
    [a1,d1]=dwt(num(i,1:3000),'bior3.3');
    [a2,d2]=dwt(a1,'bior3.3');
    [a3,d3]=dwt(a2,'bior3.3');
    [a4,d4]=dwt(a3,'bior3.3');
    
    IEMG1(i)=sumabs(a1);
    IEMG2(i)=sumabs(a2);
    IEMG3(i)=sumabs(a3);
    IEMG4(i)=sumabs(a4);
    IEMG5(i)=sumabs(d1);
    IEMG6(i)=sumabs(d2);
    IEMG7(i)=sumabs(d3);
    IEMG8(i)=sumabs(d4);
    
end

