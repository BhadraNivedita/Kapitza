clear all;close all;clc;

%Code showing timeseries  for Kapitza pendulum 
g=.01;a=0.05;w=5;
Pendulum=@(t,x) [x(2);-g*sin(x(1))-a*w*w*cos(w*t)*sin(x(1))]; 
% Use ode45, 0<t<200, initial value (x,y)=(1,0).
%set tolerances
options = odeset('RelTol',1e-4,'AbsTol',1e-4);
[t,xx]=ode45(Pendulum,(0:(2/w)*pi:(4000/w)*pi),[pi+0.001,0.1],options);
%[t,xx]=ode45(Pendulum,[0:1000],[pi+0.001,0.1],options);
pos=xx(:,1);
vel=xx(:,2);
pfinal=pos(800:end);
vfinal=vel(800:end);

figure(1)
plot(pfinal,'Linewidth',2)
% Plot the trajectory.
fsize=25;
axis tight
axis([0 1200 2 4.5])
xlabel('time','Interpreter','LaTex','FontSize',fsize)
ylabel('$\phi$','Interpreter','LaTex','FontSize',fsize)
print -depsc -painters  Kapitza_pos_TS.eps
 hold on 
 
figure(2)
plot(vfinal,'Linewidth',2)
% Plot the trajectory.
fsize=25;
%axis tight
axis([0 1200 -0.2 0.2])
xlabel('time','Interpreter','LaTex','FontSize',fsize)
ylabel('$\dot{\phi}$','Interpreter','LaTex','FontSize',fsize)
print -depsc -painters  Kapitza_vel_TS.eps

figure(3)
plot(xx(:,2),xx(:,1))
% Plot the trajectory.
fsize=25;
%axis([-pi pi -pi pi])
axis tight
ylabel('$\phi$','Interpreter','LaTex','FontSize',fsize)
xlabel('$\dot{\phi}$','Interpreter','LaTex','FontSize',fsize)
print -depsc -painters  Kapitza_phaseplot.eps

