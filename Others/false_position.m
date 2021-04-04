x1=1.3;
xu=3;
%fx1=f(x1);
fx1=(x1-1)*(x1-2);
fxr=1000;
while abs(fxr)>0.001
    xr=0.5*(x1+xu);
    fxr=(xr-1)*(xr-2);
    if (fx1*fxr)>0
        x1=xr;
        fx1=fxr;
    else
        xu=xr;
        fx1=fxr;
    end
end
xr