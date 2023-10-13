% Simple MATLAB Program to Demonstrate Signal Processing Toolbox

% Step 1: Generate a simple signal
% Generate a sine wave with frequency 2 Hz and a duration of 1 second.
fs = 1000;                   % Sampling frequency (Hz)
t = 0:1/fs:1-1/fs;           % Time vector from 0 to 1 second
frequency = 2;               % Frequency of the sine wave (2 Hz)
signal = sin(2*pi*frequency*t);

% Step 2: Add noise to the signal
% Simulate the presence of noise in the signal.
noise = 0.2*randn(size(t));  % Gaussian white noise with 0.2 amplitude
noisy_signal = signal + noise;

% Step 3: Visualize the original and noisy signals
figure;
subplot(2, 1, 1);
plot(t, signal);
title('Original Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(2, 1, 2);
plot(t, noisy_signal);
title('Noisy Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Step 4: Perform basic signal processing operations
% Let's apply some basic signal processing techniques.

% a. Filtering: Apply a low-pass filter to remove high-frequency noise.
cutoff_frequency = 5;  % Cutoff frequency of the filter (Hz)
nyquist = fs / 2;      % Nyquist frequency
order = 4;             % Filter order
[b, a] = butter(order, cutoff_frequency / nyquist, 'low');
filtered_signal = filtfilt(b, a, noisy_signal);

% b. Spectrogram: Compute the spectrogram of the noisy signal.
figure;
spectrogram(noisy_signal, hamming(256), 128, 256, fs, 'yaxis');
title('Spectrogram of Noisy Signal');

% Step 5: Visualize the filtered signal
figure;
subplot(2, 1, 1);
plot(t, noisy_signal);
title('Noisy Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(2, 1, 2);
plot(t, filtered_signal);
title('Filtered Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Step 6: Play the original and filtered signals
% Play the original and filtered signals to hear the difference.
sound(signal, fs);
pause(1);  % Pause for 1 second
sound(filtered_signal, fs);
