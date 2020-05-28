clear all;close all;clc;

Timeseries=load ('Timeseries_above_threshold.dat');

x=Timeseries(1:9999,3);

tt=Timeseries(1:9999,1);

T=tt(2)-tt(1);

Fs=1/T;       % sampling rate

L=10^6;

%t=(0:10^5-1)*T;% sampling instants

NFFT = 2^nextpow2(L);

f1 = 2*pi*Fs/2*linspace(0,1,NFFT/2+1);

f11=f1(find(f1<100));

fX=fft(x-mean(x),NFFT)/L;        %Complex Amplitudes

fX=abs(fX);

f=figure(1);

%Autocorrelation

%auto=autocorr(x,500);

%subplot(2,2,3),plot(auto,'linewidth', 1, 'color', 'blue', 'marker','none');

%ylabel('Autocorrelation','Fontsize',14),grid on;

%xlabel('Time','Fontsize',14);

%title('Autocorrelation','Fontsize',14);

%Fourier Spectrum

%subplot(2,2,4),
plot(f11,(fX(1:length(f11))),'Linewidth',2)

ylabel('F(\omega)','Fontsize',14),grid on;

xlabel('\omega','Fontsize',14);

%title('Fourier Spectrum','Fontsize',14);

%Timeseries
%xx=Timeseries(:,2);

%Theta=abs(mod(xx,2*pi));

%Thetadot=Timeseries(:,3);

%tt=Timeseries(:,1);

%f=figure(1);

%Time series for theta

%subplot(2,2,1),plot(tt,Theta,'linewidth', 2, 'color', 'blue', 'marker', 'none'); 

%ylabel('\theta','Fontsize',20),grid on;

%xlabel('t','Fontsize',20);

%title('TimeSeries(\theta)','Fontsize',14);

%Timeseries for thetadot

%subplot(2,2,2),plot(tt,Thetadot,'linewidth', 1, 'color', 'blue', 'marker','none');

%ylabel('thetadot','Fontsize',14),grid on;

%xlabel('Time','Fontsize',14);

%title('Timeseries(thetadot)','Fontsize',14);

saveas(f,'Kapitza-above-fourier.png');grid on;clear all;
