% MATLAB Control Flow Example

% Initialize a variable
x = 10;

% 1. if-else Statement
if x > 5
    disp('x is greater than 5');
else
    disp('x is not greater than 5');
end

% 2. Nested if-else Statements
if x > 5
    if x > 7
        disp('x is greater than 7');
    else
        disp('x is greater than 5 but not greater than 7');
    end
else
    disp('x is not greater than 5');
end

% 3. for Loop
for i = 1:5
    disp(['Iteration ', num2str(i)]);
end

% 4. while Loop
while x > 0
    disp(['x is ', num2str(x)]);
    x = x - 1;
end

% 5. switch-case Statement
day = 'Tuesday';
switch day
    case 'Monday'
        disp('It''s Monday');
    case 'Tuesday'
        disp('It''s Tuesday');
    otherwise
        disp('It''s neither Monday nor Tuesday');
end

% 6. Break and Continue Statements
for i = 1:10
    if i == 3
        continue; % Skip iteration when i is 3
    end
    if i == 7
        break;    % Exit the loop when i is 7
    end
    disp(['Iteration ', num2str(i)]);
end

% 7. Logical Operators
a = true;
b = false;
if a && ~b
    disp('a is true and b is not true');
end

% 8. Error Handling with try-catch
try
    result = 10 / 0;
catch
    disp('An error occurred: Division by zero');
end

% 9. Vectorized Operations 
vector = [1, 2, 3, 4, 5];
squared = vector.^2;
disp(['Squared vector: ', num2str(squared)]);

% 10. Parfor Loop (Parallel Computing)
parfor i = 1:5
    disp(['Parallel Iteration ', num2str(i)]);
end

