function [mean_values variances] = estimate_gaussian(X)
	% obtinem dimensiunile matricei X
	[m n] = size(X);
	% initializam mean_values (vectorul de medie) cu dimensiunea unei linii din X
	mean_values = zeros(1,n);
	% initializam matricea patratica variances
	variances = zeros(n,n);

	% calculam suma pe fiecare coloana si o punem in vectorul mean_values
	for i = 1:n
		mean_values(i) = sum(X(1:m, i));
	endfor
	mean_values = mean_values / m;

	% aplicam formula pentru matricea de variatie specificata in enunt
	for i = 1:n
		for j = 1:n
			variances(i,j) = sum((X(1:m, i) - mean_values(1, i))' * (X(1:m, j) - mean_values(1, j)));
		endfor
	endfor
	variances = variances / m;
endfunction
