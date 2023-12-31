% MATLAB Arrays and Matrices Exploration

% Scalars
scalar = 42;
disp('Scalar:');
disp(scalar);

% Row Vector
rowVector = [1, 2, 3, 4, 5];
disp('Row Vector:');
disp(rowVector);

% Column Vector
colVector = [6; 7; 8; 9; 10];
disp('Column Vector:');
disp(colVector);

% 2D Matrix
matrix = [11, 12, 13; 14, 15, 16; 17, 18, 19];
disp('2D Matrix:');
disp(matrix);

% 3D Matrix
threeDMatrix = rand(3, 4, 2);
disp('3D Matrix:');
disp(threeDMatrix);

% Initializing Arrays

% Zeros Matrix
zerosMatrix = zeros(2, 3);
disp('Zeros Matrix:');
disp(zerosMatrix);

% Ones Matrix
onesMatrix = ones(3, 2);
disp('Ones Matrix:');
disp(onesMatrix);

% Identity Matrix
identityMatrix = eye(4);
disp('Identity Matrix:');
disp(identityMatrix);

% Range Array
rangeArray = 1:5;
disp('Range Array:');
disp(rangeArray);

% Array Indexing
disp('Array Indexing:');
element = matrix(2, 2);
disp(['Element at (2, 2): ', num2str(element)]);

% Slicing
slice = matrix(2:3, 1:2);
disp('Sliced Matrix:');
disp(slice);

% Array Operations

% Transpose
transposeMatrix = matrix';
disp('Transpose of Matrix:');
disp(transposeMatrix);

% Element-wise Operations
additionResult = matrix + 5;
disp('Matrix Addition (Element-wise):');
disp(additionResult);

% Matrix Multiplication
matrix2 = [2, 3; 4, 5; 6, 7];
multiplicationResult = matrix * matrix2;
disp('Matrix Multiplication:');
disp(multiplicationResult);


matrix3 = [1,2,3;4,5,6;7,8,9]
% Element-wise Multiplication
elementWiseMultiplication = matrix .* matrix3;
disp('Element-wise Multiplication:');
disp(elementWiseMultiplication);

% Element-wise Division
elementWiseDivision = matrix ./ matrix3;
disp('Element-wise Division:');
disp(elementWiseDivision);

% Concatenation
concatenatedMatrix = [matrix, matrix2];
disp('Concatenated Matrix:');
disp(concatenatedMatrix);
