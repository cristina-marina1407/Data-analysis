function [P] = get_lower_inverse (L)
  n = size(L, 1);
  P = eye(n);
  for j = 1:n
    for i = j + 1:n
      coef = - L(i, j) / L(j, j);
      P(i, 1:n) = P(i, 1:n) + coef * P(j, 1:n);
    endfor
  endfor
  for j = 1:n
        P(j, 1:n) = P(j, 1:n) / L(j, j);
  endfor
endfunction
