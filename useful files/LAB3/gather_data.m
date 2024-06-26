clc
clear all
close all

disp("List of ports: ")
disp(serialportlist);

prompt = "Which COM port is it needed? ";
port = input(prompt, "s");
if isempty(port)
    port = 'COM1';
end

data = serial_datalog(port, {'2*single', '1*single', '2*single', '1*single'}, 'baudrate', 115200, 'Buffersize', 100000);

save('lab_data');