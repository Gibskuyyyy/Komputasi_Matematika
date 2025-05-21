close all; clc;

% 1. plot – Gelombang Sinus Modifikasi
x = linspace(0, 10, 1000);
y = sin(x) .* exp(-0.1*x);
figure; plot(x, y, 'LineWidth', 2, 'Color', [0.2 0.4 0.6]);
title('plot – Sinus Modifikasi dengan Redaman'); grid on; drawnow;

% 2. polar – Pola Bunga
theta = linspace(0, 2*pi, 1000);
r = abs(sin(5*theta));
figure; polar(theta, r);
title('polar – Pola Bunga'); drawnow;

% 3. scatter – Pola Spiral Warna
theta = linspace(0, 4*pi, 200);
r = linspace(0.1, 1, 200);
x = r .* cos(theta);
y = r .* sin(theta);
c = theta;
figure; scatter(x, y, 30, c, 'filled');
title('scatter – Spiral Warna'); colorbar; drawnow;

% 4. surf – Permukaan Bergelombang
[x, y] = meshgrid(-3:0.05:3, -3:0.05:3);
z = sin(3*(x.^2 + y.^2))./(x.^2 + y.^2 + 0.1);
figure; surf(x, y, z, 'EdgeColor', 'none');
colormap hot; lighting gouraud;
title('surf – Permukaan Bergelombang'); drawnow;

% 5. mesh – Permukaan Gelombang Radial
[x, y] = meshgrid(-5:0.1:5, -5:0.1:5);
z = sin(sqrt(x.^2 + y.^2));
figure; mesh(x, y, z);
colormap winter;
title('mesh – Gelombang Radial'); drawnow;

% 6. contour – Kontur Medan Potensial
[x, y] = meshgrid(-2:0.05:2, -2:0.05:2);
z = x.*exp(-x.^2 - y.^2);
figure; contour(x, y, z, 30);
title('contour – Medan Potensial'); drawnow;

% 7. bar – Diagram Batang Abstrak
x = 1:12;
y = abs(sin(x) .* rand(1,12));
figure; bar(x, y, 'FaceColor', [0.4 0.7 0.2]);
title('bar – Batang Acak Artistik'); drawnow;

% 8. scatter3 – Spiral Warna 3D
t = linspace(0, 4*pi, 200);
x = sin(t).*t;
y = cos(t).*t;
z = t;
figure; scatter3(x, y, z, 30, t, 'filled');
colormap jet;
title('scatter3 – Spiral Warna 3D'); drawnow;

% 9. contourf – Kontur Penuh Gelombang
[x, y] = meshgrid(-2:0.05:2, -2:0.05:2);
z = sin(3*x).*cos(3*y);
figure; contourf(x, y, z, 20);
colormap hsv;
title('contourf – Kontur Gelombang Penuh'); colorbar; drawnow;

% 10. compass – Vektor Spiral
theta = linspace(0, 2*pi, 20);
r = linspace(0.5, 1, 20);
figure; compass(r .* cos(theta), r .* sin(theta));
title('compass – Vektor Spiral'); drawnow;

% 11. bar3 – Diagram Batang 3D Acak
Z = rand(6,6) * 15;
figure; bar3(Z);
colormap summer;
title('bar3 – Batang 3D Acak'); drawnow;

% 12. pcolor – Efek Interferensi
[X, Y] = meshgrid(-3:0.05:3, -3:0.05:3);
Z = sin(X).*cos(Y);
figure; pcolor(X, Y, Z); shading interp;
colormap pink;
title('pcolor – Efek Interferensi'); drawnow;

% 13. area – Area Gelombang Persegi
x = 0:0.1:10;
y = square(x);
figure; area(x, y, 'FaceColor', [0.6 0.2 0.8]);
title('area – Gelombang Persegi'); drawnow;

% 14. qqplot – Distribusi vs Normal
data = randn(1000,1);
figure; qqplot(data);
title('qqplot – Distribusi Kuantil'); drawnow;

% 15. normplot – Plot Normal
figure; normplot(data);
title('normplot – Distribusi Normal'); drawnow;

% 16. hist – Histogram Bentuk Lonceng
figure; hist(data, 30);
title('hist – Histogram Normal'); drawnow;

% 17. plotmatrix – Scatter Matrix Berwarna
if exist('plotmatrix', 'file')
    data = randn(100, 3);
    figure; plotmatrix(data);
    title('plotmatrix – Scatter Matrix'); drawnow;
