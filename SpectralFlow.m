clear all;close all;clc;clf

ff=linspace(-pi,pi,51);

t1=0.10;    t2=0.50;        t3=0.9;

pp1=0.0;    pp2=(pi)/3.0;    pp3=(2*pi)/3.0;    pp4=pi/4;      pp5=pi/2;

E1=-2*((1.0-t1)*cos(ff+pp1)-t1*cos(2*ff+2*pp1));

subplot(3,3,1);plot(ff,E1, '.k','MarkerSize',8);

hold on ;

plot(ff,zeros(size(ff)),'linewidth', 1, 'color', 'black', 'marker', 'none');

ylabel('$\varepsilon$','interpreter','latex','Fontsize',16);

xlabel('$k$','interpreter','latex','Fontsize',16);

axis([-pi pi -2.0 2.0])

%legend({'Collected Data','y = cos(x)'},'FontSize',8,'FontWeight','bold')

%legend({'$\phi=0.0,t=0.10$'},'interpreter','latex','Fontsize',8);

title('$\phi=0.0,t=0.10$','interpreter','latex','Fontsize',12);

E2=-2*((1.0-t1)*cos(ff+pp2)-t1*cos(2*ff+2*pp2));

subplot(3,3,2);plot(ff,E2, '.r','MarkerSize',8);

hold on;

plot(ff,zeros(size(ff)),'linewidth', 1, 'color', 'black', 'marker', 'none');

ylabel('$\varepsilon$','interpreter','latex','Fontsize',16);

xlabel('$k$','interpreter','latex','Fontsize',16);

axis([-pi pi -2.0 2.0]);

title('$\phi=\pi/3.0,t=0.10$','interpreter','latex','Fontsize',12);

E3=-2*((1.0-t1)*cos(ff+pp3)-t1*cos(2*ff+2*pp3));

subplot(3,3,3);plot(ff,E3, '.','color',[0.4, 0.4, 0.4],'MarkerSize',8);

hold on;

plot(ff,zeros(size(ff)),'linewidth', 1, 'color', 'black', 'marker', 'none');

ylabel('$\varepsilon$','interpreter','latex','Fontsize',16);

xlabel('$k$','interpreter','latex','Fontsize',16);

axis([-pi pi -2.0 2.0]);


title('$\phi=2\pi/3.0,t=0.10$','interpreter','latex','Fontsize',12);

E4=-2*((1.0-t2)*cos(ff+pp1)-t2*cos(2*ff+2*pp1));

subplot(3,3,4);plot(ff,E4, '.k','MarkerSize',8);

hold on;

plot(ff,zeros(size(ff)),'linewidth', 1, 'color', 'black', 'marker', 'none');

ylabel('$\varepsilon$','interpreter','latex','Fontsize',16);

xlabel('$k$','interpreter','latex','Fontsize',16);

%plot(ff,zeros(size(ff)),'linewidth', 1, 'color', 'black', 'marker', 'none');

%hold on;

axis([-pi pi -2.0 2.0]);

title('$\phi=0.0,t=0.50$','interpreter','latex','Fontsize',12);

E5=-2*((1.0-t2)*cos(ff+pp2)-t2*cos(2*ff+2*pp2));

subplot(3,3,5);plot(ff,E5, '.r','MarkerSize',8);

hold on;

plot(ff,zeros(size(ff)),'linewidth', 1, 'color', 'black', 'marker', 'none');

ylabel('$\varepsilon$','interpreter','latex','Fontsize',16);

xlabel('$k$','interpreter','latex','Fontsize',16);

axis([-pi pi -2.0 2.0]);


title('$\phi=\pi/3.0,t=0.50$','interpreter','latex','Fontsize',12);

E6=-2*((1.0-t2)*cos(ff+pp3)-t2*cos(2*ff+2*pp3));

subplot(3,3,6);plot(ff,E6, '.','color',[0.4, 0.4, 0.4],'MarkerSize',8);

hold on;

plot(ff,zeros(size(ff)),'linewidth', 1, 'color', 'black', 'marker', 'none');

ylabel('$\varepsilon$','interpreter','latex','Fontsize',16);

xlabel('$k$','interpreter','latex','Fontsize',16);

axis([-pi pi -2.0 2.0]);

title('$\phi=2\pi/3.0,t=0.50$','interpreter','latex','Fontsize',12);

E7=-2*((1.0-t3)*cos(ff+pp1)-t3*cos(2*ff+2*pp1));


subplot(3,3,7);plot(ff,E7, '.k','MarkerSize',8);

hold on;

plot(ff,zeros(size(ff)),'linewidth', 1, 'color', 'black', 'marker', 'none');

ylabel('$\varepsilon$','interpreter','latex','Fontsize',16);

xlabel('$k$','interpreter','latex','Fontsize',16);

axis([-pi pi -2.0 2.0]);

title('$\phi=0.0,t=0.90$','interpreter','latex','Fontsize',12);


E8=-2*((1.0-t3)*cos(ff+pp2)-t3*cos(2*ff+2*pp2));

subplot(3,3,8);plot(ff,E8, '.r','MarkerSize',8);

hold on;

plot(ff,zeros(size(ff)),'linewidth', 1, 'color', 'black', 'marker', 'none');


ylabel('$\varepsilon$','interpreter','latex','Fontsize',16);

xlabel('$k$','interpreter','latex','Fontsize',16);

axis([-pi pi -2.0 2.0]);

title('$\phi=\pi/3,t=0.90$','interpreter','latex','Fontsize',12);

%grey=[0.4, 0.4, 0.4];

E9=-2*((1.0-t3)*cos(ff+pp3)-t3*cos(2*ff+2*pp3));

subplot(3,3,9);plot(ff,E9,'.','color',[0.4, 0.4, 0.4],'MarkerSize',8);

hold on;

plot(ff,zeros(size(ff)),'linewidth', 1, 'color', 'black', 'marker', 'none');

hold off;

ylabel('$\varepsilon$','interpreter','latex','Fontsize',16);

xlabel('$k$','interpreter','latex','Fontsize',16);

axis([-pi pi -2.0 2.0]);

title('$\phi=2\pi/3.0,t=0.90$','interpreter','latex','Fontsize',12);

print -depsc -painters SpectralFlow.eps;








