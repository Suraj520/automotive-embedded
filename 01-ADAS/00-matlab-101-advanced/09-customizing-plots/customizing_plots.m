% Customizing Plots in MATLAB

% Create sample data
x = 0:0.1:2*pi;
y1 = sin(x);
y2 = cos(x);

% Create a new figure
figure;

% Plot the first data series with a blue solid line, add a legend label
plot(x, y1, 'b-', 'LineWidth', 2, 'DisplayName', 'Sine Function');
hold on; % Enable the hold on to overlay multiple plots

% Plot the second data series with a red dashed line, add a legend label
plot(x, y2, 'r--', 'LineWidth', 1.5, 'DisplayName', 'Cosine Function');

% Add labels and title
xlabel('X-axis');
ylabel('Y-axis');
title('Customized Sine and Cosine Functions Plot');

% Customize the plot appearance
grid on; % Enable grid lines
box off; % Remove the plot box
legend('Location', 'best'); % Display legend in the best position

% Customize axis limits and ticks
xlim([0, 2*pi]);
xticks(0:pi/2:2*pi);
xticklabels({'0', '\pi/2', '\pi', '3\pi/2', '2\pi'});

ylim([-1.2, 1.2]);
yticks(-1:0.2:1);

% Customize axis font size
set(gca, 'FontSize', 12);

% Customize the legend
h = legend('show');
set(h, 'FontSize', 12); % Set the legend font size

% Customize line styles and colors
set(h, 'color', 'white'); % Make the legend background white

% Save the plot as an image (optional)
% Uncomment the following line to save the plot to a file:
% saveas(gcf, 'customized_plot.png');

% Turn off hold for future plots
hold off;

% End of the program
