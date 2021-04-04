fxr=100;

x1=0;
xu=10*rand(1);
%fx1=(x1^2)-3*x1+2;
%fx1=x1^3-3*x1^2+2*x1+1;

fx1=x1^3-24*x1^2+83*x1-60

i=0;
while abs(fxr)>0.000001;
    xr=(x1+xu)*0.5;
    
    %pause;
    
    fxr=(xr^2)-3*xr+2;
    
    if fxr*fx1>0
        x1=xr;
        fx1=fxr;
    else
        xr=xu;
    end
    
    i=i+1;
    if i==20
        xu=10*rand(1);
        i=0;
    end
    
end

xr
