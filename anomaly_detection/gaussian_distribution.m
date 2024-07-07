function probability = gaussian_distribution(X, mean_value, variance)
    probability = (1 / sqrt(2*pi*variance)) * exp(- (X - mean_value).^2 / (2*variance));
endfunction