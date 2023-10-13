% Advanced Signal Processing in MATLAB - A Simple Example

% Generate a noisy signal
t = 0:0.01:2*pi;  % Time vector
signal = sin(t) + 0.5*randn(size(t));  % A noisy sine wave

% Display the original signal
figure;
subplot(2,1,1);
plot(t, signal);
title('Original Noisy Signal');
xlabel('Time');
ylabel('Amplitude');

% Apply a low-pass filter
cutoff_frequency = 2;  % Cutoff frequency for the filter
sampling_frequency = 100;  % Sampling frequency
normalized_cutoff = cutoff_frequency / (0.5 * sampling_frequency);

% Design and apply a Butterworth filter
order = 4;  % Filter order
[b, a] = butter(order, normalized_cutoff, 'low');  % Design filter
filtered_signal = filtfilt(b, a, signal);  % Apply filter to the signal

% Display the filtered signal
subplot(2,1,2);
plot(t, filtered_signal);
title('Filtered Signal');
xlabel('Time');
ylabel('Amplitude');

% Add a legend to the plot
legend('Original', 'Filtered');

% Explain the filtering process
fprintf('The low-pass Butterworth filter with a cutoff frequency of %.2f Hz was applied.\n', cutoff_frequency);
fprintf('The filter order used was %d.\n', order);
fprintf('The result is a smoother version of the original noisy signal.\n');
