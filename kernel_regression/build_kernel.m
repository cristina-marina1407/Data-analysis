function [K] = build_kernel (X, f, f_param)
  % obtinem dimensiunile matricei X
  [m n] = size(X);

  % initializam matricea K cu 0
  K = zeros(m, m);
  
  % determinam elementele matricei K aplicand functia f asupra liniilor din matricea X conform formulei 
  for i = 1:m
    for j = 1:m
      K(i, j) = f(X(i, 1:n), X(j, 1:n), f_param);
    endfor
  endfor
endfunction
