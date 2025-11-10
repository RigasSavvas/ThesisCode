filename = 'C:\Users\rigas\Desktop\Παλμογραφηματα\ERC_9\NewFile2.csv';  
data = csvread(filename, 2, 0);    % Skip 2 header lines, start at column 0

% Extract time, voltage, and current
time = data(:, 1);              % Column 1: Time in seconds
voltage1 = data(:, 2);            % Column 2: Voltage - Channel 1
voltage2 = data(:, 3);            % Column 3: Voltage - Channel 2
% current = data(:, 4);           % Column 4: Current - Channel 3

% Convert time to microseconds
time_us = 0.05*time; % Sampling Rate:500000000Sa/s 

% Create a figure
figure(1);
                   % Left y-axis for Voltage
plot(time_us, voltage1 , 'b-', 'LineWidth', 1.5);
hold on;
plot(time_us, voltage2 , 'r-', 'LineWidth', 1.5);
hold on;
plot(time_us, 160*ones((size(time_us))), 'g-', 'LineWidth', 1.5);
ylabel('Voltage (V)');


xlabel('Time (μs)');
title('Voltage vs. Time');
grid on;

legend({'V_D_S','V_o_u_t','V_r_e_f'},'Location','northwest','Orientation','horizontal');