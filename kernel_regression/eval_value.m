function pred = eval_value(x, X, f, f_param, a)
   % Calculează numărul de rânduri în X
   n = size(X, 1);
   pred = 0;

   % Suma valorilor de kernel
   for i = 1 : n
      K = f(x, X(i, :), f_param);  % Calculează kernelul
      pred = pred + a(i) * K;      % Adună contribuția ponderată
   endfor

endfunction
