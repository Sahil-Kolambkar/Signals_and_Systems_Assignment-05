clc
clear
close all

fs=1000;

t=-2:1/fs:2; %Time

x=cos(2*pi*100*t) + cos(2*pi*500*t); %Signal

plot(t,x)
xlabel('t');
ylabel('x(t)');
title('Time domain Signal')

N=length(x);
N1=2^nextpow2(N);
X=fft(x,N1);
X=X(1:N1/2);
X_mag=abs(X); 
X_phase=phase(X);
f=fs*(0:N1/2-1)/N1;
figure
plot(f,(X_mag/N1));
xlabel('Frequency (Hz)');
ylabel('Magnitude Spectrum');
title('Magnitude Spectrum vs f')

figure
plot(f,X_phase);
xlabel('Frequency (Hz)');
ylabel('Phase Spectrum');
title('Phase Spectrum vs f')
