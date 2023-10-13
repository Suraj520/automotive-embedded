% Debugging Example
x = 5;
y = 10;
z = x + y;
disp(['The value of z is: ', num2str(z)]); % Print z for debugging
x = 5;
dbstop if error  % Set a breakpoint on error
y = 0;  % This will trigger the breakpoint
z = x / y;  % MATLAB will pause at this line
