n = [0 155 315 490 640 800 960 1125 1291];
Ut = [0 20 40 60 80 100 120 140 160];

plot(Ut,n, 'b-', 'LineWidth', 1.5);
ylabel('Motor Speed (rpm)');
xlabel('Armature Voltage (V)');
title('Motor Speed vs. Armature Voltage');
grid on;
