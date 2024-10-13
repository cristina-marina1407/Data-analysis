function [a] = get_prediction_params (K, y, lambda)
  % obtinem dimensiunea matricei K
  m = size(K, 1);
  Im = eye(m);

  % initializam matricele auxiliare A si B
  A = zeros(m, m);
  B = zeros(m, m);
  A = lambda * Im + K;

  % aflam matricea L folosind factorizarea Cholesky
  [L] = cholesky(A);

  % calculam inversa matricei L
  [P] = get_lower_inverse(L);

  % aplicam formula pentru vectorul a specificata in enunt
  B = P' * P;
  a = lambda * B * y;
endfunction
