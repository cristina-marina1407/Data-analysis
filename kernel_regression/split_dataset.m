function [X_train, y_train, X_pred, y_pred] = split_dataset (X, y, percentage)
  % obtinem dimensiunile matricei X
  [m n] = size(X);

  % calculam numarul de linii de antrenament si numarul de linii de prezicere
  nr_train = round(m * percentage);
  nr_pred = m - nr_train;

  % initializam perechile pentru setul de date de antrenament si de prezis
  X_train = zeros(nr_train, n);
  X_pred = zeros(nr_pred, n);
  y_train = zeros(nr_train, 1);
  y_pred = zeros(nr_pred, 1);

  % perechea de antrenament va avea liniile pana la nr_train
  X_train = X(1:nr_train, 1:n);
  y_train = y(1:nr_train);

  % perechea de antrenament va avea liniile de la nr_train pana la numarul total de linii
  X_pred = X(nr_train + 1:m, 1:n);
  y_pred = y(nr_train + 1:m);
endfunction
