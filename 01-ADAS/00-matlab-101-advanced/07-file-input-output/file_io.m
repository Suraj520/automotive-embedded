% MATLAB Input and Output (I/O) Example

% Prompting for User Input
userInput = input('Enter a number: ');

% Displaying Output
disp(['You entered: ', num2str(userInput)]);

% Basic File I/O
% Writing to a text file
fileID = fopen('output.txt', 'w');
fprintf(fileID, 'This is some text written to a file.\n');
fclose(fileID);

% Reading from a text file
fileID = fopen('output.txt', 'r');
fileContents = fscanf(fileID, '%c');
fclose(fileID);
disp('Contents of output.txt:');
disp(fileContents);

% Reading Numeric Data from a File
numericData = load('numeric_data.txt'); % Assume 'numeric_data.txt' contains numeric data
disp('Numeric data from numeric_data.txt:');
disp(numericData);

% Writing Data to a CSV File
csvData = [1, 2, 3; 4, 5, 6; 7, 8, 9];
csvwrite('output.csv', csvData);
disp('CSV file "output.csv" created.');

% Reading Data from a CSV File
csvDataRead = csvread('output.csv');
disp('CSV data read from "output.csv":');
disp(csvDataRead);

% Importing Data from Excel
excelData = xlsread('sample_data.xlsx'); % Assumes an Excel file 'sample_data.xlsx'
disp('Data imported from "sample_data.xlsx":');
disp(excelData);

% Plotting Data
x = linspace(0, 2 * pi, 100);
y = sin(x);
plot(x, y);
title('Sine Wave');
xlabel('x');
ylabel('sin(x)');
grid on;

% Saving a Plot as an Image
saveas(gcf, 'sine_wave_plot.png');
disp('Sine wave plot saved as "sine_wave_plot.png".');

% Playing Audio
% Create a simple sine wave audio signal
fs = 44100; % Sampling frequency (Hz)
t = 0:1/fs:1; % Time vector
f = 440; % Frequency of the sine wave (Hz)
audioData = sin(2 * pi * f * t);
sound(audioData, fs);
pause(1); % Play for 1 second

% Recording Audio (Requires Audio Toolbox)
% recorder = audiorecorder(fs, 16, 1); % Create a recorder object
% record(recorder);
% pause(5); % Record for 5 seconds
% audioDataRecorded = getaudiodata(recorder); % Retrieve recorded data

% Perform other I/O operations as needed in your MATLAB projects.

% End of the MATLAB I/O example.
