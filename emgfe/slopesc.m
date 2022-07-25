X=xlsread('Palm_Master.xlsx');
for i=1:150
 SSC(i)=0;
for j=2:2999
  if ((X(i,j) > X(i,j-1) && X(i,j) > X(i,j+1)) || (X(i,j) < X(i,j-1) && X(i,j) < X(i,j+1))) ...
      && ((abs(X(i,j)-X(i,j+1)) >= 0.01) || (abs(X(i,j)-X(i,j-1)) >= 0.01))
    SSC(i)=SSC(i)+1; 
  end
end
end
SSC