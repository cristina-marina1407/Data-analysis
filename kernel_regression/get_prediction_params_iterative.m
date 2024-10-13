function [a] = get_prediction_params_iterative (K, y, lambda)
  % obtinem dimensiunile matricei K
  [m n] = size(K);

  Im = eye(m);
  x0 = zeros(m, 1);

  % initializam matricea auxiliara A
  A = zeros(m, m);
  A = lambda * Im + K;

  % aplicam metoda gradientului conjugat pentru a determina vectorul a
  % ce contine estimari ai parametrilor folositi la evaluare
  a = conjugate_gradient(A, y, x0, 1e-6, 1000);
endfunction
