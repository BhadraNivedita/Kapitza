% code to show basin stability for different values of driving frequency

clc;clear all;close all;
fileID=fopen('basinstability.dat','w');

data1=load('basinstability_w5.dat');
data1=data1(:,3);
data2=load('basinstability_w6.dat');
data2=data2(:,2);
data3=load('basinstability_w7.dat');
data3=data3(:,2);
data4=load('basinstability_w8.dat');
data4=data4(:,2);
data5=load('basinstability_w9.dat');
data5=data5(:,2);
data6=load('basinstability_w10.dat');
data6=data6(1:9,2);

w=[5 6 7 8 9 10];
rect = [0.35, 0.2, .25, .25];

amp=[.1 .15 .2 .25 .3 .35 .4 .45 .5]';




figure()

plot(amp,smooth(data1),'-or','Linewidth',2,'DisplayName','w = 5')
hold on 
plot(amp,smooth(data2),'-ob','Linewidth',2,'DisplayName','w = 6')
hold on 
plot(amp,smooth(data3),'-ok','Linewidth',2,'DisplayName','w = 7')
hold on 
plot(amp,smooth(data4),'-og','Linewidth',2,'DisplayName','w = 8')
hold on 
plot(amp,smooth(data5),'-oc','Linewidth',2,'DisplayName','w = 9')
hold on 
plot(amp,smooth(data6),'-om','Linewidth',2,'DisplayName','w = 10')

ylabel('basin stability','Fontsize',18);
xlabel('amplitude','Fontsize',20);

legend('show','Location',rect)
hold off

print -depsc -painters basinstability.eps
