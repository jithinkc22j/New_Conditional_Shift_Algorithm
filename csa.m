% Conditional shiift algorithm
%-----------------------------------------------------------------------
function out=csa(a,mdset,siz)

%---------------------------------------------------------------------
% Inputs
%---------------------------------------------------------------------
      XDR=a(:,:,1);
      XDB=a(:,:,2);
      XDG=a(:,:,3);
      rxtp=XDR;
      gxtp=XDG;
      bxtp=XDB;
      rm=[];
      gm=[];
      bm=[];
      mdm=[];
%---------------------------------------------------------------------
     for j=1:256
       mdm(j)=maximum(mdset,j,1,siz);
       rm(j)=maximum(XDR,j,2,siz);
       gm(j)=maximum(XDG,j,2,siz);
       bm(j)=maximum(XDB,j,2,siz);
      
      
        if mdm(j)<=rm(j) 
            rxtp=shiftlr(rxtp,mdm(j),j);
            
        else
            rxtp=shiftrr(rxtp,mdm(j),j);
        end
        
        if mdm(j)<=gm(j) 
            gxtp=shiftlr(gxtp,mdm(j),j);
            
        else
           gxtp=shiftrr(gxtp,mdm(j),j);
        end
        
        if mdm(j)<=bm(j) 
            bxtp=shiftlr(bxtp,mdm(j),j);
            
        else
            bxtp=shiftrr(bxtp,mdm(j),j);
        end
     end
%-------------------------------------------------------------------------
% Output
%-----------------------------------------------------------------------
     
     out=cat(3,rxtp,bxtp,gxtp);
%------------------------------------------------------------------------
end