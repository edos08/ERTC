clc
clear all
close all

mu = 33.922;
a = 0.217;
tau = 0.02;

ts_5 = 0.19;    % [s]
M_p = 0.1;      % 30%
alpha = 4;

delta = (log(1/M_p))/(sqrt(pi^2+log(1/M_p)*log(1/M_p)));
phi_m = atan((2*delta)/(sqrt(sqrt(1+4*(delta ^4)) - 2*(delta ^2))));
w_gc = 3/(delta*ts_5);

s = tf('s');

sysP = mu/(1 + a*s)*exp(-tau*s)

z = freqresp(sysP, w_gc);

mag = abs(z);
phi = angle(z);

d_k = 1/(abs(mag));
d_phi = -pi + phi_m - phi;

[kp, ki] = calculatePi(w_gc, d_k, d_phi)

function [kp,ki] = calculatePi(wgc,d_k,d_phi)
    kp= d_k * cos(d_phi);
    ki=(-wgc) * d_k * sin(d_phi);
end