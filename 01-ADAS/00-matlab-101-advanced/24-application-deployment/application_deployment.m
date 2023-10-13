% Create a simple MATLAB App using App Designer
app = uifigure('Name', 'My First Deployed App', 'Position', [100, 100, 300, 200]);

% Add a UI component, e.g., a button
button = uibutton(app, 'Text', 'Click Me!', 'Position', [100, 100, 100, 40]);

% Define a callback function for the button
button.ButtonPushedFcn = @(btn, event) showMessage();



% Deploy the app
appFile = deploytool;
% Create a function to display a message
function showMessage()
    % Create a message box
    message = uiconfirm(app, 'Hello, this is a deployed app!', 'Message', 'Icon', 'info');
    
    % Wait for the user to close the message box
    uiwait(message);
end