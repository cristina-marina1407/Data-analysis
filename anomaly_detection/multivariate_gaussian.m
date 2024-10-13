function probabilities = multivariate_gaussian(X, mean_values, variances)
    % obtinem dimensiunile matricei X
    [m n] = size(X);

    % probabilities este un vector coloana cu m linii
    probabilities = zeros(m, 1);

    % aplicam formula pentru probabilitatea de aparitie a unui element specificata in enunt
    for i = 1:m
        probabilities(i) = exp((-1 / 2) * (X(i, 1:n) - mean_values) 
                               * inv(variances) * (X(i, 1:n) - mean_values)');
    endfor
    probabilities = probabilities / (sqrt((2 * pi) ^ n) * sqrt(det(variances)));
endfunction
