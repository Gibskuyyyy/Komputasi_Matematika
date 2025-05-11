function Tn = TugasPraktikum3_662022004_Trapesium(f, x, n, tampilkanGrafik)
% TRAPESIUM_MOD Versi modifikasi dari aturan trapesium untuk integral numerik
%
% Input:
%   f               = fungsi (function handle)
%   x               = [a b] interval
%   n               = jumlah subinterval
%   tampilkanGrafik = true/false (opsional, default = false)
%
% Output:
%   Tn = hasil aproksimasi integral

if nargin < 4, tampilkanGrafik = false; end

if length(x) ~= 2
    error('x harus berupa vektor [a b]');
end
if n <= 0 || mod(n,1) ~= 0
    error('n harus bilangan bulat positif');
end

a = x(1);
b = x(2);
h = (b - a)/n;

xvec = linspace(a, b, n+1);
yvec = f(xvec);

Tn = (h/2) * (yvec(1) + 2*sum(yvec(2:end-1)) + yvec(end));

fprintf('Metode Trapesium | Integral: %.8f\n', Tn);

% Plot visualisasi jika diminta
if tampilkanGrafik
    figure;
    hold on;
    for i = 1:n
        % Titik-titik untuk trapezoid
        x_trap = [xvec(i), xvec(i), xvec(i+1), xvec(i+1)];
        y_trap = [0, yvec(i), yvec(i+1), 0];
        fill(x_trap, y_trap, [0.7 0.4 0.9], 'EdgeColor', 'k');
    end
    fplot(f, [a b], 'r', 'LineWidth', 1.5);
    title('Visualisasi Metode Trapesium');
    xlabel('x'); ylabel('f(x)');
    grid on;
    hold off;
end
end