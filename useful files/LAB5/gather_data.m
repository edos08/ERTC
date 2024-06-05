clc
clear all
close all
instrreset

% disp("List of ports: ")
% disp(serialportlist);
% 
% prompt = "Which COM port is it needed? ";
% port = input(prompt, "s");
% if isempty(port)
%     port = 'COM1';
% end
% 
% data = serial_datalog(port, {'2*single', '1*single', '2*single', '1*single', '1*single'}, 'baudrate', 115200);

data = udp_datalog('147.162.118.158', 9090, {'2*single', '1*single', '2*single', '1*single', '1*single'}, 'Buffersize', 100000);

save('lab_data');