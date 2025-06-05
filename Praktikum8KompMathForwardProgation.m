function output = Praktikum8KompMathForwardProgation(X)
    % Fungsi aktivasi
    sigmoid = @(z) 1./ (1 + exp(-z));

    % Input X harus vektor kolom 2x1
    % contoh: X = [0.5; 0.2];

    % Inisialisasi bobot dan bias
    W1 = [0.1, 0.3;
          0.4, 0.2];  % ukuran 2x2
    b1 = [0.1;
          0.1];       % ukuran 2x1

    W2 = [0.6, 0.7];  % ukuran 1x2
    b2 = 0.2;         % skalar

    % Forward Propagation
    Z1 = W1 * X + b1;
    A1 = relu(Z1);        % ReLU perlu didefinisikan
    Z2 = W2 * A1 + b2;
    A2 = sigmoid(Z2);

    % Output akhir
    output = A2;
end

% Definisi fungsi ReLU
function y = relu(x)
    y = max(0, x);
end
