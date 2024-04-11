clc
clear all
close all
instrreset

disp("List of ports: ")
disp(serialportlist);

prompt = "Which COM port is it needed?";
port = input(prompt, "s");
if isempty(port)
    port = 'COM1';
end

data = serial_datalog(port, {'3*single','3*single', '2*single'}, 'baudrate', 115200);

save('LabData');