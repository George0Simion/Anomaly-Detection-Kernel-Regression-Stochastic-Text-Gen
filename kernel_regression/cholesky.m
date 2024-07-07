function [L] = cholesky (A)
    % Obținen dimensiunile matricei A
    [m, n] = size(A);
    % Inițializeazăm matricea L ca matrice zero de dimensiuni m x n
    L = zeros(m, n);

    for i = 1:m
        for j = 1:i
            sum = A(i, j);
            % Scadem produsul scalar al elementelor anterioare pentru a actualiza sum
            if j > 1
                sum = sum - L(i, 1:j-1) * L(j, 1:j-1)';
            end
            % Calculam elementele sub diagonala principală
            if i > j
                L(i, j) = sum / L(j, j);
            else
                % Calculam elementele pe diagonala principală
                if sum > 0
                    L(i, j) = sqrt(sum);
                end
            end
        end
    end

endfunction
