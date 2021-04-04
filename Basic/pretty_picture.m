% function below create figure from cos/sin/tan

% input pretty_picture(100) in command Window as value "N"

function pretty_picture(N)

t = 0:(.99*pi/2):N;

x = t.*cos(t);
y = t.*sin(t);
figure;
plot(x,y,'k');
axis square

x = t.*sin(t);
y = t.*tan(t);
figure;
plot(x,y,'k');
axis square