function X = TugasPraktikum3_662022004_Jacobi(A, b, X0, N, tol)
% Menyelesaikan SPL AX = b dengan metode Jacobi

if nargin < 5, tol = 1e-6; end
if nargin < 4, N = 1000; end
if nargin < 3, X0 = zeros(length(b),1); end

n = size(A,1);
X = X0;
k = 1; norma = 1;

while k <= N && norma > tol
    Xnew = X;  % Simpan hasil baru di Xnew untuk menjaga nilai lama tetap
    for i = 1:n
        sum = b(i);
        for j = 1:n
            if j ~= i
                sum = sum - A(i,j) * X(j); % tetap pakai nilai lama
            end
        end
        Xnew(i) = sum / A(i,i);
    end
    norma = max(abs(Xnew - X));
    X = Xnew;
    k = k + 1;
end
end
