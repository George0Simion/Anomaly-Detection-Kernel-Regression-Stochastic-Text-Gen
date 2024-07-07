function [x] = conjugate_gradient(A, b, x0, tol, max_iter)
    % Inițializare variabile
    r = b - A * x0;
    v = r;
    x = x0;
    k = 0;

    % Condiție de oprire: număr de iterații și toleranță
    while k < max_iter && (r'*r) > tol ^ 2
        t = (r'*r) / (v' * (A * v));  % Pas de actualizare
        x = x + t * v;               % Actualizează soluția
        r_new = r - t * A * v;       % Calculează noul reziduu
        s = (r_new' * r_new) / (r' * r);  % Factor de ajustare
        v = r_new + s * v;           % Actualizează direcția
        r = r_new;                   % Actualizează reziduul
        k = k + 1;                   % Incrementare iterație
    end
end
