%latihan membuat grafik
clc
clear

%masukkan nilai
% x = [-10:1:10]
% y = x.^2;
% 
% %plot
% plot(x,y)
% 
% %melabeli
% xlabel('x')
% ylabel('x.^2')
% title('Plot dari Fungsi  y')
% 
% %mengganti garis pada plot
% plot(x,y,'r--')
% 
% %menggabungkan 2 grafik
% a = linspace(0,2*pi);
% b = sin(x);
% plot(x,y)
% 
% hold on
% 
% b2 = cos(x);
% plot(a,b2,':')
% legend('sin','cos')
% 
% hold off

% %Equel Maxima
% x = [0:0.001:1]
% y = (sin(5*pi*x)).^6
% 
% plot(x,y,'diamond')

% %Decreasing
% x = [0:0.001:1]
% y = exp(-2*log(2)*((x-0.1)/0.8).^2).*(sin(5*pi*x)).^6;
% plot(x,y,'g')

% %second Minima
% x = -4:0.1:4;
% y = -4:0.1:4;
% [X,Y] = meshgrid(x,y);
% f = (0.5*(X.^4-16*X.^2+5*X)+0.5*(Y.^4-16*Y.^2+5*Y));
% figure(1)
% plot3(X,Y,f)
% figure(2)
% contour(X,Y,f)
% figure(3)
% contour3(X,Y,f)
% figure(4)
% surf(X,Y,f)
% figure(5)
% surfc(X,Y,f)
% figure(6)
% mesh(X,Y,f)
% figure(7)
% meshc(X,Y,f)

%six ham
x = -1.9:0.1:1.9;
y = -1.1:0.1:1.1;
[X,Y] = meshgrid(x,y);
f = (4-2.1*X.^2+X.^4/3).*X.^2+X.*Y+4*(-1+Y.^2).*Y.^2;
figure(1)
plot3(X,Y,f)
figure(2)
contour(X,Y,f)
figure(3)
contour3(X,Y,f)
figure(4)
surf(X,Y,f)
figure(5)
surfc(X,Y,f)
figure(6)
mesh(X,Y,f)
figure(7)
meshc(X,Y,f)