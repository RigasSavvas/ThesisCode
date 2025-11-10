filename = 'C:\Users\rigas\Desktop\Παλμογραφηματα\ERC\NewFile11.csv';  
data = csvread(filename, 2, 0);    % Skip 2 header lines, start at column 0

% Extract time, voltage
time = data(:, 1);              % Column 1: Time in seconds
voltage1 = data(:, 2);            % Column 2: Voltage - Channel 1
voltage2 = data(:, 3);            % Column 3: Voltage - Channel 2
voltage3 = data(:, 4);           % Column 4: Voltage - Channel 3
voltage4 = data(:, 5);           % Column 5: Voltage - Channel 4


% Convert time to microseconds
time_us = 0.05*time; % Sampling Rate:500000000Sa/s 

% Create a figure
figure(1);
                   % Left y-axis for Voltage
plot(time_us, voltage1 , 'b', 'LineWidth', 1.5);
hold on;
plot(time_us, voltage2 , 'r', 'LineWidth', 1.5);
hold on;
plot(time_us, voltage3 , 'g', 'LineWidth', 1.5);
hold on;
plot(time_us, voltage4 , 'k', 'LineWidth', 1.5);
ylabel('Voltage (V)');
ylim([-0.5 4]);

xlabel('Time (μs)');
title('MOSFET Pulses vs. Time');
grid on;

legend({'Pulse 1','Pulse 2','Pulse 3','Pulse 4'},'Location','northwest','Orientation','horizontal');