function pred = eval_value(x, X, f, f_param, a)
   % obtinem dimensiunea vectorului a
   m = length(a);
   K = zeros(m , 1);

   % obtinem K folosind functia f pentru fiecare linie din X si pentru vectorul coloana x
   for i = 1:m
      K(i) = f(X(i, :), x, f_param);
   endfor
   
   % calculam predictia conform formulei pentru ypred din enunt
   pred = 0;
   for i = 1:m
      pred += (a(i) * K(i));
   endfor
endfunction