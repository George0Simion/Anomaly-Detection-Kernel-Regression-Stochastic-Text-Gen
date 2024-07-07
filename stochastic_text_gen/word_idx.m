function retval = word_idx (distinct_wds)
    retval = containers.Map(distinct_wds, 1 : numel(distinct_wds));   % Creem containerul
endfunction