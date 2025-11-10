filename = 'C:\Users\rigas\Desktop\Παλμογραφηματα\ERC\NewFile9.csv';  
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

plot(time_us, voltage1 , 'b-', 'LineWidth', 1.5);
hold on;
plot(time_us, voltage2 , 'r-', 'LineWidth', 1.5);
V_ref = 40 * (time < 315) + 160 * (time >= 315 & time<=850) + 100 * (time>850);
%+ 60 * (time >= 1 & time<=760)
%plot(time_us, V_ref , 'r-', 'LineWidth', 1.5);
ylabel('Voltage (V)');
% ylim([70 180]);

xlabel('Time (s)');
title('Voltage vs. Time');
grid on;

legend({'V_o_u_t','V_r_e_f'},'Location','northwest','Orientation','horizontal');