% Testing the plot function

%% Declare variable
x_coordinate = [1,3,10];
y_coordinate = [2,-4.2,12.3];

%% plotting
figure;
plot(x_coordinate,y_coordinate);

%% calculate langth of variable
length(x_coordinate);

%% custumise the plot
figure;
plot(x_coordinate,y_coordinate,'rs'); % r = red, s = square

%% put label
xlabel('Selection');
ylabel('Change');
title('Change in selection during Past Year');

%% custumise the axis value
% axis([start x-axis, last x-axis, start y-axis, last y-axis])
axis([0,12,-10,20]);

%% draw bar chart
figure;
bar(x_coordinate,y_coordinate);

%% draw pie chart
figure;
pie([2 4 3 4 5 6]);
