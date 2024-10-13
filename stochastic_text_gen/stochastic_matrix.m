function retval = stochastic_matrix(k_secv_corpus, corpus_words, words_set, k_secv_set, k)
    % obtin dimensiunea cell array-urilor pentru secvente si cuvinte
    m = length(k_secv_set);
    n = length(words_set);
    corpus_words_length = length(corpus_words);

    % initializez matricea stochastica
    retval = zeros(m, n);
    
    % apelam functiile care returneaza dictionare de indecsi
    k_secv_idx = k_secv_idx(k_secv_set);
    words_idx = word_idx(words_set);

    % parcurgem toate secventele si gasim cuvantul care le corespunde
    for index = 1:corpus_words_length - k
            k_secv = k_secv_corpus{index};
            word = corpus_words{index + k};
            
            % obtinem indicii k-secventei si a cuvantului
            i = k_secv_idx(k_secv);
            j = words_idx(word);
                
        % crestem probabilitatea ca acest cuvant sa fie dupa k-secventa
        retval(i, j) = retval(i, j) + 1; 
    endfor
endfunction