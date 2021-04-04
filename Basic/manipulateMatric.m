% Also matric [more to manipulate] 

x = [1:4; 5:8; 9:12] % *** row=up-down column=left-right

% to find out what data at certain coordinate
x(3,4) % x(row, column)

%% Matlab auto add to matric

x(4,1:end) = [47,12,-4,8.9]  % *** always remenber x(row,column)

%% colect sub array (pick value shortcut)

x(2,[3 4]) % x(row, [column_1, column_2])

x([2,3],2) % x([row_1, row_2],column_1) 

x([2,3,1],[3,1,4,2]) % x([row_1, row_2, ...],[column_1, colmn_2, ...])

%% other way to call sub array

x(2, 1:3)

x(2:-1:1, 3:-2:1)

x(end,2)

x(3,end)

x([2 end 3 end], 3)
