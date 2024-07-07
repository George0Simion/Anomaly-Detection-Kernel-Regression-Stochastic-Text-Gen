function retval = stochastic_matrix(k_secv_corpus, corpus_words, words_set, k_secv_set, k)
    % Dimensiunile matricei de ieșire
    m = length(k_secv_set);
    n = length(words_set);
    l = length(corpus_words);
    retval = sparse(m, n);

    % Parcurgem cuvintele din corpus
    for i = 1 : (l - k)
        k_idx = find(strcmp(k_secv_set, k_secv_corpus{i}));          % Indexul secvenței k
        next_idx = find(strcmp(words_set, corpus_words{i + k}));     % Indexul următorului cuvânt
        retval(k_idx, next_idx) += 1;                                % Incrementează valoarea din matrice
    end
end
