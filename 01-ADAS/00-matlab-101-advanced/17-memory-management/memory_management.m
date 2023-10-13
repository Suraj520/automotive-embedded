% Simple MATLAB program to demonstrate memory management

% Step 1: Check Available Memory
memBefore = memory;  % Get memory information before creating variables
disp('Available Memory Before Creating Variables:');
disp(memBefore.MemAvailableAllArrays);  % Display available memory

% Step 2: Create Large Variables
largeArray1 = rand(10000, 10000);  % Create a large random matrix
largeArray2 = rand(10000, 10000);  % Create another large random matrix

% Step 3: Check Available Memory After Creating Variables
memAfterCreation = memory;  % Get memory information after creating variables
disp('Available Memory After Creating Variables:');
disp(memAfterCreation.MemAvailableAllArrays);  % Display available memory

% Step 4: Clear Variables to Free Memory
clear largeArray1 largeArray2;  % Clear the large variables

% Step 5: Check Available Memory After Clearing Variables
memAfterClearing = memory;  % Get memory information after clearing variables
disp('Available Memory After Clearing Variables:');
disp(memAfterClearing.MemAvailableAllArrays);  % Display available memory

% Step 6: Memory Cleanup
% MATLAB's memory management typically frees up memory automatically when variables are cleared.
% However, you can use 'pack' to explicitly request memory cleanup.
pack;

% Step 7: Check Available Memory After Memory Cleanup
memAfterCleanup = memory;  % Get memory information after memory cleanup
disp('Available Memory After Memory Cleanup:');
disp(memAfterCleanup.MemAvailableAllArrays);  % Display available memory
