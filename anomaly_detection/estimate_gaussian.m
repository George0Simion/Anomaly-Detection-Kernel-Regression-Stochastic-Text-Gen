function [mean_values, variances] = estimate_gaussian(X)
    [n, m] = size(X);  % Obține dimensiunile datelor
    mean_values = zeros(1, m);  % Inițializează vectorul mediei
    
    % Calculează media pentru fiecare caracteristică
    for i = 1:m
        sum = 0;
        for k = 1:n
            sum = sum + X(k, i);
        endfor
        mean_values(i) = sum / n;
    endfor
    
    variances = zeros(m, m);  % Inițializează matricea varianțelor
    
    % Calculează varianța pentru fiecare caracteristică
    for i = 1:n
        dif = X(i, 1:m) - mean_values;
        prod = dif' * dif;
        variances = variances + prod;
    endfor

    variances = variances / n;
endfunction
