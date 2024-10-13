function B = k_secv (A, k)
  % obtinem dimensiunea vectorului
  n = length(A);

  for i = 1:n - k
      % extragem stringurile de dimensiunea k
      string = A(i:i + k - 1);
      % concatenam stringurile
      concatenated_string = strjoin(string);
      % adaugam k-secventele in B
      B{i, 1} = concatenated_string;
  endfor
endfunction
