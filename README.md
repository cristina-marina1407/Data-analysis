**Postelnicu Cristina-Marina**
**313CA**

## Tema de casa 1 - Analiza datelor ##

### Descriere:

# Metoda 1: Detectia anomaliilor

* Pentru rezolvarea acestui task am implementat urmatoarele functii:

    * Functia estimate_gaussian care are rolul de a returna vectorul medie,
    notat cu mean_values, si matricea de variatie, variances. Elementele din
    setul de date sunt reprezentate de liniile matricei X. Se calculeaza suma
    pe fiecare coloana si se pune in vectorul mean_values, care la final este
    impartit la numarul de linii, conform formulei. Folosind vectorul medie
    obtinut se formeaza matricea de variatie.

    * Functiile gaussian_distribution si multivariate_distribution calculeaza
    densitatea de probabilitate pentru datasetul dat folosind vectorul medie
    si matricea de variatie determinate in functia estimate_gaussian.
    In functia gaussian_distribution vectorul probabilities este un vector
    linie, pe cand in functia multivariate_distribution este vector coloana.

    * Functia check_predictions returneaza atat pozitivele adevarate si false,
    cat si negativele false, verificand predictiile. Se parcurg vectorii
    predictions si truths, daca valoarea amandurora este 1, crestem
    variabila true_pozitives, daca predictions este 1, iar truths este 0 se
    creste false_pozitives, iar daca ambele sunt 0 se cresc negativele false.

    * Functia optimal_threshold efectueaza ultimele doua etape din determinarea
    outlierilor pentru un set de date dat. Astfel functia are rolul de a estima
    factorul epsilon din dataset. Pentru fiecare epsilon incercat se verifica
    daca acesta este mai mic decat elementele din vectorul probabilities pentru
    a completa vectorul predictions si se calculeaza parametrii: precision
    (reprezinta procentajul oulierilor adevarati si determinati din
    total_pozitives), recall (reprezinta procentajul oulierilor adevarati si
    determinati din totalul outlierilor reali) si F1, care trebuie sa fie
    maxim pentru a gasi cel mai bun epsilon, in functia metrics. Se apeleaza
    check_predictions pentru a obtine true_pozitives, false_pozitives si
    false_negatives care sunt folosite in functia metrics. Dupa aceasta se
    compara parametrii returnati cu variabilele ce stocehaza cele mai optime
    valori gasite pana atunci si se actualizeaza daca este cazul.

# Metoda 2: Kernel Regression

* Pentru rezolvarea acestui task am implementat urmatoarele functii:

    * Functiile linear_kernel, polynomial_kernel si gaussian_kernel sunt
    folosite pentru a construi kernel liniar, polinomial si gaussian in 
    functia build_kernel. Rolul acestor kernel-uri este de a ne oferi o
    modalitate de a estima parametrii necesari in functie de gradul maxim al
    functiei de liniarizare a datelor.

    * Functia split_dataset are rolul de a diviza setul de date pentru antrenare
    si testare. Se calculeaza numarul de linii de antrenament si de testare
    in functie de procentajul dat. Folosim aceste valori pentru a intializa
    perechile (X_train, y_train) si (X_pred, y_pred) care vor contine numarul de
    linii corespunzator din matricea data X, respectiv din vectorul dat y.

    * Functia build_kernel are rolul de a construi matricea de kerneluri K.
    Aceasta foloseste una dintre functiile de kernel descrise mai sus asupra
    matricei X.

    * Functia cholesky returneaza matricea inferior triunghiulara L.

    * Functia get_lower_inverse returneaza inversa matricei inferior triunghiulare L.

    * Functia conjugate_gradient implementeaza un algoritm pentru metoda
    gradientului conjugat.

    * Functia get_prediction_params are rolul de a determina vectorul coloana a
    ce contine estimari ai parametrilor folositi la evaluare. Se apeleaza functia
    cholesky asupra matricei de inversat, A, dupa care se obtine inversa
    matricei inferior triunghiulare L. Inversa matricei A, B, va fi obtinuta
    prin inmultirea inversei lui L transpusa cu inversa lui L, adica P.

    * Functia get_prediction_params_iterative determina, de asemenea, vectorul
    a, folosind metoda gradientului conjugat.

    * Functia eval_value are rolul de a determina estimarea produsa de model, 
    returnand predictia facuta pentru datelele de intrare, y_pred din enunt.
    Se construieste matricea de kernel , K, folosind functia data ca parametru,
    dupa care se calculeaza predictia folosind vectorul a.

# Metoda 3: Generare de text

* Pentru rezolvarea acestui task am implementat urmatoarele functii:

    * Functia distinct_words are rolul de a returna token urile sortate si
    unice.

    * Functia k_secv returneaza un cell-array de k-secvente pentru un
    cell-array unidimensional dat. Se extrag secventele de dimenisunea k din
    vectorul dat A si se pun in vectorul string, apoi se concateneaza stringul
    folosind functia strjoin. Se adauga stringul in cell-array-ul de k-secvente,
    B, pe pozitia curenta.

    * Functia distinct_k_secv are rolul de a returna k-secventele sortate si
    unice.

    * Functia word_idx returneaza un dictionar care contine indecsii asociati
    fiecarui cuvant. Cheia este reprezentata de cuvantul aflat pe pozitia i din
    vectorul de cuvinte. Adaugam in dictionar la cheie valoarea lui i.

    * Functia k_secv_idx returneaza un dictionar care contine indecsii asociati
    fiecarei k-secvente. Cheia este reprezentata de k-secventa aflata pe
    poitia i din vectorul de k-secvente. Adaugam in dictionar la cheie valoarea
    lui i.

    * Functia stochastic_matrix creaza matricea stochatica. Mai intai se apeleaza
    functiile word_idx si k_secv_idx pentru a obtine dictionarele cu pozitiile
    cuvintelor si k-secventelor date. Parcurgem toate secventele si gasim
    cuvantul care le corespunde, ce se afla cu k pozitii mai in fata in vectorul
    de cuvinte nedistincte. Retinem pozitiile acestora folosind dictionarele.
    Crestem probabilitatea ca acest cuvant sa fie dupa k-secventa, in matrice unde
    fiecarei linii ii corespunde o k-secventa si fiecarei coloane ii corespunde
    un cuvant.
