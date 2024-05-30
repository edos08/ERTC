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

load("lab_data_fwd_brk.mat");

X = data.time;
Y_1 = data.out{1,1}(1,:);
Y_2 = data.out{3,1}(2,:);
Y_3 = data.out{3,1}(1,:);
Y_4 = data.out{1,1}(2,:);
Y_5 = data.out{5,1}(1,:);

figure('NumberTitle','off','Name','Exercise 1');
subplot(3,1,1);
grid on;
hold on;
plot(X, Y_1, 'LineWidth', 1.4);
plot(X, Y_2, 'LineWidth', 1.4);
xlabel("Time [s]");
ylim([-20, 110]);
xlim([0, 20]);
ylabel("$\mathrm{\omega_r\;[rpm]}$", 'interpreter', 'latex');

subplot(3,1,2);
grid on;
hold on;
plot(X, Y_3, 'LineWidth', 1.4);
plot(X, Y_4, 'LineWidth', 1.4);
xlabel("Time [s]");
ylim([-20, 110]);
xlim([0, 20]);
ylabel("$\mathrm{\omega_l\;[rpm]}$", 'interpreter', 'latex');

subplot(3,1,3);
grid on;
hold on;
plot(X, Y_5, 'LineWidth', 1.4);
xlabel("Time [s]");
xlim([0, 20]);
ylabel("$\mathrm{e_{SL}}$", 'interpreter', 'latex');

matlab2tikz('lab4_data_lap_fwd_brk.tex', 'height', '9cm', 'width', '16cm');

