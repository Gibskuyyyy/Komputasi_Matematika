function X = TugasPraktikum3_662022004_Gauseidel(A, b, X0, N, tol)
%GAUSEIDEL Menyelesaikan SPL AX = b menggunakan iterasi Gauss-Seidel.
%
% Input:
%   A   = matriks koefisien dari sistem
%   b   = vektor kolom untuk nilai konstanta dari sistem
%   X0  = penyelesaian awal (opsional, default: vektor nol)
%   N   = maksimum iterasi (opsional, default: 1000)
%   tol = toleransi keakuratan (opsional, default: 1e-6)
%
% Output:
%   X   = penyelesaian sistem

if nargin < 5, tol = 1e-6; end
if nargin < 4, N = 1000; end
if nargin < 3, X0 = zeros(length(b), 1); end

n = size(A, 1);
X = X0;
k = 1;
norma = 1;

while k <= N && norma > tol
    X_lama = X; % Simpan nilai X sebelumnya untuk perhitungan norma

    % Iterasi Gauss-Seidel
    for i = 1:n
        % Hitung jumlah untuk elemen-elemen yang bukan diagonal
        jumlah = A(i, 1:i-1) * X(1:i-1) + A(i, i+1:n) * X_lama(i+1:n);
        % Update nilai X(i)
        X(i) = (b(i) - jumlah) / A(i, i);
    end

    % Hitung norma (perubahan maksimum antar iterasi)
    norma = max(abs(X - X_lama));
    k = k + 1;
end

end