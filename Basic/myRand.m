% create random 3x4 matric with function

% more than 1 output
function [a,s] = myRand(low,high)  % CW: [x,sum]=myRand(2,3)
a = low+rand(3,4)*(high-low); 
v = a(:);
s = sum(v);
end


%%% If the 1 output only 
% function [a,s] = myRand(low,high)
% a = low*rand(3,4)*(high-low);     % *** CW: myRand(1,7)
% end

% *** Notes (How the function format)
% function [out_arg1, out_arg2, ...] = 
% function_name (input_arg1, input_arg2, ...)
