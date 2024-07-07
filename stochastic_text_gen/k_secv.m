function B = k_secv (A, k)
  B = {};                                     % Initializam outputul

  % Verificam daca sunt destule elemente pentru a forma o secventa
  if numel(A) >= k
    num_sub = numel(A) - k;                   % Calculam numarul de subsecvente

    % Mergem prin array primit si extragem fiecare suvbsecventa
    for i = 1 : num_sub
      subsec = A(i : i+k-1);                  % Extragem subsecventa de la poz i la i+k-1

      B{end + 1} = strjoin(subsec, ' ');      % Concatenam elementele
    end
  end
  
  B = B';
endfunction
