%here the secant method
%for eq f(x)=X^3+5X^2X+7
%ans = -4.884

i=2;
x(1)=-3.5; %x1 for upper limit
x(2)=-2.5; %x2 for upper limit
fxi2=x(i)^3+5*x(i)^2+2*x(i)+7;
fxi1=x(i-1)^3+5*x(i-1)^2+2*x(i-1)+7;
x=zeros(1,100);

while (abs(fxi2))>0.00001
    i=i+1;
    while (abs(fxi1-fxi2))==0
        b=10*rand(1);
        x(i)=10*rand(1)-b;
        x(i-1)=x(i)-b;
        fxi2=x(i)^3+5*x(i)^2+2*x(i)+7;
        fxi1=x(i-1)^3+5*x(i-1)^2+2*x(i-1)+7;
    end
    x(i+1)=x(i)-((x(i)-x(i-1))*fxi2/(fxi2-fxi1));
    a=x(i);
    x(i)=x(i+1);
    x(i-1)=a;
    fxi2=x(i)^3+5*x(i)^2+2*x(i)+7;
    fxi1=x(i-1)^3+5*x(i-1)^2+2*x(i-1)+7;
end
fxi1;
fxi2;
x(end)