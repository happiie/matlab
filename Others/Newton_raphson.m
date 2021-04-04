%here the newton Raphson
%for eq f(x)=X^3+5X^2X+7
%ans = -4.884

xi=100;
fxi=(xi^3)+(5*xi^2)+(2*xi)+7;
mi=3*xi^2-10*xi+2;

while abs(fxi)>0.00001
    xi_new=xi-(fxi/mi);
    xi=xi_new;
    fxi=(xi^3)+(5*xi^2)+(2*xi)+7;
    mi=3*xi^2-10*xi+2;
end

xi