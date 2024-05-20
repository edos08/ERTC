clc;
close all;

%% LAB 1
% ██╗      █████╗ ██████╗      ██╗
% ██║     ██╔══██╗██╔══██╗    ███║
% ██║     ███████║██████╔╝    ╚██║
% ██║     ██╔══██║██╔══██╗     ██║
% ███████╗██║  ██║██████╔╝     ██║
% ╚══════╝╚═╝  ╚═╝╚═════╝      ╚═╝
                                


%%*******************PART 1****************************

load("LAB1/Part1/measurements/reference_awu.mat");
load("LAB1/Part1/measurements/pos_no_awu.mat");
load("LAB1/Part1/measurements/pos_awu.mat");



figure('NumberTitle','off','Name','Anti-Windup');
subplot(2,1,1);
plot(pos_no_awu.time,pos_no_awu.signals.values);
grid on
hold on;
plot(reference_awu.time,reference_awu.signals.values);
hold off;
title("NO Anti-Windup");
xlabel("Time[sec]");
ylabel("Position[deg]");

subplot(2,1,2);
plot(pos_awu.time,pos_awu.signals.values); %mi sa che questo è con il valore ottimo
grid on
hold on;
plot(reference_awu.time,reference_awu.signals.values);
hold off;
title("With Anti-Windup");
xlabel("Time[sec]");
ylabel("Position[deg]");

clear all;


load("LAB1/Part1/measurements/feedforward_meas.mat");

figure('NumberTitle','off','Name','Feed Forward Compensation');
subplot(2,1,1);
plot(noff_pos.time,noff_pos.signals.values);
grid on
hold on;
plot(noff_pos_ref.time,noff_pos_ref.signals.values);
hold off;
title("Without Feed Forward");
xlabel("Time[sec]");
ylabel("Position[deg]");
xlim([0 6]);

subplot(2,1,2);
plot(ff_pos.time,ff_pos.signals.values); 
grid on
hold on;
plot(ff_pos_ref.time,ff_pos_ref.signals.values);
hold off;
title("With Feed Forward");
xlabel("Time[sec]");
ylabel("Position[deg]");
xlim([0 6]);

clear all;


%*******************PART 2****************************

load("LAB1/Part2/measurements/SS_NOMINAL_MEAS/ss_pos_40.mat");
load("LAB1/Part2/measurements/SS_NOMINAL_MEAS/ss_ref_40.mat");
load("LAB1/Part2/measurements/SS_NOMINAL_MEAS/ss_pos_70.mat");
load("LAB1/Part2/measurements/SS_NOMINAL_MEAS/ss_ref_70.mat");
load("LAB1/Part2/measurements/SS_NOMINAL_MEAS/ss_pos_120.mat");
load("LAB1/Part2/measurements/SS_NOMINAL_MEAS/ss_ref_120.mat");

figure('NumberTitle','off','Name','NOMINAL TRACKING');
subplot(2,2,1);
plot(ss_ref_40.time,ss_ref_40.signals.values);
grid on
hold on
plot(ss_pos_40.time,ss_pos_40.signals.values);
hold off
title("step response with 40 degrees");
axis([0 10 0 50]);
xlabel("Time[sec]");
ylabel("Position[deg]");



subplot(2,2,2);
plot(ss_ref_70.time,ss_ref_70.signals.values);
hold on
plot(ss_pos_70.time,ss_pos_70.signals.values);
grid on
hold off
title("step response with 70 degrees");
xlabel("Time[sec]");
ylabel("Position[deg]");


subplot(2,2,[3,4]);
plot(ss_ref_120.time,ss_ref_120.signals.values);
hold on
grid on
plot(ss_pos_120.time,ss_pos_120.signals.values);
hold off
title("step response with 120 degrees");
xlabel("Time[sec]");
ylabel("Position[deg]");

clear all;


load("LAB1/Part2/measurements/SS_INTEGRAL_MEAS/ss_int_pos_40.mat");
load("LAB1/Part2/measurements/SS_INTEGRAL_MEAS/ss_int_ref_40.mat");
load("LAB1/Part2/measurements/SS_INTEGRAL_MEAS/ss_int_pos_70.mat");
load("LAB1/Part2/measurements/SS_INTEGRAL_MEAS/ss_int_ref_70.mat");
load("LAB1/Part2/measurements/SS_INTEGRAL_MEAS/ss_int_pos_120.mat");
load("LAB1/Part2/measurements/SS_INTEGRAL_MEAS/ss_int_ref_120.mat");



figure('NumberTitle','off','Name','ROBUST TRACKING');
subplot(2,2,1);
plot(ss_int_ref_40.time,ss_int_ref_40.signals.values);
grid on
hold on
plot(ss_int_pos_40.time,ss_int_pos_40.signals.values);
hold off
title("step response with 40 degrees");
axis([0 10 0 60]);
xlabel("Time[sec]");
ylabel("Position[deg]");



