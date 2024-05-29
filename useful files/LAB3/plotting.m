clc;
close all;
clear all;

%% LAB 3
% ██╗      █████╗ ██████╗     ██████╗ 
% ██║     ██╔══██╗██╔══██╗    ╚════██╗
% ██║     ███████║██████╔╝     █████╔╝
% ██║     ██╔══██║██╔══██╗     ╚═══██╗
% ███████╗██║  ██║██████╔╝    ██████╔╝
% ╚══════╝╚═╝  ╚═╝╚═════╝     ╚═════╝ 

%%*******************SIMULATION****************************

% load("PI_simulation.mat");
% 
% X = out.scope_datanew.time;
% 
% % count = 1;
% % while X(count) < 0 
% %     count = count + 1;
% % end
% 
% Y_1 = out.scope_datanew.signals(1).values;
% Y_2 = out.scope_datanew.signals(2).values;
% 
% figure('NumberTitle','off','Name','Bonus 1');
% grid on
% hold on;
% plot(X, Y_1, 'LineWidth', 1.4);
% plot(X, Y_2, 'LineWidth', 1.4);
% xlim([0, 3]);
% ylim([-0.5, 35]);
% xlabel("Time [s]");
% ylabel("$\mathrm{\omega\;[rpm]}$", 'interpreter', 'latex');
% 
% matlab2tikz('lab3_simulink_simulation.tex');

%%*******************EXERCISE 1****************************

load("meas_ex_1.mat");

X = data.time;
Y_1 = data.out{1,1}(1,:);
Y_2 = data.out{1,1}(2,:);

count = 1;
while Y_1(count) == 0 
    count = count + 1;
end

X = X(count-100:end) - X(count) + 1;
Y_1 = Y_1(count-100:end);
Y_2 = Y_2(count-100:end);

figure('NumberTitle','off','Name','Exercise 1');
grid on
hold on;
plot(X, Y_1, 'LineWidth', 1.4);
plot(X, Y_2, 'LineWidth', 1.4);
xlim([0, 10]);
xlabel("Time [s]");
ylabel("$\mathrm{\omega\;[rpm]}$", 'interpreter', 'latex');

% matlab2tikz('lab3_exercise1_meas.tex');



%%*******************EXERCISE 2****************************

% load("meas_ex_2.mat");
% 
% X = data.time;
% Y_1 = data.out{1,1}(1,:);
% Y_2 = data.out{1,1}(2,:);
% 
% count = 1;
% while Y_1(count) == 0 
%     count = count + 1;
% end
% 
% X = X(count-100:end) - X(count) + 1;
% Y_1 = Y_1(count-100:end);
% Y_2 = Y_2(count-100:end);
% 
% figure('NumberTitle','off','Name','Exercise 2');
% grid on
% hold on;
% plot(X, Y_1, 'LineWidth', 1.4);
% plot(X, Y_2, 'LineWidth', 1.4);
% xlim([0, 10]);
% xlabel("Time [s]");
% ylabel("$\mathrm{\omega\;[rpm]}$", 'interpreter', 'latex');
% 
% % matlab2tikz('lab3_exercise2_meas.tex');



