function [x] = conjugate_gradient (A, b, x0, tol, max_iter) 
  # Implementati algoritmul pentru metoda gradientului conjugat
  r0 = b - A * x0;
  v1 = r0;
  x = x0;
  tol_squared = tol * tol;
  k = 1;
  aux = r0' * r0;
  while k < max_iter && aux > tol_squared
    t = aux / (v1' * A * v1);
    x = x + t * v1;
    r1 = r0 - t * A * v1;
    s = (r1' * r1) / (r0' * r0);
    v1 = r1 + s * v1;
    r0 = r1;
    aux = r0' * r0;
    k = k + 1;
  endwhile
endfunction