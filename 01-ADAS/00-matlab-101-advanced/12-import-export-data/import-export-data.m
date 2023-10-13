% Import and Export Data in MATLAB Example

% Step 1: Import Data
% Create a variable 'data' to store the imported data from a CSV file.
data = csvread('input_data.csv'); % Make sure 'input_data.csv' exists in the current directory

% Step 2: Data Operation
% Perform a simple operation on the imported data (e.g., add 10 to each element).
modifiedData = data + 10;

% Step 3: Export Data
% Save the modified data to a new CSV file.
csvwrite('output_data.csv', modifiedData);

% Step 4: Display Results
% Display the original and modified data.
disp('Original Data:');
disp(data);

disp('Modified Data:');
disp(modifiedData);

% Step 5: Clean up
% Optionally, you can clear variables to free up memory.
clear data modifiedData;

% Note:
% - The 'csvread' function is used to read data from a CSV file.
% - The 'csvwrite' function is used to write data to a CSV file.
% - You can adjust the file paths and data operations based on your specific needs.
