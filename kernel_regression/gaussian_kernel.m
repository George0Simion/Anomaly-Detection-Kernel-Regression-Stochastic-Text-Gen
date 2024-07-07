function retval = gaussian_kernel (x, y, sigma)
  numarator = norm(x - y) ^ 2;              % Distanta euclidiana
  numitor = 2 * sigma ^ 2;
  expresie = numarator / numitor;
  retval = exp(-expresie);                  % Implementare formula
endfunction
