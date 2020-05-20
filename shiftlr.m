function sht=shiftlr(ma,mdm,row)
%a=imread('rxtest.bmp');
A=ma;
%B=zeros(size(A));
B=A;
n=mdm; %Shift units
n=double(n);
B(row,n+1:end)=A(row,1:end-n);

sht=B;

end
