function min=maximum(ma,ro,rc,siz)
%ma=magic(256)
%ro=256;
if(rc==2);

for i=1:siz;
    if ma(ro,(i))>=me;
        me=ma(ro,(i));
    end
    
end
min=me;
% disp(me);
end
if rc==1;
    me=ma(1,ro);
    for i=1:siz;
    
    if ma(i,ro)>=me;
        me=ma(i,ro);
    end
    
end
min=me;
% disp(me);
end
end
    
        
