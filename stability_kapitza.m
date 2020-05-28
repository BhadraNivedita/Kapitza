clear all;close all;clc;
tic

%Code showing timeseries  for Kapitza pendulum 
g=.01;    deviation=0.0;


fileID=fopen('stability_amp_deviation.dat','w');

for w=5:5:40


for a=0.02:0.01:0.5
    
     deviation=0.01;


while 1 
    
%deviation=0.25;

Pendulum=@(t,x) [x(2);-g*sin(x(1))-a*w*w*cos(w*t)*sin(x(1))]; 
% Use ode45, 0<t<200, initial value (x,y)=(1,0).
%set tolerances
options = odeset('RelTol',1e-4,'AbsTol',1e-4);
[t,xx]=ode45(Pendulum,(0:(2/w)*pi:(2000/w)*pi),[pi+deviation,.1],options);
%[t,xx]=ode45(Pendulum,[0:1000],[pi+0.001,0.1],options);
pos=xx(:,1);
vel=xx(:,2);
pfinal=pos(800:end);
vfinal=vel(800:end);

avephi=mean(pfinal);

%figure(1);

%plot(pfinal);

eps=0.1;

diff=abs(pi-avephi);


if diff>eps
    
    status=1;
    
    fprintf(fileID,'%f\t%f\t%f\n',diff,deviation,a);
    
    break
    
    
      
end

deviation= deviation+0.01;
    
 diff;
 
 

end



end

 fprintf(fileID,'\n');

end

toc