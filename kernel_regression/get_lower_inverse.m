function [P] = get_lower_inverse(L)
    % Obține dimensiunile matricei L
    [n, m] = size(L);
    % Inițializează P ca matricea identitate de dimensiune n
    P = eye(n);

    for j = 1:n
        % Inversează diagonală
        P(j, j) = 1 / L(j, j);

        for i = j + 1:n
            % Calculează elementele sub diagonale pentru coloana j
            for k = j:i-1
                P(i, j) = P(i, j) - L(i, k) * P(k, j);
            end
            P(i, j) = P(i, j) / L(i, i);
        end
    end

endfunction
