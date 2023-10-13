% Image Processing Toolbox Demo in MATLAB

% Step 1: Load an image from your file system
imagePath = 'img.jpg';
originalImage = imread(imagePath);

% Step 2: Display the original image
subplot(2, 2, 1);
imshow(originalImage);
title('Original Image');

% Step 3: Convert the image to grayscale
grayImage = rgb2gray(originalImage);

% Step 4: Display the grayscale image
subplot(2, 2, 2);
imshow(grayImage);
title('Grayscale Image');

% Step 5: Apply Gaussian smoothing to the image
% This helps reduce noise.
smoothedImage = imgaussfilt(grayImage, 2); % 2 is the standard deviation.

% Step 6: Display the smoothed image
subplot(2, 2, 3);
imshow(smoothedImage);
title('Smoothed Image');

% Step 7: Perform edge detection using the Canny method
% Adjust the threshold values as needed.
edges = edge(smoothedImage, 'Canny', [0.1 0.2]);

% Step 8: Display the edges detected in the image
subplot(2, 2, 4);
imshow(edges);
title('Edge Detection');

% Display the final result
suptitle('Image Processing Toolbox Demo');

% You can also save the processed image if needed:
% imwrite(edges, 'edge_image.jpg');

% You may need to adjust the parameters and methods based on your specific image and processing goals.
