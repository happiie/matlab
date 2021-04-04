function [t,x] = call_dstate()
tspan=[0:0.01:5];
x10=0;
x20=1;
[t,x]=ode45(@dstate,tspan,[x10 x20]);
figure(1)
plot(t,x(:,1))
figure(2)
%disp([t,x])
plot(t,x(:,2))
function dxdt=dstate(t,x)
dxdt(1)=x(1)+x(2);
dxdt(2)=3*x(1)-2*x(2);
dxdt=dxdt';
end
end
