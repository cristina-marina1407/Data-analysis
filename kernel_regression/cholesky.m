function [L] = cholesky (A)
  % obtinem dimensiunile matricei A
  [n n] = size(A);
  % initializam matricea L
  L = zeros(n, n);
  for j = 1:n
    % determinam elementele de pe diagonala principala
      L(j, j) = sqrt(A(j, j) - L(j, 1:j - 1) * L(j, 1:j - 1)');
      for i = j + 1:n
      % determinam restul elementelor din matricea L
        L(i, j) = (A(j, i) - L(j, 1:j - 1) * L(i, 1:j - 1)') / L(j, j);
      endfor
  endfor
endfunction
