function [K] = build_kernel (X, f, f_param)
  % Determină dimensiunea matricei de intrare
  m = size(X, 1);
  % Inițializează matricea kernelului cu zerouri
  K = zeros(m, m);

  for i = 1 : m
    for j = 1 : m
      % Aplică funcția 'f' pentru fiecare pereche de rânduri
      K(i, j) = f(X(i, :), X(j, :), f_param);
    endfor
  endfor
endfunction
