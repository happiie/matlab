% for example 27.1

function [x,T] = call_temp() %ode45 function rungge-kutta
    xspan = [0 10];

    [x, T] = ode45(@temp, xspan, [40 20]); %(file, range, initial condition)
    T(end,1)
    figure(1);
    plot( x, T(:,1) );
    
    figure(2);
    plot( x, T(:,2) );

    function dTdx = temp(x, T)
        Ta = 20;
        h = 0.01;

        dTdx(1) = T(2);
        dTdx(2) = h*(T(1) - Ta);
        
        dTdx = dTdx';

    end
end