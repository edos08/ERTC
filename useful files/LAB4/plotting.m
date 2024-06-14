clc;
close all;
clear all;

%% LAB 4
% ██╗      █████╗ ██████╗     ██╗  ██╗
% ██║     ██╔══██╗██╔══██╗    ██║  ██║
% ██║     ███████║██████╔╝    ███████║
% ██║     ██╔══██║██╔══██╗    ╚════██║
% ███████╗██║  ██║██████╔╝         ██║
% ╚══════╝╚═╝  ╚═╝╚═════╝          ╚═╝
                                  

%%******************* LAP ****************************

load("lab_data_fwd_cst.mat");

X = data.time;
Y_1 = data.out{1,1}(1,:);
Y_2 = data.out{3,1}(2,:);
Y_3 = data.out{3,1}(1,:);
Y_4 = data.out{1,1}(2,:);
Y_5 = data.out{5,1}(1,:);
Y_6 = ((Y_2*pi/30)*0.034 + (Y_4*pi/30)*0.034)/2;

figure('NumberTitle','off','Name','Exercise 1');
subplot(4,1,1);
grid on;
hold on;
plot(X, Y_1, 'LineWidth', 1.2);
plot(X, Y_2, 'LineWidth', 1.2);
ylim([-10, 90]);
xlim([0, 18]);
ylabel("$\mathrm{\omega_r\;[rpm]}$", 'interpreter', 'latex');

subplot(4,1,2);
grid on;
hold on;
plot(X, Y_3, 'LineWidth', 1.2);
plot(X, Y_4, 'LineWidth', 1.2);
ylim([-10, 90]);
xlim([0, 18]);
ylabel("$\mathrm{\omega_l\;[rpm]}$", 'interpreter', 'latex');

subplot(4,1,3);
grid on;
hold on;
plot(X, Y_6, 'LineWidth', 1.2);
xlim([0, 18]);
% ylim([-0.03, 0.03]);
ylabel("$V\;[m/s]$", 'interpreter', 'latex');

subplot(4,1,4);
grid on;
hold on;
plot(X, Y_5, 'LineWidth', 1.2);
xlabel("Time [s]");
xlim([0, 18]);
ylim([-0.03, 0.03]);
ylabel("$\mathrm{e_{SL}}$", 'interpreter', 'latex');

% matlab2tikz('lab4_data_lap_fwd_cst.tex', 'height', '9cm', 'width', '16cm');

