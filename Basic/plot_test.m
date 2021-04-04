% Here the plot of graph
% Declara variable

x=1:5:100; % variable = start_num : increment : last_num
y=1:6:120;

%% plot x vs y
figure;
plot(x,y);

%% plot as multiple series
figure;
plot(x,'DisplayName','x');hold on;plot(y,'DisplayName','y');hold off;

%% bar chart
figure;
bar(x,y)

%% pie
figure
pie(x,y)