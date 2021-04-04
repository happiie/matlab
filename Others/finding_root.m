x1=1.3;
xu=3;
%fx1=f(x1);
%fx1=(x1-1)*(x1-2);

%fx1=x1^3-3*x1^2+2*x1+1;



fxr=10;
while abs(fxr)>0.001
    xr=0.5*(x1+xu);
    fxr=(xr-1)*(xr-2);
    if (fx1*fxr)>0
        x1=xr;
        fx1=fxr;
    else
        xu=xr;
    end
end
xr