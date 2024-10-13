function probability = gaussian_distribution(X, mean_value, variance)
    % obtinem dimensiunile matricei X
	[m n] = size(X);

	% probabilities este un vector linie cu m coloane
	probabilities = zeros(1, m);
	
	% aplicam formula pentru probabilitatea de aparitie a unui element
	for i = 1:m
		probabilities(i) = exp((-1 / 2) * (X(i, 1:n) - mean_values)
							   * inv(variance) * (X(i, 1:n) - mean_values)');
	endfor
	probabilities = probabilities / (sqrt((2 * pi) ^ n) * sqrt(det(variance)));
endfunction