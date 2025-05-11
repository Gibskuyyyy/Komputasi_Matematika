% Skrip MATLAB dengan plot unik dan menarik (Kompatibel dengan MATLAB 2013)
close all; clc;

% plot – Gelombang Sinus Modifikasi
x = linspace(0, 10, 1000);
y = sin(x) .* exp(-0.1*x);
figure; plot(x, y, 'LineWidth', 2, 'Color', [0.2 0.4 0.6]);
title('plot – Sinus Modifikasi dengan Redaman'); grid on; drawnow;

% polar – Pola Bunga
theta = linspace(0, 2*pi, 1000);
r = abs(sin(5*theta));
figure; polar(theta, r);
title('polar – Pola Bunga'); drawnow;

% scatter – Pola Spiral Warna
theta = linspace(0, 4*pi, 200);
r = linspace(0.1, 1, 200);
x = r .* cos(theta);
y = r .* sin(theta);
c = theta;
figure; scatter(x, y, 30, c, 'filled');
title('scatter – Spiral Warna'); colorbar; drawnow;

% surf – Permukaan Bergelombang
[x, y] = meshgrid(-3:0.05:3, -3:0.05:3);
z = sin(3*(x.^2 + y.^2))./(x.^2 + y.^2 + 0.1);
figure; surf(x, y, z, 'EdgeColor', 'none');
colormap hot; lighting gouraud;
title('surf – Permukaan Bergelombang'); drawnow;

% mesh – Permukaan Gelombang Radial
[x, y] = meshgrid(-5:0.1:5, -5:0.1:5);
z = sin(sqrt(x.^2 + y.^2));
figure; mesh(x, y, z);
colormap winter;
title('mesh – Gelombang Radial'); drawnow;

% contour – Kontur Medan Potensial
[x, y] = meshgrid(-2:0.05:2, -2:0.05:2);
z = x.*exp(-x.^2 - y.^2);
figure; contour(x, y, z, 30);
title('contour – Medan Potensial'); drawnow;

% bar – Diagram Batang Abstrak
x = 1:12;
y = abs(sin(x) .* rand(1,12));
figure; bar(x, y, 'FaceColor', [0.4 0.7 0.2]);
title('bar – Batang Acak Artistik'); drawnow;

% scatter3 – Spiral Warna 3D
t = linspace(0, 4*pi, 200);
x = sin(t).*t;
y = cos(t).*t;
z = t;
figure; scatter3(x, y, z, 30, t, 'filled');
colormap jet;
title('scatter3 – Spiral Warna 3D'); drawnow;

% contourf – Kontur Penuh Gelombang
[x, y] = meshgrid(-2:0.05:2, -2:0.05:2);
z = sin(3*x).*cos(3*y);
figure; contourf(x, y, z, 20);
colormap hsv;
title('contourf – Kontur Gelombang Penuh'); colorbar; drawnow;

% compass – Vektor Spiral
theta = linspace(0, 2*pi, 20);
r = linspace(0.5, 1, 20);
figure; compass(r .* cos(theta), r .* sin(theta));
title('compass – Vektor Spiral'); drawnow;

% bar3 – Diagram Batang 3D Acak
Z = rand(6,6) * 15;
figure; bar3(Z);
colormap summer;
title('bar3 – Batang 3D Acak'); drawnow;

% pcolor – Efek Interferensi
[X, Y] = meshgrid(-3:0.05:3, -3:0.05:3);
Z = sin(X).*cos(Y);
figure; pcolor(X, Y, Z); shading interp;
colormap pink;
title('pcolor – Efek Interferensi'); drawnow;

% area – Area Gelombang Persegi
x = 0:0.1:10;
y = square(x);
figure; area(x, y, 'FaceColor', [0.6 0.2 0.8]);
title('area – Gelombang Persegi'); drawnow;

% qqplot – Distribusi vs Normal
data = randn(1000,1);
figure; qqplot(data);
title('qqplot – Distribusi Kuantil'); drawnow;

% normplot – Plot Normal
figure; normplot(data);
title('normplot – Distribusi Normal'); drawnow;

% hist – Histogram Bentuk Lonceng
figure; hist(data, 30);
title('hist – Histogram Normal'); drawnow;

% plotmatrix – Scatter Matrix Berwarna
if exist('plotmatrix', 'file')
    data = randn(100, 3);
    figure; plotmatrix(data);
    title('plotmatrix – Scatter Matrix'); drawnow;
end

% plot3 – Spiral Artistik
x = linspace(-2, 2, 1000);
y = x.^3;
z = sin(10*x);
figure; plot3(x, y, z, 'LineWidth', 2);
title('plot3 – Spiral Artistik'); grid on; drawnow;

% fill – Poligon Acak
x = [1 2 3 4 5 6 7];
y = sin(x) + rand(1,7);
figure; fill(x, y, [0.2 0.5 0.8]);
title('fill – Poligon Acak'); drawnow;

% stairs – Tangga Naik Turun
x = 0:0.5:10;
y = sawtooth(x);
figure; stairs(x, y);
title('stairs – Gelombang Gigi Gergaji'); drawnow;

% stem – Sinyal Sampel
x = 0:0.1:2*pi;
y = sin(5*x);
figure; stem(x, y, 'MarkerFaceColor', 'red');
title('stem – Sinyal Sampel'); drawnow;

% ezplot – Fungsi Unik
syms x;
figure; ezplot(x*sin(x), [-10 10]);
title('ezplot – x*sin(x)'); drawnow;

% feather – Vektor 2D
u = rand(1,20)*2 - 1;
v = rand(1,20)*2 - 1;
figure; feather(u,v);
title('feather – Vektor Acak 2D'); drawnow;

% quiver – Panah Gradien
[x, y] = meshgrid(-2:0.5:2, -2:0.5:2);
u = -y; v = x;
figure; quiver(x, y, u, v);
title('quiver – Medan Vektor Rotasi'); drawnow;