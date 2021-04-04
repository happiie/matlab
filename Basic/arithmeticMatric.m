%Arithmetic of Matric in MATLAB

x = [1 5 -2; 3 0 7]
y = [1:3;4:6]

%% Addition of matric
z = x + y

%% Subtraction
z = x - y

%% Multiplication
z = x .* y

%% Example of Application
Highs_measured = [71.0001,52.4010,78.1818;83.6957,78.6214,59.8462]

calibration_factors = [1.1,1.5,0.99;0.921,1.001,1.3]

High_true = Highs_measured .* calibration_factors

%% Example Multiplication [inner matric dimension must same]

A=[1,2,3;4,5,6;6,1,1;0,1,3] % matric 4 x 3
B=[2,-2;3,8;7,4]            % matric 3 x 2

C=A*B % ans matric in 4 x 2

check_inner_matric = [size(A) size(B)] % A(4x3) and B(3x2)









