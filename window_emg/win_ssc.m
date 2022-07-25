x=xlsread('ch2.xlsx');
for i=1:900
    X=x(i,1:3000);
    for j=1:191
         SSC(i,j)=0;
        if j==1
for k=2:149
  if ((X(k) > X(k-1) && X(k) > X(k+1)) || (X(k) < X(k-1) && X(k) < X(k+1))) ...
      && ((abs(X(k)-X(k+1)) >= 0.01) || (abs(X(k)-X(k-1)) >= 0.01))
    SSC(i,j)=SSC(i,j)+1; 
  end
end
        else
            R=15*(j-1)+1;
         C=150+15*(j-1);
         for k=R+1:C-1
  if ((X(k) > X(k-1) && X(k) > X(k+1)) || (X(k) < X(k-1) && X(k) < X(k+1))) ...
      && ((abs(X(k)-X(k+1)) >= 0.01) || (abs(X(k)-X(k-1)) >= 0.01))
    SSC(i,j)=SSC(i,j)+1; 
  end
end
        end
    end
end