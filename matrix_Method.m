% Standard Mathematical Approach using vector multiplication.
% θ = inverse(XT X)* XT *Y
clear ; 
close all; 
clc

% Multi Linear reggression
  theta_num = 3;
  
% Initialisation of Theta values. Y = Theta0 + ( Theta1 * X )
% form Theta as the vector of 2 * 1 matrix . 
 theta = ones(theta_num, 1);

% Data Intialisation %
Data = [ 2.0, 100, 0.001, 5.1, 102.1, 4.1;
         2.5, 200, 0.002, 6.1, 202.4, 6.0;
         3.0, 300, 0.003, 6.9, 303,   9.2;
         3.5, 400, 0.004, 7.8, 403.4, 12.0;
         4.0, 500, 0.005, 9.2, 504.2, 17;
         4.5, 600, 0.006, 9.9, 604.8, 20;
         5.0, 700, 0.007, 11.5,704.8, 25.5;
         5.5, 800, 0.008, 12.0,805.7, 31;
         6.0, 900, 0.009, 12.8,905.7, 36.4];
         
% Y1 Dependent variable  
 Y = Data(:,5);
 % n  number of the Data sets
 n  = length(Y) ;
 % X matrix of independent variables  where X1 = 1 and X2 is first column of Data
 X = Data(:,[1,2]);

% Plotting the data "y" 
figure(1); % open a new figure window
plot(Y,'rx','MarkerSize', 10);
title ("Plot of  Data ");
xlabel ("X");
ylabel ("Y");

%Matrix method
% formula inverse ( X_transpose * X)* X_transpose* y;
X = [ones(n,1), X];
theta = pinv(X'*X) * X' * Y;
fprintf('The theta values are %f  %f  %f\n', theta(1,1), theta(2,1), theta(3,1));  

 % Plot the linear reggression model.
figure(2)
plot(Y,'rx','MarkerSize', 10);
title ("Plot of  Data ");
xlabel ("X");
ylabel ("Y");
hold on; % keep previous plot visible
Y =  X*theta
plot(Y);
legend('Data set', 'Linear regression Model')
hold
 

