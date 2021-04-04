i=2;
delta=0.01; 
x(1)=0.5; %guess value
x(2)=x(1)+delta; %guess value
fxi2=x(i)^3-2*x(i)^2-5*x(i)+6;
fxi1=x(i-1)^3-2*x(i-1)^2-5*x(i-1)+6;
x=zeros(1,100);

while(abs(fxi2))>0.00001
    i=i+1;%3
    while abs(fxi1-fxi2)==0
        delta=0.001*rand(1);
        x(i)=1*rand(1)+delta;
        x(i-1)=x(i)-delta;
        fxi2=x(i)^3-2*x(i)-5*x(i)+6;
        fxi1=x(i-1)^3-2*x(i-1)^2-5*x(i-1)+6;
        
    end
    
    x(i+1)=x(i)-((delta)*fxi2/(fxi2-fxi1));
    %a=x(i);
    x(i)=x(i+1);
    %x(i-1)=a;
    %xi=xi_new;
    fxi1=x(i)^3-2*x(i)^2-5*x(i)+6;
    fxi2=x(i-1)^3-2*x(i-1)^2-5*x(i-1)+6;
end

x(end)