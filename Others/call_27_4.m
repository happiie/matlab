function [x, y] = call_27_4()
    
    xSpan = [0 : 20];
    
    y0 = 5;
    z0 = 0;
    
    yFinal = 8;

    
    a0 = z0;
    [x, y] = ode45(@ODE_27_4, xSpan, [y0 a0]);
    fa0 = y(end, 1);
    
    del = 0.0001;
    
    while( abs(fa0) > yFinal)
        a1 = a0 + del;
        
        [x, y] = ode45(@ODE_27_4, xSpan, [y0 a1]);
        fa1 = y(end, 1);
        m = (fa1 - fa0) / (a1 - a0);
        
        a2 = a1 - ( (fa1 - yFinal) / m);
        [x, y] = ode45(@ODE_27_4, xSpan, [y0 a2]);
        fa2 = y(end, 1);
        
        a0 = a2;
        fa0 = fa2;
 
    end
    
    
    figure(1);
    plot( x, y(:,1) );
    


    function dydx = ODE_27_4(x, y)
        
        dydx(1) = y(2);
        dydx(2) = ( ( 2 * y(2) ) + y(1) - x ) / 7;
        
        dydx = dydx';
    end
end