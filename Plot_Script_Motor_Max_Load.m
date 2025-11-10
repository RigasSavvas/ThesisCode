filename = 'C:\Users\rigas\Desktop\Παλμογραφηματα\ERC_13\NewFile8.csv';  
data = csvread(filename, 2, 0);    % Skip 2 header lines, start at column 0

% Extract time, voltage, and current
time = data(:, 1);              % Column 1: Time in seconds
voltage1 = data(:, 2);            % Column 2: Voltage - Channel 1
voltage2 = data(:, 3);            % Column 3: Voltage - Channel 2
% current = data(:, 4);           % Column 4: Current - Channel 3

% Convert time to microseconds
time_us = time/20; % Sampling Rate:500000000Sa/s 

% Create a figure
figure(1);

yyaxis left                   % Left y-axis for Voltage
plot(time_us, voltage1 , 'b-', 'LineWidth', 1.5);
hold on;
% plot(time_us, voltage2 , 'r-', 'LineWidth', 1.5);
hold on;
% V_ref = 50 * (time < 500) + 100 * (time >= 500);
plot(time_us, 200*ones((size(time_us))), 'g-', 'LineWidth', 1.5);
% plot(time_us, V_ref , 'g-', 'LineWidth', 1.5);
ylim([0 250]);
ylabel('Voltage (V)');

yyaxis right                  % Right y-axis for Current
% plot(time_us, current, 'g-', 'LineWidth', 1.5);
plot(time_us, voltage2 , 'r-', 'LineWidth', 1.5);
ylim([0 25]);
ylabel('Current (A)');

xlabel('Time (s)');
title('Voltage and Current vs. Time');
grid on;

legend({'V_T','V_r_e_f','I_T'},'Location','northwest','Orientation','horizontal');