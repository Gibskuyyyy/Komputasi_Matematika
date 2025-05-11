function integral = TugasPraktikum3_662022004_Riemann(f, a, b, n, metode, tampilkanGrafik)
% RIEMANN_MOD Menghitung integral numerik menggunakan metode Riemann yang dimodifikasi
%
% Input:
%   f              = function handle dari fungsi yang ingin diintegralkan
%   a, b           = batas bawah dan atas integrasi
%   n              = jumlah subinterval
%   metode         = 'kiri', 'kanan', atau 'tengah'
%   tampilkanGrafik = true/false, untuk menampilkan grafik hasil partisi
%
% Output:
%   integral = hasil aproksimasi integral

% Validasi
if nargin < 6, tampilkanGrafik = false; end
if n <= 0 || mod(n,1) ~= 0
    error('n harus bilangan bulat positif');
end
if ~ismember(metode, {'kiri', 'kanan', 'tengah'})
    error('Metode harus ''kiri'', ''kanan'', atau ''tengah''');
end

% Hitung partisi dan titik sampel
h = (b - a)/n;
x = linspace(a, b, n+1);

switch metode
    case 'kiri'
        titik = x(1:end-1);
    case 'kanan'
        titik = x(2:end);
    case 'tengah'
        titik = (x(1:end-1) + x(2:end)) / 2;
end

nilai_f = f(titik);
integral = h * sum(nilai_f);

fprintf('Metode Riemann %s | Integral: %.8f\n', metode, integral);

% Plot visualisasi jika diminta
if tampilkanGrafik
    figure;
    hold on;
    for i = 1:n
        % Untuk grafik batang persegi panjang
        xi = x(i);
        if strcmp(metode, 'kiri')
            xi_eval = xi;
        elseif strcmp(metode, 'kanan')
            xi_eval = x(i+1);
        else
            xi_eval = (x(i) + x(i+1))/2;
        end
        yi = f(xi_eval);
        rectangle('Position', [x(i), 0, h, yi], 'FaceColor', [0.2, 0.6, 0.8], 'EdgeColor', 'k');
    end
    fplot(f, [a b], 'r', 'LineWidth', 1.5);
    title(['Visualisasi Metode Riemann - ', metode]);
    xlabel('x'); ylabel('f(x)');
    grid on;
    hold off;
end
end
