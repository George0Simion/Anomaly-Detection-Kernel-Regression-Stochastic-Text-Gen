# Anomaly Detection, Kernel Regression, Text Generation

## Cuprins
1. [Task 1 - Anomaly Detection](#task-1---anomaly-detection)
2. [Task 2 - Kernel Regression](#task-2---kernel-regression)
3. [Task 3 - Text Generation](#task-3---text-generation)

## Task 1 - Anomaly Detection
--------------------------------------------------------------------------------------------------

### Funcții

- **check_predictions(predictions, truths)**:
    Se folosesc pentru a compara vectorii predictions cu truths și pentru a identifica valorile true_pozitives, false_pozitives și false_negatives. Aceste operații sunt eficiente pentru calcularea metricilor de evaluare a performanței unui clasificator.

- **estimate_gaussian(X)**:
    Se calculează media și varianța pentru a caracteriza distribuția datelor. Media arată tendința centrală a datelor, iar varianța măsoară dispersia acestora. Acești parametri sunt esențiali pentru modelarea distribuțiilor Gaussiene.

- **gaussian_distribution(X, mean_value, variance)**:
    Se utilizează pentru a evalua probabilitatea ca un punct de date să aparțină unei distribuții definite de o anumită medie și varianță.

- **identify_outliers(X, yval)**:
    Se folosește pentru a calcula probabilitățile fiecărui punct într-un set multivariat de date.

- **metrics(true_pozitives, false_pozitives, false_negatives)**:
    Aceste metrice sunt utilizate pentru a evalua cât de bine funcționează predicțiile unui model în raport cu adevărul de bază. Precizia măsoară acuratețea pozitivelor prezise, recall-ul măsoară capacitatea de a găsi toate pozitivele reale, iar F1 este o medie armonică între precizie și recall.

- **multivariate_gaussian(X, mean_values, variances)**:
    Calculul probabilităților pentru un set de date multivariat folosește media și covarianța pentru a modela corelațiile între caracteristici.

- **optimal_threshold(truths, probabilities)**:
    Se utilizează un proces iterativ pentru a găsi valoarea pragului epsilon care maximizează scorul F1, ajustând sensibilitatea modelului la detectarea outlierilor. Această abordare permite un echilibru între detectarea fals pozitivelor și fals negativelor.

## Task 2 - Kernel Regression
-------------------------------------------------------------------------------------------------------

### Funcții

- **build_kernel(X, f, f_param)**:
    Construiește o matrice kernel aplicând o funcție definită (f) perechilor de rânduri din X. Este utilizată pentru a măsura similaritatea între punctele de date în spațiul transformat.

- **cholesky(A)**:
    Realizează descompunerea Cholesky a unei matrice pozitiv definite A.

- **conjugate_gradient(A, b, x0, tol, max_iter)**:
    Soluționează sisteme liniare ax=b.

- **eval_value(x, X, f, f_param, a)**:
    Calculează o valoare predictivă folosind o sumă ponderată de kernel-uri între un punct x și punctele din X.

- **gaussian_kernel(x, y, sigma)**:
    Măsoară similaritatea bazată pe distanța euclidiană, ajustată printr-un parametru sigma.

- **get_lower_inverse(L)**:
    Inversa unei matrice triangulare inferioare: Calculează inversa unei matrice L.

- **get_prediction_params_iterative(K, y, lambda)**:
    Folosește gradientul conjugat pentru a ajusta parametrii modelului, gestionând regularizarea prin lambda.

- **get_prediction_params(K, y, lambda)**:
    Aplică descompunerea Cholesky și soluționează pentru parametrii optimi.

- **linear_kernel(x, y, other)**:
    Calculează produsul scalar între doi vectori, baza multor algoritmi de învățare supervizată.

- **polynomial_kernel(x, y, d)**:
    Extinde kernelul liniar prin adăugarea unui termen constant și ridicarea la puterea d.

- **split_dataset(X, y, percentage)**:
    Împărțirea setului de date: Separă datele în subseturi de antrenament și predicție, folosind un procentaj specificat pentru a determina mărimea fiecărui subset.

## Task 3 - Text Generation
---------------------------------------------------------------------------------------------------------------

### Funcții

- **distinct_k_secv(cell_array)**:
    Returnează o listă unică dintr-un array de celule, eliminând duplicatele.

- **distinct_words(tokens)**:
    Extrage cuvinte unice dintr-o listă de token-uri.

- **k_secv_idx(distinct_k_sec)**:
    Creează un map care asociază fiecare secvență unică cu un index unic.

- **k_secv(A, k)**:
    Generează subsecvențe de lungime k dintr-un array, fiecare subsecvență fiind concatenată într-un string.

- **stochastic_matrix(k_secv_corpus, corpus_words, words_set, k_secv_set, k)**:
    Construiește o matrice de tranziții care indică frecvența cu care cuvintele urmează diferite secvențe dintr-un corpus.

- **word_idx(distinct_wds)**:
    Asignează fiecărui cuvânt distinct un index unic prin intermediul unui map.
