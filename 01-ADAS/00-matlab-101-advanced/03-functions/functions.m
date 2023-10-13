% This MATLAB program explores various types of functions: built-in and user-defined.

% Built-in functions
% ------------------

% 1. Arithmetic Functions
a = 5;
b = 3;
add_result = a + b;
subtract_result = a - b;
multiply_result = a * b;
divide_result = a / b;

% 2. Trigonometric Functions
angle = pi / 4; % 45 degrees in radians
sin_result = sin(angle);
cos_result = cos(angle);
tan_result = tan(angle);

% 3. Exponential and Logarithmic Functions
x = 2;
exp_result = exp(x);
log_result = log(x);

% 4. Random Number Generation
random_num = rand(); % Generates a random number between 0 and 1

% User-defined functions
% ---------------------
% Calling the user-defined function
length = 6;
width = 4;
rectangle_area_result = rectangle_area(length, width);

% Displaying the results
fprintf('Arithmetic Results: \n');
disp(add_result);
disp(subtract_result);
disp(multiply_result);
disp(divide_result);

fprintf('\nTrigonometric Results: \n');
disp(sin_result);
disp(cos_result);
disp(tan_result);

fprintf('\nExponential and Logarithmic Results: \n');
disp(exp_result);
disp(log_result);

fprintf('\nRandom Number: \n');
disp(random_num);

fprintf('\nUser-Defined Function Result (Rectangle Area): \n');
disp(rectangle_area_result);

% Define a simple user-defined function
% Function to calculate the area of a rectangle
function area = rectangle_area(length, width)
    area = length * width;
end