end

% 18. plot3 – Spiral Artistik
x = linspace(-2, 2, 1000);
y = x.^3;
z = sin(10*x);
figure; plot3(x, y, z, 'LineWidth', 2);
title('plot3 – Spiral Artistik'); grid on; drawnow;

% 19. fill – Poligon Acak
x = [1 2 3 4 5 6 7];
y = sin(x) + rand(1,7);
figure; fill(x, y, [0.2 0.5 0.8]);
title('fill – Poligon Acak'); drawnow;

% 20. stairs – Tangga Naik Turun
x = 0:0.5:10;
y = sawtooth(x);
figure; stairs(x, y);
title('stairs – Gelombang Gigi Gergaji'); drawnow;

% 21. stem – Sinyal Sampel
x = 0:0.1:2*pi;
y = sin(5*x);
figure; stem(x, y, 'MarkerFaceColor', 'red');
title('stem – Sinyal Sampel'); drawnow;

% 22. ezplot – Fungsi Unik
syms x;
figure; ezplot(x*sin(x), [-10 10]);
title('ezplot – x*sin(x)'); drawnow;

% 23. feather – Vektor 2D
u = rand(1,20)*2 - 1;
v = rand(1,20)*2 - 1;
figure; feather(u,v);
title('feather – Vektor Acak 2D'); drawnow;

% 24. quiver – Panah Gradien
[x, y] = meshgrid(-2:0.5:2, -2:0.5:2);
u = -y; v = x;
figure; quiver(x, y, u, v);
title('quiver – Medan Vektor Rotasi'); drawnow;

% 25. Spiral 3D Artistik
figure;
t = linspace(0, 8*pi, 1000);
x = sin(t).*(exp(0.1*t));
y = cos(t).*(exp(0.1*t));
z = t;
plot3(x, y, z, 'LineWidth', 2);
title('Spiral 3D Artistik'); grid on; axis equal; drawnow;

% 26. Gambar Sayap Burung - Simulasi Simetris
figure;
t = linspace(0, pi, 100);
x = [cos(t), -cos(t)];
y = [sin(t).*cos(4*t), sin(t).*cos(4*t)];
fill(x, y, [0.3 0.6 0.9]);
title('Sayap Burung Simetris'); axis equal; drawnow;

% 27. Permukaan Harimau Abstrak (Ilusi Gelombang)
figure;
[x, y] = meshgrid(-3:0.05:3, -3:0.05:3);
z = sin(3*(x.^2 + y.^2)) .* cos(3*sqrt(x.^2 + y.^2));
surf(x, y, z, 'EdgeColor', 'none');
colormap(jet); title('Gelombang Harimau Abstrak'); drawnow;

% 28. Poligon Kepala Naga
figure;
angles = linspace(0, 2*pi, 7);
r = 1 + 0.3*sin(5*angles);
x = r .* cos(angles);
y = r .* sin(angles);
fill(x, y, [1 0.4 0]);
title('Poligon Kepala Naga'); axis equal; drawnow;

% 29. Plot Kupu-Kupu (Butterfly Curve)
figure;
t = linspace(0, 12*pi, 10000);
x = sin(t) .* (exp(cos(t)) - 2*cos(4*t) - sin(t/12).^5);
y = cos(t) .* (exp(cos(t)) - 2*cos(4*t) - sin(t/12).^5);
plot(x, y, 'm'); axis equal; title('Butterfly Curve'); drawnow;

% 30. Blogspot (Polkadot Blog Style)
figure;
[x, y] = meshgrid(-5:0.5:5, -5:0.5:5);
z = sin(x.^2 + y.^2);
scatter(x(:), y(:), 100, z(:), 'filled');
title('Blogspot Style – Polkadot Plot'); axis equal; drawnow;

% 31. Daun Spiral Fraktal (2D)
figure;
t = linspace(0, 10*pi, 3000);
r = exp(0.05*t);
x = r .* cos(t);
y = r .* sin(t);
plot(x, y, 'g'); axis equal; title('Daun Spiral Fraktal'); drawnow;

% 32. Matahari Terbit
figure;
x = linspace(-3, 3, 1000);
y = sqrt(9 - x.^2);
fill([-3 x 3], [0 y 0], [1 0.5 0]);
hold on; fill([-3 3 3 -3], [0 0 -1 -1], [0.2 0.4 1]);
title('Matahari Terbit'); axis equal; drawnow;

