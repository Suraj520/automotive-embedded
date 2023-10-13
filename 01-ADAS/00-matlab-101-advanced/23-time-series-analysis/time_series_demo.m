% Time Series Analysis in MATLAB

% Generate a time vector from 1 to 100
time = 1:100;

% Generate synthetic data for the time series (you can replace this with your own data)
data = sin(0.1 * time) + 0.2 * randn(1, 100);

% Plot the time series data
figure;
subplot(2, 1, 1);
plot(time, data);
title('Time Series Data');
xlabel('Time');
ylabel('Value');

% Calculate the mean and standard deviation of the data
mean_value = mean(data);
std_deviation = std(data);

% Display the calculated statistics
fprintf('Mean of the data: %.4f\n', mean_value);
fprintf('Standard Deviation of the data: %.4f\n', std_deviation);

% Perform a simple moving average on the data
window_size = 5;
moving_avg = movmean(data, window_size);

% Plot the original data and moving average
subplot(2, 1, 2);
plot(time, data, 'b', 'LineWidth', 1.5);
hold on;
plot(time, moving_avg, 'r', 'LineWidth', 1.5);
title('Original Data and Moving Average');
xlabel('Time');
ylabel('Value');
legend('Original Data', 'Moving Average');
hold off;

% Detrend the data by subtracting the moving average
detrended_data = data - moving_avg;

% Plot the detrended data
figure;
plot(time, detrended_data, 'g', 'LineWidth', 1.5);
title('Detrended Data');
xlabel('Time');
ylabel('Value');

% Perform autocorrelation analysis
lags = 20;
autocorrelation = xcorr(detrended_data, lags, 'coeff');

% Plot the autocorrelation function
figure;
stem(-lags:lags, autocorrelation, 'b', 'LineWidth', 1.5);
title('Autocorrelation Function');
xlabel('Lags');
ylabel('Correlation');

% Find the peaks in the autocorrelation function
[peaks, peak_locs] = findpeaks(autocorrelation);

% Display the peak locations and corresponding values
fprintf('Peak Locations: %s\n', mat2str(peak_locs));
fprintf('Peak Values: %s\n', mat2str(peaks));
