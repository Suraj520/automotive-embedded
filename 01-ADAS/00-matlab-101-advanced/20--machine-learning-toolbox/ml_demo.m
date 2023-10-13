% Step 1: Generate some sample data for a simple linear regression problem.
X = 1:10;                     % Independent variable (feature)
Y = 2*X + 1 + randn(1, 10);   % Dependent variable (target) with added noise

% Step 2: Create a linear regression model.
mdl = fitlm(X', Y', 'linear');  % Train a linear regression model

% Step 3: Display the regression model summary.
disp('Linear Regression Model Summary:');
disp(mdl);

% Step 4: Predict new values using the trained model.
X_new = 11:15;                % New data points for prediction
Y_pred = predict(mdl, X_new'); % Predict Y values for X_new

% Step 5: Visualize the data and the regression line.
figure;
scatter(X, Y, 'b', 'filled');  % Scatter plot of the original data
hold on;
plot(X_new, Y_pred, 'r', 'LineWidth', 2);  % Regression line for new data
xlabel('X');
ylabel('Y');
title('Linear Regression Example');
legend('Data', 'Regression Line', 'Location', 'Northwest');
hold off;
