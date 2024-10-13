function retval = word_idx (distinct_wds)
    % initializam index_distinct_wds cu un dictionar
    index_distinct_wds = containers.Map();
    key = 0;

    % obtinem dimensiunea vectorului distinct_wds
    n = length(distinct_wds);

    % adaugam indecsii in dictionar
    for i = 1:n
        key = distinct_wds{i};
        index_distinct_wds(key)= i;
    endfor
    retval = index_distinct_wds;
endfunction
