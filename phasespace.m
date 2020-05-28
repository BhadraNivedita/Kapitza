data=load('Strobo-above.dat');
%data1=load('Strobo-below1.dat');
x=mod(data(:,2),2*pi);
y=data(:,3);

%xx=mod(data1(:,2),2*pi);
%yy=data1(:,3);
f1=figure(1);
plot(x,y,'.k','linewidth',2);
axis([0 2*pi -2*pi 2*pi])
%hold on ;
%plot (xx,yy,'.');
xlabel('$\phi_1$','interpreter','latex','Fontsize',40);
ylabel('$\phi_2$','interpreter','latex','Fontsize',40);
title('(c)','interpreter','latex','Fontsize',15);
%axis tight;

saveas(f1,'phasespace-above.jpg');
%print -depsc -painters   phasespace-above.eps


