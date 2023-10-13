% Create a VideoReader object to access the webcam.
vidObj = videoinput('winvideo', 0, 'YUY2_640x480');

% Set the video input format.
src = getselectedsource(vidObj);
src.ExposureMode = 'manual';
src.Exposure = -4;

% Create a figure to display the video frames.
figure;

% Create a loop to continuously capture and process frames.
while ishandle(1)
    % Capture a frame from the webcam.
    originalFrame = getsnapshot(vidObj);
    
    % Convert the frame to grayscale.
    grayscaleFrame = rgb2gray(originalFrame);
    
    % Display the original and grayscale frames side by side.
    subplot(1, 2, 1);
    imshow(originalFrame);
    title('Original Frame');
    
    subplot(1, 2, 2);
    imshow(grayscaleFrame);
    title('Grayscale Frame');
    
    drawnow; % Update the figure window.
end

% Clean up by deleting the video object.
delete(vidObj);
