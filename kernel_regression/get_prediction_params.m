function [a] = get_prediction_params (K, y, lambda)
  n = size(K, 1);
  I = eye(n);
  K_reg = K + lambda * I;
  L = cholesky(K_reg);         % Folosește descompunerea Cholesky pe matrice
  b = L \ y;
  a = L' \ b;
endfunction
