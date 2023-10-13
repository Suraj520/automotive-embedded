% MATLAB Variables and Data Types Exploration

% Numeric Data Types
% Scalars
scalar_int = 5; % Integer scalar
scalar_float = 3.14; % Floating-point scalar

% Arrays
array_integer = [1, 2, 3, 4, 5]; % 1D integer array
array_float = [1.1, 2.2, 3.3, 4.4, 5.5]; % 1D floating-point array
matrix = [1, 2, 3; 4, 5, 6; 7, 8, 9]; % 2D matrix

% Complex Numbers
complex_num = 2 + 3i; % Complex number (real + imaginary)

% Strings
text_string = 'Hello, MATLAB!'; % String variable

% Logical
logical_true = true; % Logical true
logical_false = false; % Logical false

% Cell Arrays
cell_array = {scalar_int, text_string, matrix}; % Cell array

% Structures
person.name = 'John';
person.age = 30;
person.city = 'New York';

% Displaying Variables
disp('--- Variable Exploration ---');
disp(['Scalar (int): ' num2str(scalar_int)]);
disp(['Scalar (float): ' num2str(scalar_float)]);
disp(['1D Integer Array: ' num2str(array_integer)]);
disp(['1D Float Array: ' num2str(array_float)]);
disp('2D Matrix:');
disp(matrix);
disp(['Complex Number: ' num2str(complex_num)]);
disp(['String: ' text_string]);
disp(['Logical (true): ' num2str(logical_true)]);
disp(['Logical (false): ' num2str(logical_false)]);
disp('Cell Array:');
disp(cell_array);
disp('Structure:');
disp(person);

% Variable Information
disp('--- Variable Information ---');
whos

% Cleaning Up
clear all;

% End of Program
disp('Program completed.');

