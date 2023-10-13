% Generate a large dataset with random numbers (simulating big data).
numDataPoints = 1e6;  % Number of data points (1 million).
bigData = rand(numDataPoints, 1);  % Generate random data.

% Summarize and visualize the data.
fprintf('Summarizing and visualizing the big data:\n');

% Calculate and display basic statistics.
meanValue = mean(bigData);
stdDev = std(bigData);
fprintf('Mean: %.4f\n', meanValue);
fprintf('Standard Deviation: %.4f\n', stdDev);

% Create a histogram to visualize the data distribution.
figure;
histogram(bigData, 100);  % Display a histogram with 100 bins.
title('Histogram of Big Data');
xlabel('Value');
ylabel('Frequency');

% Perform a simple data analysis on the big data.
% For example, we'll find data points greater than a threshold.
threshold = 0.7;
aboveThreshold = bigData(bigData > threshold);

% Display the number of data points above the threshold.
fprintf('Number of data points above %.2f: %d\n', threshold, numel(aboveThreshold));

% Save the results to a file.
resultsFile = 'big_data_results.txt';
fid = fopen(resultsFile, 'w');
fprintf(fid, 'Basic Statistics:\n');
fprintf(fid, 'Mean: %.4f\n', meanValue);
fprintf(fid, 'Standard Deviation: %.4f\n', stdDev);
fprintf(fid, '\nData Points Above %.2f:\n', threshold);
fprintf(fid, '%.4f\n', aboveThreshold);
fclose(fid);

fprintf('Results saved to %s\n', resultsFile);
