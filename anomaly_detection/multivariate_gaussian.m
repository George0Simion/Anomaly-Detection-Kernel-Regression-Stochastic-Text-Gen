function probabilities = multivariate_gaussian(X, mean_values, variances)
    n = size(X, 1);
    m = size(X, 2);
    numitor = (2 * pi) ^ (m / 2) * det(variances) ^ (1 / 2);
    probabilities = zeros(n, 1);

    for i = 1:n
        numarator = exp((-0.5) * (X(i,:) - mean_values) * inv(variances) * (X(i,:) - mean_values)');
        probabilities(i) = numarator / numitor;
    endfor

endfunction