% 33. Spiral Mawar 3D
figure;
t = linspace(0, 8*pi, 2000);
r = cos(5*t);
x = r .* cos(t);
y = r .* sin(t);
z = t/10;
plot3(x, y, z, 'r'); title('Spiral Mawar 3D'); axis equal; drawnow;

% 34. Bunga Polar
figure;
theta = linspace(0, 2*pi, 1000);
r = sin(7*theta);
polar(theta, r);
title('Bunga Polar'); drawnow;

% 35. Tangga Naik Pola Aneh
figure;
x = 0:0.1:10;
y = sawtooth(2*pi*0.5*x);
stairs(x, y);
title('Tangga Naik Aneh'); drawnow;

% 36. Fill Bulat Warna-warni
figure;
theta = linspace(0, 2*pi, 100);
colors = jet(5);
for k = 1:5
    r = k*0.5;
    x = r*cos(theta);
    y = r*sin(theta);
    fill(x, y, colors(k,:));
    hold on;
end
title('Fill Bulat Warna-warni'); axis equal; drawnow;

% 37. Permukaan Vulkanik Eksotis
figure;
[x, y] = meshgrid(-4:0.1:4, -4:0.1:4);
z = exp(-x.^2 - y.^2) .* cos(10*(x.^2 + y.^2));
surf(x, y, z, 'EdgeColor', 'none');
colormap(hot); title('Permukaan Vulkanik Eksotis'); drawnow;

% 38. Wave Interference
figure;
[x, y] = meshgrid(-5:0.1:5, -5:0.1:5);
z = sin(x).*cos(y) + sin(2*x).*cos(2*y);
contourf(x, y, z, 50); colormap(jet); colorbar;
title('Gelombang Interferensi'); drawnow;

% 39. Kurva Bentuk Lumba-Lumba (Abstrak)
figure;
t = linspace(0, 4*pi, 1000);
x = t .* sin(t);
y = t .* cos(t);
plot(x, y); title('Lumba-Lumba Abstrak'); drawnow;

% 40. Kabut Gaussian
figure;
x = linspace(-5,5,100);
y = exp(-x.^2);
area(x,y,'FaceColor',[0.6 0.7 0.8]);
title('Kabut Gaussian'); drawnow;

% 41. Grid Alien Matrix
figure;
data = rand(20);
imagesc(data); colormap(gray);
title('Alien Grid – Matrix Map'); colorbar; drawnow;

% 42. Gelombang Polar Rotasi (2D) - KOMPATIBEL
figure('Name','1. Gelombang Polar Rotasi (Compat)');
theta = linspace(0, 2*pi, 1000);
r = abs(sin(5*theta) .* cos(3*theta));
x = r .* cos(theta);
y = r .* sin(theta);
plot(x, y, 'LineWidth', 1.5);
axis equal off;
set(gca, 'Color', 'k');


% 43. Spiral + Noise (2D)
figure('Name','2. Spiral + Noise');
t = linspace(0, 10*pi, 1000);
r = linspace(0, 1, 1000);
x = r .* cos(t) + 0.1*randn(1,1000);
y = r .* sin(t) + 0.1*randn(1,1000);
scatter(x, y, 5, t, 'filled'); axis equal off;

% 44. Grid Modular Interaktif (2D Vector Field)
figure('Name','3. Grid Modular Interaktif');
[x, y] = meshgrid(-5:0.5:5, -5:0.5:5);
z = sin(x.^2 + y.^2);
quiver(x, y, cos(z), sin(z), 0.5); axis equal off;

% 45. Pita Heliks (3D)
figure('Name','7. Pita Heliks 3D');
t = linspace(0, 6*pi, 1000);
x = cos(t); y = sin(t); z = linspace(-2,2,1000);
plot3(x, y, z, 'LineWidth', 2); axis off;

% 46. Grid Vektor 3D
figure('Name','8. Grid Vektor 3D');
[x,y,z] = meshgrid(-2:1:2, -2:1:2, -2:1:2);
u = sin(x.*y); v = cos(y.*z); w = sin(z.*x);
quiver3(x,y,z,u,v,w); axis off;

% 47. Kubus Berlapis Transparan (3D)
figure('Name','9. Kubus Transparan');
hold on;
for i = 1:5
    [X,Y,Z] = meshgrid([-1 1]*i);
    fill3(X(:),Y(:),Z(:), rand(1,3), 'FaceAlpha', 0.2);
end
axis equal off;
