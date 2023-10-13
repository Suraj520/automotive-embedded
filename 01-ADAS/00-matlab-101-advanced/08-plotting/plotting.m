% MATLAB Plotting Example with Comments

% Generate data for plotting
x = linspace(0, 2*pi, 100);  % Create a range of x values
y1 = sin(x);                % Compute sine of x
y2 = cos(x);                % Compute cosine of x

% Create a new figure for the plot
figure;

% Line Plot
subplot(2, 2, 1);  % Create a 2x2 grid of plots and select the first one
plot(x, y1, 'b-', 'LineWidth', 2);  % Plot sine wave in blue with a thick line
title('Line Plot of Sin(x)');
xlabel('x');
ylabel('sin(x)');
grid on;

% Scatter Plot
subplot(2, 2, 2);  % Select the second plot
scatter(x, y2, 20, 'r', 'filled');  % Scatter plot of cosine in red with filled markers
title('Scatter Plot of Cos(x)');
xlabel('x');
ylabel('cos(x)');
grid on;

% Bar Plot
subplot(2, 2, 3);  % Select the third plot
bar(x, y1, 'FaceColor', [0.5, 0.9, 0.2]);  % Bar plot of sine with a custom color
title('Bar Plot of Sin(x)');
xlabel('x');
ylabel('sin(x)');
grid on;

% 3D Surface Plot
[X, Y] = meshgrid(-2:0.2:2, -2:0.2:2);
Z = X.^2 + Y.^2;
subplot(2, 2, 4);  % Select the fourth plot
surf(X, Y, Z);
title('3D Surface Plot of z = x^2 + y^2');
xlabel('x');
ylabel('y');
zlabel('z');
colormap('jet');  % Set the colormap

% Add a title to the entire figure using suptitle
suptitle('Various MATLAB Plots');

% Save the figure as an image (optional)
saveas(gcf, 'matlab_plots.png');

% Additional comments:
% - 'linspace' generates evenly spaced values.
% - 'subplot' divides the figure into subplots for multiple plots.
% - 'plot' is used for line plots.
% - 'scatter' is used for scatter plots.
% - 'bar' is used for bar plots.
% - 'surf' is used for 3D surface plots.
% - 'colormap' sets the color scheme for the surface plot.
% - 'saveas' can save the figure as an image in various formats.
