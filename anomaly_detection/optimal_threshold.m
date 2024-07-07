function [best_epsilon, best_F1, associated_precision, associated_recall] = optimal_threshold(truths, probabilities)
    best_epsilon = 0;
    best_F1 = 0;
    % Calculează pasul pentru iterație
    step = (max(probabilities) - min(probabilities)) / 1000;

    % Iterează prin posibilele valori ale lui epsilon
    for epsilon = min(probabilities) : step : max(probabilities)
        predictions = (probabilities < epsilon);  % Generează predicții
        [false_pozitives, false_negatives, true_pozitives] = check_predictions(predictions, truths);

        % Calculează precizia, recall-ul, scorul F1
        precision = true_pozitives / (false_pozitives + true_pozitives);
        recall = true_pozitives / (true_pozitives + false_negatives);
        F1 = 2 * precision * recall / (precision + recall);

        % Actualizează cel mai bun scor F1 și pragul asociat
        if F1 > best_F1
            best_F1 = F1;
            best_epsilon = epsilon;
            associated_precision = precision;
            associated_recall = recall;
        endif
    endfor
endfunction