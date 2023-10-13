% Create a sample data set of 100 values from a normal distribution
data = randn(100, 1);

% Calculate the mean of the data
mean_value = mean(data);
fprintf('Mean: %.2f\n', mean_value);

% Calculate the median of the data
median_value = median(data);
fprintf('Median: %.2f\n', median_value);

% Calculate the standard deviation of the data
std_deviation = std(data);
fprintf('Standard Deviation: %.2f\n', std_deviation);

% Plot a histogram of the data
histogram(data, 20); % 20 bins
title('Histogram of Random Data');
xlabel('Value');
ylabel('Frequency');

% Fit a normal distribution to the data and overlay it on the histogram
pd = fitdist(data, 'Normal');
x = linspace(min(data), max(data), 100);
y = pdf(pd, x);
hold on;
plot(x, y, 'r', 'LineWidth', 2);
legend('Data', 'Fitted Normal Distribution');
hold off;
