% Initialize a pool of workers for parallel computing
pool = gcp();  % This creates a parallel pool with the default number of workers

% Define the range of numbers to calculate the squares for
n = 1:10;

% Initialize an array to store the results
squares = zeros(1, numel(n));

% Use a parfor loop for parallel computation
parfor i = 1:numel(n)
    squares(i) = n(i) ^ 2;
end

% Display the results
disp('Computed squares in parallel:');
disp(squares);

% Close the parallel pool
delete(pool);
