% MATLAB Figure Examples

% Clear the workspace and close all figures
clear; close all;

% Example 1: Line Plot
x = 0:0.1:2*pi; % Define x values
y = sin(x);     % Calculate corresponding y values
figure;         % Create a new figure
plot(x, y);     % Plot x against y
title('Sine Wave'); % Add a title
xlabel('X-axis');   % Label the x-axis
ylabel('Y-axis');   % Label the y-axis
grid on;            % Show a grid
legend('sin(x)');   % Add a legend

% Example 2: Scatter Plot
x = randn(100, 1); % Generate random data
y = randn(100, 1);
figure;
scatter(x, y, 50, 'filled'); % Create a scatter plot with filled markers
title('Random Scatter Plot');
xlabel('X-axis');
ylabel('Y-axis');
grid on;

% Example 3: Bar Chart
categories = {'Category A', 'Category B', 'Category C'};
values = [15, 30, 10];
figure;
bar(1:numel(categories), values); % Use numerical values for the x-axis
xticks(1:numel(categories)); % Set the x-axis ticks
xticklabels(categories); % Set the x-axis tick labels
title('Bar Chart');
ylabel('Values');

% Example 4: 3D Plot
[X, Y] = meshgrid(-2:0.2:2, -2:0.2:2);
Z = X .* exp(-X.^2 - Y.^2);
figure;
surf(X, Y, Z); % Create a 3D surface plot
title('3D Surface Plot');
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
colormap('parula');

% Example 5: Histogram
data = randn(1000, 1);
figure;
hist(data, 20); % Create a histogram with 20 bins
title('Histogram');
xlabel('Values');
ylabel('Frequency');

% Example 6: Pie Chart
labels = {'Category A', 'Category B', 'Category C'};
sizes = [25, 35, 20];
figure;
pie(sizes, labels); % Create a pie chart
title('Pie Chart');

% Example 7: Polar Plot
theta = linspace(0, 2 * pi, 100);
rho = sin(2 * theta);
figure;
polarplot(theta, rho); % Create a polar plot
title('Polar Plot');

% Example 8: Box Plot
data = randn(100, 3);
figure;
boxplot(data, 'Labels', {'Group 1', 'Group 2', 'Group 3'}); % Create a box plot
title('Box Plot');
ylabel('Values');

% Example 9: Contour Plot
[X, Y] = meshgrid(-2:0.2:2, -2:0.2:2);
Z = X .* exp(-X.^2 - Y.^2);
figure;
contour(X, Y, Z, 10); % Create a contour plot with 10 contour lines
title('Contour Plot');
xlabel('X-axis');
ylabel('Y-axis');
colormap('cool');

% Example 10: Error Bar Plot
x = 1:5;
y = [3, 4, 2, 6, 5];
error = [0.2, 0.3, 0.1, 0.4, 0.15];
figure;
errorbar(x, y, error, 'o'); % Create an error bar plot with markers
title('Error Bar Plot');
xlabel('X-axis');
ylabel('Y-axis');

% Save the current figure to a file (optional)
saveas(gcf, 'figure_examples.png');

% End of the program
