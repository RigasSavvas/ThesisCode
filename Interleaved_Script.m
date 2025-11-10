clc;
clear all;

% script used at the start of the simulation %

% power curcuit parameters %
fsw = 75000;   % switching frequency in Hz %
L = 560e-6;    % main inductor values % 
DCR = 100e-3;  % DC Resistance of Inductor %
Tload = 21;    % load torque value %
Cout = 440e-6; % output capacitor value %
Ron = 0.6;     % MOSFET Ron value %

% control circuit parameters %
fs = 20000;
EN = 1;
% Enable Options %
% 0 = Open Loop %
% 1 = Closed Loop %
duty_cycle = 0.5; % for open loop %
vref = 120;       % for closed loop %
kp_v = 0.0005; S
ki_v = 1;
 
% open_system('Interleaved_Buck_Motor_4');