% Define animation parameters
numFrames = 100;         % Number of frames in the animation
radius = 10;             % Radius of the moving circle
xCenter = 50;            % Initial x-coordinate of the circle's center
yCenter = 50;            % Initial y-coordinate of the circle's center

% Create a figure to display the animation
figure;
axis([0 100 0 100]);     % Set the axis limits
axis equal;              % Make the aspect ratio equal
hold on;                 % Allow multiple objects to be plotted

% Create the animation loop
for frame = 1:numFrames
    % Clear the previous frame by plotting a white rectangle
    rectangle('Position', [0, 0, 100, 100], 'FaceColor', 'w', 'EdgeColor', 'w');
    
    % Update the x-coordinate of the circle's center to create motion
    xCenter = xCenter + 1;
    
    % Plot the circle at the new position
    viscircles([xCenter, yCenter], radius, 'EdgeColor', 'b', 'LineWidth', 2);
    
    % Pause to control the animation speed (you can adjust this)
    pause(0.1);
    
    % Update the figure to show the current frame
    drawnow;
end

% Close the figure when the animation is done
close;
