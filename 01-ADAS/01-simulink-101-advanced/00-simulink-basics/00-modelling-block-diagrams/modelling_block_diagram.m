% In simple terms, this script represents a system with a mass, spring, and damping.
% It simulates how this system responds to an input force (in this case, a sine wave)
% and then plots the system's output over time. The script uses mathematical equations
% to model and visualize how the system behaves when you apply a force to it.


% Define constants and parameters
m = 1;  % Mass
k = 2;  % Spring constant
b = 0.5;  % Damping coefficient

% Create a transfer function block
num = 1;
den = [m, b, k];
sys = tf(num, den);

% Time vector
t = 0:0.1:10;  % Define the time span for simulation

% Generate a time series input
F = sin(2 * pi * 1 * t);  % A sinusoidal input, for example

% Simulate the system
[y, t] = lsim(sys, F, t);

% Plot the response
plot(t, y);
title('System Response');
xlabel('Time');
ylabel('Output');
