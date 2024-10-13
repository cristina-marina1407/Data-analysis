function retval = k_secv_idx (distinct_k_sec)
  % initializam index_distinct_wds cu un dictionar
  index_distinct_k_sec = containers.Map();

  % obtinem dimensiunea vectorului distinct_wds
  n = length(distinct_k_sec);
  key = 0;

  % adaugam indecsii in dictionar
  for i = 1:n
    key = distinct_k_sec{i};
    index_distinct_k_sec(key) = i;
  endfor
  retval = index_distinct_k_sec;
endfunction