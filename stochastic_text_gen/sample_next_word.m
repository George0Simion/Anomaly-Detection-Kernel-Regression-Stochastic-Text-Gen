function probs = sample_next_word (text, words_idx, k_secv_idx, k, stoch)
  % Verificăm dacă textul are lungimea suficientă pentru a lua ultimele k cuvinte
  if numel(text) >= k
    last_sec = text(end-k+1 : end);
  end

  % Obținem indicii cuvintelor din secvența actuală
  last_idx = arrayfun(@(word) words_idx(word), last_sec);
  % Găsim indexul rândului corespunzător în matricea stocastică
  row_idx = k_secv_idx(last_idx);

  % Extragem probabilitățile pentru următorul cuvânt din matricea stocastică
  probs = stoch(row_idx, :);

  if ~isscaled(stoch)
    probs = probs / sum(probs);
  end
endfunction
