function [X_train, y_train, X_pred, y_pred] = split_dataset (X, y, percentage)
  num_data = size(X, 1);
  num_train = round(percentage * num_data);

  X_train = X(1 : num_train, :);
  y_train = y(1 : num_train);
  X_pred = X(num_train + 1 : end, :);
  y_pred = y(num_train + 1 : end);

endfunction
