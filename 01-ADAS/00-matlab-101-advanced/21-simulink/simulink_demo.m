% Simple Simulink Example

% Create a new Simulink model
model = 'SimpleFirstOrderSystem';
open_system(new_system(model));

% Define system parameters
tau = 2; % Time constant
K = 1;   % Gain

% Add blocks to the Simulink model
add_block('Simulink/Sources/Step', [model '/Step Input']);
add_block('Simulink/Continuous/Transfer Fcn', [model '/First-Order System']);
add_block('Simulink/Continuous/Scope', [model '/Scope']);

% Set block parameters
set_param([model '/Step Input'], 'Time', '0', 'Before', '0', 'After', '10');
set_param([model '/First-Order System'], 'Numerator', 'K', 'Denominator', '[tau 1]');
set_param([model '/Scope'], 'Position', [400, 200, 600, 400]);

% Connect the blocks
add_line(model, 'Step Input/1', 'First-Order System/1');
add_line(model, 'First-Order System/1', 'Scope/1');

% Save the model
save_system(model);

% Simulate the model
simOut = sim(model);

% Extract simulation data
time = simOut.get('time');
output = simOut.get('output');

% Plot the simulation results
figure;
plot(time, output);
title('Response of a First-Order System');
xlabel('Time');
ylabel('Output');
grid on;

% Close the model
close_system(model, 0);
