% Matriks koefisien A dan vektor b
A = [10, -1, 2, 0;
     -1, 11, -1, 3;
     2, -1, 10, -1;
     0, 3, -1, 8];

b = [6; 25; -11; 15];

% Jacobi
[x_jacobi] = TugasPraktikum3_662022004_Jacobi(A, b);

% Gauss-Seidel
[x_gausseidel] = TugasPraktikum3_662022004_Gauseidel(A, b);

%jacobi
disp('Hasil Jacobi = ')
disp(x_jacobi)

%gauss-seidel
disp('Hasil Gauss-Seidel = ')
disp(x_gausseidel)

% MAIN.M
% Perbandingan metode Trapesium dan Riemann untuk integral fungsi 2x^3 dari 0 ke 1

clc; clear;

% Fungsi yang akan diintegralkan
f = @(x) 2*x.^3;

% Batas integrasi dan jumlah subinterval
x = 0;
y = 1;
n = 1000;

% Nilai eksak integral dari 2x^3 dari 0 ke 1 adalah 0.5
nilai_eksak = 0.5;

% -----------------------------
% Metode Trapesium
% -----------------------------
hasil_trapesium = TugasPraktikum3_662022004_Trapesium(f, [x y], n);
disp(['Hasil integral dengan metode Trapesium: ', num2str(hasil_trapesium)]);
disp(['Error metode Trapesium: ', num2str(abs(nilai_eksak - hasil_trapesium))]);
disp(' ');

% -----------------------------
% Metode Riemann Kiri
% -----------------------------
hasil_kiri = TugasPraktikum3_662022004_Riemann(f, x, y, n, 'kiri');
disp(['Error metode Riemann kiri: ', num2str(abs(nilai_eksak - hasil_kiri))]);
disp(' ');

% -----------------------------
% Metode Riemann Kanan
% -----------------------------
hasil_kanan = TugasPraktikum3_662022004_Riemann(f, x, y, n, 'kanan');
disp(['Error metode Riemann kanan: ', num2str(abs(nilai_eksak - hasil_kanan))]);
disp(' ');

% -----------------------------
% Metode Riemann Tengah
% -----------------------------
hasil_tengah = TugasPraktikum3_662022004_Riemann(f, x, y, n, 'tengah');
disp(['Error metode Riemann tengah: ', num2str(abs(nilai_eksak - hasil_tengah))]);
