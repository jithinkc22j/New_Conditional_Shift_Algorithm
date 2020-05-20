function sht=shiftrr(ma,mdm,row)
A=ma;
n=mdm; %Shift units
n=double(n);
C=A;


C(row,1:end-n)=A(row,n+1:end);

sht=C;
end
