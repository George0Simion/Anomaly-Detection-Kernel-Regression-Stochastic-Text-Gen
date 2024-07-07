function retval = sample_n_words (text, widx, kscvidx, k, stoch, word_set, n)
  retval = text;  % Inițializează textul de returnat cu textul de intrare

  for i = 1 : n
    % Verifică dacă lungimea textului este suficientă pentru a lua ultimele k cuvinte
    if numel(retval) >= k
      last_K_words = retval(end-k+1 : end);
    else
      last_K_words = retval;
    end

    nextWord_prob = sample_next_word(last_K_words, widx, kscvidx, k, stoch);
    % Alege un cuvânt folosind distribuția de probabilitate
    nextWord_idx = randsample(numel(nextWord_prob), 1, true, nextWord_prob);
    nextWord = word_set{nextWord_idx};

    % Adaugă cuvântul selectat la rezultat
    retval = [retval, {nextWord}];
  end
endfunction
