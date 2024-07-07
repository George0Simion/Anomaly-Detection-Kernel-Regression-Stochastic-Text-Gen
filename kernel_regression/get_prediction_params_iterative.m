function [a] = get_prediction_params_iterative (K, y, lambda)
  n = size(K, 1);
  I = eye(n);
  A = K + lambda * I;
  x0 = zeros(n, 1);          % Inițializează parametrii pentru metoda gradientului conjugat
  tol = 1e-5;
  max_iter = 1000;

  a = conjugate_gradient(A, y, x0, tol, max_iter)
endfunction
