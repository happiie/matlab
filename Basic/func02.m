function [a, s] = func02(low, high)
a = low+rand(3,4)*(high-low);
s = sumAllElements(a);

function summa = sumAllElements(M)
global v; % use global mean prepare with lot of risk 
v = M(:); % Reshape a matrix into a column vector
summa = sum(v);
