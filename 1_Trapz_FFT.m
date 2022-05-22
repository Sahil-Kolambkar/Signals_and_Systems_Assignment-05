%% https://github.com/Sahil-Kolambkar/Signals_and_Systems_Assignment-05

clc
clear all
close all
t = -2:0.001:2;
xct = (t>=-1)-(t>=1); %rectangular pulse
plot(t,xct);
figure;
w = -8*pi:0.01:8*pi;
for i =1:length(w)
    xcw(i) = trapz(t,xct.*exp(-1i*w(i).*t));
end
plot(w,abs(xcw));
grid on;
