% Simple MATLAB program to demonstrate Symbolic Math Toolbox functionality

% Step 1: Define symbolic variables
syms x y

% Step 2: Define symbolic expressions
expr1 = x^2 + 2*x + 1;    % Define a quadratic expression
expr2 = sin(x) + cos(x);  % Define a trigonometric expression

% Step 3: Perform symbolic algebra
simplified_expr = simplify(expr1 + expr2);  % Simplify the sum of the two expressions
expanded_expr = expand(expr1 * expr2);     % Expand the product of the two expressions

% Step 4: Differentiation
derivative = diff(expr1, x);  % Find the derivative of expr1 with respect to x

% Step 5: Integration
integral_result = int(expr2, x);  % Integrate expr2 with respect to x

% Step 6: Substitution
substituted_expr = subs(expr1, x, 3);  % Substitute x with 3 in expr1

% Step 7: Display results
disp('Symbolic Math Toolbox Demonstrations:')
disp(['Expression 1: ', char(expr1)]);
disp(['Expression 2: ', char(expr2)]);
disp(['Simplified Expression: ', char(simplified_expr)]);
disp(['Expanded Expression: ', char(expanded_expr)]);
disp(['Derivative of Expression 1: ', char(derivative)]);
disp(['Integral of Expression 2: ', char(integral_result)]);
disp(['Expression 1 with x = 3: ', char(substituted_expr)]);