subplot(2,2,2);
plot(ss_int_ref_70.time,ss_int_ref_70.signals.values);
grid on
hold on
plot(ss_int_pos_70.time,ss_int_pos_70.signals.values);
hold off
title("step response with 70 degrees");
xlabel("Time[sec]");
ylabel("Position[deg]");


subplot(2,2,[3,4]);
plot(ss_int_ref_120.time,ss_int_ref_120.signals.values);
grid on
hold on
plot(ss_int_pos_120.time,ss_int_pos_120.signals.values);
hold off
title("step response with 120 degrees");
axis([0 10 0 160]);
xlabel("Time[sec]");
ylabel("Position[deg]");

clear all;



%% LAB 2
% ██╗      █████╗ ██████╗     ██████╗ 
% ██║     ██╔══██╗██╔══██╗    ╚════██╗
% ██║     ███████║██████╔╝     █████╔╝
% ██║     ██╔══██║██╔══██╗    ██╔═══╝ 
% ███████╗██║  ██║██████╔╝    ███████╗
% ╚══════╝╚═╝  ╚═╝╚═════╝     ╚══════╝
                                    


%%*******************PART 1****************************

% load("LAB2/part1_design_by_emulation/measurements/pid.mat");
% load("LAB2/part1_design_by_emulation/measurements/pid_fe.mat");
% load("LAB2/part1_design_by_emulation/measurements/pid_tu.mat");
% load("LAB2/part1_design_by_emulation/measurements/pid_exact.mat");
% 
% 
% 
% 
% 
% 
% 
% 
% load("LAB2/part1_design_by_emulation/measurements/pid_noawu.mat");
% load("LAB2/part1_design_by_emulation/measurements/pid_awu.mat");
% 
% 
% 
% 
% load("LAB2/part1_design_by_emulation/measurements/pid_ff_new.mat");
% 
% 
% 
% 
% 
% load("LAB2/part1_design_by_emulation/measurements/ss_part2.mat");
% load("LAB2/part1_design_by_emulation/measurements/ss_part4.mat");
% 
% 
% 
% 
% 
% clear all;



%%*******************PART 2****************************

% load("LAB2/part2_direct_digital_design/measurements/dd_part1.mat");
% load("LAB2/part2_direct_digital_design/measurements/dd_part2.mat");
% 
% 
% 
% 
% 
% clear all;


%% LAB 3
% ██╗      █████╗ ██████╗     ██████╗ 
% ██║     ██╔══██╗██╔══██╗    ╚════██╗
% ██║     ███████║██████╔╝     █████╔╝
% ██║     ██╔══██║██╔══██╗     ╚═══██╗
% ███████╗██║  ██║██████╔╝    ██████╔╝
% ╚══════╝╚═╝  ╚═╝╚═════╝     ╚═════╝ 
                                    

% load("LAB3/Measurements/meas_est_lab.mat");
% 
% 
% 
% 
% 
% clear all;

% load("LAB3/Measurements/pid_meas.mat");
% 
% 
% 
% 
% 
% clear all;

% load("LAB3/Measurements/ss_nominal_meas.mat");
% load("LAB3/Measurements/ss_robust_meas.mat");
% 
% 
% 
% 
% clear all;

% load("LAB3/Measurements/optimal_control_meas.mat");
% 
% 
% 
% 
% 
% clear all;










%% LAB 4
% ██╗      █████╗ ██████╗     ██╗  ██╗
% ██║     ██╔══██╗██╔══██╗    ██║  ██║
% ██║     ███████║██████╔╝    ███████║
% ██║     ██╔══██║██╔══██╗    ╚════██║
% ███████╗██║  ██║██████╔╝         ██║
% ╚══════╝╚═╝  ╚═╝╚═════╝          ╚═╝
                                    

% load("LAB4/measurement/robot_nominal_mes_500.mat");
% load("LAB4/measurement/robot_nominal_mes_5000.mat");
% 
% 
% 
% 
% 
% clear all;


% load("LAB4/measurement/robot_integral_mes_500.mat");
% load("LAB4/measurement/robot_integral_mes_5000.mat");
% 
% 
% 
% 
% 
% clear all;


% load("LAB4/measurement/yaw_mes_500.mat");
% load("LAB4/measurement/yaw_mes_5000.mat");
% 
% 
% 
% 
% 
% clear all;


% load("LAB4/measurement/yaw_integral_mes_500.mat");
% load("LAB4/measurement/yaw_integral_mes_5000.mat");
% 
% 
% 
% 
% 
% clear all;



