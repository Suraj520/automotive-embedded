% Step 1: Load the dataset
data = csvread('sample_data.csv');

% Step 2: Check the size and structure of the data
fprintf('Original Data Size: %d rows x %d columns\n', size(data));

% Step 3: Data Preprocessing
% 3.1. Remove Missing Values (NaNs)
data = data(~any(isnan(data), 2), :);

% 3.2. Remove Duplicates
data = unique(data, 'rows');

% 3.3. Normalize the Data (scaling to a specific range, e.g., [0, 1])
min_val = min(data);
max_val = max(data);
data = (data - min_val) / (max_val - min_val);

% Step 4: Check the size and structure of the preprocessed data
fprintf('Preprocessed Data Size: %d rows x %d columns\n', size(data));

% Step 5: Save the preprocessed data to a new CSV file
csvwrite('preprocessed_data.csv', data);

% Step 6: Display a message indicating the process is complete
disp('Data preprocessing and saving completed.');
