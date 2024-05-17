clc;
close all;
clear all;

%% LAB 2
% ██╗      █████╗ ██████╗     ██████╗ 
% ██║     ██╔══██╗██╔══██╗    ╚════██╗
% ██║     ███████║██████╔╝     █████╔╝
% ██║     ██╔══██║██╔══██╗    ██╔═══╝ 
% ███████╗██║  ██║██████╔╝    ███████╗
% ╚══════╝╚═╝  ╚═╝╚═════╝     ╚══════╝
                                


%%*******************EXERCISE 1****************************

% load("bonus_1.mat");
% 
% X = data.time - 4.40;
% 
% % count = 1;
% % while X(count) < 0 
% %     count = count + 1;
% % end
% 
% X = X(400:end);
% Y_1 = data.out{1,1}(2,400:end);
% Y_2 = -data.out{3,1}(1,400:end);
% Y_3 = -Y_2;
% Y_4 = -data.out{3,1}(2,400:end);
% Y_5 = -Y_4;
% 
% figure('NumberTitle','off','Name','Exercise 1');
% subplot(2,1,1);
% grid on
% hold on;
% plot(X, Y_1, 'LineWidth', 1.2);
% xlim([0, 6]);
% xlabel("Time [s]");
% ylabel("$\mathrm{a_y\;[m/s^2]}$", 'interpreter', 'latex');
% 
% subplot(2,1,2);
% grid on
% hold on;
% plot(X, Y_2, 'LineWidth', 1.2);
% plot(X, Y_3, 'LineWidth', 1.2);
% xlim([0, 6]);
% ylim([-51, 51]);
% xlabel("Time [s]");
% ylabel("$\mathrm{Tilt\;angle\;[^\circ]}$", 'interpreter', 'latex');
% 
% matlab2tikz('lab2_exercise1.tex');

%%*******************BONUS 1****************************

% load("bonus_1.mat");
% 
% X = data.time - 4.40;
% 
% % count = 1;
% % while X(count) < 0 
% %     count = count + 1;
% % end
% 
% X = X(400:end);
% Y_1 = data.out{1,1}(2,400:end);
% Y_2 = -data.out{3,1}(1,400:end);
% Y_3 = -Y_2;
% Y_4 = -data.out{3,1}(2,400:end);
% Y_5 = -Y_4;
% 
% figure('NumberTitle','off','Name','Bonus 1');
% subplot(3,1,1);
% grid on
% hold on;
% plot(X, Y_1, 'LineWidth', 1.2);
% xlim([0, 6]);
% xlabel("Time [s]");
% ylabel("$\mathrm{a_y\;[m/s^2]}$", 'interpreter', 'latex');
% 
% subplot(3,1,2);
% grid on
% hold on;
% plot(X, Y_2, 'LineWidth', 1.2);
% plot(X, Y_3, 'LineWidth', 1.2);
% xlim([0, 6]);
% ylim([-51, 51]);
% xlabel("Time [s]");
% ylabel("$\mathrm{Tilt\;angle\;[^\circ]}$", 'interpreter', 'latex');
% 
% subplot(3,1,3);
% grid on
% hold on;
% plot(X, Y_4, 'LineWidth', 1.2);
% plot(X, Y_5, 'LineWidth', 1.2);
% xlim([0, 6]);
% % ylim([-22, 22]);
% xlabel("Time [s]");
% ylabel("$\mathrm{Pan\;angle\;[^\circ]}$", 'interpreter', 'latex');
% 
% matlab2tikz('lab2_bonus1.tex');

load("matlab.mat");

